using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CoreSavingLibrary;
using DataLibrary;
using System.Data;
using System.Data.SqlClient;

namespace Saving.Applications.assist.ws_sheet_as_genrequest_ctrl
{
    public partial class ws_sheet_as_genrequest : PageWebSheet, WebSheet
    {

        [JsPostBack]
        public string PostProcess { get; set; }
        [JsPostBack]
        public string PostSave { get; set; }
        [JsPostBack]
        public string PostDefaultAcc { get; set; }
        [JsPostBack]
        public string PostBank { get; set; }
        [JsPostBack]
        public string PostBranch { get; set; }

        public void InitJsPostBack()
        {
            dsMain.InitDsMain(this);
            //dsList.InitDsList(this);
        }

        public void WebSheetLoadBegin()
        {
            if (!IsPostBack)//show data first  
            {
                dsMain.GetAssYear();

                // แก้ปัญหาถ้าไม่ active dropdown ปี มัน get ค่า 0 มา
                string sqlStr = @"select max(ass_year + 543) ass_year from assucfyear where coop_id = {0}";
                sqlStr = WebUtil.SQLFormat(sqlStr, state.SsCoopId);
                Sdt dt1 = WebUtil.QuerySdt(sqlStr);
                dt1.Next();
                dsMain.DATA[0].process_year = dt1.GetString("ass_year");
                dsMain.DATA[0].process_month = state.SsWorkDate.Month.ToString("00");
                dsMain.DATA[0].cal_date = state.SsWorkDate;

                dsMain.AssistType();
                dsMain.DdMoneyType();
                //dsMain.DdFromAccId();
                dsMain.DdDepttype();
                dsMain.DATA[0].work_date = state.SsWorkDate.ToString("dd/MM/") + (state.SsWorkDate.Year + 543).ToString();
                //GetDefaultAcc(); //get เงินสด accid 
                dsMain.DATA[0].moneytype_code = "TRN";
                dsMain.DATA[0].trtype_code = "DEP";
                sqlStr = @"select min(depttype_code) as depttype_code from dpdepttype where coop_id = {0}";
                sqlStr = WebUtil.SQLFormat(sqlStr, state.SsCoopId);
                Sdt dt2 = WebUtil.QuerySdt(sqlStr);
                dt2.Next();
                dsMain.DATA[0].depttype_code = dt2.GetString("depttype_code");

                this.SetOnLoadedScript("dsMain.GetElement(0, 'expense_bank').style.background = '#CCCCCC'; dsMain.GetElement(0, 'expense_bank').readOnly = true; dsMain.GetElement(0, 'expense_branch').style.background = '#CCCCCC'; dsMain.GetElement(0, 'expense_branch').readOnly = true;");
            }


        }

        public void CheckJsPostBack(string eventArg)
        {
            if (eventArg == PostProcess)
            {
                //dsList.ResetRow();
                GetShowList();
            }
            else if (eventArg == PostDefaultAcc)
            {
                GetDefaultAcc();
            }
            else if (eventArg == PostBank)
            {
                dsMain.DdBankDesc();
                InitTofromaccid();
            }
            else if (eventArg == PostBranch)
            {
                String bank = dsMain.DATA[0].expense_bank;
                dsMain.DdBranch(bank);
            }
            else if (eventArg == PostSave)
            {
                SaveData();
            }
        }

        private void GetDefaultAcc()
        {
            string sql = @"select cash_account_code from accconstant";
            sql = WebUtil.SQLFormat(sql);
            Sdt dt = WebUtil.QuerySdt(sql);
            if (dt.Next())
            {
                dsMain.DATA[0].tofrom_accid = dt.GetString("cash_account_code");
            }
        }

