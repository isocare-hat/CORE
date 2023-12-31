﻿using System;
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
using System.Xml;
//using CoreSavingLibrary.WcfNCommon;
//using CoreSavingLibrary.WcfNDeposit;
using CoreSavingLibrary.WcfNCommon;
using CoreSavingLibrary.WcfNDeposit;
using Sybase.DataWindow;
using DataLibrary;
using CoreSavingLibrary;

namespace Saving.Applications.ap_deposit.dlg
{
    public partial class w_dlg_dp_booknew : PageWebDialog, WebDialog
    {
        protected String newClear;
        protected String postSubmit;
        protected String filterBookNO;

        private n_depositClient ndept;
        private n_commonClient ncommon;
        public void InitJsPostBack()
        {
            newClear = WebUtil.JsPostBack(this, "newClear");
            postSubmit = WebUtil.JsPostBack(this, "postSubmit");
            filterBookNO = WebUtil.JsPostBack(this, "filterBookNO");
        }

        public void WebDialogLoadBegin()
        {
            HdCloseDlg.Value = "false";
            if (!IsPostBack)
            {
                HdDeptAccountNo.Value = Request["deptAccountNo"].Trim();
                DwMain.InsertRow(0);
                try
                {
                    HdLastSeqNo.Value = int.Parse(Request["seqNo"]).ToString();

                    String c_depttype = HdDeptAccountNo.Value.Substring(3, 2);
                    string sqlbook = "select min(Book_No) as mBN  from DPDEPTBOOKHIS,DPDEPTTYPE where DPDEPTBOOKHIS.Book_Status = '8' and DPDEPTBOOKHIS.Coop_Id = '" + state.SsCoopId + "' and (DPDEPTTYPE.BOOK_GROUP = DPDEPTBOOKHIS.BOOK_GRP) and DPDEPTTYPE.DEPTTYPE_CODE = '" + Request["deptTypeCode"].Trim() + "'";
                    DataTable dtDeptb = WebUtil.Query(sqlbook);
                    String bookn = dtDeptb.Rows[0]["mBN"].ToString().Trim();
                    if (bookn != null)
                    {
                        DwMain.SetItemString(1, "as_bookno", bookn);

                    }
                    else
                    {
                        DwMain.SetItemString(1, "as_bookno", "");
                    }
                }
                catch (Exception ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage("ไม่พบเลขลำดับรายการ");
                }
                //DwUtil.RetrieveDDDW(DwMain, "as_bookno", "dp_slip.pbl", Request["deptTypeCode"].Trim(), state.SsCoopControl);
            }
            else
            {
                this.RestoreContextDw(DwMain);
            }
        }

        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == "newClear")
            {
                JsNewClear();
            }
            else if (eventArg == "postSubmit")
            {
                JsPostSubmit();
            }
            else if (eventArg == "filterBookNO")
            {
                JsFilterBookNO();
            }
        }

        public void WebDialogLoadEnd()
        {
            try
            {
                DwUtil.RetrieveDDDW(DwMain, "as_bookreson", "dp_slip.pbl", null);
                DwUtil.RetrieveDDDW(DwMain, "as_bookno", "dp_slip.pbl", Request["deptTypeCode"].Trim(),state.SsCoopControl);
                DwMain.SetItemString(1, "as_oldbook", Request["deptPassbookNo"].Trim());

            }
            catch
            {
            }
            DwMain.SaveDataCache();
        }

        private void JsNewClear()
        {
            String oldBook = "";
            String deptTypeCode = "";
            String bookBase = "";
            String bookGrp = "";
            if (IsPostBack)
            {
                DwMain.Reset();
            }
            DwMain.InsertRow(0);
            deptTypeCode = Request["deptTypeCode"];
            DataTable dt = WebUtil.Query("select book_stmbase as bookBase, book_group as bookGrp from dpdepttype where depttype_code='" + deptTypeCode + "'");
            if (dt.Rows.Count > 0)
            {
                bookBase = dt.Rows[0]["bookBase"].ToString().Trim();
                bookGrp = dt.Rows[0]["bookGrp"].ToString().Trim();
            }
            try
            {
                oldBook = Request["deptPassBookNo"].ToString().Trim();
                if (oldBook != "" || oldBook != null)
                {
                    DwMain.SetItemString(1, "as_oldbook", oldBook);
                }
                DwUtil.RetrieveDDDW(DwMain, "as_bookno", "dp_slip.pbl", state.SsCoopId, deptTypeCode);
                DwUtil.RetrieveDDDW(DwMain, "as_bookreson", "dp_slip.pbl", null);
                String sql = "select min(Book_No) as mBN  from DPDEPTBOOKHIS,DPDEPTTYPE where DPDEPTBOOKHIS.Book_Status = '8' and DPDEPTBOOKHIS.Coop_Id = '" + state.SsCoopId + "' and (DPDEPTTYPE.BOOK_GROUP = DPDEPTBOOKHIS.BOOK_GRP) and DPDEPTTYPE.DEPTTYPE_CODE = '" + deptTypeCode + "'";
                DataTable dt2 = WebUtil.Query(sql);
                string as_bookno = dt2.Rows[0]["mBN"].ToString().Trim();
                DwMain.SetItemString(1, "as_bookno", as_bookno);
                DataWindowChild bookNo = DwMain.GetChild("as_bookno");
                bookNo.SetFilter("( book_type ='" + bookBase + "' ) and ( book_grp ='" + bookGrp + "' )");
                bookNo.Filter();
            }
            catch { }
        }

        private void JsPostSubmit()
        {
            int lastSeqNo = -1;
            try
            {
                lastSeqNo = int.Parse(HdLastSeqNo.Value);
            }
            catch
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ไม่พบเลขลำดับรายการ");
                return;
            }
            //DepositClient dep = wcf.Deposit;
            ndept = wcf.NDeposit;
            String apvId = state.SsUsername;
            String bookNo = DwUtil.GetString(DwMain, 1, "as_bookno", "");
            String reason = DwUtil.GetString(DwMain, 1, "as_bookreson", "");
            short normFlag = 1;
            try
            {
                short printStatus = 1;
                string xml_return = "";
                short reprint = 1;
                
                if ((reason == "01"|| reason == "02") && state.SsCoopControl == "008001")
                {
                    PostFeeOfBook();
                }
                if ((reason == "01"|| reason == "02") && state.SsCoopControl == "027001") 
                {
                    PostFeeOfBook_dept(); 
                }
                ndept.of_print_book_firstpage(state.SsWsPass, HdDeptAccountNo.Value, state.SsCoopId, state.SsWorkDate, state.SsUsername, bookNo, reason, apvId, normFlag, state.SsPrinterSet, reprint, printStatus, ref xml_return);
                
                //by_max จัดเลขบัญชี
                XmlDocument xmlDoc = new XmlDocument();
                xmlDoc.LoadXml(xml_return);
                string dep_no = WebUtil.ViewAccountNoFormat(xmlDoc.SelectSingleNode("d_dppbkfrt_lpth/d_dppbkfrt_lpth_row/deptaccount_no").InnerText);
                xmlDoc.SelectSingleNode("d_dppbkfrt_lpth/d_dppbkfrt_lpth_row/deptaccount_no").InnerText = dep_no;
                xml_return = xmlDoc.OuterXml;


                if (xml_return != "" && printStatus == 1)
                {
                    UpdateNewBookLastPB(HdDeptAccountNo.Value, lastSeqNo);
                    Printing.DeptPrintBookFirstPage(this, xml_return);
                    HdCloseDlg.Value = "true";
                }
            }
            catch (Exception ex)
            {
                Label1.Text = WebUtil.ErrorMessage(ex);
            }
        }

        private void JsFilterBookNO()
        {

        }
        private void PostFeeOfBook()
        {
             ncommon = wcf.NCommon;
            string member_no ="" ;
            string deptname = "";
            DataTable dt = WebUtil.Query("select member_no,deptaccount_name from dpdeptmaster where deptaccount_no='" + HdDeptAccountNo.Value + "'");
            if (dt.Rows.Count > 0)
            {
                member_no = dt.Rows[0]["member_no"].ToString().Trim();
                deptname = dt.Rows[0]["deptaccount_name"].ToString();
            }
            string ss = state.SsWorkDate.ToString().Substring(0, 10).Trim();
           // string ls_finslipno = ncommon.GetNewDocNo(state.SsWsPass, "FNRECEIVENO");
            string ls_finslipno = ncommon.of_getnewdocno(state.SsWsPass, state.SsCoopControl, "FNRECEIVENO");
            String sqlInsert = @"INSERT INTO FINSLIP
                                (COOP_ID,slip_no,entry_id,entry_date,operate_date,from_system,payment_status,cash_type,payment_desc,
                                 itempay_amt,member_no ,itempaytype_code,pay_recv_status,member_flag,nonmember_detail,machine_id,tofrom_accid,account_no,remark,ref_system                       
                                ) 
                                VALUES 
                                ('" + state.SsCoopId + "','" + ls_finslipno + "','" + state.SsUsername + "',to_date('" + state.SsWorkDate.ToString().Substring(0,10).Trim() + "','mm/dd/yyyy'),to_date('" +
                                    state.SsWorkDate.ToString().Substring(0, 10).Trim() + "','mm/dd/yyyy')" + ",'DEP','" + 8 + "','CSH','ค่าปรับสมุดบัญชีใหม่','" + 50 + "','" + member_no + "','" +
                                "FEE','"+ 0 + "','"+1+"','"+deptname+"','"+state.SsClientIp+"','11030100','"+HdDeptAccountNo.Value+"','" + HdDeptAccountNo.Value + "','DEP')";
            Sta taInsert = new Sta(state.SsConnectionString);
            int result = taInsert.Exe(sqlInsert);

        }
        //BY_BEE เงินฝากผ่านรายการไปการเงินเลย
        private void PostFeeOfBook_dept()
        {
            ncommon = wcf.NCommon;
            string member_no = "";
            string deptname = "";
            DataTable dt = WebUtil.Query("select member_no,deptaccount_name from dpdeptmaster where deptaccount_no='" + HdDeptAccountNo.Value + "'");
            if (dt.Rows.Count > 0)
            {
                member_no = dt.Rows[0]["member_no"].ToString().Trim();
                deptname = dt.Rows[0]["deptaccount_name"].ToString();
            }
            string ls_deptlipno = ncommon.of_getnewdocno(state.SsWsPass, state.SsCoopControl, "DPSLIPNO");
            string ls_finslipno = ncommon.of_getnewdocno(state.SsWsPass, state.SsCoopControl, "FNRECEIVENO");
            //insert deptslip                     
            String sql_depslip = "insert into dpdeptslip   " +
                    "(coop_id, deptslip_no, deptcoop_id,deptgroup_code, deptaccount_no, depttype_code, deptslip_date, recppaytype_code, deptslip_amt, cash_type, prncbal, withdrawable_amt, checkpend_amt, loangarantee_amt, accuint_amt, fee_amt, preprncbal, preaccuint_amt, entry_id, entry_date, intarrear_amt, dpstm_no, deptitemtype_code, calint_from, calint_to, int_amt, int_return, item_status, closeday_status, other_amt, count_wtd, machine_id, nobook_flag, int_curyear, tofrom_accid, posttovc_flag, tax_amt, int_bfyear, accid_flag, showfor_dept)    " +
                    "values     " +
                    "('" + state.SsCoopId + "','" + ls_deptlipno + "','" + state.SsCoopId + "','00','" + HdDeptAccountNo.Value + "','" + HdDeptAccountNo.Value.Substring(3, 2) + "',to_date('" + state.SsWorkDate.ToString("dd/MM/yyyy") + "','dd/mm/yyyy'), 'FEE','20', 'CSH', '20', '20', 0, 0, 0, 0, 0, 0,'" + state.SsUsername + "', to_date('" + state.SsWorkDate.ToString("dd/MM/yyyy") + "','dd/mm/yyyy'), 0, '1', 'FEE', to_date('" + state.SsWorkDate.ToString("dd/MM/yyyy") + "','dd/mm/yyyy'), to_date('" + state.SsWorkDate.ToString("dd/MM/yyyy") + "','dd/mm/yyyy'), 0, 0, 1, 0, 0, 0,'" + state.SsUsername + "', 0, 0,'40200000', 0, 0, 0, 0, 1) ";
            Sdt sqlInsertDeptSlip = WebUtil.QuerySdt(sql_depslip);
            String sqlInsert = @"INSERT INTO FINSLIP
                                (COOP_ID,slip_no,entry_id,entry_date,operate_date,from_system,payment_status,cash_type,payment_desc,
                                 itempay_amt,member_no ,itempaytype_code,pay_recv_status,member_flag,nonmember_detail,machine_id,tofrom_accid,remark,ref_system                       
                                ) 
                                VALUES 
                                ('" + state.SsCoopId + "','" + ls_finslipno + "','" + state.SsUsername + "',to_date('" + state.SsWorkDate.ToString().Substring(0, 10).Trim() + "','mm/dd/yyyy'),to_date('" +
                                    state.SsWorkDate.ToString().Substring(0, 10).Trim() + "','mm/dd/yyyy')" + ",'DEP','" + 1 + "','CSH','ค่าปรับสมุดบัญชีใหม่','" + 20 + "','" + member_no + "','" +
                                "FEE','" + 1 + "','" + 1 + "','" + deptname + "','" + state.SsClientIp + "','40200000','" + HdDeptAccountNo.Value + "','DEP')";
            Sta taInsert = new Sta(state.SsConnectionString);
            int result = taInsert.Exe(sqlInsert);

            //BY_BEE ผ่านรายการไปการเงิน
            String laststm_no = "0";
            String amount_balance = "0";            
            DataTable dt_fin = WebUtil.Query("select laststm_no+1 as laststm_no,amount_balance+20 as  amount_balance from fintableusermaster where opdatework=to_date('" + state.SsWorkDate.ToString("dd/MM/yyyy") + "', 'dd/mm/yyyy')  and user_name='" + state.SsUsername + "'");
            if (dt_fin.Rows.Count > 0)
            {
                laststm_no =     dt_fin.Rows[0]["laststm_no"].ToString().Trim();
                amount_balance = dt_fin.Rows[0]["amount_balance"].ToString().Trim();
            }
            String sqlInsert_FIN = @"INSERT INTO fintableuserdetail
                                (coop_id,user_name,opdatework,seqno,status,amount,itemtype_code,itemtype_desc,amount_balance,moneytype_code ) 
                                VALUES 
                                ('" + state.SsCoopId + "','" + state.SsUsername + "',to_date('" + state.SsWorkDate.ToString("dd/MM/yyyy") + "', 'dd/mm/yyyy'),'" + laststm_no + "','22','20','FEE','ค่าปรับสมุดบัญชีใหม่','" + amount_balance + "','CSH')";
            Sdt sqlinsert = WebUtil.QuerySdt(sqlInsert_FIN);
            String updateFinmas = "update fintableusermaster set laststm_no = '" + laststm_no +
                             "', amount_balance = '" + amount_balance + "' ";
            Sdt sqlupdatefinmas = WebUtil.QuerySdt(updateFinmas);
            //BY_BEE END


        }
        public int UpdateNewBookLastPB(string deptAccountNo, int seqNo)
        {
           // Security sec = new Security(wsPass);
            //Sta ta = new Sta(sec.ConnectionString);
            try
            {
                int seqNew = seqNo - 1;
                seqNew = seqNew < 0 ? 0 : seqNew; //ถ้าน้อยกว่า 0 ให้เป็น 0

                String sql = "update dpdeptmaster set lastrec_no_pb = " + seqNew + ", lastline_no_pb = 1, lastpage_no_pb = 1 where coop_id = '" + state.SsCoopControl + "' and deptaccount_no='" + deptAccountNo + "'";
               // int ii = ta.Exe(sql);
                Sdt dt = WebUtil.QuerySdt(sql);
                //if (ii < 1)
                //{
                //    throw new Exception("ไม่พบการ update lastrec_no_pb " + deptAccountNo);
                //}
                //ta.Close();
            }
            catch (Exception ex)
            {
               // ta.Close();
                throw ex;
            }
            return 1;
        }
    }
}