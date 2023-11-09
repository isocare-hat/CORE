using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreSavingLibrary;
using DataLibrary;

namespace Saving.Applications.assist.ws_wheet_as_request_collect_ctrl
{
    public partial class ws_wheet_as_request_collect : PageWebSheet, WebSheet
    {
        [JsPostBack]
        public string PostRetrivememno { get; set; }

        [JsPostBack]
        public string PostCalAgain { get; set; }

        [JsPostBack]
        public string PostCalAgain2 { get; set; }

        public void InitJsPostBack()
        {
            dsMain.InitDsMain(this);
            dsDetail.InitDsDetail(this);
            dsSequence.InitDsSequence(this);
        }

        public void WebSheetLoadBegin()
        {
            throw new NotImplementedException();
        }

        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == PostRetrivememno)
            {
                string ls_memno = WebUtil.MemberNoFormat(dsMain.DATA[0].member_no.Trim());
                dsDetail.ResetRow();
                dsSequence.ResetRow();
                dsMain.RetrieveMain(ls_memno);
                string sql = @"select * from assreqmaster  where req_status=1 and assisttype_code='70'
                    and coop_id={0} and member_no={1}";
                sql = WebUtil.SQLFormat(sql, state.SsCoopId, ls_memno);
                Sdt dt = WebUtil.QuerySdt(sql);
                if (dt.Next())
                {
                    LtServerMessage.Text = WebUtil.ErrorMessage("เลขสมาชิกนี้ได้ทำรายการสวัสดิการสะสมไปแล้ว");
                    return;
                }
                if (dsMain.RowCount > 0)
                {
                    if (dsMain.DATA[0].resign_status == 1)
                    {
                        dsDetail.RetrieveData(ls_memno);
                        dsSequence.RetrieveData(ls_memno);
                        dsSequence.Retrievelncont(ls_memno);
                        if (dsDetail.DATA[0].sharestk_amt < 0)
                        {
                            dsDetail.DATA[0].sharestk_amt = 0;
                        }
                        /*
                        dsDetail.DATA[0].sum_sharespm = dsSequence.DATA[0].s_sharespm;
                        dsDetail.DATA[0].sum_sharespx = dsSequence.DATA[0].s_sharespx;
                         */
                        CalSequence();
                    }
                    else { LtServerMessage.Text = WebUtil.ErrorMessage("ใบคำขอสวัสดิการเงินสะสม ทำรายการได้กับสมาชิกที่ลาออกเท่านั้น"); }
                }
                else { LtServerMessage.Text = WebUtil.ErrorMessage("ไม่มีข้อมูลสมาชิกดังกล่าว"); }
            }
            else if (eventArg == PostCalAgain)
            {
                DateTime now = dsDetail.DATA[0].resign_date;
                DateTime past = dsDetail.DATA[0].member_date;
                string sql = @"select ft_calagemth({0},{1}) as cal_date
                        from dual";
                sql = WebUtil.SQLFormat(sql, past, now);
                Sdt dt = WebUtil.QuerySdt(sql);
                string cal_date = "";
                if (dt.Next())
                {
                    cal_date = dt.GetString("cal_date");
                }
                /*imeSpan ts = now - past;
                int ss = ts.Days + 36;
                Int16 monthDiff = Convert.ToInt16(Math.Floor((Convert.ToDouble(ts.Days) / 365.2425) * 12));*/
                string[] monthDiff = cal_date.Split('.');
                Int32 monthDiff2 = (Convert.ToInt32(monthDiff[1]) + Convert.ToInt32(monthDiff[0]) * 12);
                dsDetail.DATA[0].monthcollect = (Int16)monthDiff2;
                CalSequence();
            }
            else if (eventArg == PostCalAgain2)
            {
                CalSequence();
            }
        }
        public void CalSequence()
        {
            int ln_monthcollect = 0;
            //int ln_lastperiod = 0;
            decimal ld_calamount = 0, ld_sharespm = 0, ld_amount = 0;
            decimal ld_sequenceone = 0, ld_sequencetwo = 0, ld_sequencethree = 0, ld_sequencefour = 0, ld_sequencefive = 0;
            decimal ld_calamount1 = 0, ld_calamount2 = 0, ld_calamount3 = 0, ld_calamount4 = 0, ld_calamount5 = 0;
            ln_monthcollect = dsDetail.DATA[0].monthcollect;
            //ln_lastperiod = dsDetail.DATA[0].last_period;
            //ld_sharestkamt = dsDetail.DATA[0].sharestk_amt;
            ld_sharespm = dsDetail.DATA[0].sharestk_amt;
            //คำนวนยอดคิดเปอร์เซนต์
            ld_calamount = ld_sharespm * 60 / ln_monthcollect;

            if (ln_monthcollect >= 24)
            {
                if (ln_monthcollect > 60)
                {
                    ld_sequenceone = (ld_sharespm * 60 / ln_monthcollect);
                }
                else
                {
                    ld_sequenceone = (ld_sharespm * ln_monthcollect / ln_monthcollect);
                }
            }
            if (ln_monthcollect >= 61)
            {
                if (ln_monthcollect > 120)
                {
                    ld_sequencetwo = ((ld_sharespm - ld_sequenceone) * 60 / (ln_monthcollect - 60));
                }
                else
                {
                    ld_sequencetwo = ((ld_sharespm - ld_sequenceone) * (ln_monthcollect - 60) / (ln_monthcollect - 60));
                }

            }
            if (ln_monthcollect >= 121)
            {
                if (ln_monthcollect > 180)
                {
                    ld_sequencethree = ((ld_sharespm - (ld_sequenceone * 2)) * 60 / (ln_monthcollect - 120));
                }
                else
                {
                    ld_sequencethree = ((ld_sharespm - (ld_sequenceone * 2)) * (ln_monthcollect - 120) / (ln_monthcollect - 120));
                }

            }
            if (ln_monthcollect >= 181)
            {
                if (ln_monthcollect > 240)
                {
                    ld_sequencefour = ((ld_sharespm - (ld_sequenceone * 3)) * 60 / (ln_monthcollect - 180));
                }
                else
                {
                    ld_sequencefour = ((ld_sharespm - (ld_sequenceone * 3)) * (ln_monthcollect - 180) / (ln_monthcollect - 180));
                }
            }
            if (ln_monthcollect >= 241)
            {
                ld_sequencefive = ((ld_sharespm - (ld_sequenceone * 4)) * (ln_monthcollect - 240) / (ln_monthcollect - 240));

            }

            ld_calamount1 = ((ld_sequenceone) * 5 / 100);
            ld_calamount2 = ((ld_sequencetwo) * 10 / 100);
            ld_calamount3 = ((ld_sequencethree) * 15 / 100);
            ld_calamount4 = ((ld_sequencefour) * 20 / 100);
            ld_calamount5 = ((ld_sequencefive) * 25 / 100);
            ld_amount = ld_calamount1 + ld_calamount2 + ld_calamount3 + ld_calamount4 + ld_calamount5;
            decimal max_assist_amt = 0;
            string sql = @"select 
	                        max_payamt
                        from assucfassisttypedet where assisttype_code = '70'";
            sql = WebUtil.SQLFormat(sql);
            Sdt dt = WebUtil.QuerySdt(sql);
            if (dt.Next())
            {
                max_assist_amt = dt.GetDecimal("max_payamt");
            }

            dsSequence.DATA[0].sequence_one = Math.Round(ld_calamount1, 2);
            dsSequence.DATA[0].sequence_two = Math.Round(ld_calamount2, 2);
            dsSequence.DATA[0].sequence_three = Math.Round(ld_calamount3, 2);
            dsSequence.DATA[0].sequence_four = Math.Round(ld_calamount4, 2);
            dsSequence.DATA[0].sequence_five = Math.Round(ld_calamount5, 2);
            ld_amount = dsSequence.DATA[0].sequence_one + dsSequence.DATA[0].sequence_two + dsSequence.DATA[0].sequence_three + dsSequence.DATA[0].sequence_four + dsSequence.DATA[0].sequence_five;
            /*
            decimal cal_amount = dsSequence.DATA[0].principal_balance - dsSequence.DATA[0].assist_collect;
            cal_amount = Math.Abs(cal_amount);
            dsSequence.DATA[0].prnc_amt = cal_amount;
             */
            if (ld_amount > max_assist_amt)
            {
                dsSequence.DATA[0].assist_collect = max_assist_amt;
                decimal cal_amount = max_assist_amt;
                dsSequence.DATA[0].prnc_amt = cal_amount;
            }
            else
            {
                dsSequence.DATA[0].assist_collect = ld_amount;
                decimal cal_amount = ld_amount;
                dsSequence.DATA[0].prnc_amt = cal_amount;
            }
            //ตาย หักสวัสดิการอาวุโส
            string sql2 = @"select * from mbmembmaster where resigncause_code != '03' and member_no = {0} ";
            sql2 = WebUtil.SQLFormat(sql2, dsMain.DATA[0].member_no);
            Sdt dt2 = WebUtil.QuerySdt(sql2);
            if (dt2.Next())
            {


                if (dsSequence.DATA[0].old_amt != 0)
                {
                    if (dsSequence.DATA[0].prnc_amt > dsSequence.DATA[0].old_amt)
                    {
                        dsSequence.DATA[0].prnc_amt = dsSequence.DATA[0].prnc_amt - dsSequence.DATA[0].old_amt;
                    }
                    else
                    {
                        dsSequence.DATA[0].prnc_amt = 0;
                    }
                }
            }



        }
        public void SaveWebSheet()
        {
            int process_year = 0;
            DateTime req_date = dsDetail.DATA[0].req_date;
            string sql = @"select max(ass_year) as ass_year from assucfyear where 
                    start_year < {0}
                    and end_year > {0} ";
            sql = WebUtil.SQLFormat(sql, req_date);
            Sdt dt = WebUtil.QuerySdt(sql);
            if (dt.Next())
            {
                process_year = dt.GetInt32("ass_year") + 543;
            }
            string sql2 = @"select expense_accid ,expense_bank ,expense_branch ,expense_code  from mbmembmaster where 
                    member_no = {0} ";
            sql2 = WebUtil.SQLFormat(sql2, dsMain.DATA[0].member_no);
            Sdt dt2 = WebUtil.QuerySdt(sql2);
            string ls_bank_accid = "";
            string ls_bank_code = "";
            string ls_bank_branch = "";
            string ls_moneytype_code = "";

            if (dt2.Next())
            {
                ls_bank_accid = dt2.GetString("expense_accid");
                ls_bank_code = dt2.GetString("expense_bank");
                ls_bank_branch = dt2.GetString("expense_branch");
                ls_moneytype_code = dt2.GetString("expense_code");
            }
            string ls_memno = dsMain.DATA[0].member_no;
            decimal ld_prnc_amt = dsSequence.DATA[0].prnc_amt;
            int ls_monthcollect = dsDetail.DATA[0].monthcollect;
            decimal ls_principal_balance = dsSequence.DATA[0].principal_balance;
            DateTime ls_deaddate = dsDetail.DATA[0].resign_date;
            ld_prnc_amt = Math.Round(ld_prnc_amt, 2);
            try
            {
                if (dsDetail.DATA[0].assist_docno == "Auto")
                {
                    string ls_assno = wcf.NCommon.of_getnewdocno(state.SsWsPass, state.SsCoopId, "ASSISTDOCNO");
                    string sqlStr = @"insert into assreqmaster
                            (coop_id                    , coop_control              , assist_docno          , assist_year           , member_no 
                            , assisttype_code           , assistpay_code            , approve_amt           , assist_amt            , req_status
                            , req_date                  , approve_date              , entry_id              , moneytype_code        ,  withdrawable_amt
                            , dead_date                 , remark                    , principal_balance     , expense_bank
                            , expense_branch            , expense_accid)
                            values
                            ({0}                        , {1}                       , {2}                   , {3}                   , {4}
                            , {5}                       , {6}                       , {7}                   , {8}                   , {9}
                            , {10}                      , {11}                      , {12}                  , {13}                  , {14}
                            , {15}                      , {16}                      , {17}                  , {18}
                            , {19}                      , {20})";
                    sqlStr = WebUtil.SQLFormat(sqlStr,
                        state.SsCoopId, state.SsCoopControl, ls_assno, process_year, ls_memno
                        , "70", "12", ld_prnc_amt, ld_prnc_amt, "8"
                        , req_date, req_date, state.SsUsername, "CSH", ld_prnc_amt
                        , ls_deaddate, ls_monthcollect, ls_principal_balance, ls_bank_code
                        , ls_bank_branch, ls_bank_accid);
                    WebUtil.ExeSQL(sqlStr);

                    LtServerMessage.Text = WebUtil.CompleteMessage("บันทึกใบคำขอ " + ls_assno + " สำเร็จ");
                }
                else
                {
                    string sqlStr_update = "UPDATE assreqmaster SET" +
                        " approve_amt 		    = " + ld_prnc_amt + "	, assist_amt 		    = " + ld_prnc_amt + "		    , withdrawable_amt 	        = " + ld_prnc_amt + ", dead_date =  to_date('" + ls_deaddate.ToString("dd/MM/yyyy") + "','dd/MM/yyyy'), remark = '" + ls_monthcollect + "'	, principal_balance 	        = " + ls_principal_balance + " " +
                        " where ASSIST_DOCNO = '" + dsDetail.DATA[0].assist_docno.Trim() + "' and coop_id = '" + state.SsCoopId + "'";
                    Sdt sql_update = WebUtil.QuerySdt(sqlStr_update);
                    LtServerMessage.Text = WebUtil.CompleteMessage("บันทึกใบคำขอ " + dsDetail.DATA[0].assist_docno.Trim() + " สำเร็จ");
                }
                dsMain.ResetRow();
                dsDetail.ResetRow();
                dsSequence.ResetRow();
            }
            catch
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("บันทึกผิดพลาด เลขสมาชิก " + ls_memno); return;
            }

        }

        public void WebSheetLoadEnd()
        {
            throw new NotImplementedException();
        }




    }
}