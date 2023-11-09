﻿using System;
using CoreSavingLibrary;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using CoreSavingLibrary.WcfNCommon;
using CoreSavingLibrary.WcfNShrlon;
using System.Text;
using Sybase.DataWindow;

namespace Saving.Applications.shrlon.dlg
{
    public partial class w_dlg_sl_popup_loanorder : PageWebDialog, WebDialog
    {
        private n_shrlonClient slService;
        private n_commonClient commonSrv;
        private DwThDate tDwMain;

        protected String saveSlipLnRcv;
        protected String initDataWindow;
        protected String initLnRcvReCalInt;
        protected String calculateitempayamt;
        protected String jsRefresh;
        protected ArrayList dwList;
        protected String[] arrValue = new String[3];
        String loanContract_No;
        protected String GetNewLoan;
        #region WebDialog Members

        public void InitJsPostBack()
        {
            saveSlipLnRcv = WebUtil.JsPostBack(this, "saveSlipLnRcv");
            initDataWindow = WebUtil.JsPostBack(this, "initDataWindow");
            initLnRcvReCalInt = WebUtil.JsPostBack(this, "initLnRcvReCalInt");
            jsRefresh = WebUtil.JsPostBack(this, "jsRefresh");
            GetNewLoan = WebUtil.JsPostBack(this, "GetNewLoan");
            calculateitempayamt = WebUtil.JsPostBack(this, "calculateitempayamt");
            tDwMain = new DwThDate(DwMain);
            tDwMain.Add("operate_date", "operate_tdate");

        }

