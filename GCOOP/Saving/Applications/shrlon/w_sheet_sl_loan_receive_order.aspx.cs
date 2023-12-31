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
using CoreSavingLibrary.WcfNCommon;
using CoreSavingLibrary.WcfNShrlon;
using Sybase.DataWindow;
using DataLibrary;


namespace Saving.Applications.shrlon
{
    public partial class w_sheet_sl_loan_receive_order : PageWebSheet, WebSheet
    {

        private n_shrlonClient slService;
        private n_commonClient commonSrv;
        private DwThDate tDwMain;
        protected String newClear;
        protected String saveSlipLnRcv;
        protected String initLnRcvlist;
        protected String initDataWindow;
        protected String initLnRcvReCalInt;
        protected String calculateitempayamt;
        protected String fittermoneytype;
        protected String jsRefresh;
        protected ArrayList dwList;
        protected String setPayoutclrAmt;
        protected String[] arrValue = new String[3];
        String loanContract_No;
        String as_initfrom = "", as_reqcontno = "", as_xmllnrcv = "";
        protected String GetNewLoan;
       
        //*******ประกาศตัวเกี่ยวกับ  Reprot********//
        string reqdoc_no = "";
        String member_no = "";
        string fromset = "";
        int x = 1;
        protected String app;
        protected String gid;
        protected String rid;
        protected String pdf;

        protected String jsrunProcessLoan;
        protected String jsRunProcessInvoice;
        protected String jsrunProcessAgreeLoan;
        protected String jsrunProcessAgreeColl;
        protected String jsrunProcessCollReport;
        protected String jsrunProcessDeptReport;

        protected String jspopupAgreeLoanReport;
        protected String jspopupAgreeCollReport;
        protected String jspopupCollReport;
        protected String jspopupReportInvoice;
        protected String jspopupLoanReport;
        protected String jspopupDeptReport;
        protected String jsPrintAppletPB;


        //*******end Reprot********//

        public void InitJsPostBack()
        {
            saveSlipLnRcv = WebUtil.JsPostBack(this, "saveSlipLnRcv");
            initDataWindow = WebUtil.JsPostBack(this, "initDataWindow");
            initLnRcvReCalInt = WebUtil.JsPostBack(this, "initLnRcvReCalInt");
            initLnRcvlist = WebUtil.JsPostBack(this, "initLnRcvlist");
            newClear = WebUtil.JsPostBack(this, "newClear");
            jsRefresh = WebUtil.JsPostBack(this, "jsRefresh");
            GetNewLoan = WebUtil.JsPostBack(this, "GetNewLoan");
            setPayoutclrAmt = WebUtil.JsPostBack(this, "setPayoutclrAmt");
            calculateitempayamt = WebUtil.JsPostBack(this, "calculateitempayamt");
            fittermoneytype = WebUtil.JsPostBack(this, "fittermoneytype");



            jsrunProcessLoan = WebUtil.JsPostBack(this, "jsrunProcessLoan");
            jsRunProcessInvoice = WebUtil.JsPostBack(this, "jsRunProcessInvoice");
            jsrunProcessAgreeColl = WebUtil.JsPostBack(this, "jsrunProcessAgreeColl");
            jsrunProcessCollReport = WebUtil.JsPostBack(this, "jsrunProcessCollReport");
            jsrunProcessAgreeLoan = WebUtil.JsPostBack(this, "jsrunProcessAgreeLoan");
            jsrunProcessDeptReport = WebUtil.JsPostBack(this, "jsrunProcessDeptReport");
            jspopupAgreeLoanReport = WebUtil.JsPostBack(this, "jspopupAgreeLoanReport");
            jspopupAgreeCollReport = WebUtil.JsPostBack(this, "jspopupAgreeCollReport");
            jspopupCollReport = WebUtil.JsPostBack(this, "jspopupCollReport");
            jspopupReportInvoice = WebUtil.JsPostBack(this, "jspopupReportInvoice");
            jspopupLoanReport = WebUtil.JsPostBack(this, "jspopupLoanReport");
            jspopupDeptReport = WebUtil.JsPostBack(this, "jspopupDeptReport");
            jsPrintAppletPB = WebUtil.JsPostBack(this, "jsPrintAppletPB");


            tDwMain = new DwThDate(DwMain, this);
            tDwMain.Add("operate_date", "operate_tdate");

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
            if (eventArg == "jsPrintAppletPB")
            {
                JsPrintAppletPB();

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
            if (eventArg == "initLnRcvlist")
            {

                InitLnRcvlist();
            }
            if (eventArg == "newClear")
            {
                NewClear();

            }
            if (eventArg == "fittermoneytype")
            {
                Fittermoneytype();


            }

            if (eventArg == "setPayoutclrAmt") { SetPayoutclrAmt(); }

            else if (eventArg == "jsrunProcessLoan") { JsrunProcessLoan(); }
            else if (eventArg == "jsRunProcessInvoice")
            {
                // JsRunProcessInvoice();
            }
            else if (eventArg == "jsrunProcessAgreeColl") { JsrunProcessAgreeColl(); }
            else if (eventArg == "jsrunProcessCollReport") { JsrunProcessCollReport(); }
            else if (eventArg == "jsrunProcessAgreeLoan") { JsrunProcessAgreeLoan(); }

            else if (eventArg == "jspopupAgreeLoanReport") { JspopupAgreeLoanReport(); }
            else if (eventArg == "jspopupAgreeCollReport") { JspopupAgreeCollReport(); }
            else if (eventArg == "jspopupCollReport") { JspopupCollReport(); }
            else if (eventArg == "jspopupReportInvoice")
            {
                //JspopupReportInvoice();
            }
            else if (eventArg == "jspopupLoanReport") { JspopupLoanReport(); }
            else if (eventArg == "jspopupDeptReport") { JspopupDeptReport(); }

        }

        private void JspopupLoanReport()
        {
            //เด้ง Popup ออกรายงานเป็น PDF.
            //String pop = "Gcoop.OpenPopup('http://localhost/GCOOP/WebService/Report/PDF/20110223093839_shrlonchk_SHRLONCHK001.pdf')";

            //String pop = "Gcoop.OpenPopup('" + Session["Loan"].ToString() + "')";
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "DsReport", pop, true);
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            string as_xml = "";
            try
            {
                try
                {
                    fromset = state.SsPrinterSet;

                }
                catch (Exception ex)
                {
                    fromset = "216";

                }
                //string re = slService.of_printloan(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
            }
            catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์" + ex); }


        }

