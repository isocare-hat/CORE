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
using System.Text.RegularExpressions;
//using CoreSavingLibrary.WcfNCommon;
//using CoreSavingLibrary.WcfNDeposit;
using CoreSavingLibrary.WcfNCommon;
using CoreSavingLibrary.WcfNDeposit;

using System.Web.Services.Protocols;
using DataLibrary;
using CoreSavingLibrary;


using System.Collections.Generic;
using System.Globalization;

namespace Saving.Applications.ap_deposit.dlg
{
    public partial class w_dlg_dp_printbook : PageWebDialog, WebDialog
    {

        //private DepositClient dep;
        private n_depositClient ndept;
        private String deptAccountNo;
        protected String postPrintBook;

        #region WebDialog Members

        public void InitJsPostBack()
        {
            postPrintBook = WebUtil.JsPostBack(this, "postPrintBook");
        }

        public void WebDialogLoadBegin()
        {
            ndept = wcf.NDeposit;
            this.ConnectSQLCA();
            DwNewBook.SetTransaction(sqlca);
            DwStm.SetTransaction(sqlca);
            if (!IsPostBack)
            {
                HdIsPostBack.Value = "false";
                try
                {
                    HdAccountNo.Value = Request["deptAccountNo"];
                    deptAccountNo = HdAccountNo.Value;
                    DwStm.Retrieve(deptAccountNo, state.SsCoopControl);
                    String xmlInitDwNewBook = "";
                    ndept.of_init_printbook(state.SsWsPass, deptAccountNo, state.SsCoopId, ref xmlInitDwNewBook );
                    //DwPrintPrompt.InsertRow(0);
                    string smltest = DwPrintPrompt.Describe("Datawindow.Data.Xml");
                    //DwPrintPrompt.ImportString( xmlInitDwNewBook, Sybase.DataWindow.FileSaveAsType.Xml);
                    DwUtil.ImportData(xmlInitDwNewBook, DwPrintPrompt, null, Sybase.DataWindow.FileSaveAsType.Xml); 
                }
                catch (SoapException ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage(WebUtil.SoapMessage(ex));
                    DwPrintPrompt.InsertRow(0);
                    DwStm.InsertRow(0);
                }
                catch (Exception ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage(ex.Message);
                    DwPrintPrompt.InsertRow(0);
                    DwStm.InsertRow(0);
                }
                //ใบคำสัญจ่ายดอกเบี้ย
                    printinterest();
            }
            else
            {
                HdIsPostBack.Value = "true";
                this.RestoreContextDw(DwPrintPrompt);
                this.RestoreContextDw(DwStm);
            }
            this.deptAccountNo = HdAccountNo.Value;
        }
        public void printinterest()
        {
            try
            {
                string dp_slip = Request["from_dp_slip"];
                string sql = "select int_amt from dpdeptslip where int_amt > 0 and  deptslip_no  = '" + dp_slip + "'";
                Sdt dt = WebUtil.QuerySdt(sql);
                if (dt.Next())
                {
                    HdIsPaymat.Value = "true";
                    HdSlip.Value = dp_slip;

                }
            }catch {}
        }
        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == "postPrintBook")
            {
                try
                {
                    Int16 seq = Convert.ToInt16(DwPrintPrompt.GetItemDecimal(1, "lastrec_no_pb"));
                    Int16 page = Convert.ToInt16(DwPrintPrompt.GetItemDecimal(1, "lastpage_no_pb"));
                    Int16 line = Convert.ToInt16(DwPrintPrompt.GetItemDecimal(1, "lastline_no_pb"));

                    //XmlConfigService xml = new XmlConfigService();
                    int ai_status = 1;// xml.DepositPrintMode;
                    String as_xml_return = "";
                    string printset = state.SsPrinterSet;

                    String returnValue  = "";
                    ndept.of_print_book(state.SsWsPass, deptAccountNo, state.SsCoopId, seq, page, line, true, state.SsPrinterSet, ref returnValue, Convert.ToInt16(ai_status), ref as_xml_return);


                    if (line == 1)
                    {
                        string name_book = null;
                        string sql = "select deptaccount_name from dpdeptmaster where deptaccount_no = '" + deptAccountNo + "'";
                        Sdt dt = WebUtil.QuerySdt(sql);
                        if (dt.Next())
                        {
                            name_book = dt.Rows[0]["deptaccount_name"].ToString();
                        }
                        XmlDocument xmlDoc = new XmlDocument();
                        xmlDoc.LoadXml(as_xml_return);
                        string[] lines = Regex.Split(GetXMLAsString(xmlDoc), "<d_dppbkstm_book_new><d_dppbkstm_book_new_row><d_dppbkstm_book_new_group1>");
                        string t_header = "<t_header>" + name_book + "</t_header>";
                        string t_account_no = "<t_account_no>" + WebUtil.ViewAccountNoFormat(deptAccountNo)  + "</t_account_no>";
                        as_xml_return = lines[0] + "<d_dppbkstm_book_new><d_dppbkstm_book_new_row><d_dppbkstm_book_new_group1>" + t_header + t_account_no + lines[1];
                    }


                    String[] re = returnValue.Split('@');
                    int rePage = int.Parse(re[0]);
                    int reReq = int.Parse(re[1]);

                    HdIsZeroPage.Value = rePage == 0 ? "true" : "false";
                    HdIsNewBook.Value = rePage == 1 ? "true" : "false"; //เพิ่มเพื่อรับค่าจาก pb srv ว่าขึ้นเล่มใหม่
                    //HdIsNewBook.Value = "true";

                    Printing.DeptPrintBook(this, as_xml_return);
                    DwPrintPrompt.SetItemDecimal(1, "lastpage_no_pb", rePage);
                    DwPrintPrompt.SetItemDecimal(1, "lastrec_no_pb", reReq);
                    DwPrintPrompt.SetItemDecimal(1, "lastline_no_pb", 1);
                }
                catch (Exception ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage(ex);
                }
            }
        }
        public string GetXMLAsString(XmlDocument myxml)
        {
            return myxml.OuterXml;
        }
        public void WebDialogLoadEnd()
        {
            DwPrintPrompt.SaveDataCache();
        }

        #endregion

    }
}