        public void WebDialogLoadBegin()
        {
            slService = wcf.NShrlon;
            commonSrv = wcf.NCommon;

            if (!IsPostBack)
            {
                this.InitDataWindow();
                DwUtil.RetrieveDDDW(DwMain, "moneytype_code", "sl_loan_receive.pbl", null);
                //DataWindowChild moneyType = DwMain.GetChild("moneytype_code");
                //String xml = commonSrv.GetDDDWXml(state.SsWsPass, "dddw_sl_ucfmoneytypeday");
                //moneyType.ImportString(xml, FileSaveAsType.Xml);


            }
            else
            {
                this.RestoreContextDw(DwMain);
                try
                {
                    String dtString = DwMain.GetItemString(1, "operate_tdate");
                    dtString = dtString.Replace("/", "");
                    DwMain.SetItemDateTime(1, "operate_date", DateTime.ParseExact(dtString, "ddMMyyyy", WebUtil.TH));
                }
                catch { }
                DwOperateLoan.RestoreContext();
                DwOperateEtc.RestoreContext();
            }

        }

        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == "saveSlipLnRcv")
            {
                this.SaveSlipLnRcv();
            }
            if (eventArg == "initLnRcvReCalInt")
            {
                this.InitLnRcvReCalInt();
            }
            if (eventArg == "initDataWindow")
            {
                this.InitDataWindow();
            }
            if (eventArg == "fieldProperty")
            {

            }
            if (eventArg == "jsRefresh")
            {
                Refresh();
            }
            if (eventArg == "GetNewLoan")
            {
                JsGetNewLoan();
            }
            if (eventArg == "calculateitempayamt")
            {
                Calculateitempayamt();
            }
        }

        private void Calculateitempayamt()
        {
            int loanAllRow = DwOperateLoan.RowCount;

            Decimal totalamt = 0;

            Decimal dwmain_bfshrcontbalamt = DwMain.GetItemDecimal(1, "bfshrcont_balamt");

            //ยอดโอนชำระ
            Decimal payoutclramt = 0;



            for (int i = 1; i <= loanAllRow; i++)
            {
                Decimal interest_period = DwOperateLoan.GetItemDecimal(i, "interest_period");
                Decimal bfintarr_amt = DwOperateLoan.GetItemDecimal(i, "bfintarr_amt");
                Decimal sum_interest_bfintarr = interest_period + bfintarr_amt;
                Decimal interest_payamt = DwOperateLoan.GetItemDecimal(i, "interest_payamt");
                Decimal itempayamt = DwOperateLoan.GetItemDecimal(i, "item_payamt");

                //ต้นเงิน bfshrcont_balamt
                Decimal dwloan_bfshrcontbalamt = DwOperateLoan.GetItemDecimal(i, "bfshrcont_balamt");
                Decimal operateflag = DwOperateLoan.GetItemDecimal(i, "operate_flag");
                if (itempayamt > dwloan_bfshrcontbalamt)
                {
                    Response.Write("<script>alert('ยอดชำระมากกว่า ต้นเงิน');</script>");

                }
                else
                {
                    if (itempayamt != 0)
                    {
                        if (operateflag == 1)
                        {
                            if (itempayamt < sum_interest_bfintarr)
                            {
                                DwOperateLoan.SetItemDecimal(i, "interest_payamt", sum_interest_bfintarr - itempayamt);

                                DwOperateLoan.SetItemDecimal(i, "principal_payamt", 0);
                            }
                            else if (itempayamt > sum_interest_bfintarr)
                            {
                                DwOperateLoan.SetItemDecimal(i, "interest_payamt", sum_interest_bfintarr);

                                DwOperateLoan.SetItemDecimal(i, "principal_payamt", itempayamt - sum_interest_bfintarr);
                            }

                        }
                    }


                    //ใช้คำนวณ ยอด ต้นคงเหลือ
                    Decimal principalpayamt = DwOperateLoan.GetItemDecimal(i, "principal_payamt");
                    DwOperateLoan.SetItemDecimal(i, "item_balance", dwloan_bfshrcontbalamt - principalpayamt);

                    //หายอดรวมที่ต้องชำระ

                    itempayamt = DwOperateLoan.GetItemDecimal(i, "item_payamt");
                    totalamt += itempayamt;
                    payoutclramt += principalpayamt + interest_payamt;
                }
                //Set ค่า TotalAmt ไปที่ DwMain ช่อง ยอดโอนชำระ payoutnet_amt
                DwMain.SetItemDecimal(1, "payoutclr_amt", payoutclramt);
                Decimal payout_amt = DwMain.GetItemDecimal(1, "payout_amt");
                //Set ค่า TotalAmt ไปที่ DwMain ช่อง ยอดหุ้นชำระ payoutnet_amt
                DwMain.SetItemDecimal(1, "payoutnet_amt", payout_amt - payoutclramt);
            }
        }
        private void JsGetNewLoan()
        {
            //String shrlontype_code = DwMain.GetItemString(1, "shrlontype_code");
            //String loan_no = slService.GenReqDocNo(state.SsWsPass, shrlontype_code);
            //DwMain.SetItemString(1, "loancontract_no", loan_no);
        }
        public void WebDialogLoadEnd()
        {
            //Retrive DDDW
            try
            {
                //Clear ค่าใน DDDW
                DwMain.SetItemString(1, "tofrom_accid_1", "");
                //แสดงค่าใน tofrom_accid_1
                DwUtil.RetrieveDDDW(DwMain, "tofrom_accid_1", "sl_loan_receive.pbl", null);
                DataWindowChild dc = DwMain.GetChild("tofrom_accid_1");
                String moneyType = DwUtil.GetString(DwMain, 1, "moneytype_code_1", "");
                //ตรวจสอบค่าว่าง
                if (!string.IsNullOrEmpty(moneyType))
                {
                    // กำหนด filter
                    dc.SetFilter("moneytype_code = '" + moneyType + "'");
                    dc.Filter();
                }
                //แสดงข้อมูลเฉพาะ ของ โอนธนาคาร และเช็คธนาคาร
                if ((moneyType == "CBT") || (moneyType == "CHQ"))
                {

                    DwMain.Modify("expense_bank_t.visible =1");
                    DwMain.Modify("expense_bank.visible =1");
                    DwMain.Modify("expense_branch_t.visible =1");
                    DwMain.Modify("expense_branch.visible =1");
                    DwMain.Modify("expense_accid_t.visible =1");
                    DwMain.Modify("expense_accid.visible =1");
                }
                else
                {
                    //ไม่แสดงข้อมูล
                    DwMain.Modify("expense_bank_t.visible =0");
                    DwMain.Modify("expense_bank.visible =0");
                    DwMain.Modify("expense_branch_t.visible =0");
                    DwMain.Modify("expense_branch.visible =0");
                    DwMain.Modify("expense_accid_t.visible =0");
                    DwMain.Modify("expense_accid.visible =0");

                    // เฉพาะเงินสดกำหนดค่าให้ได้เลย
                    if (moneyType == "CSH")
                    {
                        DwMain.SetItemString(1, "tofrom_accid_1", "11100001");
                    }
                }
                DwUtil.RetrieveDDDW(DwMain, "shrlontype_code_1", "sl_loan_receive.pbl", null);
            }
            catch { }
            DwMain.SaveDataCache();

        }

        #endregion

        private void InitDataWindow()
        {
            int listIndex = 0;
            ArrayList dwList = new ArrayList();
            dwList = (ArrayList)Session["SSList"];

            HfAllIndex.Value = dwList.Count.ToString(); //จำนวน Index ของ Array Data ที่ส่งมาจากหน้า Sheet


            try { listIndex = Convert.ToInt32(HfIndex.Value); }
            catch { HfIndex.Value = "0"; listIndex = 0; }

            LbSaveStatus.Text = "(" + (listIndex + 1) + "/" + HfAllIndex.Value + ")";

            String loanContractNo = "";
            String memberNo = "";
            String formtype = "";
            String saveStatus = "";
            try
            {
                arrValue = dwList[listIndex] as String[];
                loanContractNo = arrValue[0];
                loanContract_No = loanContractNo;
                formtype = arrValue[1];
                memberNo = arrValue[2];
                LbMenberNo.Text = memberNo;
                saveStatus = arrValue[3];
                if (saveStatus != "") { throw new Exception(WebUtil.ErrorMessage("มีการบันทึกรายการ สมาชิกรายนี้ไปแล้ว")); }
            }
            catch (Exception ex) { }

            str_slippayout sSlipPayOut = new str_slippayout();
            sSlipPayOut.coop_id = state.SsCoopId;
            sSlipPayOut.entry_id = state.SsUsername;
            sSlipPayOut.operate_date = state.SsWorkDate;
            sSlipPayOut.loancontract_no = loanContractNo;
            sSlipPayOut.member_no = memberNo;
            sSlipPayOut.slip_date = state.SsWorkDate;
            sSlipPayOut.initfrom_type = formtype;

            HfFormtype.Value = formtype;

            int result = slService.of_initlnrcv(state.SsWsPass, ref sSlipPayOut);

            try
            {
                DwMain.Reset();
                DwMain.ImportString(sSlipPayOut.xml_sliphead, Sybase.DataWindow.FileSaveAsType.Xml);
                // DwUtil.ImportData(sSlipPayOut.xml_sliphead,DwMain, tDwMain);
                DwUtil.DeleteLastRow(DwMain);
                tDwMain.Eng2ThaiAllRow();
                //DwMain.SetItemString(1, "moneytype_code", "CSH");

            }
            catch (Exception ex) { String ext = ex.ToString(); }
            try
            {
                DwOperateLoan.Reset();
                DwOperateLoan.ImportString(sSlipPayOut.xml_slipcutlon, Sybase.DataWindow.FileSaveAsType.Xml);
                // Decimal payout_amt = DwMain.GetItemDecimal(1, "payout_amt");

            }
            catch (Exception ex) { String ext = ex.ToString(); }
            try
            {
                DwOperateEtc.Reset();
                DwOperateEtc.ImportString(sSlipPayOut.xml_slipcutetc, Sybase.DataWindow.FileSaveAsType.Xml);
            }
            catch (Exception ex) { String ext = ex.ToString(); }


        }

        private void InitLnRcvReCalInt()
        {
            str_slippayout strPayOut = new str_slippayout();
            strPayOut.coop_id = state.SsCoopId;
            strPayOut.entry_id = state.SsUsername;
            strPayOut.operate_date = DwMain.GetItemDateTime(1, "operate_date");
            try { strPayOut.loancontract_no = DwMain.GetItemString(1, "loancontract_no"); }
            catch { strPayOut.loancontract_no = loanContract_No; }

            strPayOut.member_no = DwMain.GetItemString(1, "member_no"); ;
            strPayOut.slip_date = state.SsWorkDate;
            strPayOut.initfrom_type = HfFormtype.Value;
            String dwMainXML = "";
            String dwLoanXML = "";
            String dwEtcXML = "";

            dwMainXML = DwMain.Describe("DataWindow.Data.XML");
            dwLoanXML = DwOperateLoan.Describe("DataWindow.Data.XML");
            try { dwEtcXML = DwOperateEtc.Describe("DataWindow.Data.XML"); }
            catch { dwEtcXML = ""; }

            strPayOut.xml_sliphead = dwMainXML;
            strPayOut.xml_slipcutlon = dwLoanXML;
            strPayOut.xml_slipcutetc = dwEtcXML;


            int result  = slService.of_initlnrcv_recalint(state.SsWsPass, ref strPayOut);

            try
            {
                DwMain.Reset();
                DwMain.ImportString(strPayOut.xml_sliphead, FileSaveAsType.Xml);
                if (DwMain.RowCount > 1)
                {
                    DwMain.DeleteRow(DwMain.RowCount);
                }
            }
            catch { DwMain.Reset(); }
            try
            {
                DwOperateLoan.Reset();
                DwOperateLoan.ImportString(strPayOut.xml_slipcutlon, FileSaveAsType.Xml);
            }
            catch { DwOperateLoan.Reset(); }
            try
            {
                DwOperateEtc.Reset();
                DwOperateEtc.ImportString(strPayOut.xml_slipcutetc, FileSaveAsType.Xml);
            }
            catch { DwOperateEtc.Reset(); }
        }

        private void SaveSlipLnRcv()
        {
            String memno = DwMain.GetItemString(1, "member_no");
            int index = Convert.ToInt32(HfIndex.Value);
            int allIndex = Convert.ToInt32(HfAllIndex.Value);

            str_slippayout strPayOut = new str_slippayout();
            strPayOut.coop_id = state.SsCoopId;
            strPayOut.entry_id = state.SsUsername;
            strPayOut.operate_date = DwMain.GetItemDateTime(1, "operate_date");
            try
            {
                strPayOut.loancontract_no = DwMain.GetItemString(1, "loancontract_no");
            }
            catch { strPayOut.loancontract_no = ""; }
            strPayOut.member_no = memno;
            strPayOut.slip_date = state.SsWorkDate;
            strPayOut.initfrom_type = HfFormtype.Value;

            String dwMainXML = "";
            String dwLoanXML = "";
            String dwEtcXML = "";

            dwMainXML = DwMain.Describe("DataWindow.Data.XML");
            try { dwLoanXML = DwOperateLoan.Describe("DataWindow.Data.XML"); }
            catch { dwLoanXML = ""; }
            try { dwEtcXML = DwOperateEtc.Describe("DataWindow.Data.XML"); }
            catch { dwEtcXML = ""; }

            strPayOut.xml_sliphead = dwMainXML;
            strPayOut.xml_slipcutlon = dwLoanXML;
            strPayOut.xml_slipcutetc = dwEtcXML;

            try
            {
                int result = slService.of_saveord_lnrcv(state.SsWsPass, ref strPayOut);
                int nextIndex = index + 1;
                if (nextIndex > allIndex)
                {
                    nextIndex = index - 1;
                }
                HfIndex.Value = nextIndex.ToString();
                //Response.Write("<script>alert('บันทึกสำเร็จ');</script>");
                if (nextIndex != allIndex)
                {
                    this.InitDataWindow();
                }
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                // Response.Write("<script>alert('ไม่สามารถบันทึกเลขทะเบียน " + memno + " ได้');</script>"); 
            }

        }
        private void Refresh()
        {

        }
    }
}