        private void JsPrintAppletPB()
        {

            //  Printing.PrintAppletPB(this, “ชื่อฟอร์ม pbslip”, xml);
            //  Printing.PrintAppletPB(this, "d_slip_payreceive ", );

            string slipNo;
            string coopId;
            coopId = state.SsCoopControl;
            slipNo = HdSlipno.Value;
            string sql = @"
                                    SELECT FINRECPAY.SLIP_NO,
                                    FINRECPAY.ENTRY_ID,
                                    FINRECPAY.ENTRY_DATE,
                                    FINRECPAY.OPERATE_DATE,
                                    FINRECPAY.FROM_SYSTEM,
                                    FINRECPAY.PAYMENT_STATUS,
                                    FINRECPAY.CASH_TYPE,
                                    FINRECPAY.PAYMENT_DESC,
                                    FINRECPAY.BANK_CODE,
                                    FINRECPAY.BANK_BRANCH,
                                    FINRECPAY.ITEMPAY_AMT,
                                    FINRECPAY.MEMBER_NO,
                                    FINRECPAY.ITEMPAYTYPE_CODE,
                                    FINRECPAY.PAY_RECV_STATUS,
                                    FINRECPAY.MEMBER_FLAG,
                                    FINRECPAY.NONMEMBER_DETAIL,
                                    FINRECPAY.ACCOUNT_NO,
                                    FINRECPAY.REMARK,
                                    FINRECPAY.TAX_FLAG,
                                    FINRECPAY.TAX_AMT,
                                    FINRECPAY.ITEM_AMTNET,
                                    FINRECPAY.TAX_RATE,
                                    FINRECPAY.DES_ACCID,
                                    FINRECPAY.TAX_CODE,
                                    FINRECPAY.VAT_AMT,
                                    FINRECPAY.BRANCH_ID,
                                    FINRECPAY.DEPARTMENT_CODE,
                                    FINRECPAY.FINDISBURSED_CODE,
                                    FINRECPAY.APPROVE_FLAG,
                                    FINRECPAY.DUTY_REPAY_DATE,
                                    FINRECPAY.POSITION_DESC,
                                    FINRECPAY.BANKACCOUNT_NO,
                                    FINRECPAY.VAT_RATE,
                                    FINRECPAY.TAXBEFORECAL_AMT,
                                    FINRECPAY.TAXRATE_DESC,
                                    FINRECPAY.TAXEXCLUDECAL_AMT,
                                    FINRECPAY.PROJECT_DESC,
                                    FINRECPAY.TOAPPROVAL_DESC,
                                    FINRECPAY.FROMREQUEST_DESC,
                                    FINRECPAY.PAYMENT_DESC_1,
                                    FINRECPAY.PAYMENT_DESC_2,
                                    FINRECPAY.REMARK_1,
                                    FINRECPAY.REMARK_2,
                                    FINRECPAY.REMARK_3,
                                    FINRECPAY.REMARK_4,
                                    FINRECPAY.REMARK_5,
                                    FINRECPAY.REMARK_6,
                                    FINRECPAY.TAXPAY_DESC,
                                    FINRECPAY.TAXPAY_ID
                                    FROM FINRECPAY
                                    WHERE (FINRECPAY.BRANCH_ID = '" + coopId + @"') AND
                                    (FINRECPAY.SLIP_NO = '" + slipNo + @"' )";
            DataTable data = WebUtil.Query(sql); //เดิม this.Query(sql);
            Printing.PrintAppletPB(this, "d_slip_payreceive", data);
        }

        private void JspopupLoanemerReport()
        {
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            string as_xml = "";
            try
            {
                try
                {
                    fromset = state.SsPrinterSet;

                }
                catch (Exception ex)
                {
                    fromset = "216";

                }
                //string re = wcf.NShrlon.of_printloan(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
            }
            catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์" + ex); }
        }

        private void JspopupCollReport()
        {

            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            string as_xml = "";
            try
            {
                try
                {
                    fromset = state.SsPrinterSet;

                }
                catch (Exception ex)
                {
                    fromset = "216";

                }
                //string re = slService.of_printloancoll(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
            }
            catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์" + ex); }
        }

        private void JspopupAgreeCollReport()
        {

            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            string as_xml = "";
            try
            {
                try
                {
                    fromset = state.SsPrinterSet;

                }
                catch (Exception ex)
                {
                    fromset = "216";

                }
                //string re = slService.of_printloancollagree(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
            }
            catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์" + ex); }
        }

        private void JspopupAgreeLoanReport()
        {

            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            string as_xml = "";
            try
            {
                try
                {
                    fromset = state.SsPrinterSet;

                }
                catch (Exception ex)
                {
                    fromset = "216";

                }
                //string re = slService.of_printloanagree(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
            }
            catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์" + ex); }

        }

