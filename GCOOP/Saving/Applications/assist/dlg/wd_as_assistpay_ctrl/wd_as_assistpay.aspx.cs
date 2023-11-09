﻿using System;
using CoreSavingLibrary;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreSavingLibrary.WcfNCommon;
using DataLibrary;
using System.Globalization;
using System.Drawing;

namespace Saving.Applications.assist.dlg.wd_as_assistpay_ctrl
{
    public partial class wd_as_assistpay : PageWebDialog, WebDialog
    {
        [JsPostBack]
        public string PostSave { get; set; }
        [JsPostBack]
        public string PostGetFee { get; set; }
        [JsPostBack]
        public string PostNewRowPayto { get; set; }
        [JsPostBack]
        public string PostNewRowLoan { get; set; }
        [JsPostBack]
        public string PostDelRowLoan { get; set; }
        [JsPostBack]
        public string PostDelRowPayto { get; set; }
        [JsPostBack]
        public string PostPayinDesc { get; set; }
        [JsPostBack]
        public string PostCancel { get; set; }


        String[] assists;

        int currentAssist = 0, ii_saveresult = 0;

        public void InitJsPostBack()
        {
            dsMain.InitDsMain(this);
            dsPayto.InitDsPayto(this);
            dsLoan.InitDsLoan(this);
        }

