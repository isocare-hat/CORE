$PBExportHeader$n_finance.sru
namespace
namespace pbservice125
end namespace

forward
global type n_finance from NonVisualObject
end type
end forward

global type n_finance from NonVisualObject
end type
global n_finance n_finance

forward prototypes
public function string of_test (string as_test)
public function integer of_postprocessotherto_fin (string as_wspass, string as_coopid, string as_entry_id, datetime adtm_wdate, string as_machineid, string as_procxml) throws Exception
public function integer of_init_fincashcontrol_user (string as_wspass, ref string as_fincashcontrol_xml, ref string as_fullname) throws Exception
public function integer of_finquery (string as_wspass, string as_AppName, string as_user_xml, ref string as_userdetail_xml, ref string as_recv_xml, ref string as_pay_xml) throws Exception
public function integer of_init_close_day (string as_wspass, string as_coopid, string as_entry_id, datetime adtm_wdate, string as_appname, ref string as_closeday_xml, ref string as_chqwait_xml) throws Exception
public function integer of_init_payrecv_slip (string wsPass, string CoopID, string entryID, string machineID, datetime workdate, integer recv_pay_status) throws Exception
public function integer of_init_fincontact (string as_wspass, ref string as_contact_xml) throws Exception
public function integer of_init_sendchq (string wsPass, string as_coopid, string as_entry, datetime adtm_wdate) throws Exception
public function integer of_retrievecancel_sendchq (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_bank_xml, string as_cancellist) throws Exception
public function integer of_caltax (string as_wspass, ref string as_main_xml, ref string as_taxdet_xml) throws Exception
public function integer of_close_day (string as_wspass, string as_appname, string as_closeday_xml, string as_chqwait_xml) throws Exception
public function string of_defaultaccid (string as_wspass, string as_moneytype) throws Exception
public function integer of_fincashcontrol_process (string as_wspass, string as_fincashcontrol_xml, string as_machined, string as_appname) throws Exception
public function integer of_getaddress (string as_wspass, ref string as_taxaddr, ref string as_taxid, string as_coopid, string as_memberno, integer ai_memberflag) throws Exception
public function integer of_init_bankaccount_slip (string as_wspass, ref string as_main_xml) throws Exception
public function integer of_init_chq_bookno (string as_wspass, ref string as_chqbook_xml) throws Exception
public function integer of_init_chqlistfrom_slip (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_chqcond_xml, ref string as_cutbank_xml, ref string as_chqtype_xml, ref string as_chqlist_xml) throws Exception
public function integer of_init_chqnoandbank (string as_wspass, string as_coopid, string as_bank, string as_bankbranch, string as_chqbookno, ref string as_accno, ref string as_startchqno) throws Exception
public function integer of_init_fincashcontrol (string as_wspass, string as_coop_id, datetime adtm_wdate, string as_permis_id, ref string as_fincashctl_info) throws Exception
public function integer of_init_openday (string as_wspass, string as_coop_id, string as_entry_id, datetime adtm_wdate, string as_machine_id, ref string as_startday_info, ref string as_errmessage) throws Exception
public function integer of_init_paychq (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_main_xml, ref string as_chqlist_xml) throws Exception
public function integer of_init_paychq_apvloancbt (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_main_xml, ref string as_chqlist_xml, string as_cashtype) throws Exception
public function integer of_init_paychq_manual (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_main_xml) throws Exception
public function integer of_init_paychq_split (string as_wspass, string as_branch, datetime adtm_wdate, ref string as_chqcond_xml, ref string as_cutbank_xml, ref string as_chqtype_xml, ref string as_chqlist_xml) throws Exception
public function integer of_init_payrecv_member (string as_wspass, ref string as_main_xml) throws Exception
public function integer of_init_payrecv_slip (string as_wspass, string as_coop_id, string as_entry_id, string as_machine, datetime adtm_wdate, integer as_recvpay_status, ref string as_slipmain_xml) throws Exception
public function integer of_init_payrecv_slipcfm (string as_wspass, string as_coopid, string as_slipno, string as_entryid, string as_machine, datetime adtm_wdate, ref string as_xmlfinslip, ref string as_xmlfinslipdet) throws Exception
public function integer of_init_payrecv_slipdlg (string as_wspass, string as_coopid, string as_slipno, string as_entryid, string as_machine, datetime adtm_wdate, ref string as_xmlfinslip, ref string as_xmlfinslipdet) throws Exception
public function integer of_init_postotherto_fin (string as_wspass, ref string as_memb_xml, ref string as_slipmain_xml, ref string as_slipcancel_xml, string as_appname) throws Exception
public function integer of_init_posttobank (string as_wspass, string as_branch, datetime adtm_wdate, ref string as_xmlinfo) throws Exception
public function string of_init_printfinstatus (string as_wspass, string as_branch, datetime adtm_wdate) throws Exception
public function integer of_init_sendchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, ref string as_sendchq_xml) throws Exception
public function integer of_itemcaltax (string as_wspass, string as_coopid, integer ai_recv_pay, integer ai_calvat, integer ai_taxcode, decimal adc_itemamt, ref decimal adc_taxamt, ref decimal adc_itemamt_net, ref decimal adc_vatamt) throws Exception
public function integer of_open_day (string as_wspass, string as_openday_xml) throws Exception
public function string of_payslip (string as_wspass, string as_main_xml, string as_item_xml, string as_taxdetail_xml, string as_appname) throws Exception
public function string of_payslip_pea (string as_wspass, string as_main_xml, string as_item_xml, string as_taxdetail_xml, string as_appname) throws Exception
public function string of_payslip_pia (string as_wspass, string as_main_xml, string as_item_xml, string as_taxdetail_xml, string as_appname) throws Exception
public function integer of_postcancel_sendchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_bank_xml, string as_cancellist_xml) throws Exception
public function integer of_postcancelchq (string as_wspass, string as_coopid, datetime adtm_wdate, string as_cancleid, string as_machine, string as_cancellist_xml) throws Exception
public function integer of_postcancelposttobank (string as_wspass, string as_branch, string as_entry, datetime adtm_wdate, string as_machine, string as_banklist_xml) throws Exception
public function integer of_postcancelsendchq (string as_wspass, string as_coopid, string as_chqno, string as_bank, string as_bankbranch, integer ai_seqno) throws Exception
public function integer of_postcancelslip (string as_wspass, string as_coopid, string as_entry_id, string as_head_xml, string as_cancle_xml) throws Exception
public function integer of_postchangedstatuschq (string as_wspass, string as_coopid, string as_entry_id, datetime adtm_wdate, string as_machine, string as_chqno, string as_chqbookno, string as_bank, string as_bankbranch, integer as_chqseq_no, integer ai_chqstatus) throws Exception
public function integer of_postchqmas (string as_wspass, string as_chqbook_xml) throws Exception
public function integer of_postfincontact (string as_wspass, string as_contact_xml, string as_action) throws Exception
public function integer of_postfinstatusexport (string as_wspass, string as_coopname, string as_mainxml, string as_path) throws Exception
public function string of_postotherto_fin (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_appname, string as_main_xml, string as_itemdet_xml, string as_cancelslip_xml) throws Exception
public function string of_postpaychq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_main_xml, string as_chqlist_xml, string as_formset) throws Exception
public function string of_postpaychq_fromapvloan (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_cond_xml, string as_cutbank_xml, string as_chqtype_xml, string as_payoutslip, string as_formset) throws Exception
public function string of_postpaychq_fromslip (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_cond_xml, string as_cutbank_xml, string as_chqtype_xml, string as_chqllist_xml, string as_formset) throws Exception
public function string of_postpaychq_manual (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_main_xml, string as_formset) throws Exception
public function string of_postreprintchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_formset, string as_cond_xml, string as_retreive_xml, string as_chqlist_xml) throws Exception
public function integer of_postsavesendchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_sendchq_xml, string as_waitchq_xml, string as_sendchqacc_xml, integer ai_accknow) throws Exception
public function integer of_postslipbank (string as_wspass, string as_main_xml) throws Exception
public function integer of_posttobank (string as_wspass, string as_coopid, string as_entryid, datetime adtm_wdate, string as_machine, integer ai_seqno) throws Exception
public function integer of_postupdatebankaccount (string as_wspass, string as_bank_xml) throws Exception
public function integer of_retrieve_cancleslip (string as_wspass, string as_coopid, string as_head_xml, ref string as_itemlist_xml) throws Exception
public function integer of_retrievebankaccount (string as_wspass, string as_coopid, ref string as_bank_xml, ref string as_bankstm_xml) throws Exception
public function integer of_retrievecancelchq (string as_wspass, string as_coopid, string as_cond_xml, ref string as_chqcancel_xml) throws Exception
public function integer of_retrievechangechqstatus (string as_wspass, string as_coopid, ref string as_chqlist_xml) throws Exception
public function integer of_retrievechqfrom_apvloancbt (string as_wspass, string as_coopid, datetime adtm_wdate, string as_bankcode, string as_lngroupcode, ref string as_chqlist_xml, string as_cashtype) throws Exception
public function integer of_retrievechqfromapvloan (string as_wspass, string as_coopcltr, datetime adtm_wdate, string as_cashtype, ref string as_chqlist_xml, string as_bankcode, string as_bankbranch) throws Exception
public function integer of_retrievechqfromslip (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_chqlist_xml) throws Exception
public function integer of_retrievefinslipdet (string as_wspass, string as_coopid, string as_slipno, ref string as_slipdet_xml) throws Exception
public function integer of_retrievepaychqlist (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_chqlist_xml) throws Exception
public function integer of_retrievereprintchq (string as_wspass, string as_coopid, string as_retreive_xml, ref string as_chqlist_xml) throws Exception
public function integer of_retrievereprintpayslip (string as_wspass, string as_coopid, string as_cond_xml, ref string as_slip_xml) throws Exception
public function integer of_retrievereprintreceipt (string as_wspass, string as_coopid, string as_cond_xml, ref string as_list_xml) throws Exception
public function integer of_retrievetaxpay (string as_wspass, string as_coopid, string as_main_xml, ref string as_list_xml) throws Exception
public function integer of_dddwbankbranch (string as_wspass, string as_bank, ref string as_bankbranch) throws Exception
public function string of_dddwfinitemtype (string as_wspass) throws Exception
public function string of_dddwbank (string as_wspass) throws Exception
public function string of_getlistreappr_moneyorder (string as_wspass, datetime adtm_trn) throws Exception
public function string of_getlistcancel_moneyorder (string as_wspass, datetime adtm_trn)
public function integer of_cancel_moneyorder (string as_wspass, string as_moneyorder_list_xml, string as_entryid, datetime adtm_entry) throws Exception
public function integer of_cancelappr_moneyorder (string as_wspass, string as_moneyorder_list_xml, string as_entryid, datetime adtm_entry)
public function integer of_approve_moneyorder (string as_wspass, string as_moneyorder_list_xml, string as_entryid, datetime adtm_entry)
public function string of_getlistappr_moneyorder (string as_wspass, datetime adtm_trn)
public function integer of_retrievereprintpayslip_ir (string as_wspass, string as_coopid, string as_cond_xml, ref string as_slip_xml) throws Exception
public function integer of_retrievechangchqdetail (string as_coopid, string as_chqno, string as_bookno, string as_bank, string as_bankbranch, integer ai_seqno, ref string as_chqdetail_xml, string as_wspass) throws Exception
public function string of_init_moneyorder (string as_wspass, string as_moneyorder_master_xml, string as_entryid, datetime adtm_entry)
public function string of_getlist_moneyorder (string as_wspass, datetime adtm_trn) throws Exception
public function integer of_getdata_moneyorder (string as_wspass, string as_docno, ref string as_moneyorder_master_xml, ref string as_moneyorder_detail_xml) throws Exception
public function integer of_getchildbranch (string as_wspass, ref string as_xmlbank)
public function integer of_fin_posttobank (string as_wspass, string as_branch, string as_entry_id, datetime adtm_wdate, string as_machine, string as_item_xmt) throws Exception
public function integer of_save_moneyorder (string as_wspass, string as_moneyorder_master_xml, string as_moneyorder_detail_xml, string as_entryid, datetime adtm_entry)
public function integer of_postfundto_fin (string as_wspass, string as_postlist_xml, string as_entry_id, string as_coop_id, datetime adtm_date) throws Exception
public function integer of_postfundto_depttran (string as_wspass, string as_postlist_xml, string as_entry_id, string as_coop_id, datetime adtm_date) throws Exception
public function integer of_postpaychq_split (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_cond_xml, string as_bankcut_xml, string as_chqtype_xml, string as_chqlist_xml, string as_chqsplit_xml, string as_formset) throws Exception
end prototypes