        private void JspopupDeptReport()
        {

            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            string as_xml = "";
            try
            {
                try
                {
                    fromset = state.SsPrinterSet;

                }
                catch (Exception ex)
                {
                    fromset = "216";

                }
                ////string re = slService.of_printloandept(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
            }
            catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์" + ex); }
        }
        private void JspopupCollReport(bool isJsPrint)
        {
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            try
            {
                //                String sql = @"
                //                    SELECT 
                //	                    MBUCFPRENAME.PRENAME_DESC,   
                //	                    MBMEMBMASTER.MEMB_NAME,   
                //	                    MBMEMBMASTER.MEMB_SURNAME,   
                //	                    LNREQLOAN.LOANRCVFIX_DATE,   
                //	                    LNLOANTYPE.LOANTYPE_DESC,   
                //	                    MBUCFMEMBGROUP_A.MEMBGROUP_CODE,   
                //	                    MBMEMBMASTER.MEMBER_NO,   
                //	                    MBUCFMEMBTYPE.MEMBTYPE_DESC,   
                //	                    MBMEMBMASTER.POSITION_DESC,   
                //	                    MBMEMBMASTER.LEVEL_CODE,   
                //	                    MBUCFMEMBGROUP_A.MEMBGROUP_DESC,   
                //	                    MBUCFMEMBGROUP_B.MEMBGROUP_DESC,   
                //	                    LNREQLOAN.LOANREQUEST_AMT,   
                //	                    LNCFLOANINTRATEDET.INTEREST_RATE,   
                //	                    LNREQLOAN.PERIOD_PAYAMT,   
                //	                    LNUCFLOANOBJECTIVE.LOANOBJECTIVE_DESC,   
                //	                    LNLOANTYPE.LOANTYPE_CODE,   
                //	                    LNREQLOAN.PERIOD_PAYMENT ,
                //	                    (select b.prename_desc||'  '||a.memb_name||'   '||a.memb_surname from mbmembmaster a,mbucfprename b where a.prename_code =b.prename_code and a.coop_id =lnreqloan.memcoop_id and a.member_no =lnreqloan.member_no)as loanreq_name,
                //	                    (select c.membtype_desc from mbmembmaster a,mbucfprename b,mbucfmembtype c where a.prename_code =b.prename_code and a.coop_id =lnreqloan.memcoop_id and a.member_no =lnreqloan.member_no and a.coop_id = c.coop_id and a.membtype_code =c.membtype_code)as loanreq_membtype,
                //	                    (select a.position_desc from mbmembmaster a,mbucfprename b where a.prename_code =b.prename_code and a.coop_id =lnreqloan.memcoop_id and a.member_no =lnreqloan.member_no)as loanreq_position,
                //	                    (select d.membgroup_desc from mbmembmaster a,mbucfprename b,mbucfmembgroup c,mbucfmembgroup d where a.prename_code =b.prename_code and a.coop_id =lnreqloan.memcoop_id and a.member_no =lnreqloan.member_no and a.coop_id =c.coop_id and a.membgroup_code =c.membgroup_code and c.coop_id =d.coop_id and c.membgroup_control =d.membgroup_code )as loanreq_membgroup_a,
                //	                    (select c.membgroup_desc from mbmembmaster a,mbucfprename b,mbucfmembgroup c,mbucfmembgroup d where a.prename_code =b.prename_code and a.coop_id =lnreqloan.memcoop_id and a.member_no =lnreqloan.member_no and a.coop_id =c.coop_id and a.membgroup_code =c.membgroup_code and c.coop_id =d.coop_id and c.membgroup_control =d.membgroup_code )as loanreq_membgroup_b,
                //	                    (select a.level_code from mbmembmaster a,mbucfprename b where a.prename_code =b.prename_code and a.coop_id =lnreqloan.memcoop_id and a.member_no =lnreqloan.member_no)as loanreq_level,
                //	                    lnreqloan.member_no as loanreq_memberno,
                //	                    lncontmaster.loancontract_no,
                //	                    lnreqloancoll.seq_no,'  ' as age ,'        'as mem_no
                //                    FROM 
                //	                    LNREQLOAN,   
                //	                    MBMEMBMASTER,   
                //	                    MBUCFPRENAME,   
                //	                    LNCONTMASTER,   
                //	                    LNLOANTYPE,   
                //	                    MBUCFMEMBGROUP MBUCFMEMBGROUP_A,   
                //	                    MBUCFMEMBGROUP MBUCFMEMBGROUP_B,   
                //	                    MBUCFMEMBTYPE,   
                //	                    LNCFLOANINTRATE,   
                //	                    LNCFLOANINTRATEDET,   
                //	                    LNUCFLOANOBJECTIVE,
                //	                    lnreqloancoll
                //                    WHERE 
                //	                    ( lnreqloan.coop_id = lncontmaster.coop_id (+)) and  
                //	                    ( lnreqloan.loanrequest_docno = lncontmaster.loanrequest_docno (+)) and  
                //	                    ( MBMEMBMASTER.PRENAME_CODE = MBUCFPRENAME.PRENAME_CODE ) and  
                //	                    ( LNREQLOANCOLL.COOP_ID = MBMEMBMASTER.COOP_ID ) and  
                //	                    ( LNREQLOANCOLL.REF_COLLNO = MBMEMBMASTER.MEMBER_NO ) and  
                //	                    ( LNREQLOAN.COOP_ID = LNLOANTYPE.COOP_ID ) and  
                //	                    ( LNREQLOAN.LOANTYPE_CODE = LNLOANTYPE.LOANTYPE_CODE ) and  
                //	                    ( MBMEMBMASTER.COOP_ID = MBUCFMEMBGROUP_A.COOP_ID ) and  
                //	                    ( MBMEMBMASTER.MEMBGROUP_CODE = MBUCFMEMBGROUP_A.MEMBGROUP_CODE ) and  
                //	                    ( MBUCFMEMBGROUP_A.COOP_ID = MBUCFMEMBGROUP_B.COOP_ID ) and  
                //	                    ( MBUCFMEMBGROUP_A.MEMBGROUP_CONTROL = MBUCFMEMBGROUP_B.MEMBGROUP_CODE ) and  
                //	                    ( MBMEMBMASTER.COOP_ID = MBUCFMEMBTYPE.COOP_ID ) and  
                //	                    ( MBMEMBMASTER.MEMBTYPE_CODE = MBUCFMEMBTYPE.MEMBTYPE_CODE ) and  
                //	                    ( LNCFLOANINTRATEDET.COOP_ID = LNCFLOANINTRATE.COOP_ID ) and  
                //	                    ( LNCFLOANINTRATEDET.LOANINTRATE_CODE = LNCFLOANINTRATE.LOANINTRATE_CODE ) and  
                //	                    ( LNREQLOAN.INT_CONTINTTABCODE = LNCFLOANINTRATE.LOANINTRATE_CODE ) and  
                //	                    ( LNREQLOAN.COOP_ID = LNCFLOANINTRATE.COOP_ID ) and  
                //	                    ( LNREQLOAN.COOP_ID = LNUCFLOANOBJECTIVE.COOP_ID ) and  
                //	                    ( LNREQLOAN.LOANOBJECTIVE_CODE = LNUCFLOANOBJECTIVE.LOANOBJECTIVE_CODE ) and  
                //	                    ( ( LNREQLOAN.COOP_ID = '" + state.SsCoopId + @"' ) AND  
                //	                    ( LNREQLOAN.LOANREQUEST_DOCNO = '" + reqdoc_no + @"' ) )    and
                //	                    lnreqloan.coop_id = lnreqloancoll.coop_id and
                //	                    lnreqloan.loanrequest_docno = lnreqloancoll.loanrequest_docno and
                //	                    lnreqloancoll.loancolltype_code ='01'
                //                ";
                //                DataTable data = WebUtil.Query(sql);
                //                Printing.Print(this, "Slip/shrlon/loanrequest_coll.aspx", data, 1);
                int printMode = xmlconfig.ShrlonPrintMode;
                Printing.ShrlonPrintCollReport(this, state.SsCoopControl, reqdoc_no, printMode);
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์: " + ex.Message);
            }
        }

        private void JspopupLoanReport(bool isJsPrint, int printMode)
        {
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            try
            {
                Printing.ShrlonPrintLoanReport(this, state.SsCoopControl, reqdoc_no, printMode);
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์: " + ex.Message);
            }
        }

        private void JspopupAgreeCollReport(bool isJsPrint, int printMode)
        {
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            try
            {
                Printing.ShrlonPrintAgreeCollReport(this, state.SsCoopControl, reqdoc_no, printMode);
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์: " + ex.Message);
            }
        }

        private void JspopupAgreeLoanReport(bool isJsPrint, int printMode)
        {
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            try
            {
                Printing.ShrlonPrintAgreeLoanReport(this, state.SsCoopControl, reqdoc_no, printMode);
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์: " + ex.Message);
            }
        }

        private void JspopupDeptReport(bool isJsPrint, int printMode)
        {
            try
            {
                reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
                member_no = DwMain.GetItemString(1, "member_no");
                Printing.ShrlonPrintDeptReport(this, state.SsCoopControl, reqdoc_no, printMode);
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์: " + ex.Message);
            }
        }

        private void JspopupLoanemerReport(bool isJsPrint, int printMode)
        {
            reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
            member_no = DwMain.GetItemString(1, "member_no");
            try
            {
                Printing.ShrlonPrintEmerReport(this, state.SsCoopControl, reqdoc_no, printMode);
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ตรวจสอบเครื่องพิมพ์: " + ex.Message);
            }
        }


        private void JsrunProcessAgreeLoan()
        {

            // --- Page Arguments
            try
            {
                app = Request["app"].ToString();
            }
            catch { }
            if (app == null || app == "")
            {
                app = state.SsApplication;
            }
            try
            {
                //gid = Request["gid"].ToString();
                gid = "LNNORM_DAILY";
            }
            catch { }
            try
            {
                //rid = Request["rid"].ToString();
                rid = "LNNORM_DAILY18";
            }
            catch { }

            String doc_no = DwMain.GetItemString(1, "loanrequest_docno");

            String coop_id;
            try { coop_id = DwMain.GetItemString(1, "coop_id"); }
            catch { coop_id = state.SsCoopId; }
            if (x == 2)
            {
                doc_no = reqdoc_no;
            }
            if (doc_no == null || doc_no == "")
            {
                return;
            }


            //แปลง Criteria ให้อยู่ในรูปแบบมาตรฐาน.
            ReportHelper lnv_helper = new ReportHelper();
            lnv_helper.AddArgument(coop_id, ArgumentType.String);
            lnv_helper.AddArgument(doc_no, ArgumentType.String);

            //ชื่อไฟล์ PDF = YYYYMMDDHHMMSS_<GID>_<RID>.PDF

            String pdfFileName = DateTime.Now.ToString("yyyyMMddHHmmss", WebUtil.EN);
            pdfFileName += "_" + gid + "_" + rid + ".pdf";
            pdfFileName = pdfFileName.Trim();

            //ส่งให้ ReportService สร้าง PDF ให้ {โดยปกติจะอยู่ใน C:\GCOOP\Saving\PDF\}.
            try
            {
                //CoreSavingLibrary.WcfReport.ReportClient lws_report = wcf.Report;
                //String criteriaXML = lnv_helper.PopArgumentsXML();
                //this.pdf = lws_report.GetPDFURL(state.SsWsPass) + pdfFileName;
                //String li_return = lws_report.Run(state.SsWsPass, app, gid, rid, criteriaXML, pdfFileName);
                //if (li_return == "true")
                //{
                //    HdOpenIFrame.Value = "True";
                //    HdcheckPdf.Value = "True";

                //}
                //else if (li_return != "true")
                //{
                //    HdcheckPdf.Value = "False";
                //}
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                return;
            }
            Session["AgreeLoan"] = pdf;
            // PopupReport();

        }