        public void WebDialogLoadBegin()
        {
            if (!IsPostBack)
            {
                ii_saveresult = 0;
                assists = Request["assists"].Split(',');
                lbCurrentAssist.Text = (currentAssist + 1) + "/" + assists.Length;

                of_initassistpay();
            }
            else
            {

            }
        }

        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == PostSave)
            {
                SaveData();
                NextAssist();
            }
            else if (eventArg == PostNewRowPayto)
            {
                dsPayto.InsertLastRow();
                dsPayto.DdMoneyType();
                dsPayto.DATA[dsPayto.RowCount - 1].MONEYTYPE_CODE = "";
                //dsPayto.DATA[dsPayto.RowCount - 1].MONEYTYPE_CODE = "CSH"; //ต้องใส่ค่าให้มันก่อนไม่งั้นถ้าคนเพิ่มแถวของอีกตารางมันจะหาย

                int li_maxrow = dsPayto.RowCount - 1;

                for (int li_row = 0; li_row < dsPayto.RowCount; li_row++)
                {
                    if (dsPayto.DATA[li_row].MONEYTYPE_CODE != "")
                    {
                        string min_tofromaccid = "";
                        dsPayto.DdToFromAccIDRow(dsPayto.DATA[li_row].MONEYTYPE_CODE, li_row, ref min_tofromaccid);
                        dsPayto.DATA[li_row].TOFROM_ACCID = min_tofromaccid;
                    }
                    else
                    {
                        string min_tofromaccid = "";
                        dsPayto.FindDropDownList(li_row, "tofrom_accid").Enabled = false;
                    }
                }
            }
            else if (eventArg == PostNewRowLoan)
            {
                dsLoan.InsertLastRow();
                dsLoan.DATA[dsLoan.RowCount - 1].METHPAYTYPE_CODE = "LON"; //ต้องใส่ค่าให้มันก่อนไม่งั้นถ้าคนเพิ่มแถวของอีกตารางมันจะหาย
                dsLoan.DATA[dsLoan.RowCount - 1].DESCRIPTION = "หักชำระหนี้";
            }
            else if (eventArg == PostDelRowPayto)
            {
                int row = dsPayto.GetRowFocus();
                dsPayto.DeleteRow(row);
                dsPayto.DdMoneyType();
                int li_maxrow = dsPayto.RowCount - 1;

                for (int li_row = 0; li_row < dsPayto.RowCount; li_row++)
                {
                    string min_tofromaccid = "";
                    dsPayto.DdToFromAccIDRow(dsPayto.DATA[li_row].MONEYTYPE_CODE, li_row, ref min_tofromaccid);
                    dsPayto.DATA[li_row].TOFROM_ACCID = min_tofromaccid;


                }
            }
            else if (eventArg == PostDelRowLoan)
            {
                int row = dsLoan.GetRowFocus();
                dsLoan.DeleteRow(row);

                int li_maxrow = dsPayto.RowCount - 1;

                for (int li_row = 0; li_row < dsPayto.RowCount; li_row++)
                {
                    string min_tofromaccid = "";
                    dsPayto.DdToFromAccIDRow(dsPayto.DATA[li_row].MONEYTYPE_CODE, li_row, ref min_tofromaccid);
                    dsPayto.DATA[li_row].TOFROM_ACCID = min_tofromaccid;


                }

                this.of_summary();
            }
            else if (eventArg == PostGetFee)
            {
                Int32 li_row = dsPayto.GetRowFocus();
                this.of_setfee(li_row);
            }
            else if (eventArg == PostPayinDesc)
            {
                this.of_setpaytodesc();
            }
            else if (eventArg == PostCancel)
            {
                NextAssist();
            }
        }

        private void of_setpaytodesc()
        {
            string ls_moneytype, ls_expbank, ls_expbranch, ls_bankaccid, ls_chqpayname, ls_desc = "", ls_expclr = "";
            string ls_shtbk = "", ls_brnname = "";
            Int32 li_row = 0;

            li_row = dsPayto.GetRowFocus();

            ls_moneytype = dsPayto.DATA[li_row].MONEYTYPE_CODE;
            ls_expbank = dsPayto.DATA[li_row].EXPENSE_BANK;
            ls_expbranch = dsPayto.DATA[li_row].EXPENSE_BRANCH;
            ls_bankaccid = dsPayto.DATA[li_row].EXPENSE_ACCID;
            ls_chqpayname = dsPayto.DATA[li_row].CHQ_PAYNAME;
            ls_expclr = dsPayto.DATA[li_row].EXPENSE_CLEARING;

            // ใส่ข้อมูล field ที่การเงินและบัญชีจะดึงไปใช้
            dsPayto.DATA[li_row].BANK_CODE = ls_expbank;
            dsPayto.DATA[li_row].BANKBRANCH_ID = ls_expbranch;
            dsPayto.DATA[li_row].BANK_ACCID = ls_bankaccid;

            if (ls_moneytype == "CSH")
            {
                ls_desc = "เงินสด";
            }
            else if (ls_moneytype == "CBT" || ls_moneytype == "CBO")
            {
                string sql;
                Sdt dt;
                sql = @"select trim(bank_shortname) bank_desc from cmucfbank where bank_code = '" + ls_expbank + "'";
                dt = WebUtil.QuerySdt(sql);
                if (dt.Next())
                {
                    ls_shtbk = dt.GetString("bank_desc");
                }

                sql = "select branch_name from cmucfbankbranch where bank_code = '" + ls_expbank + "' and branch_id = '" + ls_expbranch + "' ";
                dt = WebUtil.QuerySdt(sql);
                if (dt.Next())
                {
                    ls_brnname = dt.GetString("branch_name");
                }

                ls_desc = "โอน " + ls_shtbk + " สาขา " + ls_brnname + " เลขที่ " + ls_bankaccid+" ("+ls_expclr+")";
            }
            else if (ls_moneytype == "CHQ")
            {
                ls_desc = "เช็คสั่งจ่าย " + ls_chqpayname;

                dsPayto.DATA[li_row].PAYTO_WHOM = ls_chqpayname;
            }
            else if (ls_moneytype == "TRN")
            {
                ls_desc = "โอนบัญชีสหกรณ์ " + ls_bankaccid;

                dsPayto.DATA[li_row].DEPTACCOUNT_NO = ls_bankaccid;
            }

            dsPayto.DATA[li_row].DESCRIPTION = ls_desc;
        }

        private void of_initpayto()
        {
            string ls_asscontno, ls_sql;
            string ls_expcode, ls_expbank, ls_expbranch, ls_expaccid, ls_system, ls_deptno;
            decimal ldc_payout;

            ls_asscontno = dsMain.DATA[0].ASSCONTRACT_NO;
            ldc_payout = dsMain.DATA[0].PAYOUTNET_AMT;

            ls_sql = @" select moneytype_code, 
                                   expense_bank, expense_branch, expense_accid,
                                   send_system, deptaccount_no 
                            from   asscontmaster
                            where asscontract_no = '" + ls_asscontno + "'";
            Sdt dt = WebUtil.QuerySdt(ls_sql);
            if (dt.Next())
            {
                ls_expcode = dt.GetString("moneytype_code");
                ls_expbank = dt.GetString("expense_bank");
                ls_expbranch = dt.GetString("expense_branch");
                ls_expaccid = dt.GetString("expense_accid");
                ls_system = dt.GetString("send_system");
                ls_deptno = dt.GetString("deptaccount_no");
            }
            else
            {
                return;
            }

            dsPayto.InsertAtRow(0);

            dsPayto.DATA[0].MONEYTYPE_CODE = ls_expcode;
            dsPayto.DATA[0].EXPENSE_BANK = ls_expbank;
            dsPayto.DATA[0].EXPENSE_BRANCH = ls_expbranch;
            dsPayto.DATA[0].EXPENSE_ACCID = ls_expaccid;

            if (ls_expcode == "TRN" && ls_system == "DEP")
            {
                dsPayto.DATA[0].EXPENSE_ACCID = ls_deptno;
            }
            else if (ls_expcode == "CBT")
            {
                //if (!string.IsNullOrEmpty(ls_expbank))
                //{
                //    ls_sql = " select clearing_type from cmucfbank where bank_code = '"+ls_expbank+"' ";

                //    dt = WebUtil.QuerySdt(ls_sql);
                //    if (dt.Next())
                //    {
                //        dsPayto.DATA[0].EXPENSE_CLEARING = dt.GetString("clearing_type");
                //    }
                //}
            }

            // ส่วนที่นำไปใช้กับบัญชีการเงิน
            dsPayto.DATA[0].BANK_CODE = ls_expbank;
            dsPayto.DATA[0].BANKBRANCH_ID = ls_expbranch;
            dsPayto.DATA[0].BANK_ACCID = ls_expaccid;
            dsPayto.DATA[0].DEPTACCOUNT_NO = ls_deptno;

            dsPayto.DATA[0].ITEMPAY_AMT = ldc_payout;
            dsPayto.SetRowFocus(0);

            this.of_setpaytodesc();
            this.of_setfee(0);
            this.of_setdefaultaccid(0);
        }

        ///// <summary>
        ///// ดึงสัญญาถัดไป
        ///// </summary> 
        private void NextAssist()
        {
            currentAssist = Convert.ToInt16(HdIndex.Value);
            assists = Request["assists"].Split(',');

            currentAssist += 1;
            if (currentAssist < assists.Length)
            {
                lbCurrentAssist.Text = (currentAssist + 1) + "/" + assists.Length;
                of_initassistpay();
            }
            HdIndex.Value = currentAssist + "";
            if ((currentAssist) >= assists.Length)
            {
                if (ii_saveresult == 1)
                {
                    this.SetOnLoadedScript("GetShowData(); ");
                }
                else
                {
                    this.SetOnLoadedScript("parent.GetRetrivedata(); parent.RemoveIFrame();");
                }

            }
        }

        /// <summary>
        /// Init ข้อมุลการจ่าย
        /// </summary>
        private void of_initassistpay()
        {
            assists = Request["assists"].Split(',');
            lbCurrentAssist.Text = (currentAssist + 1) + "/" + assists.Length;

            string assist = assists[currentAssist];

            dsMain.ResetRow();
            dsLoan.ResetRow();
            dsPayto.ResetRow();

            dsMain.InitDetail(assist);

            dsMain.DATA[0].SLIP_DATE = state.SsWorkDate;
            dsMain.DATA[0].OPERATE_DATE = state.SsWorkDate;

            dsMain.DATA[0].PAY_PERIOD = dsMain.DATA[0].BFPERIOD + 1;

            this.of_initpaycondition();
            this.of_initpayto();

            dsPayto.DdMoneyType();

            //dsPayto.DdToFromAccID();
            int li_maxrow = dsPayto.RowCount - 1;

            for (int li_row = 0; li_row < dsPayto.RowCount; li_row++)
            {
                string min_tofromaccid = "";
                dsPayto.DdToFromAccIDRow(dsPayto.DATA[li_row].MONEYTYPE_CODE, li_row, ref min_tofromaccid);
                dsPayto.DATA[li_row].TOFROM_ACCID = min_tofromaccid;


            }

            HdIndex.Value = currentAssist + "";

        }

        private void of_initpaycondition()
        {
            string ls_asstype;
            string ls_sql;
            Int32 li_period, li_paytype;
            decimal ldc_apvamt = 0, ldc_wtdamt = 0;
            decimal ldc_payout = 0;
            decimal ldc_assamt = 0, ldc_assmax = 0;

            ls_asstype = dsMain.DATA[0].ASSISTTYPE_CODE;
            li_period = Convert.ToInt32(dsMain.DATA[0].PAY_PERIOD);
            ldc_apvamt = dsMain.DATA[0].BFAPV_AMT;
            ldc_wtdamt = dsMain.DATA[0].BFWTD_AMT;

            ls_sql = @" select first_payamt, next_payamt,
                               first_typepay, next_typepay,
                               max_firstpayamt, max_nextpayamt
                        from assucfassisttype
                        where assisttype_code = '" + ls_asstype + "' ";
            Sdt dt = WebUtil.QuerySdt(ls_sql);
            if (dt.Next())
            {
                if (li_period == 1)
                {
                    li_paytype = dt.GetInt32("first_typepay");
                    ldc_assamt = dt.GetDecimal("first_payamt");
                    ldc_assmax = dt.GetDecimal("max_firstpayamt");
                }
                else
                {
                    li_paytype = dt.GetInt32("next_typepay");
                    ldc_assamt = dt.GetDecimal("next_payamt");
                    ldc_assmax = dt.GetDecimal("max_nextpayamt");
                }
            }
            else
            {
                li_paytype = 2;
                ldc_assamt = 100;
                ldc_assmax = 99999999;
            }

            if (li_paytype == 1) // บาท
            {
                ldc_payout = ldc_apvamt;
                if (ldc_payout > ldc_assamt)
                {
                    ldc_payout = ldc_assamt;
                }
            }
            else
            {
                ldc_payout = ldc_apvamt * (ldc_assamt / 100);
            }

            if (ldc_payout > ldc_assmax)
            {
                ldc_payout = ldc_assmax;
            }

            if (ldc_payout > ldc_wtdamt)
            {
                ldc_payout = ldc_wtdamt;
            }

            dsMain.DATA[0].PAYOUT_AMT = ldc_payout;
            dsMain.DATA[0].PAYOUTCLR_AMT = 0;
            dsMain.DATA[0].PAYOUTNET_AMT = ldc_payout;
        }

        private void SaveData()
        {
            string ls_slipno;
            string ls_upcont = "", ls_inscont = "";
            Int32 li_chk = 0;

            ls_slipno = wcf.NCommon.of_getnewdocno(state.SsWsPass, state.SsCoopControl, "ASSISTSLIPNO");

            dsMain.DATA[0].COOP_ID = state.SsCoopControl;
            dsMain.DATA[0].ASSISTSLIP_NO = ls_slipno;
            dsMain.DATA[0].ENTRY_ID = state.SsUsername;
            dsMain.DATA[0].ENTRY_DATE = DateTime.Today;

            for (Int32 i = 0; i < dsPayto.RowCount; i++)
            {
                dsPayto.DATA[i].COOP_ID = state.SsCoopControl;
                dsPayto.DATA[i].ASSISTSLIP_NO = ls_slipno;
                dsPayto.DATA[i].ITEM_CODE = "PAY";
                dsPayto.DATA[i].SEQ_NO = i + 1;
                dsPayto.DATA[i].METHPAYTYPE_CODE = dsPayto.DATA[i].MONEYTYPE_CODE;

                if (dsMain.DATA[0].ASSISTTYPE_CODE == "61") {
                    dsPayto.DATA[i].POST_TOFIN = 1;
                }

                // ใช้การเงินบัญชี
                dsPayto.DATA[i].ASSISTSLIP_CONTROL = ls_slipno;
            }

            for (Int32 i = 0; i < dsLoan.RowCount; i++)
            {
                dsLoan.DATA[i].COOP_ID = state.SsCoopControl;
                dsLoan.DATA[i].ASSISTSLIP_NO = ls_slipno;
                dsLoan.DATA[i].ITEM_CODE = "CLR";
                dsLoan.DATA[i].SEQ_NO = i + 1;
                dsLoan.DATA[i].MONEYTYPE_CODE = "TRN";

                // ใช้การเงินบัญชี
                dsLoan.DATA[i].ASSISTSLIP_CONTROL = ls_slipno;
            }

            // ทำ query การปรับปรุงทะเบียนสวัสดิการ
            li_chk = this.of_getsqlpostcont(ls_slipno, ref ls_upcont, ref ls_inscont);
            if (li_chk != 1)
            {
                return;
            }

            try
            {
                ExecuteDataSource exe = new ExecuteDataSource(this);

                exe.AddFormView(dsMain, ExecuteType.Insert);
                exe.AddRepeater(dsPayto);
                exe.AddRepeater(dsLoan);
                exe.SQL.Add(ls_upcont);
                exe.SQL.Add(ls_inscont);
                exe.Execute();
            }
            catch (Exception ex)
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("บันทึกไม่สำเร็จ" + ex);
                return;
            }

            // ส่งไปเงินฝาก
            this.of_postdepttran();

            ii_saveresult = 1;
        }

        private Int32 of_getsqlpostcont(string as_slipno, ref string as_updcont, ref string as_insstm)
        {
            // ปรับปรุงค่าใส่สัญญา
            string ls_contno, ls_sql;
            Int32 li_seqno, li_period;
            decimal ldc_bfwtd, ldc_bfpaybal, ldc_wtdamt, ldc_paybal, ldc_payamt;
            DateTime ldtm_slipdate;

            ls_contno = dsMain.DATA[0].ASSCONTRACT_NO;
            li_period = Convert.ToInt32(dsMain.DATA[0].PAY_PERIOD);
            ldc_payamt = dsMain.DATA[0].PAYOUT_AMT;
            ldtm_slipdate = dsMain.DATA[0].SLIP_DATE;

            ls_sql = @"select last_stm, withdrawable_amt, pay_balance
                       from asscontmaster where coop_id = {0}
                       and asscontract_no = {1} ";

            ls_sql = WebUtil.SQLFormat(ls_sql, state.SsCoopControl, ls_contno);
            Sdt dt;

            dt = WebUtil.QuerySdt(ls_sql);
            if (dt.Next())
            {
                li_seqno = dt.GetInt32("last_stm");
                ldc_bfwtd = dt.GetDecimal("withdrawable_amt");
                ldc_bfpaybal = dt.GetDecimal("pay_balance");
            }
            else
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("ไม่พบข้อมูลทะเบียนสวัสดิการ เลขที่ " + ls_contno);
                return -1;
            }

            ldc_wtdamt = ldc_bfwtd - ldc_payamt;
            ldc_paybal = ldc_bfpaybal + ldc_payamt;

            li_seqno++;

            // ส่วนการ update ทะเบียนสวัสดิการ
            as_updcont = @"update asscontmaster 
                            set withdrawable_amt = {1},
                                pay_balance = {2},
                                last_stm = {3},
                                last_periodpay = {4},
                                lastpay_date = {5}
                            where asscontract_no = {0} ";

            as_updcont = WebUtil.SQLFormat(as_updcont, ls_contno, ldc_wtdamt, ldc_paybal, li_seqno, li_period, ldtm_slipdate);

            // ส่วนการ insert STM สวัสดิการ
            as_insstm = @" insert into asscontstatement
                                ( coop_id, asscontract_no, seq_no, slip_date, operate_date, item_code, 
                                  ref_slipno, period, pay_amt, pay_balance, entry_id, entry_date )
                           values
                                ( {0}, {1}, {2}, {3}, {4}, 'RCV', 
                                  {5}, {6}, {7}, {8}, {9}, sysdate ) ";

            as_insstm = WebUtil.SQLFormat(as_insstm, state.SsCoopControl, ls_contno, li_seqno, ldtm_slipdate, state.SsWorkDate,
                                       as_slipno, li_period, ldc_payamt, ldc_paybal, state.SsUsername);

            return 1;
        }

        private Int32 of_postdepttran()
        {
            string ls_sql, ls_expcode, ls_deptno, ls_memno, ls_slipno;
            Int32 li_year = 0, li_seqno;
            decimal ldc_payamt;
            DateTime ldtm_slipdate;
            Sdt dt;

            ls_slipno = dsMain.DATA[0].ASSISTSLIP_NO;
            ls_memno = dsMain.DATA[0].MEMBER_NO;
            ldtm_slipdate = dsMain.DATA[0].SLIP_DATE;

            ls_sql = "select account_year from cmaccountyear where {0} between accstart_date and accend_date ";
            ls_sql = WebUtil.SQLFormat(ls_sql, ldtm_slipdate);
            dt = WebUtil.QuerySdt(ls_sql);
            if (dt.Next())
            {
                li_year = dt.GetInt32("account_year");
            }

            for (Int32 i = 0; i < dsPayto.RowCount; i++)
            {

                ls_expcode = dsPayto.DATA[0].MONEYTYPE_CODE;
                ls_deptno = dsPayto.DATA[0].EXPENSE_ACCID;
                ldc_payamt = dsPayto.DATA[0].ITEMPAY_AMT;

                if (ls_expcode != "TRN")
                {
                    continue;
                }

                ls_sql = "select max(seq_no) as seq_no from dpdepttran where system_code = 'ASS' and deptaccount_no = {0}  and tran_date = {1} ";
                ls_sql = WebUtil.SQLFormat(ls_sql, ls_deptno, ldtm_slipdate);
                dt = WebUtil.QuerySdt(ls_sql);
                if (dt.Next())
                {
                    li_seqno = dt.GetInt32("seq_no");
                }
                else
                {
                    li_seqno = 0;
                }

                li_seqno++;

                ls_sql = @" insert into dpdepttran
                                     ( coop_id, deptaccount_no, member_no, system_code, tran_date, seq_no,
                                       deptitem_amt, tran_status, sequest_status, ref_coopid, ref_slipno,memcoop_id,tran_year,branch_operate )
                                values
                                     ( {0}, {1},  {2}, 'ASS', {3}, {4},    
                                       {5},  0, 0, {0} , {6},{0},{7},'001') ";

                try
                {
                    int ln_year = state.SsWorkDate.Year+543;
                    ls_sql = WebUtil.SQLFormat(ls_sql, state.SsCoopControl, ls_deptno, ls_memno, ldtm_slipdate, li_seqno, ldc_payamt, ls_slipno, ln_year);
                    WebUtil.ExeSQL(ls_sql);
                }
                catch (Exception ex)
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage("Error Depttrans" + ex);
                    return -1;
                }
            }

            return 1;
        }

        private void of_setfee(Int32 ai_row)
        {
            string ls_moneytype, ls_bank, ls_branch, ls_sql;
            decimal ldc_payout, ldc_fee = 0, ldc_srv = 0;
            Sdt dt;

            ls_moneytype = dsPayto.DATA[ai_row].MONEYTYPE_CODE;
            ls_bank = dsPayto.DATA[ai_row].EXPENSE_BANK.Trim();
            ls_branch = dsPayto.DATA[ai_row].EXPENSE_BRANCH.Trim();
            ldc_payout = dsPayto.DATA[ai_row].ITEMPAY_AMT;

            if (ls_moneytype == "CBT" || ls_moneytype == "CBO")
            {
                if (string.IsNullOrEmpty(ls_branch) || string.IsNullOrEmpty(ls_bank))
                {
                    ldc_fee = 0;
                }

                ls_sql = " select * from cmucfbankbranch where bank_code = '" + ls_bank + "' and branch_id = '" + ls_branch + "'";
                dt = WebUtil.QuerySdt(ls_sql);
                if (dt.Next())
                {
                    if (ls_moneytype == "CBT")
                    {
                        ldc_fee = dt.GetDecimal("serviceassist_amt");
                    }
                    else
                    {
                        ldc_srv = dt.GetDecimal("service_amt");
                        if (dt.GetInt32("fee_status") == 1)
                        {
                            ldc_fee = this.of_calbankfee(ls_bank, ldc_payout);
                        }
                        ldc_fee = ldc_fee + ldc_srv;
                    }
                }
            }

            dsPayto.DATA[ai_row].FEE_AMT = ldc_fee;

            int li_maxrow = dsPayto.RowCount - 1;

            for (int li_row = 0; li_row < dsPayto.RowCount; li_row++)
            {
                string min_tofromaccid = "";
                dsPayto.DdToFromAccIDRow(dsPayto.DATA[li_row].MONEYTYPE_CODE, li_row, ref min_tofromaccid);
                dsPayto.DATA[li_row].TOFROM_ACCID = min_tofromaccid;
                if (dsPayto.DATA[li_row].MONEYTYPE_CODE == "")
                {
                    dsPayto.FindDropDownList(li_row, "tofrom_accid").Enabled = false;
                }
            }
        }

        private decimal of_calbankfee(string as_bank, decimal adc_payamt)
        {
            string ls_sql;
            decimal ldc_feeamt = 0, ldc_prnamt, ldc_feeper, ldc_minamt, ldc_maxamt, ldc_roundup, ldc_step, ldc_fraction;
            Sdt dt;

            ls_sql = " select * from cmucfbankfeerate where bank_code = '" + as_bank + "' and " + adc_payamt.ToString() + " between start_amt and end_amt ";
            dt = WebUtil.QuerySdt(ls_sql);
            if (dt.Next())
            {
                ldc_prnamt = dt.GetDecimal("principal_amt");
                ldc_roundup = dt.GetDecimal("roundup_amt");
                ldc_feeper = dt.GetDecimal("fee_amt");
                ldc_minamt = dt.GetDecimal("minfee_value");
                ldc_maxamt = dt.GetDecimal("maxfee_value");

                ldc_step = Math.Truncate(adc_payamt / ldc_prnamt);
                ldc_fraction = (adc_payamt / ldc_prnamt) - Math.Truncate(adc_payamt / ldc_prnamt);

                ldc_feeamt = ldc_step * ldc_feeper;
                if (ldc_fraction >= ldc_roundup)
                {
                    ldc_feeamt = ldc_feeamt + ldc_feeper;
                }

                if (ldc_feeamt < ldc_minamt)
                {
                    ldc_feeamt = ldc_minamt;
                }

                if (ldc_feeamt > ldc_maxamt && ldc_maxamt > 0)
                {
                    ldc_feeamt = ldc_maxamt;
                }
            }

            return ldc_feeamt;
        }

        private void of_setdefaultaccid(Int32 ai_row)
        {
            string ls_moneytype, ls_accid = "", ls_sql;
            Sdt dt;

            ls_moneytype = dsPayto.DATA[ai_row].MONEYTYPE_CODE;

            if (ls_moneytype != "TRN")
            {
                ls_sql = @" select * 
                            from cmucftofromaccid 
                            where applgroup_code = 'SLN' 
                            and sliptype_code = 'LWD' 
                            and moneytype_code = '" + ls_moneytype + @"'
                            order by defaultpayout_flag desc, account_id ";
                dt = WebUtil.QuerySdt(ls_sql);

                if (dt.Next())
                {
                    ls_accid = dt.GetString("account_id");
                }
            }

            dsPayto.DATA[ai_row].TOFROM_ACCID = ls_accid;
        }

        private void of_summary()
        {
            Int32 li_row;
            decimal ldc_payout = 0, ldc_payclr = 0, ldc_payitem = 0, ldc_paynet = 0;

            ldc_payout = dsMain.DATA[0].PAYOUT_AMT;

            for (li_row = 0; li_row < dsPayto.RowCount; li_row++)
            {
                ldc_payitem = dsPayto.DATA[li_row].ITEMPAY_AMT;

                ldc_payclr = ldc_payclr + ldc_payitem;
            }

            ldc_paynet = ldc_payout - ldc_payclr;

            dsMain.DATA[0].PAYOUTCLR_AMT = ldc_payclr;
            dsMain.DATA[0].PAYOUTNET_AMT = ldc_paynet;
        }

        public void WebDialogLoadEnd()
        {

        }
    }
}