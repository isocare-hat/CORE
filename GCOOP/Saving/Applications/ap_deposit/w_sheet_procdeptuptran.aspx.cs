﻿using System;
using CoreSavingLibrary;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using Sybase.DataWindow;
using System.Data.OracleClient;
using System.Globalization;
//using CoreSavingLibrary.WcfNDeposit;
//using CoreSavingLibrary.WcfNCommon;
using Saving;
using DataLibrary;
using System.Web.Services.Protocols;
using CoreSavingLibrary.WcfNDeposit; // new deposit
using CoreSavingLibrary.WcfNCommon; //new common

namespace Saving.Applications.ap_deposit
{
    public partial class w_sheet_procdeptuptran : PageWebSheet, WebSheet
    {
        // JavaSctipt PostBack
        protected String PostCutProcess;
        protected String PostRetriveDepttrans;
        protected String DeletePostWTK;
        protected String jsSetMemberFormat;
        protected String jsResetMemberno;
        private DwThDate tdw_processday;

        public string outputProcess;
        #region WebSheet Members

        public void InitJsPostBack()
        {
            PostCutProcess = WebUtil.JsPostBack(this, "PostCutProcess");
            PostRetriveDepttrans = WebUtil.JsPostBack(this, "PostRetriveDepttrans");
            DeletePostWTK = WebUtil.JsPostBack(this, "DeletePostWTK");
            jsSetMemberFormat = WebUtil.JsPostBack(this, "jsSetMemberFormat");
            jsResetMemberno = WebUtil.JsPostBack(this, "jsResetMemberno");
            tdw_processday = new DwThDate(Dw_Main, this);
            tdw_processday.Add("process_date", "process_tdate");
        }