        private void InitTofromaccid()
        {
            string sql = @" 
                       SELECT MONEYTYPE_CODE,  
                              MONEYTYPE_GROUP, 
                              MONEYTYPE_DESC,   
                              SORT_ORDER  ,
                              MONEYTYPE_CODE || ' - '|| MONEYTYPE_DESC as MONEYTYPE_DISPLAY,
                              DEFAULTPAY_ACCID
                         FROM CMUCFMONEYTYPE WHERE  MONEYTYPE_GROUP IN('BNK','CHQ','CSH')  AND MONEYTYPE_CODE={0}  order by sort_order
                ";
            sql = WebUtil.SQLFormat(sql, dsMain.DATA[0].moneytype_code);
            Sdt dt = WebUtil.QuerySdt(sql);
            if (dt.Next())
            {
                dsMain.DATA[0].tofrom_accid = dt.GetString("DEFAULTPAY_ACCID").Trim();
            }
            else
            {
                dsMain.DATA[0].tofrom_accid = "0";
            }
            dsMain.DdBranch(dsMain.DATA[0].expense_bank);
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        { }

        private void GetShowList()
        {
            string ls_trtypecode = dsMain.DATA[0].trtype_code;
            string ls_asscode = dsMain.DATA[0].assisttype_code;
            string ls_memtypecode, ls_assisgroup, ls_yearmonth, sqlStr;
            int li_agemem = 0, li_memtypeflag = 0, li_calflag = 0, li_proflag = 0, li_stmflag = 1;
            decimal dec_amount = 0, dec_prncbal = 0, dec_maxpayamt = 0;
            List<int> TempRow = new List<int>();
            //เช็คว่า1เป็นการคำนวณแบบเดือน หรือ ปี
            string sql_chk1 = @"select * from assucfassisttype where coop_id = {0} and assisttype_code = {1}";
            sql_chk1 = WebUtil.SQLFormat(sql_chk1, state.SsCoopId, ls_asscode);
            Sdt dt_chk1 = WebUtil.QuerySdt(sql_chk1);
            if (dt_chk1.Next())
            {
                li_calflag = dt_chk1.GetInt32("calculate_flag");
                li_memtypeflag = dt_chk1.GetInt32("membtype_flag");
                ls_assisgroup = dt_chk1.GetString("assisttype_group");
                li_proflag = dt_chk1.GetInt32("stmpay_type");// 0 =เดือนตรงวัน , 1 = เดือนระบุวัน , 2 = ปี
                li_stmflag = dt_chk1.GetInt32("stm_flag");// 1 = จ่ายต่อเนื่องทุกเดือน 2 = ประมวลผลจ่ายปีต่อปี
            }

            if (li_proflag == 2)
            {
                string ls_year = dsMain.DATA[0].process_year;
                ls_yearmonth = Convert.ToString(Convert.ToDecimal(ls_year) - 1) + dsMain.DATA[0].process_month;
            }
            else
            {
                ls_yearmonth = dsMain.DATA[0].process_year + dsMain.DATA[0].process_month;
            }

            string month_year = dsMain.DATA[0].process_month + "/" + (Int32.Parse(dsMain.DATA[0].process_year) - 543).ToString();

            //ท่อนดึงข้อมูลผู้ที่มีสิทธิ์ได้รับสวัสดิการ
            if (li_stmflag == 2)
            {
                sqlStr = @"
    
			select distinct(mb.member_no) member_no , ft_getmbname(mb.coop_id , mb.member_no) full_name , (mb.birth_date )birth_date ,ftcm_calagemth( mb.birth_date , {3} ) mem_age
            ,ftcm_calagemth( mb.member_date ,{3} ) work_age, (LAST_DAY(to_date({4},'mm/yyyy'))) slip_date,  add_months( to_date(LAST_DAY(to_date({4},'mm/yyyy'))), 543*12 ) slip_date2,('') max_payamt,('') approve_amt,('') prncbal
             ,(0)withdrawable_amt,(1) last_periodpay ,(mb.membtype_code) membtype_code,({1}) assisttype_code,('false') choose_flag , (mb.expense_accid) expense_accid
			 from  mbmembmaster mb 
			where mb.birth_date is not null 
            and EXTRACT(month FROM mb.birth_date) = EXTRACT(month FROM LAST_DAY(to_date({4},'mm/yyyy')))
            and   mb.coop_id = {0}
            and   mb.resign_status = 0
            and   mb.member_no not in
		    (select assreqmaster.member_no from  assreqmaster where   assreqmaster.assisttype_code={1}  
		    and EXTRACT(year FROM req_date)=EXTRACT(year FROM {3}) and req_status<>-9 )
			order by ftcm_calagemth( mb.birth_date ,LAST_DAY(to_date({4},'mm/yyyy')) ) asc , mb.member_no ";
            }
            else
            {
                sqlStr = @"
            select    * from (

			select  (asm.member_no) member_no, ft_getmbname(asm.coop_id , asm.member_no) full_name , (mb.birth_date )birth_date ,ftcm_calagemth( mb.birth_date ,{3} ) mem_age
            ,ftcm_calagemth( mb.member_date , {3} ) work_age, (ast.slip_date) slip_date, add_months( to_date(ast.slip_date), 543*12 ) slip_date2
            ,(asm.withdrawable_amt)withdrawable_amt,( asm.last_periodpay + 1 ) last_periodpay ,(mb.membtype_code) membtype_code,(asm.assisttype_code) assisttype_code,('') max_payamt,('') approve_amt,('') prncbal,('false') choose_flag, (mb.expense_accid) expense_accid
                from  asscontmaster asm ,
              asscontstatement ast,
              mbmembmaster mb
            where   asm.asscontract_no = ast.asscontract_no
            and     asm.member_no = mb.member_no
            and     asm.payment_status = 1
            and     asm.max_periodpay > asm.last_periodpay
            and     asm.assisttype_code = {1}
            and     ast.seq_no = (select max( asscontstatement.seq_no ) from asscontstatement where asscontstatement.asscontract_no =  asm.asscontract_no)
            and     to_char(slip_date, 'yyyy') + 543 || to_char(slip_date, 'mm')  <= {2}
            and     asm.coop_id = {0}
            and    mb.resign_status = 0
            and     EXTRACT(month FROM mb.birth_date) = EXTRACT(month FROM LAST_DAY(to_date({4},'mm/yyyy')))
            and   asm.member_no not in
		    (select assreqmaster.member_no from  assreqmaster where   assreqmaster.assisttype_code={1}  
		    and EXTRACT(year FROM req_date)=EXTRACT(year FROM {3}) and req_status<>-9 )

		union 
			select distinct(mb.member_no) member_no , ft_getmbname(mb.coop_id , mb.member_no) full_name , (mb.birth_date )birth_date ,ftcm_calagemth( mb.birth_date ,{3} ) mem_age
            ,ftcm_calagemth( mb.member_date ,{3} ) work_age, (LAST_DAY(to_date({4},'mm/yyyy'))) slip_date,  add_months( to_date(LAST_DAY(to_date({4},'mm/yyyy'))), 543*12 ) slip_date2
             ,(0)withdrawable_amt,(1) last_periodpay ,(mb.membtype_code) membtype_code,({1}) assisttype_code,('') max_payamt,('') approve_amt,('') prncbal,('false') choose_flag, (mb.expense_accid) expense_accid
			 from  mbmembmaster mb 
			where mb.member_no not in (select distinct member_no from asscontmaster where assisttype_code={1} and payment_status = 1 ) and mb.birth_date is not null
			and mb.resign_status=0 and ftcm_calagemth( mb.birth_date ,LAST_DAY(to_date({4},'mm/yyyy')) )>=61
            and EXTRACT(month FROM mb.birth_date) = EXTRACT(month FROM LAST_DAY(to_date({4},'mm/yyyy')))
            and     mb.coop_id = {0}
            and   mb.resign_status = 0
            and   mb.member_no not in
		    (select assreqmaster.member_no from  assreqmaster where   assreqmaster.assisttype_code={1}  
		    and EXTRACT(year FROM req_date)=EXTRACT(year FROM {3}) and req_status<>-9 )
	)
			order by ftcm_calagemth( birth_date ,{3}) asc ,member_no ";

            }

            sqlStr = WebUtil.SQLFormat(sqlStr, state.SsCoopControl, ls_asscode, ls_yearmonth, dsMain.DATA[0].cal_date, month_year);
            DataTable dt = WebUtil.Query(sqlStr);
            GridView1.DataSource = dt;
            ViewState["dt"] = dt;
            GridView1.DataBind();


            int row = GridView1.Rows.Count;
            Hd_rowcount.Value = Convert.ToString(row);
            for (int ii = 0; ii < row; ii++)
            {
                dec_prncbal = Convert.ToDecimal(dt.Rows[ii]["withdrawable_amt"]);
                if (li_memtypeflag == 0)
                {
                    ls_memtypecode = "%"; // ไม่เช็ด membtype_code
                }
                else
                {
                    string membtype_code = dt.Rows[ii].Field<string>("membtype_code");
                    ls_memtypecode = membtype_code;
                }

                string mem_no = dt.Rows[ii].Field<string>("member_no");
                string mem_age = dt.Rows[ii].Field<string>("mem_age");
                string work_age = dt.Rows[ii].Field<string>("work_age");
                string[] ls_arr_mem = mem_age.Split('.');
                string[] ls_arr_work_age = work_age.Split('.');
                if (li_calflag == 1) //เกรด
                {
                }
                else if (li_calflag == 2) //อายุ
                {
                    li_agemem = (Convert.ToInt32(ls_arr_mem[0]) * 12) + Convert.ToInt32(ls_arr_mem[1]); //อายุสมาชิก
                }
                else if (li_calflag == 3) //อายุการเป็นสมาชิก
                {
                    li_agemem = (Convert.ToInt32(ls_arr_work_age[0]) * 12) + Convert.ToInt32(ls_arr_work_age[1]); //อายุการเป็นสมาชิก
                }
                else if (li_calflag == 4) //เงินเดือน
                {
                }
                else if (li_calflag == 5) //ค่าเสียหาย
                {
                }
                else if (li_calflag == 6) //ตามประเภทการจ่าย
                {
                }

                sql_chk1 = "select first_typepay ,first_payamt, max_firstpayamt," +
                    "   max_seqno,next_typepay,next_payamt,max_nextpayamt," +
                    "   assucfassisttypedet.* " +
                    " from assucfassisttype " +
                    " inner join assucfassisttypedet on assucfassisttype.assisttype_code = assucfassisttypedet.assisttype_code " +
                    " inner join (" +
                    " select assisttype_code, max(seq_no) max_seqno " +
                    " from assucfassisttypedet " +
                    " where coop_id = '" + state.SsCoopControl + "' and assisttype_code = '" + ls_asscode + "' and membtype_code like '" + ls_memtypecode + "' group by assisttype_code " +
                    " )chk_seq on assucfassisttypedet.assisttype_code = chk_seq.assisttype_code " +
                    " where assucfassisttype.coop_id = '" + state.SsCoopControl + "'" +
                    " and assucfassisttype.assisttype_code = '" + ls_asscode + "'" +
                    " and assucfassisttypedet.membtype_code like '" + ls_memtypecode + "'";
                dt_chk1 = WebUtil.QuerySdt(sql_chk1);
                if (dt_chk1.Next())
                {
                    if (dt_chk1.GetInt32("max_seqno") > 1)
                    {
                        if (li_calflag == 2 || li_calflag == 3) // ใช้อายุหรือ อายุสมาชิกคำนวณ
                        {
                            for (int ii_chk1 = 0; ii_chk1 < dt_chk1.Rows.Count; ii_chk1++)
                            {
                                int ln_minchk = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["min_check"]);
                                int ln_maxchk = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_check"]);
                                int ln_nexttypepay = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["next_typepay"]);
                                if (ln_minchk <= li_agemem && li_agemem < ln_maxchk)
                                {
                                    if (ln_nexttypepay == 1) //บาท
                                    {
                                        dec_maxpayamt = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_payamt"]);
                                        dec_amount = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["next_payamt"]);
                                    }
                                    else // เปอร์เซ็น
                                    {
                                        dec_maxpayamt = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_payamt"]);
                                        dec_amount = (Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_payamt"]) * Convert.ToInt32(dt_chk1.Rows[ii_chk1]["next_payamt"])) / 100;
                                    }
                                    if (dec_amount > Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_nextpayamt"]))
                                    {
                                        dec_amount = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_nextpayamt"]);
                                    }
                                    if (dec_amount > Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_payamt"]))
                                    {
                                        dec_amount = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_payamt"]);
                                    }

                                    ((TextBox)GridView1.Rows[ii].FindControl("max_payamt")).Text = dec_maxpayamt.ToString("###,##0.00");
                                    ((TextBox)GridView1.Rows[ii].FindControl("approve_amt")).Text = dec_amount.ToString("###,##0.00");
                                    

                                    //หาเลขบัญชีตามการรับเงินของสมาชิก
                                    if (ls_trtypecode == "DEP")
                                    {
                                        string sqldeptno = "select min(deptaccount_no) as deptaccount_no from dpdeptmaster where member_no = {0} and deptclose_status = 0 and coop_id = {1} and depttype_code = {2}";
                                        sqldeptno = WebUtil.SQLFormat(sqldeptno, mem_no, state.SsCoopId, dsMain.DATA[0].depttype_code);
                                        Sdt dt2 = WebUtil.QuerySdt(sqldeptno);
                                        if (dt2.Next())
                                        {
                                            dt.Rows[ii][15] = dt2.GetString("deptaccount_no");
                                        }
                                        else
                                        {
                                            ((TextBox)GridView1.Rows[ii].FindControl("expense_accid")).Text = "";
                                        }
                                    }

                                    break;
                                }
                            }
                        }
                    }
                    else
                    {
                        if (li_calflag == 2 || li_calflag == 3)  // ใช้อายุหรือ อายุสมาชิกคำนวณ
                        {
                             for (int ii_chk1 = 0; ii_chk1 < dt_chk1.Rows.Count; ii_chk1++)
                            {
                                int ln_minchk = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["min_check"]);
                                int ln_maxchk = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["max_check"]);
                                int ln_nexttypepay = Convert.ToInt32(dt_chk1.Rows[ii_chk1]["next_typepay"]);
                                if (ln_minchk <= li_agemem && li_agemem < ln_maxchk)
                                {
                                    if (dt_chk1.GetInt32("first_typepay") == 1) //บาท
                                    {
                                        dec_amount = dt_chk1.GetInt32("first_payamt");
                                        dec_maxpayamt = dt_chk1.GetInt32("max_firstpayamt");
                                    }
                                    else // เปอร์เซ็น
                                    {
                                        dec_maxpayamt = dt_chk1.GetInt32("max_firstpayamt");
                                        dec_amount = (dt_chk1.GetInt32("max_firstpayamt") * dt_chk1.GetInt32("first_payamt")) / 100;
                                    }
                                    if (dec_amount > dt_chk1.GetDecimal("max_firstpayamt"))
                                    {
                                        dec_amount = dt_chk1.GetDecimal("max_firstpayamt");
                                    }
                                    if (dec_amount > dt_chk1.GetDecimal("max_payamt"))
                                    {
                                        dec_amount = dt_chk1.GetDecimal("max_payamt");
                                    }

                                    ((TextBox)GridView1.Rows[ii].FindControl("max_payamt")).Text = dec_maxpayamt.ToString("###,##0.00");
                                    ((TextBox)GridView1.Rows[ii].FindControl("approve_amt")).Text = dec_amount.ToString("###,##0.00");

                                    //หาเลขบัญชีตามการรับเงินของสมาชิก
                                    if (ls_trtypecode == "DEP")
                                    {
                                        string sqldeptno = "select min(deptaccount_no) as deptaccount_no from dpdeptmaster where member_no = {0} and deptclose_status = 0 and coop_id = {1} and depttype_code = {2}";
                                        sqldeptno = WebUtil.SQLFormat(sqldeptno, mem_no, state.SsCoopId, dsMain.DATA[0].depttype_code);
                                        Sdt dt2 = WebUtil.QuerySdt(sqldeptno);
                                        if (dt2.Next())
                                        {
                                            dt.Rows[ii][15] = dt2.GetString("deptaccount_no");
                                        }
                                        else
                                        {
                                            ((TextBox)GridView1.Rows[ii].FindControl("expense_accid")).Text = "";
                                        }
                                    }

                                    break;

                                }

                                else
                                {
                                    TempRow.Add(ii);
                                

                                    //dt.Rows.RemoveAt(ii);
                                    //GridView1.DataSource = dt;
                                    //ViewState["dt"] = dt;
                                    //GridView1.DataBind();
                                    //dt.Rows[ii].Delete();
                                    //GridView1.Rows[ii];
                                    //del_row_count += 1;
                                    //ii -= 1;
                                    break;
                                }
                             }
                        }                         
                        else 
                        {
                            if (dt_chk1.GetInt32("first_typepay") == 1) //บาท
                            {
                                dec_amount = dt_chk1.GetInt32("first_payamt");
                                dec_maxpayamt = dt_chk1.GetInt32("max_firstpayamt");
                            }
                            else // เปอร์เซ็น
                            {
                                dec_maxpayamt = dt_chk1.GetInt32("max_firstpayamt");
                                dec_amount = (dt_chk1.GetInt32("max_firstpayamt") * dt_chk1.GetInt32("first_payamt")) / 100;
                            }
                            if (dec_amount > dt_chk1.GetDecimal("max_firstpayamt"))
                            {
                                dec_amount = dt_chk1.GetDecimal("max_firstpayamt");
                            }

                            ((TextBox)GridView1.Rows[ii].FindControl("max_payamt")).Text = dec_maxpayamt.ToString("###,##0.00");
                            ((TextBox)GridView1.Rows[ii].FindControl("approve_amt")).Text = dec_amount.ToString("###,##0.00");

                        }
                    }
                }
                if (li_stmflag == 2)
                {
                    dt.Rows[ii][7] = dec_maxpayamt.ToString("###,##0.00");
                    dt.Rows[ii][8] = dec_amount.ToString("###,##0.00");
                }
                else
                {
                    dt.Rows[ii][11] = dec_maxpayamt.ToString("###,##0.00");
                    dt.Rows[ii][12] = dec_amount.ToString("###,##0.00");
                }

                //((TextBox)GridView1.Rows[ii].FindControl("max_payamt")).Text = dec_maxpayamt.ToString("###,##0.00");
                //((TextBox)GridView1.Rows[ii].FindControl("approve_amt")).Text = dec_amount.ToString("###,##0.00");
             ////   ((TextBox)GridView1.Rows[ii].FindControl("prncbal")).Text = dec_prncbal.ToString("###,##0.00");
            }
            if (GridView1.Rows.Count == 0)
            {
                string ls_monthdesc = "";
                switch (dsMain.DATA[0].process_month)
                {
                    case "01":
                        ls_monthdesc = "มกราคม"; break;
                    case "02":
                        ls_monthdesc = "กุมภาพันธ์"; break;
                    case "03":
                        ls_monthdesc = "มีนาคม"; break;
                    case "04":
                        ls_monthdesc = "เมษายน"; break;
                    case "05":
                        ls_monthdesc = "พฤษภาคม"; break;
                    case "06":
                        ls_monthdesc = "มิถุนายน"; break;
                    case "07":
                        ls_monthdesc = "กรกฎาคม"; break;
                    case "08":
                        ls_monthdesc = "สิงหาคม"; break;
                    case "09":
                        ls_monthdesc = "กันยายน"; break;
                    case "10":
                        ls_monthdesc = "ตุลาคม"; break;
                    case "11":
                        ls_monthdesc = "พฤศจิกายน"; break;
                    case "12":
                        ls_monthdesc = "ธันวาคม"; break;
                }

                LtServerMessage.Text = WebUtil.ErrorMessage("ไม่พบสิทธิ์ของสมาชิกในการขอสวัสดิการประเภทนี้ ในปี " + dsMain.DATA[0].process_year + " เดือน" + ls_monthdesc);
                return;
            }
            else
            {                
                for (int aa = 0; aa <= dt.Rows.Count; aa++)
                {
                    bool isInList = TempRow.IndexOf(aa) != -1;
                    if (isInList)
                    {
                        dt.Rows[aa].Delete();
                    }
                   
                }

                GridView1.DataSource = dt;
                GridView1.DataBind();
         //       dsMain.DATA[0].all_check = 1;
                LtServerMessage.Text = WebUtil.CompleteMessage("มีรายการใบคำขอทั้งหมด " + GridView1.Rows.Count + " รายการ");
            }
        }