        private void JsrunProcessCollReport()
        {

            // --- Page Arguments
            try
            {
                app = Request["app"].ToString();
            }
            catch { }
            if (app == null || app == "")
            {
                app = state.SsApplication;
            }
            try
            {
                //gid = Request["gid"].ToString();
                gid = "LNNORM_DAILY";
            }
            catch { }
            try
            {
                //rid = Request["rid"].ToString();
                rid = "LNNORM_DAILY17";
            }
            catch { }

            String doc_no = DwMain.GetItemString(1, "loanrequest_docno");

            String coop_id;
            try { coop_id = DwMain.GetItemString(1, "coop_id"); }
            catch { coop_id = state.SsCoopId; }
            if (x == 2)
            {
                doc_no = reqdoc_no;
            }
            if (doc_no == null || doc_no == "")
            {
                return;
            }



            //แปลง Criteria ให้อยู่ในรูปแบบมาตรฐาน.
            ReportHelper lnv_helper = new ReportHelper();
            lnv_helper.AddArgument(coop_id, ArgumentType.String);
            lnv_helper.AddArgument(doc_no, ArgumentType.String);


            //ชื่อไฟล์ PDF = YYYYMMDDHHMMSS_<GID>_<RID>.PDF

            String pdfFileName = DateTime.Now.ToString("yyyyMMddHHmmss", WebUtil.EN);
            pdfFileName += "_" + gid + "_" + rid + ".pdf";
            pdfFileName = pdfFileName.Trim();

            //ส่งให้ ReportService สร้าง PDF ให้ {โดยปกติจะอยู่ใน C:\GCOOP\Saving\PDF\}.
            try
            {
                //CoreSavingLibrary.WcfReport.ReportClient lws_report = wcf.Report;
                //String criteriaXML = lnv_helper.PopArgumentsXML();
                //this.pdf = lws_report.GetPDFURL(state.SsWsPass) + pdfFileName;
                //String li_return = lws_report.Run(state.SsWsPass, app, gid, rid, criteriaXML, pdfFileName);
                //if (li_return == "true")
                //{
                //    HdOpenIFrame.Value = "True";
                //    HdcheckPdf.Value = "True";

                //}
                //else if (li_return != "true")
                //{
                //    HdcheckPdf.Value = "False";
                //}
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                return;
            }
            Session["Coll"] = pdf;
            // PopupReport();

        }

        private void JsrunProcessAgreeColl()
        {

            // --- Page Arguments
            try
            {
                app = Request["app"].ToString();
            }
            catch { }
            if (app == null || app == "")
            {
                app = state.SsApplication;
            }
            try
            {
                //gid = Request["gid"].ToString();
                gid = "LNNORM_DAILY";
            }
            catch { }
            try
            {
                //rid = Request["rid"].ToString();
                rid = "LNNORM_DAILY16";
            }
            catch { }

            String doc_no = DwMain.GetItemString(1, "loanrequest_docno");

            String coop_id;
            try { coop_id = DwMain.GetItemString(1, "coop_id"); }
            catch { coop_id = state.SsCoopId; }
            if (x == 2)
            {
                doc_no = reqdoc_no;
            }
            if (doc_no == null || doc_no == "")
            {
                return;
            }




            //แปลง Criteria ให้อยู่ในรูปแบบมาตรฐาน.
            ReportHelper lnv_helper = new ReportHelper();
            lnv_helper.AddArgument(coop_id, ArgumentType.String);
            lnv_helper.AddArgument(doc_no, ArgumentType.String);


            //ชื่อไฟล์ PDF = YYYYMMDDHHMMSS_<GID>_<RID>.PDF

            String pdfFileName = DateTime.Now.ToString("yyyyMMddHHmmss", WebUtil.EN);
            pdfFileName += "_" + gid + "_" + rid + ".pdf";
            pdfFileName = pdfFileName.Trim();

            //ส่งให้ ReportService สร้าง PDF ให้ {โดยปกติจะอยู่ใน C:\GCOOP\Saving\PDF\}.
            try
            {
                //CoreSavingLibrary.WcfReport.ReportClient lws_report = wcf.Report;
                //String criteriaXML = lnv_helper.PopArgumentsXML();
                //this.pdf = lws_report.GetPDFURL(state.SsWsPass) + pdfFileName;
                //String li_return = lws_report.Run(state.SsWsPass, app, gid, rid, criteriaXML, pdfFileName);
                //if (li_return == "true")
                //{
                //    HdOpenIFrame.Value = "True";
                //    HdcheckPdf.Value = "True";

                //}
                //else if (li_return != "true")
                //{
                //    HdcheckPdf.Value = "False";
                //}
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                return;
            }
            Session["AgreeColl"] = pdf;
            // PopupReport();

        }

        private void JsrunProcessLoan()
        {


            // --- Page Arguments
            try
            {
                app = Request["app"].ToString();
            }
            catch { }
            if (app == null || app == "")
            {
                app = state.SsApplication;
            }
            try
            {
                //gid = Request["gid"].ToString();
                gid = "LNNORM_DAILY";
            }
            catch { }
            try
            {
                //rid = Request["rid"].ToString();
                rid = "LNNORM_DAILY15";
            }
            catch { }

            String doc_no = DwMain.GetItemString(1, "loanrequest_docno");

            String coop_id;
            try { coop_id = DwMain.GetItemString(1, "coop_id"); }
            catch { coop_id = state.SsCoopId; }
            if (x == 2)
            {
                doc_no = reqdoc_no;
            }
            if (doc_no == null || doc_no == "")
            {
                return;
            }



            //แปลง Criteria ให้อยู่ในรูปแบบมาตรฐาน.
            ReportHelper lnv_helper = new ReportHelper();
            lnv_helper.AddArgument(coop_id, ArgumentType.String);
            lnv_helper.AddArgument(doc_no, ArgumentType.String);


            //ชื่อไฟล์ PDF = YYYYMMDDHHMMSS_<GID>_<RID>.PDF

            String pdfFileName = DateTime.Now.ToString("yyyyMMddHHmmss", WebUtil.EN);
            pdfFileName += "_" + gid + "_" + rid + ".pdf";
            pdfFileName = pdfFileName.Trim();

            //ส่งให้ ReportService สร้าง PDF ให้ {โดยปกติจะอยู่ใน C:\GCOOP\Saving\PDF\}.
            try
            {
                //CoreSavingLibrary.WcfReport.ReportClient lws_report = wcf.Report;
                //String criteriaXML = lnv_helper.PopArgumentsXML();
                //this.pdf = lws_report.GetPDFURL(state.SsWsPass) + pdfFileName;
                //String li_return = lws_report.Run(state.SsWsPass, app, gid, rid, criteriaXML, pdfFileName);
                //if (li_return == "true")
                //{
                //    HdOpenIFrame.Value = "True";
                //    HdcheckPdf.Value = "True";

                //}
                //else if (li_return != "true")
                //{
                //    HdcheckPdf.Value = "False";
                //}
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                return;
            }
            Session["Loan"] = pdf;
            // PopupReport();

        }

