$PBExportHeader$n_account.sru
namespace
namespace pbservice125
end namespace

forward
global type n_account from NonVisualObject
end type
end forward

global type n_account from NonVisualObject
end type
global n_account n_account

forward prototypes
public function integer of_candel_year (string as_wspass, integer ai_year) throws Exception
public function integer of_vcproc (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_vcproc_tks (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid, string as_type_xml, ref string as_voucherno) throws Exception
public function integer of_init_vcmastdet (string as_wspass, string as_vcno, ref string as_vcmas_xml, ref string as_vcdet_xml)
public function integer of_init_vclistday (string as_wspass, datetime adtm_date, ref string as_vclist_xml)
public function integer of_save_vcpost_to_gl (string as_wspass, string as_postlist_xml, string as_entry_id)
public function integer of_init_vcpost_to_gl (string as_wspass, datetime adtm_begin, datetime adtm_end, integer ai_poststatus, ref string as_vclist_xml, string as_coop_id)
public function integer of_cancel_post_to_gl (string as_wspass, string as_postlist_xml, string as_entry_id, string as_coop_id, datetime adtm_date)
public function integer of_init_vclistcancel (string as_wspass, datetime adtm_date, string as_coopid, ref string as_vclist_xml)
public function integer of_save_vclistcancel (string as_wspass, datetime adtm_vc_date, string as_voucher, string as_coopid, string as_entryid, datetime adtm_cancel_date) throws Exception
public function integer of_gen_data_paytrnbank (string as_wspass, string as_head_xml, string as_share_xml, string as_loan_xml, string as_etc_xml) throws Exception
public function integer of_get_cash_bg_fw (string as_wspass, datetime adtm_startdate, string as_coop_id, ref decimal adc_begin, ref decimal adc_forward)
public function integer of_savevoucher (string as_wspass, string as_vcmas_xml, string as_vcdet_xml) throws Exception
public function integer of_init_vclistcancel_by_vcno (string as_wspass, string vc_no, string as_coopid, ref string as_vclist_xml)
public function integer of_close_month_clear_vcno (string as_wspass, integer ai_year, integer ai_period) throws Exception
public function integer of_set_default_accountid (string as_wspass, string as_coop_id)
public function integer of_close_month (string as_wspass, integer ai_year, integer ai_period) throws Exception
public function integer of_cancel_closemonth_clear_vcno (string as_wspass, integer ai_year, integer ai_period) throws Exception
public function integer of_cancel_closemonth (string as_wspass, integer ai_year, integer ai_period) throws Exception
public function integer of_close_year (string as_wspass, integer ai_year) throws Exception
public function integer of_cancel_closeyear (string as_wspass, integer ai_year) throws Exception
public function integer of_init_consstant_bs (string as_wspass, string as_data_desc, ref string as_buzz_display_xml, ref string as_usr_type_xml)
public function integer of_save_constant_bs (string as_wspass, string as_main_xml, string as_detail_xml, string as_money_code, integer an_sheet_seq) throws Exception
public function integer of_init_formular_fc (string as_wspass, string as_money_sheetcode, integer an_data_group, ref string as_formular_fc_xml, ref string as_formular_fc_choose_xml)
public function integer of_save_formula_fc (string as_wspass, string as_main_xml, string as_money_code, string as_data_group) throws Exception
public function integer of_save_formula_sm (string as_wspass, string as_main_xml, string as_money_code, string as_data_group) throws Exception
public function integer of_init_formula_sm (string as_wspass, string as_money_sheetcode, integer an_data_group, ref string as_formular_sm_xml, ref string as_formular_sm_choose_xml)
public function integer of_gen_cashflow_sheet (string as_wspass, string as_acc_bs_head_xml, string as_moneysheet_code, string as_coop_id, ref string as_acc_bs_ret_xml) throws Exception
public function integer of_delete_accountid (string as_wspass, string as_accountid, string as_coop_id) throws Exception
public function integer of_add_newaccount_id (string as_wspass, string as_account_iddetail_xml, integer ai_update_add) throws Exception
public function integer of_candel_period (string as_wspass, integer ai_year, integer ai_period)
public function integer of_add_accperiod (string as_wspass, integer ai_year, string as_accperiod_xml) throws Exception
public function integer of_add_first_sumleger_period (string as_wspass, integer ai_year, string as_coop_id) throws Exception
public function integer of_set_budget (string as_wspass, string as_xml, string as_coopid, integer an_year, string as_budget_type) throws Exception
public function integer of_process_budget (string as_wspass, string as_coopid, integer ai_year, integer ai_period) throws Exception
public function integer of_add_accyear (string as_wspass, string as_year_xml) throws Exception
public function integer of_cal_dp (string as_wspass, datetime adtm_caltodate, string as_coop) throws Exception
public function integer of_gen_balance_sheet (string as_wspass, string as_acc_bs_head_xml, string as_moneysheet_code, string as_coop_id, ref string as_acc_bs_ret_xml)
public function string of_gen_cashpaper_activities (string as_wspass, datetime adtm_start, datetime adtm_end, integer ai_sum_period, string as_coop_id) throws Exception
public function string of_gen_cashpaper_drcr (string as_wspass, datetime adtm_start, datetime adtm_end, integer ai_sum_period, string as_coop_id) throws Exception
public function string of_gen_day_journalreport (string as_wspass, datetime adtm_start_date, datetime adtm_end_date, integer ai_type_group, string as_coop_id) throws Exception
public function string of_gen_ledger_report (string as_wspass, datetime adtm_start, datetime adtm_end, string as_account_id1, string as_account_id2, string as_coop_id) throws Exception
public function integer of_gen_trial_bs (string as_wspass, string as_choose_report_xml, string as_coop_id, ref string as_trial_report_xml) throws Exception
public function string of_get_cashpaper_detail (string as_wspass, integer ai_sheet, string as_type_activity, string as_coop_id) throws Exception
public function integer of_get_year_period (string as_wspass, datetime adtm_date, string as_coop_id, ref integer ai_year, ref integer ai_period) throws Exception
public function string of_init_account_splitactivity (string as_wspass, integer ai_year, integer ai_period) throws Exception
public function string of_init_contuseprofit (string as_wspass, integer ai_year, integer ai_period) throws Exception
public function string of_init_vcset_noncash (string as_wspass, datetime adtm_datebegin, datetime adtm_dateend, string as_account_id) throws Exception
public function integer of_save_account_splitactivity (string as_wspass, string as_splitactivity_xml) throws Exception
public function integer of_save_asset (string as_wspass, string as_xml, string as_ratexml, string as_coop) throws Exception
public function integer of_save_contuseprofit (string as_wspass, string as_conuse_xml) throws Exception
public function integer of_save_vcset_noncash (string as_wspass, string as_cash_detail_xml, datetime adtm_date_begin, datetime adtm_date_end, string as_account_id) throws Exception
public function integer of_update_cashpaper_detail (string as_wspass, string as_cash_detail_xml, integer ai_sheet, string as_type_activity) throws Exception
public function integer of_process_pension (string as_wspass, string as_coopid, integer ai_year) throws Exception
public function integer of_vcproc_nan (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_vcproc_pea (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_vcproc_mhs (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_process_member_balance (string as_wspass, integer ai_year, integer ai_period, string as_coopid) throws Exception
public function integer of_gen_trial_bs_coop (string as_wspass, string as_choose_report_xml, string as_coop_id, ref string as_trial_report_xml) throws Exception
public function integer of_init_vcmastdet_nan (string as_wspass, string as_vcno, ref string as_vcmas_xml, ref string as_vcdet_xml)
public function integer of_gen_trial_bs2 (string as_wspass, datetime adtm_start_date, datetime adtm_end_date, string as_check_flag, string as_coop_id) throws Exception
public function string of_gen_ledger_report_day (string as_wspass, datetime adtm_start, datetime adtm_end, string as_account_id1, string as_account_id2, string as_coop_id) throws Exception
public function decimal of_get_balance_begin_day (string as_wspass, string as_account_id, datetime adtm_date_find, string as_coop_id)
public function decimal of_get_balance_begin (string as_wspass, string as_account_id, integer ai_account_year, integer ai_period, string as_coop_id) throws Exception
public function integer of_vcproc_exat (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_get_cash_bg_fw_first_period (string as_wspass, datetime adtm_startdate, string as_coop_id, ref decimal adc_begin, ref decimal adc_forward)
public function integer of_vcproc_ry (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_gen_balance_sheet_excel (string as_wspass, string as_moneysheet_code, integer ai_year_1, integer ai_year_2, integer ai_month_1, integer ai_month_2, integer ai_show_all, integer ai_data_1, integer ai_data_2, integer ai_compere_b1_b3, integer ai_show_remark, string as_coop_id, integer ai_total_show, integer ai_percent_status)
public function integer of_vcproc_lap (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_add_newemployee (string as_wspass, string as_employee_detail_xml, integer ai_update_add) throws Exception
public function integer of_close_depreciation (string as_wspass, integer ai_year, datetime adtm_caltodate, string as_coopid) throws Exception
public function integer of_set_employee_salary (string as_wspass, string as_xml, string as_coopid, integer an_year) throws Exception
public function integer of_vcproc_msk (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_get_bg_fw (string as_wspass, datetime adtm_startdate, string as_coop_id, string as_accountid, ref decimal adc_begin, ref decimal adc_forward)
public function integer of_vcproc_rbt (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
public function integer of_get_period_date (string as_wspass, integer ai_year, integer ai_period, string as_coop_id, ref datetime adtm_begin_date, ref datetime adtm_end_date) throws Exception
public function integer of_vcproc_hat (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception
end prototypes

public function integer of_candel_year (string as_wspass, integer ai_year) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_candel_year(ai_year)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service ln_service
	ln_service = create n_cst_account_prepare_vc_service
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_tks (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid, string as_type_xml, ref string as_voucherno) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_tks ln_service
	ln_service = create n_cst_account_prepare_vc_service_tks
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc_tks(adtm_sysdate, as_sysgencode, as_coopid, as_userid, as_type_xml, ref as_voucherno)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_vcmastdet (string as_wspass, string as_vcno, ref string as_vcmas_xml, ref string as_vcdet_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vcmastdet(as_vcno, ref as_vcmas_xml, ref as_vcdet_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_vclistday (string as_wspass, datetime adtm_date, ref string as_vclist_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vclistday(adtm_date, ref as_vclist_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_vcpost_to_gl (string as_wspass, string as_postlist_xml, string as_entry_id);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_vcpost_to_gl(as_postlist_xml, as_entry_id)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_vcpost_to_gl (string as_wspass, datetime adtm_begin, datetime adtm_end, integer ai_poststatus, ref string as_vclist_xml, string as_coop_id);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vcpost_to_gl(adtm_begin, adtm_end, ai_poststatus, ref as_vclist_xml, as_coop_id)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cancel_post_to_gl (string as_wspass, string as_postlist_xml, string as_entry_id, string as_coop_id, datetime adtm_date);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_cancel_post_to_gl(as_postlist_xml, as_entry_id, as_coop_id, adtm_date)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_vclistcancel (string as_wspass, datetime adtm_date, string as_coopid, ref string as_vclist_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vclistcancel(adtm_date, as_coopid, ref as_vclist_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_vclistcancel (string as_wspass, datetime adtm_vc_date, string as_voucher, string as_coopid, string as_entryid, datetime adtm_cancel_date) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_vclistcancel(adtm_vc_date, as_voucher, as_coopid, as_entryid, adtm_cancel_date)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_data_paytrnbank (string as_wspass, string as_head_xml, string as_share_xml, string as_loan_xml, string as_etc_xml) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_data_paytrnbank(as_head_xml, as_share_xml, as_loan_xml, as_etc_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_get_cash_bg_fw (string as_wspass, datetime adtm_startdate, string as_coop_id, ref decimal adc_begin, ref decimal adc_forward);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_cash_bg_fw(adtm_startdate, as_coop_id, ref adc_begin, ref adc_forward)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_savevoucher (string as_wspass, string as_vcmas_xml, string as_vcdet_xml) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_savevoucher(as_vcmas_xml, as_vcdet_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_vclistcancel_by_vcno (string as_wspass, string vc_no, string as_coopid, ref string as_vclist_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vclistcancel_by_vcno(vc_no, as_coopid, ref as_vclist_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_close_month_clear_vcno (string as_wspass, integer ai_year, integer ai_period) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_close_month_clear_vcno(ai_year, ai_period)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_set_default_accountid (string as_wspass, string as_coop_id);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_set_default_accountid(as_coop_id)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_close_month (string as_wspass, integer ai_year, integer ai_period) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_close_month(ai_year, ai_period)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cancel_closemonth_clear_vcno (string as_wspass, integer ai_year, integer ai_period) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_cancel_closemonth_clear_vcno(ai_year, ai_period)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cancel_closemonth (string as_wspass, integer ai_year, integer ai_period) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_cancel_closemonth(ai_year, ai_period)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_close_year (string as_wspass, integer ai_year) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_close_year(ai_year)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cancel_closeyear (string as_wspass, integer ai_year) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_cancel_closeyear(ai_year)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_consstant_bs (string as_wspass, string as_data_desc, ref string as_buzz_display_xml, ref string as_usr_type_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_consstant_bs(as_data_desc, ref as_buzz_display_xml, ref as_usr_type_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_constant_bs (string as_wspass, string as_main_xml, string as_detail_xml, string as_money_code, integer an_sheet_seq) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_constant_bs(as_main_xml, as_detail_xml, as_money_code, an_sheet_seq)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_formular_fc (string as_wspass, string as_money_sheetcode, integer an_data_group, ref string as_formular_fc_xml, ref string as_formular_fc_choose_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_formular_fc(as_money_sheetcode, an_data_group, ref as_formular_fc_xml, ref as_formular_fc_choose_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_formula_fc (string as_wspass, string as_main_xml, string as_money_code, string as_data_group) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_formula_fc(as_main_xml, as_money_code, as_data_group)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_formula_sm (string as_wspass, string as_main_xml, string as_money_code, string as_data_group) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_formula_sm(as_main_xml, as_money_code, as_data_group)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_formula_sm (string as_wspass, string as_money_sheetcode, integer an_data_group, ref string as_formular_sm_xml, ref string as_formular_sm_choose_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_formula_sm(as_money_sheetcode, an_data_group, ref as_formular_sm_xml, ref as_formular_sm_choose_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_cashflow_sheet (string as_wspass, string as_acc_bs_head_xml, string as_moneysheet_code, string as_coop_id, ref string as_acc_bs_ret_xml) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_cashflow_sheet(as_acc_bs_head_xml, as_moneysheet_code, as_coop_id, ref as_acc_bs_ret_xml)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_delete_accountid (string as_wspass, string as_accountid, string as_coop_id) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_delete_accountid(as_accountid, as_coop_id)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_add_newaccount_id (string as_wspass, string as_account_iddetail_xml, integer ai_update_add) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_add_newaccount_id(as_account_iddetail_xml, ai_update_add)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_candel_period (string as_wspass, integer ai_year, integer ai_period);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_candel_period(ai_year, ai_period)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_add_accperiod (string as_wspass, integer ai_year, string as_accperiod_xml) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_add_accperiod(ai_year, as_accperiod_xml)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_add_first_sumleger_period (string as_wspass, integer ai_year, string as_coop_id) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_add_accperiod(ai_year, as_coop_id)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_set_budget (string as_wspass, string as_xml, string as_coopid, integer an_year, string as_budget_type) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_set_budget(as_xml, as_coopid, an_year, as_budget_type)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_process_budget (string as_wspass, string as_coopid, integer ai_year, integer ai_period) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_process_budget(as_coopid, ai_year, ai_period)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_add_accyear (string as_wspass, string as_year_xml) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_add_accyear(as_year_xml)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cal_dp (string as_wspass, datetime adtm_caltodate, string as_coop) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_cal_dp(adtm_caltodate,as_coop)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_balance_sheet (string as_wspass, string as_acc_bs_head_xml, string as_moneysheet_code, string as_coop_id, ref string as_acc_bs_ret_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_balance_sheet(as_acc_bs_head_xml,as_moneysheet_code,as_coop_id,as_acc_bs_ret_xml)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_gen_cashpaper_activities (string as_wspass, datetime adtm_start, datetime adtm_end, integer ai_sum_period, string as_coop_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_cashpaper_activities(adtm_start,adtm_end,ai_sum_period,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_gen_cashpaper_drcr (string as_wspass, datetime adtm_start, datetime adtm_end, integer ai_sum_period, string as_coop_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_cashpaper_drcr(adtm_start,adtm_end,ai_sum_period,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_gen_day_journalreport (string as_wspass, datetime adtm_start_date, datetime adtm_end_date, integer ai_type_group, string as_coop_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_day_journalreport(adtm_start_date,adtm_end_date,ai_type_group,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_gen_ledger_report (string as_wspass, datetime adtm_start, datetime adtm_end, string as_account_id1, string as_account_id2, string as_coop_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_ledger_report(adtm_start,adtm_end,as_account_id1,as_account_id2,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_trial_bs (string as_wspass, string as_choose_report_xml, string as_coop_id, ref string as_trial_report_xml) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_trial_bs(as_choose_report_xml,as_coop_id,as_trial_report_xml)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_get_cashpaper_detail (string as_wspass, integer ai_sheet, string as_type_activity, string as_coop_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_cashpaper_detail(ai_sheet,as_type_activity,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_get_year_period (string as_wspass, datetime adtm_date, string as_coop_id, ref integer ai_year, ref integer ai_period) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_year_period(adtm_date,as_coop_id,ai_year,ai_period)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_init_account_splitactivity (string as_wspass, integer ai_year, integer ai_period) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	ln_service.of_init_account_splitactivity(ai_year,ai_period)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_init_contuseprofit (string as_wspass, integer ai_year, integer ai_period) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_contuseprofit(ai_year,ai_period)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_init_vcset_noncash (string as_wspass, datetime adtm_datebegin, datetime adtm_dateend, string as_account_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vcset_noncash(adtm_datebegin,adtm_dateend,as_account_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_account_splitactivity (string as_wspass, string as_splitactivity_xml) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_account_splitactivity(as_splitactivity_xml)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_asset (string as_wspass, string as_xml, string as_ratexml, string as_coop) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_asset(as_xml,as_ratexml,as_coop)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_contuseprofit (string as_wspass, string as_conuse_xml) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_contuseprofit(as_conuse_xml)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_vcset_noncash (string as_wspass, string as_cash_detail_xml, datetime adtm_date_begin, datetime adtm_date_end, string as_account_id) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_save_vcset_noncash(as_cash_detail_xml,adtm_date_begin,adtm_date_end,as_account_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_update_cashpaper_detail (string as_wspass, string as_cash_detail_xml, integer ai_sheet, string as_type_activity) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_update_cashpaper_detail(as_cash_detail_xml,ai_sheet,as_type_activity)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_process_pension (string as_wspass, string as_coopid, integer ai_year) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_process_pension(as_coopid, ai_year)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_nan (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_nan ln_service
	ln_service = create n_cst_account_prepare_vc_service_nan
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc_nan(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_pea (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_pea ln_service
	ln_service = create n_cst_account_prepare_vc_service_pea
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc_pea(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_mhs (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_mhs ln_service
	ln_service = create n_cst_account_prepare_vc_service_mhs
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc_mhs(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_process_member_balance (string as_wspass, integer ai_year, integer ai_period, string as_coopid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_process_member_balance(ai_year, ai_period, as_coopid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_trial_bs_coop (string as_wspass, string as_choose_report_xml, string as_coop_id, ref string as_trial_report_xml) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_trial_bs_coop(as_choose_report_xml, as_coop_id , ref as_trial_report_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_vcmastdet_nan (string as_wspass, string as_vcno, ref string as_vcmas_xml, ref string as_vcdet_xml);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_voucher ln_service
	ln_service = create n_cst_voucher
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_init_vcmastdet_nan(as_vcno, ref as_vcmas_xml, ref as_vcdet_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_trial_bs2 (string as_wspass, datetime adtm_start_date, datetime adtm_end_date, string as_check_flag, string as_coop_id) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_trial_bs2(adtm_start_date,adtm_end_date,as_check_flag,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_gen_ledger_report_day (string as_wspass, datetime adtm_start, datetime adtm_end, string as_account_id1, string as_account_id2, string as_coop_id) throws Exception;string  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_ledger_report_day(adtm_start,adtm_end,as_account_id1,as_account_id2,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function decimal of_get_balance_begin_day (string as_wspass, string as_account_id, datetime adtm_date_find, string as_coop_id);decimal  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_balance_begin_day(as_account_id,adtm_date_find,as_coop_id)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function decimal of_get_balance_begin (string as_wspass, string as_account_id, integer ai_account_year, integer ai_period, string as_coop_id) throws Exception;decimal  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_balance_begin(as_account_id,ai_account_year,ai_period,as_coop_id)
	in_conn.of_disconnectdb()
	catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex 
end try
return result
end function

public function integer of_vcproc_exat (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_exat ln_service
	ln_service = create n_cst_account_prepare_vc_service_exat
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_get_cash_bg_fw_first_period (string as_wspass, datetime adtm_startdate, string as_coop_id, ref decimal adc_begin, ref decimal adc_forward);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_cash_bg_fw_first_period(adtm_startdate, as_coop_id, ref adc_begin, ref adc_forward)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_ry (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_ry ln_service
	ln_service = create n_cst_account_prepare_vc_service_ry
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_gen_balance_sheet_excel (string as_wspass, string as_moneysheet_code, integer ai_year_1, integer ai_year_2, integer ai_month_1, integer ai_month_2, integer ai_show_all, integer ai_data_1, integer ai_data_2, integer ai_compere_b1_b3, integer ai_show_remark, string as_coop_id, integer ai_total_show, integer ai_percent_status);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_gen_balance_sheet_excel(as_moneysheet_code,ai_year_1,ai_year_2,ai_month_1,ai_month_2,ai_show_all,ai_data_1,ai_data_2,ai_compere_b1_b3,ai_show_remark,as_coop_id,ai_total_show,ai_percent_status)
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_lap (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_lap ln_service
	ln_service = create n_cst_account_prepare_vc_service_lap
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc_lap(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_add_newemployee (string as_wspass, string as_employee_detail_xml, integer ai_update_add) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_add_newemployee(as_employee_detail_xml, ai_update_add)
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_close_depreciation (string as_wspass, integer ai_year, datetime adtm_caltodate, string as_coopid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_close_depreciation(ai_year,adtm_caltodate,as_coopid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_set_employee_salary (string as_wspass, string as_xml, string as_coopid, integer an_year) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_set_employee_salary(as_xml,as_coopid,an_year)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_msk (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_msk ln_service
	ln_service = create n_cst_account_prepare_vc_service_msk
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_get_bg_fw (string as_wspass, datetime adtm_startdate, string as_coop_id, string as_accountid, ref decimal adc_begin, ref decimal adc_forward);int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_bg_fw(adtm_startdate, as_coop_id,as_accountid, ref adc_begin, ref adc_forward)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_rbt (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_rbt ln_service
	ln_service = create n_cst_account_prepare_vc_service_rbt
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_get_period_date (string as_wspass, integer ai_year, integer ai_period, string as_coop_id, ref datetime adtm_begin_date, ref datetime adtm_end_date) throws Exception;integer  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_service ln_service
	ln_service = create n_cst_account_service
	
	ln_service.of_initservice(in_conn)
	
	result = ln_service.of_get_period_date(ai_year,ai_period,as_coop_id,ref adtm_begin_date , ref adtm_end_date )
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_vcproc_hat (string as_wspass, datetime adtm_sysdate, string as_sysgencode, string as_coopid, string as_userid) throws Exception;int  result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_account_prepare_vc_service_hat ln_service
	ln_service = create n_cst_account_prepare_vc_service_hat
	
	ln_service.of_settrans(in_conn)
	
	result = ln_service.of_vcproc_hat(adtm_sysdate, as_sysgencode, as_coopid, as_userid)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

on n_account.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_account.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on