public function string of_test (string as_test);string ls_result

ls_result = "test " + as_test

return ls_result
end function

public function integer of_postprocessotherto_fin (string as_wspass, string as_coopid, string as_entry_id, datetime adtm_wdate, string as_machineid, string as_procxml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postprocessotherto_fin(as_coopid, as_entry_id, adtm_wdate, as_machineid, as_procxml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_fincashcontrol_user (string as_wspass, ref string as_fincashcontrol_xml, ref string as_fullname) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_fincashcontrol_user(as_fincashcontrol_xml, as_fullname)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_finquery (string as_wspass, string as_AppName, string as_user_xml, ref string as_userdetail_xml, ref string as_recv_xml, ref string as_pay_xml) throws Exception;int li_result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
	
	li_result = ln_service.of_finquery(as_appname, as_user_xml, as_userdetail_xml, as_recv_xml, as_pay_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return li_result
end function

public function integer of_init_close_day (string as_wspass, string as_coopid, string as_entry_id, datetime adtm_wdate, string as_appname, ref string as_closeday_xml, ref string as_chqwait_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_close_day(as_coopid, as_entry_id, adtm_wdate, as_appname, as_closeday_xml, as_chqwait_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_payrecv_slip (string wsPass, string CoopID, string entryID, string machineID, datetime workdate, integer recv_pay_status) throws Exception;integer li_result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	String result[2]
    String mainXml = "", itemXml = "";
	in_conn.of_connectdb(wsPass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
	
	li_result = ln_service.of_init_payrecv_slip(CoopID, entryID, machineID, workdate, recv_pay_status, ref mainXml)
	in_conn.of_disconnectdb()
catch(Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return li_result
end function

public function integer of_init_fincontact (string as_wspass, ref string as_contact_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_fincontact(as_contact_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_sendchq (string wsPass, string as_coopid, string as_entry, datetime adtm_wdate) throws Exception;integer li_result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	String as_sendchq_xml = "";
	in_conn.of_connectdb(wsPass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
	
	li_result = ln_service.of_init_sendchq(as_coopid, as_entry, adtm_wdate, ref as_sendchq_xml)
	in_conn.of_disconnectdb()
catch(Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return li_result
end function

public function integer of_retrievecancel_sendchq (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_bank_xml, string as_cancellist) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievecancel_sendchq(as_coopid, adtm_wdate, as_bank_xml, as_cancellist)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_caltax (string as_wspass, ref string as_main_xml, ref string as_taxdet_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_caltax(as_main_xml, as_taxdet_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_close_day (string as_wspass, string as_appname, string as_closeday_xml, string as_chqwait_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_close_day(as_appname, as_closeday_xml, as_chqwait_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_defaultaccid (string as_wspass, string as_moneytype) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_defaultaccid(as_moneytype)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_fincashcontrol_process (string as_wspass, string as_fincashcontrol_xml, string as_machined, string as_appname) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_fincashcontrol_process(as_fincashcontrol_xml, as_machined, as_appname)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_getaddress (string as_wspass, ref string as_taxaddr, ref string as_taxid, string as_coopid, string as_memberno, integer ai_memberflag) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_getaddress(as_taxaddr, as_taxid, as_coopid, as_memberno, ai_memberflag)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_bankaccount_slip (string as_wspass, ref string as_main_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_bankaccount_slip(as_main_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_chq_bookno (string as_wspass, ref string as_chqbook_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_chq_bookno(as_chqbook_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_chqlistfrom_slip (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_chqcond_xml, ref string as_cutbank_xml, ref string as_chqtype_xml, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_chqlistfrom_slip(as_coopid, adtm_wdate, as_chqcond_xml, as_cutbank_xml, as_chqtype_xml, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_chqnoandbank (string as_wspass, string as_coopid, string as_bank, string as_bankbranch, string as_chqbookno, ref string as_accno, ref string as_startchqno) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_chqnoandbank(as_coopid, as_bank, as_bankbranch, as_chqbookno, as_accno, as_startchqno)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_fincashcontrol (string as_wspass, string as_coop_id, datetime adtm_wdate, string as_permis_id, ref string as_fincashctl_info) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_fincashcontrol(as_coop_id, adtm_wdate, as_permis_id, as_fincashctl_info)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_openday (string as_wspass, string as_coop_id, string as_entry_id, datetime adtm_wdate, string as_machine_id, ref string as_startday_info, ref string as_errmessage) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_openday(as_coop_id, as_entry_id, adtm_wdate, as_machine_id, as_startday_info, as_errmessage)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_paychq (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_main_xml, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_paychq(as_coopid, adtm_wdate, as_main_xml, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_paychq_apvloancbt (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_main_xml, ref string as_chqlist_xml, string as_cashtype) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_paychq_apvloancbt(as_coopid, adtm_wdate, as_main_xml, as_chqlist_xml, as_cashtype)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_paychq_manual (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_main_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_paychq_manual(as_coopid, adtm_wdate, as_main_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_paychq_split (string as_wspass, string as_branch, datetime adtm_wdate, ref string as_chqcond_xml, ref string as_cutbank_xml, ref string as_chqtype_xml, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_paychq_split(as_branch, adtm_wdate, as_chqcond_xml, as_cutbank_xml, as_chqtype_xml, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_payrecv_member (string as_wspass, ref string as_main_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_payrecv_member(as_main_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_payrecv_slip (string as_wspass, string as_coop_id, string as_entry_id, string as_machine, datetime adtm_wdate, integer as_recvpay_status, ref string as_slipmain_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_payrecv_slip(as_coop_id, as_entry_id, as_machine, adtm_wdate, as_recvpay_status, as_slipmain_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_payrecv_slipcfm (string as_wspass, string as_coopid, string as_slipno, string as_entryid, string as_machine, datetime adtm_wdate, ref string as_xmlfinslip, ref string as_xmlfinslipdet) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_payrecv_slipcfm(as_coopid, as_slipno, as_entryid, as_machine, adtm_wdate, as_xmlfinslip, as_xmlfinslipdet)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_payrecv_slipdlg (string as_wspass, string as_coopid, string as_slipno, string as_entryid, string as_machine, datetime adtm_wdate, ref string as_xmlfinslip, ref string as_xmlfinslipdet) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_payrecv_slipdlg(as_coopid, as_slipno, as_entryid, as_machine, adtm_wdate, as_xmlfinslip, as_xmlfinslipdet)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_postotherto_fin (string as_wspass, ref string as_memb_xml, ref string as_slipmain_xml, ref string as_slipcancel_xml, string as_appname) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_postotherto_fin(as_memb_xml, as_slipmain_xml, as_slipcancel_xml, as_appname)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_posttobank (string as_wspass, string as_branch, datetime adtm_wdate, ref string as_xmlinfo) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_posttobank(as_branch, adtm_wdate, as_xmlinfo)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_init_printfinstatus (string as_wspass, string as_branch, datetime adtm_wdate) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_printfinstatus(as_branch, adtm_wdate)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_init_sendchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, ref string as_sendchq_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_init_sendchq(as_coopid, as_entry, adtm_wdate, as_sendchq_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_itemcaltax (string as_wspass, string as_coopid, integer ai_recv_pay, integer ai_calvat, integer ai_taxcode, decimal adc_itemamt, ref decimal adc_taxamt, ref decimal adc_itemamt_net, ref decimal adc_vatamt) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_itemcaltax(as_coopid, ai_recv_pay, ai_calvat, ai_taxcode, adc_itemamt, adc_taxamt, adc_itemamt_net, adc_vatamt)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_open_day (string as_wspass, string as_openday_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_open_day(as_openday_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_payslip (string as_wspass, string as_main_xml, string as_item_xml, string as_taxdetail_xml, string as_appname) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_payslip(as_main_xml, as_item_xml, as_taxdetail_xml, as_appname)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_payslip_pea (string as_wspass, string as_main_xml, string as_item_xml, string as_taxdetail_xml, string as_appname) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_payslip_pea(as_main_xml, as_item_xml, as_taxdetail_xml, as_appname)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_payslip_pia (string as_wspass, string as_main_xml, string as_item_xml, string as_taxdetail_xml, string as_appname) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_payslip_pia(as_main_xml, as_item_xml, as_taxdetail_xml, as_appname)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postcancel_sendchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_bank_xml, string as_cancellist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postcancel_sendchq(as_coopid, as_entry, adtm_wdate, as_machine, as_bank_xml, as_cancellist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postcancelchq (string as_wspass, string as_coopid, datetime adtm_wdate, string as_cancleid, string as_machine, string as_cancellist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postcancelchq(as_coopid, adtm_wdate, as_cancleid, as_machine, as_cancellist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postcancelposttobank (string as_wspass, string as_branch, string as_entry, datetime adtm_wdate, string as_machine, string as_banklist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postcancelposttobank(as_branch, as_entry, adtm_wdate, as_machine, as_banklist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postcancelsendchq (string as_wspass, string as_coopid, string as_chqno, string as_bank, string as_bankbranch, integer ai_seqno) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postcancelsendchq(as_coopid, as_chqno, as_bank, as_bankbranch, ai_seqno)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postcancelslip (string as_wspass, string as_coopid, string as_entry_id, string as_head_xml, string as_cancle_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postcancelslip(as_coopid, as_entry_id, as_head_xml, as_cancle_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postchangedstatuschq (string as_wspass, string as_coopid, string as_entry_id, datetime adtm_wdate, string as_machine, string as_chqno, string as_chqbookno, string as_bank, string as_bankbranch, integer as_chqseq_no, integer ai_chqstatus) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postchangedstatuschq(as_coopid, as_entry_id, adtm_wdate, as_machine, as_chqno, as_chqbookno, as_bank, as_bankbranch, as_chqseq_no, ai_chqstatus)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postchqmas (string as_wspass, string as_chqbook_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postchqmas(as_chqbook_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postfincontact (string as_wspass, string as_contact_xml, string as_action) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postfincontact(as_contact_xml, as_action)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postfinstatusexport (string as_wspass, string as_coopname, string as_mainxml, string as_path) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postfinstatusexport(as_coopname, as_mainxml, as_path)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_postotherto_fin (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_appname, string as_main_xml, string as_itemdet_xml, string as_cancelslip_xml) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postotherto_fin(as_coopid, as_entry, adtm_wdate, as_appname, as_main_xml, as_itemdet_xml, as_cancelslip_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_postpaychq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_main_xml, string as_chqlist_xml, string as_formset) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postpaychq(as_coopid, as_entry, adtm_wdate, as_machine, as_main_xml, as_chqlist_xml, as_formset)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_postpaychq_fromapvloan (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_cond_xml, string as_cutbank_xml, string as_chqtype_xml, string as_payoutslip, string as_formset) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postpaychq_fromapvloan(as_coopid, as_entry, adtm_wdate, as_machine, as_cond_xml, as_cutbank_xml, as_chqtype_xml, as_payoutslip, as_formset)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_postpaychq_fromslip (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_cond_xml, string as_cutbank_xml, string as_chqtype_xml, string as_chqllist_xml, string as_formset) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postpaychq_fromslip(as_coopid, as_entry, adtm_wdate, as_machine, as_cond_xml, as_cutbank_xml, as_chqtype_xml, as_chqllist_xml, as_formset)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_postpaychq_manual (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_main_xml, string as_formset) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postpaychq_manual(as_coopid, as_entry, adtm_wdate, as_machine, as_main_xml, as_formset)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_postreprintchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_formset, string as_cond_xml, string as_retreive_xml, string as_chqlist_xml) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postreprintchq(as_coopid, as_entry, adtm_wdate, as_machine, as_formset, as_cond_xml, as_retreive_xml, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postsavesendchq (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_sendchq_xml, string as_waitchq_xml, string as_sendchqacc_xml, integer ai_accknow) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postsavesendchq(as_coopid, as_entry, adtm_wdate, as_machine, as_sendchq_xml, as_waitchq_xml, as_sendchqacc_xml, ai_accknow)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postslipbank (string as_wspass, string as_main_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postslipbank(as_main_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_posttobank (string as_wspass, string as_coopid, string as_entryid, datetime adtm_wdate, string as_machine, integer ai_seqno) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_posttobank(as_coopid, as_entryid, adtm_wdate, as_machine, ai_seqno)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postupdatebankaccount (string as_wspass, string as_bank_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postupdatebankaccount(as_bank_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrieve_cancleslip (string as_wspass, string as_coopid, string as_head_xml, ref string as_itemlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrieve_cancleslip(as_coopid, as_head_xml, as_itemlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievebankaccount (string as_wspass, string as_coopid, ref string as_bank_xml, ref string as_bankstm_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievebankaccount(as_coopid, as_bank_xml, as_bankstm_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievecancelchq (string as_wspass, string as_coopid, string as_cond_xml, ref string as_chqcancel_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievecancelchq(as_coopid, as_cond_xml, as_chqcancel_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievechangechqstatus (string as_wspass, string as_coopid, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievechangechqstatus(as_coopid, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievechqfrom_apvloancbt (string as_wspass, string as_coopid, datetime adtm_wdate, string as_bankcode, string as_lngroupcode, ref string as_chqlist_xml, string as_cashtype) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievechqfrom_apvloancbt(as_coopid, adtm_wdate, as_bankcode, as_lngroupcode, as_chqlist_xml, as_cashtype)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievechqfromapvloan (string as_wspass, string as_coopcltr, datetime adtm_wdate, string as_cashtype, ref string as_chqlist_xml, string as_bankcode, string as_bankbranch) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievechqfromapvloan(as_coopcltr, adtm_wdate, as_cashtype, as_chqlist_xml, as_bankcode, as_bankbranch)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievechqfromslip (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievechqfromslip(as_coopid, adtm_wdate, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievefinslipdet (string as_wspass, string as_coopid, string as_slipno, ref string as_slipdet_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievefinslipdet(as_coopid, as_slipno, as_slipdet_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievepaychqlist (string as_wspass, string as_coopid, datetime adtm_wdate, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievepaychqlist(as_coopid, adtm_wdate, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievereprintchq (string as_wspass, string as_coopid, string as_retreive_xml, ref string as_chqlist_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievereprintchq(as_coopid, as_retreive_xml, as_chqlist_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievereprintpayslip (string as_wspass, string as_coopid, string as_cond_xml, ref string as_slip_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievereprintpayslip(as_coopid, as_cond_xml, as_slip_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievereprintreceipt (string as_wspass, string as_coopid, string as_cond_xml, ref string as_list_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievereprintreceipt(as_coopid, as_cond_xml, as_list_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievetaxpay (string as_wspass, string as_coopid, string as_main_xml, ref string as_list_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievetaxpay(as_coopid, as_main_xml, as_list_xml)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_dddwbankbranch (string as_wspass, string as_bank, ref string as_bankbranch) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_utility ln_service
	
	ln_service = create n_cst_finance_utility
	
	ln_service.of_settrans(in_conn)
	
		
	result = ln_service.of_dddwbankbranch(as_bank,ref as_bankbranch )

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_dddwfinitemtype (string as_wspass) throws Exception;string result
result = ""

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_utility ln_service
	
	ln_service = create n_cst_finance_utility
	
	ln_service.of_settrans(in_conn)
	
		
	result = ln_service.of_dddwfinitemtype( )

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_dddwbank (string as_wspass) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_utility ln_service
	
	ln_service = create n_cst_finance_utility
	
	ln_service.of_settrans(in_conn)
	
		
	result = ln_service.of_dddwbank()

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_getlistreappr_moneyorder (string as_wspass, datetime adtm_trn) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_getlistreappr_moneyorder(adtm_trn)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_getlistcancel_moneyorder (string as_wspass, datetime adtm_trn);string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_getlistcancel_moneyorder(adtm_trn)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cancel_moneyorder (string as_wspass, string as_moneyorder_list_xml, string as_entryid, datetime adtm_entry) throws Exception;integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_cancel_moneyorder(as_moneyorder_list_xml,as_entryid,adtm_entry)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_cancelappr_moneyorder (string as_wspass, string as_moneyorder_list_xml, string as_entryid, datetime adtm_entry);integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_cancelappr_moneyorder(as_moneyorder_list_xml,as_entryid,adtm_entry)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_approve_moneyorder (string as_wspass, string as_moneyorder_list_xml, string as_entryid, datetime adtm_entry);integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_cancelappr_moneyorder(as_moneyorder_list_xml,as_entryid,adtm_entry)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_getlistappr_moneyorder (string as_wspass, datetime adtm_trn);string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_getlistappr_moneyorder(adtm_trn)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievereprintpayslip_ir (string as_wspass, string as_coopid, string as_cond_xml, ref string as_slip_xml) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievereprintpayslip_ir(as_coopid, as_cond_xml,ref as_slip_xml)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_retrievechangchqdetail (string as_coopid, string as_chqno, string as_bookno, string as_bank, string as_bankbranch, integer ai_seqno, ref string as_chqdetail_xml, string as_wspass) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_retrievechangchqdetail(as_coopid, as_chqno, as_bookno,as_bank,as_bankbranch,ai_seqno,ref as_chqdetail_xml)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_init_moneyorder (string as_wspass, string as_moneyorder_master_xml, string as_entryid, datetime adtm_entry);string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_init_moneyorder(as_moneyorder_master_xml,as_entryid,adtm_entry)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function string of_getlist_moneyorder (string as_wspass, datetime adtm_trn) throws Exception;string result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_getlist_moneyorder(adtm_trn)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_getdata_moneyorder (string as_wspass, string as_docno, ref string as_moneyorder_master_xml, ref string as_moneyorder_detail_xml) throws Exception;integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_getdata_moneyorder(as_docno,ref as_moneyorder_master_xml,ref as_moneyorder_detail_xml)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_getchildbranch (string as_wspass, ref string as_xmlbank);integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_utility ln_service
	
	ln_service = create n_cst_finance_utility
	
	ln_service.of_settrans(in_conn)
	
		
	result = ln_service.of_getchildbranch(ref as_xmlbank)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_fin_posttobank (string as_wspass, string as_branch, string as_entry_id, datetime adtm_wdate, string as_machine, string as_item_xmt) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_fin_posttobank(as_branch,as_entry_id,adtm_wdate,as_machine,as_item_xmt)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_save_moneyorder (string as_wspass, string as_moneyorder_master_xml, string as_moneyorder_detail_xml, string as_entryid, datetime adtm_entry);integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_moneyorder_service ln_service
	
	ln_service = create n_cst_moneyorder_service
	
	result = ln_service.of_save_moneyorder(as_moneyorder_master_xml,as_moneyorder_detail_xml,as_entryid,adtm_entry)

	in_conn.of_disconnectdb()
catch (Exception ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postfundto_fin (string as_wspass, string as_postlist_xml, string as_entry_id, string as_coop_id, datetime adtm_date) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postfundto_fin(as_postlist_xml, as_entry_id, as_coop_id, adtm_date)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postfundto_depttran (string as_wspass, string as_postlist_xml, string as_entry_id, string as_coop_id, datetime adtm_date) throws Exception;int result
result = 0

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postfundto_depttran(as_postlist_xml, as_entry_id, as_coop_id, adtm_date)

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

public function integer of_postpaychq_split (string as_wspass, string as_coopid, string as_entry, datetime adtm_wdate, string as_machine, string as_cond_xml, string as_bankcut_xml, string as_chqtype_xml, string as_chqlist_xml, string as_chqsplit_xml, string as_formset) throws Exception;integer result

n_cst_dbconnectservice in_conn
in_conn = create n_cst_dbconnectservice
try
	in_conn.of_connectdb(as_wspass)
	
	n_cst_finance_service ln_service
	ln_service = create n_cst_finance_service
	
	ln_service.of_settrans(in_conn)
	ln_service.of_init()
		
	result = ln_service.of_postpaychq_split( as_coopid, as_entry, adtm_wdate, as_machine, as_cond_xml,as_bankcut_xml, as_chqtype_xml, as_chqlist_xml, as_chqsplit_xml, as_formset )

	in_conn.of_disconnectdb()
catch (Throwable ex)
	in_conn.of_disconnectdb()
	throw ex
end try
return result
end function

on n_finance.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_finance.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on