        public void WebSheetLoadBegin()
        {
            HdMountCut.Value = "false";
            if (!IsPostBack)
            {
                Dw_Main.InsertRow(0);
                Dw_Main.SetItemDate(1, "process_date", state.SsWorkDate);
                tdw_processday.Eng2ThaiAllRow();
            }
            else
            {
                this.RestoreContextDw(Dw_Main);
                this.RestoreContextDw(Dw_Detail);
            }
        }

        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == "PostCutProcess")
            {
                JsPostCutProcess();
            }
            if (eventArg == "PostRetriveDepttrans")
            {
                JsPostRetriveDepttrans();
            }
            if (eventArg == "DeletePostWTK")
            {
                //by_max ลบประเภท WTK
                if (Dw_Main.GetItemString(1, "system_code") == "WTK")
                {
                    try{
                        string sql = "delete from DPDEPTTRAN where SYSTEM_CODE = 'WTK' and tran_date = to_date('" + Dw_Main.GetItemDateTime(1, "process_date").ToString("ddMMyyyy") + "','ddmmyyyy') and tran_status = 0";
                        WebUtil.Query(sql);
                        String system_code = Dw_Main.GetItemString(1, "system_code");
                        DateTime ProcessDate = new DateTime(1370, 1, 1);
                    try
                    {
                        ProcessDate = Dw_Main.GetItemDateTime(1, "process_date");
                    }
                    catch { }
                    object[] args = new object[] { state.SsCoopId, ProcessDate, system_code };
                    DwUtil.RetrieveDataWindow(Dw_Detail, "dp_depttrans.pbl", null, args);
                    }
                    catch (Exception ex)
                    {
                    LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                    }
                }
            }
            if (eventArg == "jsSetMemberFormat")
            {
                String member_no = "";
                try { member_no = Dw_Main.GetItemString(1, "member_no"); }
                catch { member_no = ""; }
                if (member_no != null && member_no != "")
                {
                    member_no = WebUtil.MemberNoFormat(member_no);
                    Dw_Main.SetItemString(1, "member_no", member_no);
                }
            }
            if (eventArg == "jsResetMemberno")
            {
                Dw_Main.SetItemString(1, "member_no", "");
            }

        }

        public void SaveWebSheet()
        {
        }

        public void WebSheetLoadEnd()
        {
            Dw_Main.SaveDataCache();
            Dw_Detail.SaveDataCache();
        }

        #endregion

        private void JsPostRetriveDepttrans()
        {
            Dw_Detail.InsertRow(0);
            String system_code = Dw_Main.GetItemString(1, "system_code");
            DateTime ProcessDate = new DateTime(1370, 1, 1);
            try
            {
                ProcessDate = Dw_Main.GetItemDateTime(1, "process_date");
            }
            catch { }
            //by_max
            //เรียกเก็บรายเดือน หักจากเปิดบัญชีเงินฝาก
            JsPostKp_DEP();
            //
            object[] args = new object[] { state.SsCoopId, ProcessDate,system_code };
            DwUtil.RetrieveDataWindow(Dw_Detail, "dp_depttrans.pbl", null, args);
            String member_no = "";
            try { member_no = Dw_Main.GetItemString(1, "member_no"); }
            catch { member_no = ""; }
            if (member_no != null && member_no != "")
            {
                Dw_Detail.SetFilter("member_no = '" + member_no + "'");
                Dw_Detail.Filter();
            }
            Label1.Text = "จำนวนรายการทั้งหมด " + Dw_Detail.RowCount.ToString() + " รายการ";
        }
        private void JsPostKp_DEP() {
            if (Dw_Main.GetItemString(1, "system_code") == "WTK")
            {
                string sql;
                try
                {
                    sql = "insert into DPDEPTTRAN ( COOP_ID, DEPTACCOUNT_NO, MEMCOOP_ID, MEMBER_NO, SYSTEM_CODE, TRAN_YEAR, TRAN_DATE, SEQ_NO, DEPTITEM_AMT,TRAN_STATUS, BRANCH_OPERATE) ";
                    sql += "select '" + state.SsCoopId.ToString() + "',trim(b.bank_accid) as bank_accid,'" + state.SsCoopId.ToString() + "',a.member_no,'WTK','" + (Int16.Parse(state.SsWorkDate.ToString("yyyy")) + 543).ToString() + "',trunc(a.posting_date),1,sum(a.item_payment) ,'0','000' ";
                    sql += "from kpmastreceivedet a,mbmembmoneytr b ";
                    sql += "where a.member_no = b.member_no ";
                    sql += "and b.trtype_code = 'KDEP1' and b.moneytype_code = 'TRN' ";
                    sql += "and trunc(a.posting_date) = to_date('" + Dw_Main.GetItemDateTime(1, "process_date").ToString("ddMMyyyy") + "','ddmmyyyy') ";
                    sql += "and a.keepitem_status= 1 and a.member_no not in (select member_no from dpdepttran  where tran_date = to_date('" + Dw_Main.GetItemDateTime(1, "process_date").ToString("ddMMyyyy") + "','ddmmyyyy') and  system_code = 'WTK' and tran_status = 1 ) ";
                    sql += "group by a.member_no,b.bank_accid,trunc(a.posting_date) ";
                    WebUtil.Query(sql);
                }
                catch (Exception ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage(".....");

                }
            }
        }
        private void JsPostCutProcess()
        {
            String system_code = Dw_Main.GetItemString(1, "system_code");
     //       if (HdSkipError.Value.ToString().Trim() != "true")
      //      {
            
                //try
                //{
                //    DateTime ProcessDate = new DateTime(1370, 1, 1);
                //    try
                //    {
                //        ProcessDate = Dw_Main.GetItemDateTime(1, "process_date");
                //    }
                //    catch { }
                //    DepositClient depService = wcf.Deposit;
                //    depService.RunDeptDepttransLoan(state.SsWsPass, state.CurrentPage, state.SsApplication, ProcessDate,system_code, state.SsUsername, state.SsClientIp, state.SsCoopControl);
                //    // HdMountCut.Value = "true";
                //}
                //catch (Exception ex)
                //{
                //    HdSkipError.Value = "true";
                //    LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                    
                //}
       //     }

                try
                {
                    DateTime ProcessDate = new DateTime(1370, 1, 1);
                    try
                    {
                        ProcessDate = Dw_Main.GetItemDateTime(1, "process_date");
                    }
                    catch { }
                    //DepositClient depService = wcf.Deposit;

                    //depService.RunDeptDepttransLoan(state.SsWsPass, state.CurrentPage, state.SsApplication, ProcessDate, system_code, state.SsUsername, state.SsClientIp, state.SsCoopControl);
                    string option_xml = Dw_Main.Describe("DataWindow.Data.XML");
                    outputProcess = WebUtil.runProcessing(state, "DPTRANDEPT", option_xml, state.SsClientIp, "");

                  //  HdMountCut.Value = "true";
                   // HdSkipError.Value = "false";
                }
                catch (Exception ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage(ex);

                }

        }
    }
}