        private void jJsrunProcessDeptReport()
        {

            // --- Page Arguments
            try
            {
                app = Request["app"].ToString();
            }
            catch { }
            if (app == null || app == "")
            {
                app = state.SsApplication;
            }
            try
            {
                //gid = Request["gid"].ToString();
                gid = "LNNORM_DAILY";
            }
            catch { }
            try
            {
                //rid = Request["rid"].ToString();
                rid = "LNNORM_DAILY19";
            }
            catch { }

            String doc_no = DwMain.GetItemString(1, "loanrequest_docno");

            String coop_id;
            try { coop_id = DwMain.GetItemString(1, "coop_id"); }
            catch { coop_id = state.SsCoopControl; }
            if (x == 2)
            {
                doc_no = reqdoc_no;
            }
            if (doc_no == null || doc_no == "")
            {
                return;
            }



            //แปลง Criteria ให้อยู่ในรูปแบบมาตรฐาน.
            ReportHelper lnv_helper = new ReportHelper();
            lnv_helper.AddArgument(coop_id, ArgumentType.String);
            lnv_helper.AddArgument(doc_no, ArgumentType.String);


            //ชื่อไฟล์ PDF = YYYYMMDDHHMMSS_<GID>_<RID>.PDF

            String pdfFileName = DateTime.Now.ToString("yyyyMMddHHmmss", WebUtil.EN);
            pdfFileName += "_" + gid + "_" + rid + ".pdf";
            pdfFileName = pdfFileName.Trim();

            //ส่งให้ ReportService สร้าง PDF ให้ {โดยปกติจะอยู่ใน C:\GCOOP\Saving\PDF\}.
            try
            {
                //CoreSavingLibrary.WcfReport.ReportClient lws_report = wcf.Report;
                //String criteriaXML = lnv_helper.PopArgumentsXML();
                //this.pdf = lws_report.GetPDFURL(state.SsWsPass) + pdfFileName;
                //String li_return = lws_report.Run(state.SsWsPass, app, gid, rid, criteriaXML, pdfFileName);
                //if (li_return == "true")
                //{
                //    HdOpenIFrame.Value = "True";
                //    HdcheckPdf.Value = "True";

                //}
                //else if (li_return != "true")
                //{
                //    HdcheckPdf.Value = "False";
                //}
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                return;
            }
            Session["dept"] = pdf;
            // PopupReport();

        }

        private void JspopupReportslipfin()
        {
            //เด้ง Popup ออกรายงานเป็น PDF.
            //String pop = "Gcoop.OpenPopup('http://localhost/GCOOP/WebService/Report/PDF/20110223093839_shrlonchk_SHRLONCHK001.pdf')";

            String pop = "Gcoop.OpenPopup('" + Session["pdfslipfin"].ToString() + "')";
            ClientScript.RegisterClientScriptBlock(this.GetType(), "DsReport", pop, true);
        }

        private void JsRunProcessslipfin()
        {

            // --- Page Arguments
            try
            {
                app = Request["app"].ToString();
            }
            catch { }
            if (app == null || app == "")
            {
                app = state.SsApplication;
            }
            try
            {
                //gid = Request["gid"].ToString();
                gid = "LNNORM_DAILY";
            }
            catch { }
            try
            {
                //rid = Request["rid"].ToString();
                rid = "LNNORM_DAILY20";
            }
            catch { }

            String doc_no = DwMain.GetItemString(1, "loanrequest_docno");

            String coop_id;
            try { coop_id = DwMain.GetItemString(1, "coop_id"); }
            catch { coop_id = state.SsCoopControl; }
            if (x == 2)
            {
                doc_no = reqdoc_no;
            }

            if (doc_no == null || doc_no == "")
            {
                return;
            }


            //แปลง Criteria ให้อยู่ในรูปแบบมาตรฐาน.
            ReportHelper lnv_helper = new ReportHelper();
            lnv_helper.AddArgument(coop_id, ArgumentType.String);
            lnv_helper.AddArgument(doc_no, ArgumentType.String);

            //ชื่อไฟล์ PDF = YYYYMMDDHHMMSS_<GID>_<RID>.PDF

            String pdfFileName = DateTime.Now.ToString("yyyyMMddHHmmss", WebUtil.EN);
            pdfFileName += "_" + gid + "_" + rid + ".pdf";
            pdfFileName = pdfFileName.Trim();

            //ส่งให้ ReportService สร้าง PDF ให้ {โดยปกติจะอยู่ใน C:\GCOOP\Saving\PDF\}.
            try
            {
                //CoreSavingLibrary.WcfReport.ReportClient lws_report = wcf.Report;
                //String criteriaXML = lnv_helper.PopArgumentsXML();
                //this.pdf = lws_report.GetPDFURL(state.SsWsPass) + pdfFileName;
                //String li_return = lws_report.Run(state.SsWsPass, app, gid, rid, criteriaXML, pdfFileName);
                //if (li_return == "true")
                //{
                //    HdOpenIFrame.Value = "True";
                //    HdcheckPdf.Value = "True";

                //}
                //else if (li_return != "true")
                //{
                //    HdcheckPdf.Value = "False";
                //}
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                return;
            }
            Session["pdfslipfin"] = pdf;
            //PopupReport();


        }