        public void SaveData()
        {
            try
            {   string ls_sendsystem = "";
                string ls_asstypepay = "00";
                string sql = @"select
	                        min(assucfassisttypepay.assistpay_code) as assistpay_code
                        from assucfassisttype
                        inner join assucfassisttypepay on assucfassisttype.assisttype_code = assucfassisttypepay.assisttype_code
                        where assucfassisttype.coop_id = {0} and assucfassisttype.assisttype_code = {1}";
                sql = WebUtil.SQLFormat(sql, state.SsCoopId, dsMain.DATA[0].assisttype_code);
                Sdt dt = WebUtil.QuerySdt(sql);
                if (dt.Next()) { ls_asstypepay = dt.GetString("assistpay_code"); }

                string ls_trtypecode = dsMain.DATA[0].trtype_code;
                if( ls_trtypecode == "DEP" )
                {
                    ls_sendsystem = "";
                }
                string ls_reqdate = dsMain.DATA[0].work_date.Substring(0, 6) + (Convert.ToInt32(dsMain.DATA[0].work_date.Substring(6, 4)) - 543);
                int row = GridView1.Rows.Count;
                for (int ii = 0; ii < row; ii++)
                {
                    CheckBox choose_flag = GridView1.Rows[ii].Cells[1].FindControl("choose_flag") as CheckBox;
                    string choose_flag1 = Convert.ToString(choose_flag.Checked);
                    if (choose_flag1 == "True")
                    {
                        string ls_assno = wcf.NCommon.of_getnewdocno(state.SsWsPass, state.SsCoopId, "ASSISTDOCNO");
                        TextBox ls_memno = (TextBox)GridView1.Rows[ii].FindControl("member_no");
                        TextBox approve_amt = (TextBox)GridView1.Rows[ii].FindControl("approve_amt");
                        TextBox expense_accid = (TextBox)GridView1.Rows[ii].FindControl("expense_accid");
                        decimal dec_appamt = Convert.ToDecimal(approve_amt.Text);

                        try
                        {
                            string sqlStr = @"insert into assreqmaster
                            (coop_id                          , assist_docno          , assist_year           , member_no 
                            , assisttype_code           , assistpay_code            , assistmax_amt           , assist_amt            , req_status
                            , req_date                  , approve_date              , entry_id              , moneytype_code        , expense_bank
                            , expense_branch            , expense_accid             , assistnet_amt         , send_system)
                            values
                            ({0}                           , {1}                   , {2}                   , {3}
                            , {4}                       , {5}                       , {6}                   , {7}                   , {8}
                            , to_date({9},'dd/mm/yyyy'), to_date({10},'dd/mm/yyyy'), {11}                  , {12}                  , {13}
                            , {14}                      , {15}                      , {16}                  , {17})";
                            sqlStr = WebUtil.SQLFormat(sqlStr,
                                state.SsCoopId, ls_assno, dsMain.DATA[0].process_year, ls_memno.Text
                                , dsMain.DATA[0].assisttype_code, ls_asstypepay, dec_appamt, dec_appamt, "1"
                                , ls_reqdate, ls_reqdate, state.SsUsername, dsMain.DATA[0].moneytype_code, dsMain.DATA[0].expense_bank
                                , dsMain.DATA[0].expense_branch, expense_accid.Text, dec_appamt, ls_sendsystem);
                            WebUtil.ExeSQL(sqlStr);
                        }
                        catch
                        {
                            LtServerMessage.Text = WebUtil.ErrorMessage("บันทึกผิดพลาด เลขสมาชิก " + ls_memno); return;
                        }
                    }
                }
                //dsList.ResetRow();
                GridView1.DataSource = null;
                GridView1.DataBind();
                LtServerMessage.Text = WebUtil.CompleteMessage("บันทึกสำเร็จ");
            }
            catch
            {
                LtServerMessage.Text = WebUtil.ErrorMessage("Error"); return;
            }
        }

        public void SaveWebSheet()
        {
            SaveData();
        }

        public void WebSheetLoadEnd()
        {
            if (dsMain.DATA[0].moneytype_code == "CSH")
            {
                this.SetOnLoadedScript("dsMain.GetElement(0, 'expense_bank').style.background = '#CCCCCC'; dsMain.GetElement(0, 'expense_bank').readOnly = true; dsMain.GetElement(0, 'expense_branch').style.background = '#CCCCCC'; dsMain.GetElement(0, 'expense_branch').readOnly = true;");
            }
        }
    }

}