        public void WebSheetLoadBegin()
        {
            slService = wcf.NShrlon;
            commonSrv = wcf.NCommon;

            Hloancheck.Value = "true";
            if (!IsPostBack)
            {
                CheckBox1.Checked = true;
                DwMain.InsertRow(0);
                DwOperateEtc.InsertRow(0);
                DwOperateLoan.InsertRow(0);
                DwUtil.RetrieveDDDW(DwMain, "shrlontype_code_1", "sl_loansrv_slip_all_cen.pbl", null);
                DwUtil.RetrieveDDDW(DwMain, "moneytype_code", "sl_loansrv_slip_all_cen.pbl", null);
                DwUtil.RetrieveDDDW(DwOperateEtc, "slipitemtype_code", "sl_loansrv_slip_all_cen.pbl", null);
                DwUtil.RetrieveDDDW(DwMain, "moneytype_code", "sl_loansrv_slip_all_cen.pbl", null);
                String arg;
                try
                {
                    arg = Hfmoneytype_code.Value;
                    if (arg == "") { arg = "CSH"; }
                }
                catch { arg = "CSH"; }
                DwUtil.RetrieveDDDW(DwMain, "tofrom_accid_1", "sl_loansrv_slip_all_cen.pbl", arg);

                dw_list.Visible = false;

                String sql = @"  SELECT  FINCONSTANT.CONFIRMCSHLNRCV_FLAG  FROM FINCONSTANT    ";
                Sdt dt = WebUtil.QuerySdt(sql);
                if (dt.Next())
                {
                    Int32 CONFIRMCSHLNRCV_FLAG = Convert.ToInt32(dt.GetString("CONFIRMCSHLNRCV_FLAG"));
                    if (CONFIRMCSHLNRCV_FLAG == 0)
                    {
                        try
                        {
                            String confirmcash_protect = DwMain.Describe("confirmcash_amt.Protect");
                            DwMain.Modify("confirmcash_amt.Protect=1");
                        }
                        catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage(ex); }
                    }
                }


            }
            else
            {
                String sql = @"  SELECT  FINCONSTANT.CONFIRMCSHLNRCV_FLAG  FROM FINCONSTANT    ";
                Sdt dt = WebUtil.QuerySdt(sql);
                if (dt.Next())
                {
                    Int32 CONFIRMCSHLNRCV_FLAG = Convert.ToInt32(dt.GetString("CONFIRMCSHLNRCV_FLAG"));
                    if (CONFIRMCSHLNRCV_FLAG == 0)
                    {
                        try
                        {
                            String confirmcash_protect = DwMain.Describe("confirmcash_amt.Protect");
                            DwMain.Modify("confirmcash_amt.Protect=1");
                        }
                        catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage(ex); }
                    }
                }
                this.RestoreContextDw(DwMain);
                try
                {
                    String dtString = DwMain.GetItemString(1, "operate_tdate");
                    dtString = dtString.Replace("/", "");
                    DwMain.SetItemDateTime(1, "operate_date", DateTime.ParseExact(dtString, "ddMMyyyy", WebUtil.TH));
                }
                catch { }
                this.RestoreContextDw(DwOperateLoan);
                this.RestoreContextDw(DwOperateEtc);
                this.RestoreContextDw(dw_list);
            }

        }

        public void SaveWebSheet()
        {
            SaveSlipLnRcv();
        }

        public void WebSheetLoadEnd()
        {
            //Retrive DDDW
            try
            {

                String moneyType = DwUtil.GetString(DwMain, 1, "moneytype_code_1", "");

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


                }
                DwUtil.RetrieveDDDW(DwMain, "shrlontype_code_1", "sl_loansrv_slip_all_cen.pbl", null);
                DwUtil.RetrieveDDDW(DwOperateEtc, "slipitemtype_code", "sl_loansrv_slip_all_cen.pbl", null);
            }
            catch { }

            DwMain.SaveDataCache();
            DwOperateEtc.SaveDataCache();
            DwOperateLoan.SaveDataCache();
            dw_list.SaveDataCache();
        }

        private void InitLnRcvlist()
        {
            str_slippayout sSlipPayOut = new str_slippayout();
            sSlipPayOut.coop_id = state.SsCoopControl;
            sSlipPayOut.contcoop_id = state.SsCoopId;
            sSlipPayOut.memcoop_id = state.SsCoopId;
            sSlipPayOut.entry_id = state.SsUsername;
            sSlipPayOut.operate_date = state.SsWorkDate;
            sSlipPayOut.loancontract_no = Hfloancontract_no.Value;
            sSlipPayOut.member_no = HfMemberNo.Value;
            sSlipPayOut.slip_date = state.SsWorkDate;
            sSlipPayOut.initfrom_type = Hflnrcvfrom_code.Value;
            String initfrom_type = sSlipPayOut.initfrom_type;

            slService.of_initlnrcv_recalint(state.SsWsPass, ref sSlipPayOut);
            DwMain.Reset();
            DwMain.ImportString(sSlipPayOut.xml_sliphead, Sybase.DataWindow.FileSaveAsType.Xml);

            DwUtil.DeleteLastRow(DwMain);
            tDwMain.Eng2ThaiAllRow();




            try
            {
                DwOperateLoan.Reset();
                DwOperateLoan.ImportString(sSlipPayOut.xml_slipcutlon, Sybase.DataWindow.FileSaveAsType.Xml);

            }
            catch (Exception ex) { String ext = ex.ToString(); }
            try
            {
                DwOperateEtc.Reset();
                DwOperateEtc.ImportString(sSlipPayOut.xml_slipcutetc, Sybase.DataWindow.FileSaveAsType.Xml);
            }
            catch (Exception ex) { String ext = ex.ToString(); }

            dw_list.Visible = true;
            dw_list.Reset();
            as_xmllnrcv = TextBox2.Text;
            try
            {
                dw_list.ImportString(as_xmllnrcv, Sybase.DataWindow.FileSaveAsType.Xml);
            }
            catch { DwUtil.ImportData(as_xmllnrcv, dw_list, null, Sybase.DataWindow.FileSaveAsType.Xml); }
            if (initfrom_type == "REQ")
            {
                Button1.Visible = true;
                TextBox1.Visible = true;
                String shrlontype_code = DwMain.GetItemString(1, "shrlontype_code");
                String loan_no = slService.of_getnextcontractno(state.SsWsPass, state.SsCoopId, shrlontype_code);
                TextBox1.Text = loan_no;
            }
            else
            {
                Button1.Visible = false;
                TextBox1.Visible = false;
            }
            // HfFormtype.Value = as_initfrom;
        }

        private void Calculateitempayamt()
        {
            int loanAllRow = DwOperateLoan.RowCount;

            Decimal totalamt = 0;

            Decimal payout_amt;
            try
            {
                payout_amt = DwMain.GetItemDecimal(1, "payout_amt");
            }
            catch (Exception ex)
            {
                payout_amt = 0;
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
            }

            //ยอดโอนชำระ
            Decimal payoutclramt = 0;



            for (int i = 1; i <= loanAllRow; i++)
            {
                Decimal interest_period = DwOperateLoan.GetItemDecimal(i, "interest_period");
                Decimal bfintarr_amt = DwOperateLoan.GetItemDecimal(i, "bfintarr_amt");
                Decimal sum_interest_bfintarr = interest_period + bfintarr_amt;
                Decimal interest_payamt = DwOperateLoan.GetItemDecimal(i, "interest_payamt");
                Decimal itempayamt = DwOperateLoan.GetItemDecimal(i, "item_payamt");
                Decimal principal_payamt = DwOperateLoan.GetItemDecimal(i, "principal_payamt");
                //ต้นเงิน bfshrcont_balamt
                Decimal dwloan_bfshrcontbalamt = DwOperateLoan.GetItemDecimal(i, "bfshrcont_balamt");
                Decimal operateflag = DwOperateLoan.GetItemDecimal(i, "operate_flag");

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
                            //DwOperateLoan.SetItemDecimal(i, "principal_payamt", itempayamt - sum_interest_bfintarr);
                            DwOperateLoan.SetItemDecimal(i, "principal_payamt", principal_payamt );
                        }

                    }
                }


                //ใช้คำนวณ ยอด ต้นคงเหลือ
               Decimal principalpayamt = DwOperateLoan.GetItemDecimal(i, "principal_payamt");
               DwOperateLoan.SetItemDecimal(i, "item_balance", dwloan_bfshrcontbalamt - principalpayamt);


            }

            SetPayoutclrAmt();


        }

        private void SetPayoutclrAmt()
        {
            Decimal bfshrcont_balamt = 0;
            Decimal principal_payamt = 0;
            Decimal interest_payamt = 0;
            Decimal payoutclr_amt = 0;
            Decimal item_payamt = 0;
            Decimal operate_flag;
            for (int i = 1; i <= DwOperateLoan.RowCount; i++)
            {

                operate_flag = DwOperateLoan.GetItemDecimal(i, "operate_flag");
                if (operate_flag == 1)
                {
                    bfshrcont_balamt = DwOperateLoan.GetItemDecimal(i, "bfshrcont_balamt");
                    principal_payamt = DwOperateLoan.GetItemDecimal(i, "principal_payamt");
                    interest_payamt = DwOperateLoan.GetItemDecimal(i, "interest_payamt");
                    DwOperateLoan.SetItemDecimal(i, "item_balance", bfshrcont_balamt - principal_payamt);
                    DwOperateLoan.SetItemDecimal(i, "item_payamt", principal_payamt + interest_payamt);
                    payoutclr_amt += (principal_payamt + interest_payamt);
                }
            }
            for (int j = 1; j <= DwOperateEtc.RowCount; j++)
            {
                operate_flag = DwOperateEtc.GetItemDecimal(j, "operate_flag");
                if (operate_flag == 1)
                {
                    item_payamt += DwOperateEtc.GetItemDecimal(j, "item_payamt");
                }
            }
            Decimal payout_amt;
            try
            {
                payout_amt = DwMain.GetItemDecimal(1, "payout_amt");
            }
            catch (Exception ex)
            {
                payout_amt = 0;
                LtServerMessage.Text = WebUtil.ErrorMessage(ex);
            }

            DwMain.SetItemDecimal(1, "payoutclr_amt", payoutclr_amt + item_payamt);
            DwMain.SetItemDecimal(1, "payoutnet_amt", payout_amt - (payoutclr_amt + item_payamt));
        }

        private void JsGetNewLoan()
        {
            String shrlontype_code = DwMain.GetItemString(1, "shrlontype_code");
            String loan_no = slService.of_gennewcontractno(state.SsWsPass, state.SsCoopControl, shrlontype_code);
            DwMain.SetItemString(1, "loancontract_no", loan_no);
        }

        private void InitDataWindow()
        {
            String loantype_code = "";
            String member_no = WebUtil.MemberNoFormat(HfMemberNo.Value);
            String memcoopid;
            try { memcoopid = DwMain.GetItemString(1, "memcoop_id"); }
            catch { memcoopid = state.SsCoopId; }
            String as_coopid = state.SsCoopControl;

            string loancontract_no;
            Decimal payout_amt;
            Decimal payoutclr_amt;
            Decimal payoutnet_amt;

            string sql = @"select loancontract_no,payout_amt,payoutclr_amt,payoutnet_amt
                            from slslippayout where member_no='" + member_no + @"' 
                              and  slip_date=to_date('" + state.SsWorkDate.ToString("ddMMyyyy") + "','ddmmyyyy') and slip_status= 8";

            Sdt dt = WebUtil.QuerySdt(sql);
            if (dt.Next())
            {

                loancontract_no = dt.GetString("loancontract_no");
                payout_amt = dt.GetDecimal("payout_amt");
                payoutclr_amt = dt.GetDecimal("payoutclr_amt");
                payoutnet_amt = dt.GetDecimal("payoutnet_amt");
                LtServerMessage.Text =WebUtil.ErrorMessage( "ท.   " + member_no + "   ทำรายการสั่งจ่ายสัญญา   " + loancontract_no + "   มียอดกู้   " + payout_amt + "");

            }
            else
            {

                int result = slService.of_getmemblnrcv(state.SsWsPass, memcoopid, member_no, ref as_initfrom, ref as_coopid, ref as_reqcontno, ref as_xmllnrcv);
                if (result == 1)
                {
                    dw_list.Visible = false;
                    str_slippayout sSlipPayOut = new str_slippayout();
                    sSlipPayOut.coop_id = state.SsCoopControl;
                    sSlipPayOut.contcoop_id = state.SsCoopId;
                    sSlipPayOut.entry_id = state.SsUsername;
                    sSlipPayOut.operate_date = state.SsWorkDate;
                    sSlipPayOut.loancontract_no = as_reqcontno;
                    sSlipPayOut.member_no = member_no;
                    sSlipPayOut.slip_date = state.SsWorkDate;
                    sSlipPayOut.initfrom_type = as_initfrom;
                    HfFormtype.Value = as_initfrom;
                    try
                    {
                        slService.of_initlnrcv(state.SsWsPass, ref sSlipPayOut);
                    }
                    catch (Exception ex) { LtServerMessage.Text = WebUtil.ErrorMessage(ex); }
                    DwMain.Reset();
                    DwMain.ImportString(sSlipPayOut.xml_sliphead, Sybase.DataWindow.FileSaveAsType.Xml);

                    reqdoc_no = DwMain.GetItemString(1, "loanrequest_docno");
                    member_no = DwMain.GetItemString(1, "member_no");

                    DwUtil.RetrieveDDDW(DwMain, "expense_bank", "sl_loansrv_slip_all_cen.pbl", null);
                    DwUtil.RetrieveDDDW(DwMain, "expense_branch", "sl_loansrv_slip_all_cen.pbl", null);

                    DwUtil.DeleteLastRow(DwMain);
                    tDwMain.Eng2ThaiAllRow();

                    try
                    {
                        DwOperateLoan.Reset();
                        DwOperateLoan.ImportString(sSlipPayOut.xml_slipcutlon, Sybase.DataWindow.FileSaveAsType.Xml);

                    }
                    catch (Exception ex) { String ext = ex.ToString(); }
                    try
                    {
                        DwOperateEtc.Reset();
                        DwOperateEtc.ImportString(sSlipPayOut.xml_slipcutetc, Sybase.DataWindow.FileSaveAsType.Xml);
                        DwUtil.RetrieveDDDW(DwOperateEtc, "slipitemtype_code", "sl_loansrv_slip_all_cen.pbl", null);
                    }
                    catch (Exception ex) { String ext = ex.ToString(); }
                    InitLnRcvReCalInt();
                }
                else if (result == 2)
                {
                    dw_list.Visible = true;
                    dw_list.Reset();
                    TextBox2.Text = as_xmllnrcv;
                    try
                    {
                        dw_list.ImportString(as_xmllnrcv, Sybase.DataWindow.FileSaveAsType.Xml);
                    }
                    catch { DwUtil.ImportData(as_xmllnrcv, dw_list, null, Sybase.DataWindow.FileSaveAsType.Xml); }
                }

                if (HfFormtype.Value == "REQ")
                {
                    Button1.Visible = true;
                    TextBox1.Visible = true;
                    String shrlontype_code = DwMain.GetItemString(1, "shrlontype_code");
                    String loan_no = slService.of_getnextcontractno(state.SsWsPass, state.SsCoopControl, shrlontype_code);
                    TextBox1.Text = loan_no;
                }
                else
                {
                    Button1.Visible = false;
                    TextBox1.Visible = false;
                }
                DateTime operate_date = DwMain.GetItemDateTime(1, "operate_date");
                DateTime today = state.SsWorkDate;
                if (today > operate_date)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage("วันที่จ่ายเงินกู้น้อยกว่าวันปัจจุบัน");
                }
                loantype_code = DwMain.GetItemString(1, "shrlontype_code");
                //การแสดงลิงปริ้นสัญญา
                if (loantype_code == "10" || loantype_code == "11" || loantype_code == "12")
                {

                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton3.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton6.Visible = true;
                }
                else if (loantype_code == "20" || loantype_code == "21" || loantype_code == "22")
                {
                    LinkButton5.Visible = false;
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton3.Visible = true;
                    LinkButton4.Visible = false;
                    LinkButton6.Visible = false;
                }
                else if (loantype_code == "23" || loantype_code == "26")
                {
                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton3.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton6.Visible = false;

                }
            }
        }
        private void InitLnRcvReCalInt()
        {
            //int row = Convert.ToInt32(Hrow.Value);
            str_slippayout strPayOut = new str_slippayout();
            strPayOut.coop_id = state.SsCoopControl;
            strPayOut.entry_id = state.SsUsername;
            strPayOut.operate_date = DwMain.GetItemDateTime(1, "operate_date");
            try { strPayOut.loancontract_no = DwMain.GetItemString(1, "loancontract_no"); }
            catch { strPayOut.loancontract_no = loanContract_No; }
            //DwOperateLoan.SetItemDecimal(row, "operate_flag", 1);
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


            slService.of_initlnrcv_recalint(state.SsWsPass, ref strPayOut);

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
                SetPayoutclrAmt();
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
            DateTime operate_date = DwMain.GetItemDateTime(1, "operate_date");
            DateTime today = state.SsWorkDate;
            Decimal payoutclr_amt = 0;
            if (today > operate_date)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("วันที่จ่ายเงินกู้น้อยกว่าวันปัจจุบัน");
            }
            else
            {
                String memno = DwMain.GetItemString(1, "member_no");
                try
                {
                    payoutclr_amt = DwMain.GetItemDecimal(1, "payoutclr_amt");
                }
                catch { payoutclr_amt = 0; }
                if (payoutclr_amt > 0) { CheckBox1.Checked = true; } else { CheckBox1.Checked = false; }
                str_slippayout strPayOut = new str_slippayout();
                strPayOut.coop_id = state.SsCoopControl;
                strPayOut.contcoop_id = state.SsCoopId;
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
                try
                {
                    dwEtcXML = DwOperateEtc.Describe("DataWindow.Data.XML");
                }
                catch { dwEtcXML = ""; }

                strPayOut.xml_sliphead = dwMainXML;
                strPayOut.xml_slipcutlon = dwLoanXML;
                strPayOut.xml_slipcutetc = dwEtcXML;

                try
                {

                    int result = slService.of_saveord_lnrcv(state.SsWsPass, ref strPayOut);
                    string as_xml = "";
                    reqdoc_no = strPayOut.payoutorder_no;
                    if (result == 1)
                    {

                        try
                        {
                            fromset = state.SsPrinterSet;

                        }
                        catch (Exception ex)
                        {
                            fromset = "216";

                        }
                        if (CheckBox1.Checked == true)
                        {
                            if (xmlconfig.LnReceivePrintMode == 0)
                            {
                                //string re = wcf.NShrlon.of_printreceipt(state.SsWsPass, reqdoc_no, fromset, state.SsCoopId, member_no, ref as_xml);
                                //if (re == "1") { LtServerMessage.Text = WebUtil.CompleteMessage("พิมพ์ใบเสร็จ  " + member_no + "  เรียบร้อย "); }
                            }
                            else
                            {
                                JsPrintReceive(state.SsCoopControl, reqdoc_no, xmlconfig.LnReceivePrintMode);
                            }
                        }
                    }
                    LtServerMessage.Text = WebUtil.CompleteMessage("บันทึกสำเร็จ");
                    NewClear();
                }
                catch (Exception ex)
                {
                   // LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                    // Response.Write("<script>alert('ไม่สามารถบันทึกเลขทะเบียน " + memno + " ได้');</script>"); 
                    LtServerMessage.Text = WebUtil.CompleteMessage("บันทึกสำเร็จ");
                }


            }
        }

        private void JsPrintReceive(string coopId, string reqdoc_no, int printMode)
        {
            Printing.ShrlonPrintSlipPayout(this, coopId, reqdoc_no, printMode);
        }

        private void Refresh()
        {

        }

        private void NewClear()
        {
            DwMain.Reset();
            dw_list.Reset();
            DwOperateEtc.Reset();
            DwOperateLoan.Reset();
            DwMain.InsertRow(0);
            DwOperateEtc.InsertRow(0);
            DwOperateLoan.InsertRow(0);
            DwUtil.RetrieveDDDW(DwMain, "shrlontype_code_1", "sl_loansrv_slip_all_cen.pbl", null);
            DwUtil.RetrieveDDDW(DwMain, "moneytype_code", "sl_loansrv_slip_all_cen.pbl", null);
            DwUtil.RetrieveDDDW(DwOperateEtc, "slipitemtype_code", "sl_loansrv_slip_all_cen.pbl", null);
            // DwUtil.RetrieveDDDW(DwMain, "tofrom_accid_1", "sl_loansrv_slip_all_cen.pbl", null);
            CheckBox1.Checked = false;
            dw_list.Visible = false;
            TextBox1.Text = "";
        }

        private void Fittermoneytype()
        {
            String moneytype_code = Hfmoneytype_code.Value;
            DwUtil.RetrieveDDDW(DwMain, "tofrom_accid_1", "sl_loansrv_slip_all_cen.pbl", moneytype_code);
            if (moneytype_code == "CBT")
            {
                DwMain.SetItemString(1, "tofrom_accid", "111510");
            }
            else if (moneytype_code == "MOO" || moneytype_code == "MOS" || moneytype_code == "DRF" || moneytype_code == "BEX" || moneytype_code == "CSC" || moneytype_code == "MON")
            {
                DwMain.Modify("tofrom_accid_1.visible =0");
                DwMain.Modify("tofrom_accid.visible =0");
                DwMain.Modify("tofrom_accid_t.visible =0");
            }
            else if (moneytype_code == "CSH")
            {
                DwMain.SetItemString(1, "tofrom_accid", "111101");

            }
            else if (moneytype_code == "CHQ")
            {
                DwMain.SetItemString(1, "tofrom_accid", "111230");

            }
            else if (moneytype_code == "TRN")
            {
                DwMain.SetItemString(1, "tofrom_accid", "115110");

            }
            else if (moneytype_code == "TBK")
            {
                DwMain.SetItemString(1, "tofrom_accid", "219101");

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //String shrlontype_code = DwMain.GetItemString(1, "shrlontype_code");
            //String loan_no = slService.GetNextContractNo(state.SsWsPass, shrlontype_code);
            //TextBox1.Text = loan_no;
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (xmlconfig.ShrlonPrintMode == 0)
            {
                JspopupCollReport();
            }
            else
            {
                JspopupCollReport(true);
            }
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            if (xmlconfig.ShrlonPrintMode == 0)
            {
                JspopupAgreeCollReport();
            }
            else
            {
                JspopupAgreeCollReport(true, xmlconfig.ShrlonPrintMode);
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (xmlconfig.ShrlonPrintMode == 0)
            {
                JspopupLoanReport();
            }
            else
            {
                JspopupLoanReport(true, xmlconfig.ShrlonPrintMode);
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            if (xmlconfig.ShrlonPrintMode == 0)
            {
                JspopupAgreeLoanReport();
            }
            else
            {
                JspopupAgreeLoanReport(true, xmlconfig.ShrlonPrintMode);
            }
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            if (xmlconfig.ShrlonPrintMode == 0)
            {
                JspopupDeptReport();
            }
            else
            {
                JspopupDeptReport(true, xmlconfig.ShrlonPrintMode);
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            if (xmlconfig.ShrlonPrintMode == 0)
            {
                JspopupLoanemerReport();
            }
            else
            {
                JspopupLoanemerReport(true, xmlconfig.ShrlonPrintMode);
            }
        }

    }
}
