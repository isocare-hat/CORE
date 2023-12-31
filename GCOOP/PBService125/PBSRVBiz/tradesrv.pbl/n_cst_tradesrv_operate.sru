$PBExportHeader$n_cst_tradesrv_operate.sru
$PBExportComments$ทำรายการซื้อขาย
forward
global type n_cst_tradesrv_operate from nonvisualobject
end type
end forward

global type n_cst_tradesrv_operate from nonvisualobject
end type
global n_cst_tradesrv_operate n_cst_tradesrv_operate

type variables
Public:

transaction						itr_sqlca
throwable						ithw_exception

n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_divsrv_proc_service	inv_procsrv
n_cst_progresscontrol		inv_progress
n_cst_doccontrolservice		inv_docsrv

end variables

forward prototypes
private function integer of_setsrvdwxmlie (boolean ab_switch)
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws throwable
public function integer of_init_slip_grp (ref str_divsrv_oper astr_divavg_oper) throws throwable
public function integer of_setsrvproc (boolean ab_switch)
public function integer of_setprogress (ref n_cst_progresscontrol anv_progress) throws throwable
private function integer of_setsrvdoccontrol (boolean ab_switch)
public function integer of_init_info_debt (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_save_op_qt (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
public function integer of_init_info_product (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_op_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function string of_convert_quote (string as_value)
public function integer of_init_info_cred (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
public function integer of_getdefaultval (string as_branchid, string as_taxtype, decimal adec_ctaxrate, decimal adec_dtaxrate, integer al_validate)
public function string of_getdoctype (string as_branchid, string as_doctype)
public function integer of_init_op_debtcrdr (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_save_info_cred_master (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_save_info_debt_master (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_save_info_product_master (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_op_debtcrdrrec (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_op_credcrdrrec (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_info_qt (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_info_so (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_info_iv (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_info_po (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_info_rc (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_slip_adj (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_save_slip_adj (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_info_product_master (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_getproductdetail (string as_branchid, string as_prodcd, ref string as_proddsc, ref string as_uncd, ref string as_taxtype, ref decimal adec_taxrate)
public function integer of_getproductdetail (string as_branchid, string as_sliptype, string as_slipno, string as_prodcd, ref string as_proddsc, ref decimal adec_itemqty, ref decimal adec_price, ref string as_uncd, ref string as_discpercent, ref decimal adec_discamt, ref decimal adec_amtbefortax, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_netamt)
public function integer of_init_info_debt_master (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_info_cred_master (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_info_product_adj (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
private function integer of_setdsmodify (ref n_ds ads_requester, long al_row, boolean ab_keymodify)
public function integer of_init_fin_crdr (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_info_slipref (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function string of_getdebtno (string as_branchid, string as_sliptype, string as_slipno)
public function integer of_save_op_slip (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
public function integer of_init_fin_info_cred (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
private function integer of_init_info_cred1 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
private function integer of_init_info_debt1 (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_fin_info_debt (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
protected function integer of_init_op_countstck_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
protected function integer of_save_fin_credit_slip (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
public function integer of_init_fin_info_cred1 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
protected function integer of_save_op_slip2 (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
public function integer of_init_fin_info_debt1 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
public function integer of_init_fin_arcredit (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
protected function integer of_save_fin_arreceive (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
protected function integer of_save_fin_apreceive (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
public function integer of_init_fin_apcredit (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
public function integer of_init_fin_apcredit2 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
public function integer of_init_info_store (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
public function integer of_save_verifycountstk (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
public function integer of_init_verifycountstk (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_fin_credit_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_fin_info_credit (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_fin_dncn_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_getslipdetail ()
public function integer of_init_info_slipis (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_info_product_vcs (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_post2stock (string as_branchid, string as_storeid, string as_prodcd, string as_sliptype, string as_slipno, datetime adt_slipdate, decimal adec_qty, decimal adec_price)
protected function integer of_save_op_stockslip (ref str_tradesrv_oper astr_trsrv_oper) throws throwable
protected function integer of_init_op_stockslip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
protected function integer of_getoprflag (string as_sliptype)
public function integer of_post2stockmaster (string as_branchid, string as_storeid, string as_prodcd, decimal adec_qty, decimal adec_unitprice, ref decimal adec_balqty)
public function integer of_post2stockstmt (string as_branchid, string as_slipno, string as_sliptype, datetime adt_slipdate, string as_storeid, string as_prodcd, decimal adec_qty, decimal adec_price, string as_lotno, decimal adec_balqty)
public function integer of_post2stocklot (string as_branchid, string as_storeid, string as_slipno, string as_sliptype, datetime adt_slipdate, string as_prodcd, decimal adec_qty, ref string as_lotno)
public function integer of_post2debtmaster (string as_branchid, string as_debtno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, ref decimal adec_balamt, string as_entryid)
public function integer of_post2debtstmt (string as_branchid, string as_debtno, string as_creditno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, decimal adec_balamt, string as_entryid)
public function integer of_post2debt (string as_branchid, string as_debtno, string as_creditno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, decimal adec_balamt, string as_entryid)
public function integer of_post2debtdet (string as_branchid, string as_debtno, string as_creditno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, decimal adec_balamt)
public function integer of_getproductinfo (string as_branchid, string as_storeid, string as_prodno, ref string as_prodnm, ref string as_uncd, ref decimal adec_qty, ref decimal adec_cost, ref decimal adec_balqty)
public function integer of_init_info_member (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
private function integer of_init_info_debtpo (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
private function integer of_init_info_credpo (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable
public function integer of_init_info_product_master_ed (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_getincdecamt (string as_debtno, string as_doc1, string as_doc2)
private function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate)
private function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate, ref decimal adec_transportfee)
private function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate, ref decimal adec_transportfee, ref string as_empid, ref string as_storeid)
protected function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_credno, ref string as_credtype, ref string as_crednm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate)
private function integer of_gencndoc (string as_branchid, string as_slipno, string as_slippref, string as_debtno, datetime adt_slipdate, string as_payment)
private function integer of_init_info_product1 (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
private function integer of_init_info_product2 (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable
public function integer of_init_aprc_info_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function integer of_init_arrc_info_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
public function decimal of_getdisctcount (string as_branchid, string as_debtno)
public function integer of_init_stockcard (ref str_tradesrv_oper astr_tradsrv_op) throws throwable
end prototypes

private function integer of_setsrvdwxmlie (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_dwxmliesrv ) or not isvalid( inv_dwxmliesrv ) then
		inv_dwxmliesrv	= create n_cst_dwxmlieservice
		return 1
	end if
else
	if isvalid( inv_dwxmliesrv ) then
		destroy inv_dwxmliesrv
		return 1
	end if
end if

return 0
end function

public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws throwable;/***********************************************************
<description>
	ไว้สำหรับเริ่มข้อมูลของ service ทำรายการเกี่ยวกับปันผล
</description>

<arguments>  
	atr_dbtrans					n_cst_dbconnectservice		user object สำหรับต่อฐานข้อมูล
</arguments> 

<return> 
	1								Integer		ถ้าไม่มีข้อมูลผิดพลาด
</return> 

<usage>
	สำหรับเริ่มข้อมูลของ service ทำรายการเกี่ยวกับปันผล
	ตัวอย่าง
	
	n_cst_dbconnectservice inv_db
	lnv_service = create n_cst_divavgoperate_service
	lnv_service.of_initservice( inv_db )
	
	----------------------------------------------------------------------
	Revision History:
	Version 1.0 (Initial version) Modified Date 16/11/2010 by Godji

</usage>

***********************************************************/
itr_sqlca = anv_dbtrans.itr_dbconnection

if isnull( inv_transection ) or not isvalid( inv_transection ) then
	inv_transection = create n_cst_dbconnectservice
	inv_transection = anv_dbtrans
end if

inv_progress = create n_cst_progresscontrol

return 1
end function

public function integer of_init_slip_grp (ref str_divsrv_oper astr_divavg_oper) throws throwable;string ls_xmloption , ls_xmllist
string ls_column , ls_tag , ls_columntyp , ls_value
string ls_sqlext , ls_sql
integer li_num_cols , li_index
boolean lb_err = false
n_ds lds_xmloption , lds_xmllist , lds_xmlrpt

this.of_setsrvdwxmlie( true )

lds_xmloption = create n_ds
lds_xmloption.dataobject = "d_divsrv_opr_grp_option"
lds_xmloption.settransobject( itr_sqlca )

lds_xmllist = create n_ds
lds_xmllist.dataobject = "d_divsrv_opr_grp_list"
lds_xmllist.settransobject( itr_sqlca )

lds_xmlrpt = create n_ds
lds_xmlrpt.dataobject = "d_divsrv_opr_grp_rpt_sum"
lds_xmlrpt.settransobject( itr_sqlca )

ls_xmloption		= astr_divavg_oper.xml_option

//** เฉพาะกิจทำไปก่อน
lds_xmloption.importstring( XML!, ls_xmloption )
//if inv_dwxmliesrv.of_xmlimport( lds_xmloption , ls_xmloption ) < 1 then
//	ithw_exception.text = "~r~nพบขอผิดพลาด ในการนำเข้าข้อมูล(0.1)"
//	ithw_exception.text += "~r~nเงื่อนไขการดึงข้อมูลจ่ายเงินปันผล-เฉลี่ยคืน"
//	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
//end if

li_num_cols 	= Integer (lds_xmloption.Describe ( "DataWindow.Column.Count" )) 

for li_index = 1 to li_num_cols
	ls_column 		= trim(lds_xmloption.Describe ( "#" + String(li_index) + ".Name" ))
	ls_tag				= trim(lds_xmloption.Describe ( "#" + String(li_index) + ".Tag" )) ; if ls_tag = "?" then continue;
//	ls_columntyp	= lds_xmloption.Describe ( "#" + String(li_index) + ".ColType" )
	ls_columntyp	= upper( left( lds_xmloption.Describe ( "#" + String(li_index) + ".ColType" ) , 4 ) )
//	ls_coldb 			= trim(lds_xmloption.Describe ("#" + string (li_index) + ".dbName"))
	choose case ls_columntyp
		case "CHAR"
			if lower( right( ls_column , 4 ) ) = "date" or lower( trim( ls_column ) ) = "ordertype_code" then continue ;// หมายเหตุ เป็นวันที่ให้ข้ามไป ให้ใช้จาก Type DateTime
			ls_value		= lds_xmloption.getitemstring( 1 , ls_column )
			if lower(right( ls_tag , 4 )) = "like" then ls_value = "%" + ls_value + "%"
		case "DECI"
			ls_value		= string( lds_xmloption.getitemdecimal( 1 , ls_column ) )
			if lower(right( ls_tag , 4 )) = "like" then ls_value = "%" + ls_value + "%"
//		case "DATE"
//			ldtm_date	= lds_xmloption.getitemdatetime( 1 , ls_column )
//			ls_value		= string( ldtm_date , "dd/mm/yyyy" )
//			ls_value		= string( lds_xmloption.getitemdatetime( 1 , ls_column ) , "dd/mm/yyyy" )
	end choose
	
	if (not IsNull(ls_value)) and trim(ls_value) <> "" then ls_sqlext += " and " + ls_tag + " '" + ls_value + "' "
	
next

ls_sql		= lds_xmllist.getsqlselect()

ls_sql		+= ls_sqlext + " and yrdivmethpay.methpay_status = 0 "

if lds_xmllist.setsqlselect( ls_sql ) <> 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาด ในการนำเข้าข้อมูล(0.2)"
	ithw_exception.text += "~r~nเงื่อนไขการดึงข้อมูลเตรียมจ่ายปันผล-เฉลี่ยคืน"
	ithw_exception.text += "~r~n" + lds_xmllist.of_geterrormessage()
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

if lds_xmllist.retrieve() < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาด ในการดึงข้อมูล(0.3)"
	ithw_exception.text += "~r~nไม่พบข้อมูลเตรียมจ่ายปันผล-เฉลี่ยคืน"
	ithw_exception.text += "~r~n" + lds_xmllist.of_geterrormessage()
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sql		= lds_xmlrpt.getsqlselect()

ls_sql		+= ls_sqlext + " and yrdivmethpay.methpay_status = 0 "

if lds_xmlrpt.setsqlselect( ls_sql ) <> 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาด ในการนำเข้าข้อมูล(0.4)"
	ithw_exception.text += "~r~nเงื่อนไขการดึงข้อมูลรายงานเตรียมจ่ายปันผล-เฉลี่ยคืน"
	ithw_exception.text += "~r~n" + lds_xmllist.of_geterrormessage()
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

if lds_xmlrpt.retrieve() < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาด ในการดึงข้อมูล(0.5)"
	ithw_exception.text += "~r~nไม่พบข้อมูลรายงานเตรียมจ่ายปันผล-เฉลี่ยคืน"
	ithw_exception.text += "~r~n" + lds_xmllist.of_geterrormessage()
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

astr_divavg_oper.xml_option			= inv_dwxmliesrv.of_xmlexport( lds_xmloption )
astr_divavg_oper.xml_list				= inv_dwxmliesrv.of_xmlexport( lds_xmllist )
astr_divavg_oper.xml_report			= inv_dwxmliesrv.of_xmlexport( lds_xmlrpt )
astr_divavg_oper.sql_select_list		= lds_xmllist.getsqlselect()
astr_divavg_oper.sql_select_report	= lds_xmlrpt.getsqlselect()

objdestroy:
if isvalid(lds_xmloption) then destroy lds_xmloption
if isvalid(lds_xmllist) then destroy lds_xmllist

this.of_setsrvdwxmlie( false )

if lb_err then
	astr_divavg_oper.xml_option			= ""
	astr_divavg_oper.xml_list				= ""
	astr_divavg_oper.xml_report			= ""
	astr_divavg_oper.sql_select_list		= ""
	astr_divavg_oper.sql_select_report	= ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_operate.of_init_slip_grp()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_setsrvproc (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_procsrv ) or not isvalid( inv_procsrv ) then
		inv_procsrv	= create n_cst_divsrv_proc_service
		return 1
	end if
else
	if isvalid( inv_procsrv ) then
		destroy inv_procsrv
		return 1
	end if
end if

return 0
end function

public function integer of_setprogress (ref n_cst_progresscontrol anv_progress) throws throwable;/***********************************************************
<description>
	กำหนด progress bar ที่ใช้แสดงผล
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 28/9/2010 by MiT
</usage> 
***********************************************************/
anv_progress = inv_progress

return 1
end function

private function integer of_setsrvdoccontrol (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_docsrv ) or not isvalid( inv_docsrv ) then
		inv_docsrv	= create n_cst_doccontrolservice
		inv_docsrv.of_settrans( inv_transection )
		return 1
	end if
else
	if isvalid( inv_docsrv ) then
		destroy inv_docsrv
		return 1
	end if
end if

return 0
end function

public function integer of_init_info_debt (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype, ls_sliptype
long		ll_count, ll_val
integer	li_ret = 1
n_ds		lds_main, lds_tailer, lds_debtdt
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean 	lb_err = false
dec		ldec_taxrate1, ldec_taxrate2

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'debt_no')
ls_sliptype = lds_main.GetItemString(1, 'sliptype_code')

if ls_sliptype = 'ARC' then 
	of_init_fin_info_debt(astr_tradsrv_oper)
elseif ls_sliptype = 'ARRC' or ls_sliptype= 'ARDN' or ls_sliptype= 'ARCN' then 
	of_init_fin_info_debt1(astr_tradsrv_oper)
elseif ls_sliptype = 'PO' then 
	of_init_info_debtpo(astr_tradsrv_oper)
else
	of_init_info_debt1(astr_tradsrv_oper)
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_debt() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret


end function

public function integer of_save_op_qt (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds lds_slip_head , lds_slip_detail
string ls_xmlheader , ls_xmldetail, ls_slipno, ls_branchid, ls_sliptype, &
ls_storeid, ls_debtno, ls_entryid
datetime	ldtm_entrydate, ldtm_opedate
boolean lb_err = false
long		ll_count, i

lds_slip_head = create n_ds
//lds_slip_head.dataobject = astr_trsrv_oper.dwo_header
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
//lds_slip_detail.dataobject = astr_trsrv_oper.dwo_detail
lds_slip_detail.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Saleorder(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย Saleorder(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
ls_storeid= lds_slip_head.getitemstring( 1, "store_id" )
ls_debtno= lds_slip_head.getitemstring( 1, "debt_no" )
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
//ls_entryid	= astr_trsrv_oper.entry_id
ls_branchid		= lds_slip_head.getitemstring( 1, "coop_id" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)
if isnull(ls_storeid) or trim(ls_storeid) = '' then ls_storeid = '001'
try
	this.of_setsrvdoccontrol( true )
	ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , "TDSLIPSO")	// get เลขที่เอกสาร
catch( throwable lthw_getreqdoc )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
	lb_err = true
end try

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "slip_no", ls_slipno )
lds_slip_head.setitem( 1, "store_id", ls_storeid )
lds_slip_head.setitem( 1, "sliptype_code", ls_sliptype )
lds_slip_head.setitem( 1, "debt_no", ls_debtno )
lds_slip_head.setitem( 1, "entry_id", ls_entryid )
lds_slip_head.setitem( 1, "entry_date", ldtm_entrydate )

// ใส่เลขที่ Slip และลำดับที่ใน detail
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "slip_no", ls_slipno )
	lds_slip_detail.setitem( i, "store_id", ls_storeid )
	lds_slip_detail.setitem( i, "sliptype_code", ls_sliptype )
	lds_slip_detail.setitem( i, "seq_no", i )
next

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if


// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
Messagebox('test', itr_sqlca.sqlcode)
	ithw_exception.text	= "บันทึกข้อมูล SlipDet ไม่ได้"
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)

//this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_stockslip_so()" + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

public function integer of_init_info_product (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;n_ds		lds_header
long		li_ret=1
boolean	lb_err = False
string		ls_sliptype

this.of_setsrvdwxmlie( true )

lds_header = create n_ds
lds_header.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_header.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_header, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_sliptype =lds_header.GetItemString(lds_header.Getrow(), 'sliptype_code')
if ls_sliptype = 'AJD' or ls_sliptype = 'AJI'  then
	of_init_info_product_adj(astr_tradsrv_oper)
elseif ls_sliptype = 'VCS' then
	of_init_info_product_vcs(astr_tradsrv_oper)
elseif ls_sliptype = 'QT' or ls_sliptype = 'IS' or ls_sliptype = 'REC' then
	of_init_info_product2(astr_tradsrv_oper)
else
	of_init_info_product1(astr_tradsrv_oper)
end if
objdestroy:
if isvalid(lds_header) then destroy lds_header
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_op_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_sql
string		ls_sliptype
n_ds		lds_hd
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )

ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')

if ls_sliptype = 'CSTK' then
	of_init_op_countstck_slip(astr_tradsrv_op)
elseif ls_sliptype = 'APC' then
	of_init_fin_credit_slip(astr_tradsrv_op)
elseif ls_sliptype = 'ARC' then
	of_init_fin_credit_slip(astr_tradsrv_op)
elseif ls_sliptype = 'ARDN' or ls_sliptype = 'ARCN' or ls_sliptype = 'APDN' or ls_sliptype = 'APCN' then
	of_init_fin_dncn_slip(astr_tradsrv_op)
elseif ls_sliptype = 'ARRC' then 
	of_init_arrc_info_slip(astr_tradsrv_op)
elseif ls_sliptype = 'APRC'  then 
	of_init_aprc_info_slip(astr_tradsrv_op)
else
	of_init_op_stockslip(astr_tradsrv_op)
end if

//objdestroy:
if isvalid(lds_hd) then destroy lds_hd
this.of_setsrvdwxmlie( false )

if lb_err then
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_op_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function string of_convert_quote (string as_value);int p = 1, pt

if isnull (as_value) then return as_value
DO
	p = pos ( as_value, "'", p )
	if p > 0 then
		if "~~" = mid(as_value, p - 1, 1) then
			p = p + 1
		else
			as_value = replace ( as_value, p, 1, "~~'" )
			p = p + 2
		end if
	end if
LOOP WHILE p > 0 

return as_value
end function

public function integer of_init_info_cred (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_xmlmemdet, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_credtype, ls_sliptype
long		ll_count
n_ds		lds_main, lds_debtdt, lds_tailer
string	ls_debtnm, ls_contact, ls_phone, ls_fax, ls_slipno
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
ls_sliptype = lds_main.GetItemString(1, 'sliptype_code')

if ls_sliptype = 'APC' then 
	of_init_fin_info_cred(astr_tradesrv_oper)
elseif ls_sliptype = 'DRP' or ls_sliptype = 'APRC'  or ls_sliptype= 'APDN' or ls_sliptype= 'APCN' then   
//elseif ls_sliptype = 'DRP' or  ls_sliptype= 'APDN' or ls_sliptype= 'APCN' then   
	of_init_fin_info_cred1(astr_tradesrv_oper)
elseif ls_sliptype = 'APRC' then   
//elseif ls_sliptype = 'DRP' or  ls_sliptype= 'APDN' or ls_sliptype= 'APCN' then   
	of_init_fin_apcredit(astr_tradesrv_oper)
elseif ls_sliptype = 'PO' then   
	of_init_info_credpo(astr_tradesrv_oper)
//elseif ls_sliptype = 'APRC' then   
//	of_init_info_credrec(astr_tradesrv_oper)
else
	of_init_info_cred1(astr_tradesrv_oper)
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_cred() " + ithw_exception.text
	throw ithw_exception
end if
return 1

end function

public function integer of_getdefaultval (string as_branchid, string as_taxtype, decimal adec_ctaxrate, decimal adec_dtaxrate, integer al_validate);select taxtype_code, credtax_rate, debttax_rate, validat
into :as_taxtype, :adec_ctaxrate, :adec_dtaxrate, :al_validate
from tdconstant
where coop_id = :as_branchid
using itr_sqlca;   

return itr_sqlca.SQLNRows	
end function

public function string of_getdoctype (string as_branchid, string as_doctype);string	ls_doccd

select document_code
into	:ls_doccd
from 	tducfsliptype
where	coop_id = :as_branchid and
			sliptype_code = :as_doctype
using itr_sqlca;

return ls_doccd
end function

public function integer of_init_op_debtcrdr (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;return 1
end function

public function integer of_save_info_cred_master (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;n_ds 		lds_slip_head
string 	ls_xmlheader , ls_BranchId, ls_DebtNo  
boolean 	lb_err = false
long		ll_rowcount

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , astr_tradsrv_oper.xml_header ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Product(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_BranchId = lds_slip_head.getitemstring( 1, "coop_id" )
ls_DebtNo = lds_slip_head.getitemstring( 1, "cred_no" )

select 	count(1) 
into		:ll_rowcount
from 		tdcredmaster 
where 	coop_id = :ls_BranchId and
			cred_no = :ls_DebtNo using itr_sqlca;
if ll_rowcount > 0 then
	this.of_setdsmodify( lds_slip_head, 1, false )
end if
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	lb_err = true ; Goto objdestroy
end if

astr_tradsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_info_cred_master() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

public function integer of_save_info_debt_master (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;n_ds 		lds_slip_head
string 	ls_xmlheader , ls_BranchId, ls_DebtNo
boolean 	lb_err = false
long		ll_rowcount

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , astr_tradsrv_oper.xml_header ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Product(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_BranchId = lds_slip_head.getitemstring( 1, "coop_id" )
ls_DebtNo = lds_slip_head.getitemstring( 1, "debt_no" )

select 	count(1) 
into		:ll_rowcount
from 		tddebtmaster 
where 	coop_id = :ls_BranchId and
			debt_no = :ls_DebtNo 
using itr_sqlca;

if ll_rowcount > 0 then
	this.of_setdsmodify( lds_slip_head, 1, false )
end if
// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	lb_err = true ; Goto objdestroy
end if

astr_tradsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_info_debt_master() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

public function integer of_save_info_product_master (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetai, ls_branchid, ls_ProdCd 
boolean 	lb_err = false
long		ll_count, i, ll_rowcount

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

lds_slip_tailer = create n_ds
lds_slip_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_tailer)
lds_slip_tailer.settransobject( itr_sqlca )

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , astr_tradsrv_oper.xml_header ) < 0 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูล Product(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , astr_tradsrv_oper.xml_detail ) < 0 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูล Product(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_tailer.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_tailer , astr_tradsrv_oper.xml_tailer ) < 0 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูล Product(0.3)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_slip_head.getitemstring( 1, "coop_id" )
ls_ProdCd = lds_slip_head.getitemstring( 1, "product_no" )

delete from tdstockmaster 
where coop_id = :ls_branchid and
product_no = :ls_ProdCd
using itr_sqlca;

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
//if ll_count <= 0 then
//	return 0
//end if

// ใส่เลขที่ Slip และลำดับที่ใน detail
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "product_no", ls_ProdCd )
next

delete from tdproductpricelist 
where coop_id = :ls_branchid and
product_no = :ls_ProdCd
using itr_sqlca;

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_tailer.rowcount()
//if ll_count <= 0 then
//	return 0
//end if


// ใส่เลขที่ Slip และลำดับที่ใน detail
for i = 1 to ll_count
	lds_slip_tailer.setitem( i, "coop_id", ls_branchid )
	lds_slip_tailer.setitem( i, "product_no", ls_ProdCd )
next

select 	count(1) 
into		:ll_rowcount
from 		tdproductmaster 
where 	coop_id = :ls_BranchId and
			product_no = :ls_ProdCd 
using itr_sqlca;

if ll_rowcount > 0 then
	this.of_setdsmodify( lds_slip_head, 1, false )
end if
// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลสินค้าไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if


// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลรายละเอียดสินค้าไม่ได้"
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if
//
// บันทึก Slip Detail
if lds_slip_tailer.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลราคาสินค้าไม่ได้"
	ithw_exception.text	+= lds_slip_tailer.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if
//
astr_tradsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_tailer = string( lds_slip_tailer.describe( "Datawindow.data.XML" ) )
//
//if lb_err then Goto objdestroy
//
objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(lds_slip_tailer) then destroy lds_slip_tailer
//if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_op_slip() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

public function integer of_init_op_debtcrdrrec (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;return 1
end function

public function integer of_init_op_credcrdrrec (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;return 1
end function

public function integer of_init_info_qt (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipType, ls_slipNo, ls_prodcd
long		ll_row, ll_rowcount, i
n_ds		lds_detail, lds_proddt
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price
boolean 	lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_slipType = 'QT' //lds_detail.GetItemString(i, 'sliptype_code')
	ls_slipNo = lds_detail.GetItemString(i, 'refdoc_no')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductDetail(ls_branchid, ls_slipType, ls_slipNo, ls_prodcd, ls_Proddsc, ldec_itemqty, ldec_price, &
		ls_uncd, ls_discpercent, ldec_discamt, ldec_amtbefortax, ls_taxtype, ldec_taxrate, ldec_Netamt)

	lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_Proddsc)
	lds_detail.SetItem(i, 'item_qty', ldec_itemqty)
	lds_detail.SetItem(i, 'product_price', ldec_price)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
	lds_detail.SetItem(i, 'disc_percent', ls_discpercent)
	lds_detail.SetItem(i, 'disc_amt', ldec_discamt)
	lds_detail.SetItem(i, 'amtbefortax', ldec_amtbefortax)
	lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
	lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
	lds_detail.SetItem(i, 'net_amt', ldec_Netamt)
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradsrv_oper.xml_header	= ls_xmlmemdet

objdestroy:
//if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_qt() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_info_so (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipType, ls_slipNo, ls_prodcd
long		ll_row, ll_rowcount, i
n_ds		lds_detail, lds_proddt
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price
boolean 	lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_slipType = 'SO' //lds_detail.GetItemString(i, 'sliptype_code')
	ls_slipNo = lds_detail.GetItemString(i, 'refdoc_no')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductDetail(ls_branchid, ls_slipType, ls_slipNo, ls_prodcd, ls_Proddsc, ldec_itemqty, ldec_price, &
		ls_uncd, ls_discpercent, ldec_discamt, ldec_amtbefortax, ls_taxtype, ldec_taxrate, ldec_Netamt)

	lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_Proddsc)
	lds_detail.SetItem(i, 'item_qty', ldec_itemqty)
	lds_detail.SetItem(i, 'product_price', ldec_price)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
	lds_detail.SetItem(i, 'disc_percent', ls_discpercent)
	lds_detail.SetItem(i, 'disc_amt', ldec_discamt)
	lds_detail.SetItem(i, 'amtbefortax', ldec_amtbefortax)
	lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
	lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
	lds_detail.SetItem(i, 'net_amt', ldec_Netamt)

//	ls_prodnm = lds_detail.GetItemString(i, 'tdproductmaster_product_desc')
//	if isnull(ls_prodnm) or trim(ls_prodnm) =  '' then 
//		ls_branchid = lds_detail.GetItemString(i, 'coop_id')
//		ls_prodcd = lds_detail.GetItemString(i, 'product_no')
//		ls_storeid = lds_detail.GetItemString(i, 'store_id')
//		if isnull(ls_prodcd) or trim(ls_prodcd) =  '' then 
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -2
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_sql =  "select tdproductmaster.product_no, product_desc, unit_code, taxtype_code, tax_rate from tdproductmaster, tdstockmaster   "
//		ls_sql +=  " where ( tdproductmaster.coop_id = tdstockmaster.branch_id (+)) and " 
//		ls_sql +=  "  ( tdproductmaster.product_no = tdstockmaster.product_no (+)) and "
//		ls_sql +=  " tdproductmaster.branch_id = '" + ls_branchid + "' and trim(store_id) = '" + ls_storeid + "' and  tdproductmaster.product_no  = '" + ls_prodcd + "'"
//		
//		lds_proddt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//		if not isvalid(lds_proddt) then
//			ithw_exception.text	= "create lds_proddt"
//			li_ret = -3
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.SetTransObject(itr_sqlca) <> 1 then
//			ithw_exception.text	= "Can not set transaction lds_proddt"
//			li_ret = -4
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.retrieve() <= 0 then
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -5
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_prodnm = lds_proddt.GetItemstring(1, 'tdproductmaster_product_desc')
//		ls_uncd = lds_proddt.GetItemstring(1, 'tdproductmaster_unit_code')
//		ls_taxtype = lds_proddt.GetItemString(1, 'tdstockmaster_taxtype_code')
//		ldec_taxrate = lds_proddt.GetItemDecimal(1, 'tdstockmaster_tax_rate')
//		
//		lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_prodnm)
//		lds_detail.SetItem(i, 'unit_code', ls_uncd)
//		lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
//		lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
//		if isvalid(lds_proddt) then destroy lds_proddt
//	end if
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradsrv_oper.xml_header	= ls_xmlmemdet

objdestroy:
//if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_so() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_info_iv (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipType, ls_slipNo, ls_prodcd
long		ll_row, ll_rowcount, i
n_ds		lds_detail, lds_proddt
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price
boolean 	lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_slipType = 'IV' //lds_detail.GetItemString(i, 'sliptype_code')
	ls_slipNo = lds_detail.GetItemString(i, 'refdoc_no')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductDetail(ls_branchid, ls_slipType, ls_slipNo, ls_prodcd, ls_Proddsc, ldec_itemqty, ldec_price, &
		ls_uncd, ls_discpercent, ldec_discamt, ldec_amtbefortax, ls_taxtype, ldec_taxrate, ldec_Netamt)

	lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_Proddsc)
	lds_detail.SetItem(i, 'item_qty', ldec_itemqty)
	lds_detail.SetItem(i, 'product_price', ldec_price)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
	lds_detail.SetItem(i, 'disc_percent', ls_discpercent)
	lds_detail.SetItem(i, 'disc_amt', ldec_discamt)
	lds_detail.SetItem(i, 'amtbefortax', ldec_amtbefortax)
	lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
	lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
	lds_detail.SetItem(i, 'net_amt', ldec_Netamt)

//	ls_prodnm = lds_detail.GetItemString(i, 'tdproductmaster_product_desc')
//	if isnull(ls_prodnm) or trim(ls_prodnm) =  '' then 
//		ls_branchid = lds_detail.GetItemString(i, 'branch_id')
//		ls_prodcd = lds_detail.GetItemString(i, 'product_no')
//		ls_storeid = lds_detail.GetItemString(i, 'store_id')
//		if isnull(ls_prodcd) or trim(ls_prodcd) =  '' then 
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -2
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_sql =  "select tdproductmaster.product_no, product_desc, unit_code, taxtype_code, tax_rate from tdproductmaster, tdstockmaster   "
//		ls_sql +=  " where ( tdproductmaster.branch_id = tdstockmaster.branch_id (+)) and " 
//		ls_sql +=  "  ( tdproductmaster.product_no = tdstockmaster.product_no (+)) and "
//		ls_sql +=  " tdproductmaster.branch_id = '" + ls_branchid + "' and trim(store_id) = '" + ls_storeid + "' and  tdproductmaster.product_no  = '" + ls_prodcd + "'"
//		
//		lds_proddt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//		if not isvalid(lds_proddt) then
//			ithw_exception.text	= "create lds_proddt"
//			li_ret = -3
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.SetTransObject(itr_sqlca) <> 1 then
//			ithw_exception.text	= "Can not set transaction lds_proddt"
//			li_ret = -4
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.retrieve() <= 0 then
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -5
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_prodnm = lds_proddt.GetItemstring(1, 'tdproductmaster_product_desc')
//		ls_uncd = lds_proddt.GetItemstring(1, 'tdproductmaster_unit_code')
//		ls_taxtype = lds_proddt.GetItemString(1, 'tdstockmaster_taxtype_code')
//		ldec_taxrate = lds_proddt.GetItemDecimal(1, 'tdstockmaster_tax_rate')
//		
//		lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_prodnm)
//		lds_detail.SetItem(i, 'unit_code', ls_uncd)
//		lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
//		lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
//		if isvalid(lds_proddt) then destroy lds_proddt
//	end if
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradsrv_oper.xml_header	= ls_xmlmemdet

objdestroy:
//if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_iv() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_info_po (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipType, ls_slipNo, ls_prodcd
long		ll_row, ll_rowcount, i
n_ds		lds_detail, lds_proddt
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price
boolean 	lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_slipType = 'PO' //lds_detail.GetItemString(i, 'sliptype_code')
	ls_slipNo = lds_detail.GetItemString(i, 'refdoc_no')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductDetail(ls_branchid, ls_slipType, ls_slipNo, ls_prodcd, ls_Proddsc, ldec_itemqty, ldec_price, &
		ls_uncd, ls_discpercent, ldec_discamt, ldec_amtbefortax, ls_taxtype, ldec_taxrate, ldec_Netamt)

	lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_Proddsc)
	lds_detail.SetItem(i, 'item_qty', ldec_itemqty)
	lds_detail.SetItem(i, 'product_price', ldec_price)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
	lds_detail.SetItem(i, 'disc_percent', ls_discpercent)
	lds_detail.SetItem(i, 'disc_amt', ldec_discamt)
	lds_detail.SetItem(i, 'amtbefortax', ldec_amtbefortax)
	lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
	lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
	lds_detail.SetItem(i, 'net_amt', ldec_Netamt)

//	ls_prodnm = lds_detail.GetItemString(i, 'tdproductmaster_product_desc')
//	if isnull(ls_prodnm) or trim(ls_prodnm) =  '' then 
//		ls_branchid = lds_detail.GetItemString(i, 'branch_id')
//		ls_prodcd = lds_detail.GetItemString(i, 'product_no')
//		ls_storeid = lds_detail.GetItemString(i, 'store_id')
//		if isnull(ls_prodcd) or trim(ls_prodcd) =  '' then 
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -2
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_sql =  "select tdproductmaster.product_no, product_desc, unit_code, taxtype_code, tax_rate from tdproductmaster, tdstockmaster   "
//		ls_sql +=  " where ( tdproductmaster.branch_id = tdstockmaster.branch_id (+)) and " 
//		ls_sql +=  "  ( tdproductmaster.product_no = tdstockmaster.product_no (+)) and "
//		ls_sql +=  " tdproductmaster.branch_id = '" + ls_branchid + "' and trim(store_id) = '" + ls_storeid + "' and  tdproductmaster.product_no  = '" + ls_prodcd + "'"
//		
//		lds_proddt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//		if not isvalid(lds_proddt) then
//			ithw_exception.text	= "create lds_proddt"
//			li_ret = -3
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.SetTransObject(itr_sqlca) <> 1 then
//			ithw_exception.text	= "Can not set transaction lds_proddt"
//			li_ret = -4
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.retrieve() <= 0 then
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -5
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_prodnm = lds_proddt.GetItemstring(1, 'tdproductmaster_product_desc')
//		ls_uncd = lds_proddt.GetItemstring(1, 'tdproductmaster_unit_code')
//		ls_taxtype = lds_proddt.GetItemString(1, 'tdstockmaster_taxtype_code')
//		ldec_taxrate = lds_proddt.GetItemDecimal(1, 'tdstockmaster_tax_rate')
//		
//		lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_prodnm)
//		lds_detail.SetItem(i, 'unit_code', ls_uncd)
//		lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
//		lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
//		if isvalid(lds_proddt) then destroy lds_proddt
//	end if
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradsrv_oper.xml_header	= ls_xmlmemdet

objdestroy:
//if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_po() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_info_rc (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipType, ls_slipNo, ls_prodcd
long		ll_row, ll_rowcount, i
n_ds		lds_detail, lds_proddt
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price
boolean 	lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_slipType = 'RC' //lds_detail.GetItemString(i, 'sliptype_code')
	ls_slipNo = lds_detail.GetItemString(i, 'refdoc_no')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductDetail(ls_branchid, ls_slipType, ls_slipNo, ls_prodcd, ls_Proddsc, ldec_itemqty, ldec_price, &
		ls_uncd, ls_discpercent, ldec_discamt, ldec_amtbefortax, ls_taxtype, ldec_taxrate, ldec_Netamt)

	lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_Proddsc)
	lds_detail.SetItem(i, 'item_qty', ldec_itemqty)
	lds_detail.SetItem(i, 'product_price', ldec_price)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
	lds_detail.SetItem(i, 'disc_percent', ls_discpercent)
	lds_detail.SetItem(i, 'disc_amt', ldec_discamt)
	lds_detail.SetItem(i, 'amtbefortax', ldec_amtbefortax)
	lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
	lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
	lds_detail.SetItem(i, 'net_amt', ldec_Netamt)

//	ls_prodnm = lds_detail.GetItemString(i, 'tdproductmaster_product_desc')
//	if isnull(ls_prodnm) or trim(ls_prodnm) =  '' then 
//		ls_branchid = lds_detail.GetItemString(i, 'branch_id')
//		ls_prodcd = lds_detail.GetItemString(i, 'product_no')
//		ls_storeid = lds_detail.GetItemString(i, 'store_id')
//		if isnull(ls_prodcd) or trim(ls_prodcd) =  '' then 
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -2
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_sql =  "select tdproductmaster.product_no, product_desc, unit_code, taxtype_code, tax_rate from tdproductmaster, tdstockmaster   "
//		ls_sql +=  " where ( tdproductmaster.branch_id = tdstockmaster.branch_id (+)) and " 
//		ls_sql +=  "  ( tdproductmaster.product_no = tdstockmaster.product_no (+)) and "
//		ls_sql +=  " tdproductmaster.branch_id = '" + ls_branchid + "' and trim(store_id) = '" + ls_storeid + "' and  tdproductmaster.product_no  = '" + ls_prodcd + "'"
//		
//		lds_proddt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//		if not isvalid(lds_proddt) then
//			ithw_exception.text	= "create lds_proddt"
//			li_ret = -3
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.SetTransObject(itr_sqlca) <> 1 then
//			ithw_exception.text	= "Can not set transaction lds_proddt"
//			li_ret = -4
//			lb_err = true ; Goto objdestroy
//		end if
//		if lds_proddt.retrieve() <= 0 then
//			ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
//			li_ret = -5
//			lb_err = true ; Goto objdestroy
//		end if
//		ls_prodnm = lds_proddt.GetItemstring(1, 'tdproductmaster_product_desc')
//		ls_uncd = lds_proddt.GetItemstring(1, 'tdproductmaster_unit_code')
//		ls_taxtype = lds_proddt.GetItemString(1, 'tdstockmaster_taxtype_code')
//		ldec_taxrate = lds_proddt.GetItemDecimal(1, 'tdstockmaster_tax_rate')
//		
//		lds_detail.SetItem(i, 'tdproductmaster_product_desc', ls_prodnm)
//		lds_detail.SetItem(i, 'unit_code', ls_uncd)
//		lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
//		lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
//		if isvalid(lds_proddt) then destroy lds_proddt
//	end if
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradsrv_oper.xml_header	= ls_xmlmemdet

objdestroy:
//if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_rc() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_slip_adj (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;//string		ls_xmlmemdet, , ls_prodcd, 
string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
//long		ll_count
n_ds		lds_hd, lds_dt, lds_tl
//dec{2}	ldec_taxamt
boolean lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
ls_slipno = lds_hd.GetItemString(1, 'slip_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockslip.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tdstockslip.sliptype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockslip.slip_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sql = lds_dt.GetSQLSelect()
//ls_sql += " and tdstockslipdet.branch_id = '" + ls_branchid + "' and tdstockslipdet.sliptype_code = '" + ls_sliptype + "' and tdstockslipdet.slip_no = '" + ls_slipno + "'"
//ls_sql += " order by tdstockslipdet.seq_no"

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tdstockslipdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tdstockslipdet.sliptype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockslipdet.slip_no = '" + ls_slipno + "'"
ls_sql += " order by tdstockslipdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
end if


astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
//astr_tradsrv_op.xml_tailer	= string( lds_tl.describe( "Datawindow.data.XML" ) )

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
//if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_op_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_save_slip_adj (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;return 1
end function

public function integer of_init_info_product_master (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_prodcd, ls_sql
n_ds		lds_hd, lds_dt1, lds_dt2, lds_dt3
boolean lb_err = false
string		ls_storeid

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )

lds_dt1= create n_ds
lds_dt1.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt1.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt1, astr_tradsrv_op.xml_detail )

lds_dt2= create n_ds
lds_dt2.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
lds_dt2.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt2, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_prodcd = lds_hd.GetItemString(1, 'product_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdproductmaster.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdproductmaster.product_no = '" + ls_prodcd + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า " + ls_prodcd + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
	select store_id
	into	:ls_storeid
	from tdstockmaster
	where coop_id = :ls_branchid and
			product_no = :ls_prodcd and
			rownum = 1
	order by store_id
	using itr_sqlca;
	lds_hd.SetItem(1, 'store_id', ls_storeid)
	astr_tradsrv_op.xml_header	= string( lds_hd.describe( "Datawindow.data.XML" ) )
end if

//ls_sql = lds_dt1.GetSQLSelect()
//if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdproductpricelist.branch_id = '" + ls_branchid + "'"
//if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdproductpricelist.product_no = '" + ls_prodcd + "'"
//ls_sql += " order by tdproductpricelist.seq_no"
//lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")
//
//if lds_dt1.retrieve() <= 0 then
//	astr_tradsrv_op.xml_detail	= ''
//else
//	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
//end if

ls_sql = lds_dt1.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockcard.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdstockcard.product_no = '" + ls_prodcd + "'"
if not isnull(ls_storeid) or trim(ls_storeid) <> '' then ls_sql += " and tdstockcard.store_id = '" + ls_storeid + "'"
ls_sql += " order by tdstockcard.product_no, tdstockcard.seq_no desc"
lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt1.retrieve() <= 0 then
	astr_tradsrv_op.xml_detail	= ''
else
	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
end if

ls_sql = lds_dt2.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstocklot.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdstocklot.product_no = '" + ls_prodcd + "'"
ls_sql += " order by tdstocklot.lot_date, tdstocklot.lot_no"
lds_dt2.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt2.retrieve() <= 0 then
	astr_tradsrv_op.xml_tailer	= ''
else
	astr_tradsrv_op.xml_tailer	= string( lds_dt2.describe( "Datawindow.data.XML" ) )
end if

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt1) then destroy lds_dt1
if isvalid(lds_dt2) then destroy lds_dt2
this.of_setsrvdwxmlie( false )

if lb_err then
	astr_tradsrv_op.xml_header	 = ''
	astr_tradsrv_op.xml_detail	= ''
	astr_tradsrv_op.xml_tailer	= ''
	astr_tradsrv_op.xml_list	= ''
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product_master() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_getproductdetail (string as_branchid, string as_prodcd, ref string as_proddsc, ref string as_uncd, ref string as_taxtype, ref decimal adec_taxrate);select 	tdproductmaster.product_no, product_desc, unit_code, taxtype_code, tax_rate 
into		:as_proddsc, :as_uncd, :as_taxtype, :adec_taxrate
from 		tdproductmaster, tdstockmaster  
where 	(tdproductmaster.coop_id = tdstockmaster.coop_id (+)) and
			(tdproductmaster.product_no = tdstockmaster.product_no (+)) and 
			(tdproductmaster.coop_id = :as_branchid)  and //(trim(store_id) = and  
			(tdproductmaster.product_no  = :as_prodcd)
using itr_sqlca;

return itr_sqlca.sqlcode
end function

public function integer of_getproductdetail (string as_branchid, string as_sliptype, string as_slipno, string as_prodcd, ref string as_proddsc, ref decimal adec_itemqty, ref decimal adec_price, ref string as_uncd, ref string as_discpercent, ref decimal adec_discamt, ref decimal adec_amtbefortax, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_netamt);select 	product_desc, item_qty, product_price, tdstockslipdet.unit_code, disc_percent, disc_amt, amtbefortax, taxtype_code, tax_rate, net_amt
into		:as_proddsc, :adec_itemqty, :adec_price, :as_uncd, :as_discpercent, :adec_discamt, :adec_amtbefortax, :as_taxtype, :adec_taxrate, :adec_netamt
from		tdstockslipdet, tdproductmaster
where 	(tdstockslipdet.coop_id = tdproductmaster.coop_id) and
			(tdstockslipdet.product_no = tdproductmaster.product_no) and
			(tdstockslipdet.coop_id = :as_branchid) and
			(sliptype_code = :as_sliptype) and
			(slip_no = :as_slipno) and
			(tdstockslipdet.product_no = :as_prodcd) 
using 	itr_sqlca;

return itr_sqlca.sqlcode
end function

public function integer of_init_info_debt_master (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_debtcd, ls_sql
n_ds		lds_hd, lds_dt1
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )

lds_dt1= create n_ds
lds_dt1.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt1.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt1, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_debtcd = lds_hd.GetItemString(1, 'debt_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tddebtmaster.coop_id = '" + ls_branchid + "'"
if not isnull(ls_debtcd) or trim(ls_debtcd) <> '' then ls_sql += " and tddebtmaster.debt_no = '" + ls_debtcd + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลลูกหนี้ " + ls_debtcd + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sql = lds_dt1.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tddebtdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_debtcd) or trim(ls_debtcd) <> '' then ls_sql += " and tddebtdet.debt_no = '" + ls_debtcd + "'"
ls_sql += " order by tddebtdet.seq_no desc"
lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
if lds_dt1.retrieve() <= 0 then
	astr_tradsrv_op.xml_detail	= ''
//	ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า " + ls_prodcd + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
end if

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt1) then destroy lds_dt1
this.of_setsrvdwxmlie( false )

if lb_err then
	astr_tradsrv_op.xml_header	 = ''
	astr_tradsrv_op.xml_detail	= ''
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_debt_master() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_info_cred_master (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;//string		ls_xmlmemdet, , ls_prodcd, 
string		ls_branchid, ls_debtcd, ls_sql
n_ds		lds_hd, lds_dt1
boolean lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )

lds_dt1= create n_ds
lds_dt1.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt1.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt1, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_debtcd = lds_hd.GetItemString(1, 'cred_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdcredmaster.coop_id = '" + ls_branchid + "'"
if not isnull(ls_debtcd) or trim(ls_debtcd) <> '' then ls_sql += " and tdcredmaster.cred_no = '" + ls_debtcd + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลเจ้าหนี้  " + ls_debtcd + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sql = lds_dt1.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tddebtdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_debtcd) or trim(ls_debtcd) <> '' then ls_sql += " and tddebtdet.debt_no = '" + ls_debtcd + "'"
ls_sql += " order by tddebtdet.seq_no desc"
lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
if lds_dt1.retrieve() <= 0 then
	astr_tradsrv_op.xml_detail	= ''
//	ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า " + ls_prodcd + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
end if

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt1) then destroy lds_dt1
this.of_setsrvdwxmlie( false )

if lb_err then
	astr_tradsrv_op.xml_header	 = ''
	astr_tradsrv_op.xml_detail	= ''
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_cred_master() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_info_product_adj (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_xmlmemdet, ls_sql, ls_prodcd, ls_branchid, ls_prodnm, ls_uncd, ls_storeid, ls_taxtype
long		ll_row, ll_rowcount, i
n_ds		lds_header, lds_detail
dec{2}	ldec_oldqty, ldec_costamt, ldec_balqty
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_header = create n_ds
lds_header.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_header.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_header, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ls_storeid = lds_header.GetItemString(lds_header.GetRow(), 'store_id')

ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductInfo(ls_branchid, ls_storeid, ls_prodcd, ls_prodnm, ls_uncd, ldec_oldqty, ldec_costamt, ldec_balqty)
		
	lds_detail.SetItem(i, 'product_desc', ls_prodnm)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
	lds_detail.SetItem(i, 'old_qty', ldec_oldqty)
//	lds_detail.SetItem(i, 'balance_qty', ldec_balqty)
next

astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )

objdestroy:
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_header) then destroy lds_header
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product_adj() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

private function integer of_setdsmodify (ref n_ds ads_requester, long al_row, boolean ab_keymodify);string		ls_iskey
long		ll_index, ll_count

ads_requester.setitemstatus( al_row, 0, primary!, datamodified! )

// ปรับ Attrib ทุก Column ให้เป็น Update ซะ
ll_count	= long( ads_requester.describe( "DataWindow.Column.Count" ) )
for ll_index = 1 to ll_count
	
	ls_iskey	= ads_requester.describe("#"+string( ll_index )+".Key")
	
	// ถ้าเป็น PK และเงื่อนไขคือไม่ปรับ Key ไม่ต้องปรับสถานะ
	if upper( ls_iskey ) = "YES" and not( ab_keymodify ) then
		continue
	end if
	
	ads_requester.setitemstatus( 1, ll_index, primary!, datamodified! )
next

return 1
end function

public function integer of_init_fin_crdr (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;return 1
end function

public function integer of_init_info_slipref (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipTypeRef, ls_slipNo, ls_prodcd, ls_sql, ls_refno, ls_debtno, ls_taxopt, ls_slipType, ls_storeid
long		ll_row, ll_rowcount, i
n_ds		lds_header, lds_detail, lds_proddt, lds_tailer
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price, ldec_slipamt, ldec_taxamt, ldec_slipnetamt, ldec_transportfee, ldec_balqty
boolean 	lb_err = false
integer	li_ret = 1
string		ls_debtnm, ls_contact, ls_payment_type, ls_phone, ls_fax, ls_pricelevel, ls_addr, ls_debttype, ls_credno, ls_credtype, ls_crednm, ls_empid
long		ll_creditterm, ll_leadtime
datetime ld_duedate			

this.of_setsrvdwxmlie( true )
lds_header = create n_ds
lds_header.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_header.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_header, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_header.GetItemString(lds_header.Getrow(), 'coop_id')
ls_slipTypeRef = astr_tradsrv_oper.xml_list 
ls_slipNo = lds_header.GetItemString(lds_header.Getrow(), 'refdoc_no')
ls_slipType = lds_header.GetItemString(lds_header.Getrow(), 'sliptype_code')

if ls_slipTypeRef = 'IS' then
	of_init_info_slipIS(astr_tradsrv_oper)
else
//	if not (ls_slipType = 'SR' or ls_slipType = 'PR' or ls_slipType = 'REC') then
//	if not (ls_slipType = 'PR' or ls_slipType = 'REC') then
	if not (ls_slipType = 'REC') then
		lds_tailer = create n_ds
		lds_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_tailer)
		lds_tailer.Reset()
		
		if inv_dwxmliesrv.of_xmlimport( lds_tailer, astr_tradsrv_oper.xml_tailer ) <= 0 then
			ithw_exception.text	= "Can not Import XML"
			li_ret = -3
			lb_err = true ; Goto objdestroy
		end if
	end if
	ls_sql = "select 	slip_no, tdstockslipdet.product_no, tdstockslipdet.product_desc, item_qty, product_price, tdstockslipdet.unit_code, disc_percent, disc_amt, amtbefortax, taxtype_code, tax_rate, net_amt, store_id, balance_qty "
	ls_sql += "from		tdstockslipdet, tdproductmaster "
	ls_sql += "where 	(tdstockslipdet.coop_id = tdproductmaster.coop_id) and "
	ls_sql += "(tdstockslipdet.product_no = tdproductmaster.product_no) and "
	ls_sql += "(tdstockslipdet.coop_id = '" + ls_branchid + "') and "
	ls_sql += "(sliptype_code = '" + ls_slipTypeRef + "') and "
	ls_sql += "(slip_no = '" + ls_slipNo + "')"
	
	if ls_slipTypeRef = 'PR' then
		of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_credno, ls_credtype, ls_crednm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
			ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate)
		lds_header.SetItem(lds_header.Getrow(), 'cred_no', ls_credno)	
		lds_header.SetItem(lds_header.Getrow(), 'crednm', ls_crednm)	
	//		lds_header.SetItem(lds_header.Getrow(), 'cred_type', ls_debttype)	
	elseif ls_slipTypeRef = 'RC' then
		of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_credno, ls_credtype, ls_crednm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
			ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate)
		lds_header.SetItem(lds_header.Getrow(), 'cred_no', ls_credno)	
		lds_header.SetItem(lds_header.Getrow(), 'crednm', ls_crednm)	
		lds_header.SetItem(lds_header.Getrow(), 'paymentby', ls_payment_type)	
	elseif ls_slipTypeRef = 'PO'  then
		if ls_slipType = 'IV' then
			of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_credno, ls_credtype, ls_crednm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
				ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate)
//			lds_header.SetItem(lds_header.Getrow(), 'cred_no', ls_credno)	
//			lds_header.SetItem(lds_header.Getrow(), 'crednm', ls_crednm)	
			lds_header.SetItem(lds_header.Getrow(), 'due_date', ld_duedate)	
			lds_header.SetItem(lds_header.Getrow(), 'paymentby', ls_payment_type)	
			lds_header.SetItem(lds_header.Getrow(), 'slipnet_amt', ldec_slipnetamt)	
		else
			of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_credno, ls_credtype, ls_crednm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
				ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate)
			lds_header.SetItem(lds_header.Getrow(), 'cred_no', ls_credno)	
			lds_header.SetItem(lds_header.Getrow(), 'crednm', ls_crednm)	
			lds_header.SetItem(lds_header.Getrow(), 'due_date', ld_duedate)	
			lds_header.SetItem(lds_header.Getrow(), 'paymentby', ls_payment_type)	
			lds_header.SetItem(lds_header.Getrow(), 'slipnet_amt', ldec_slipnetamt)	
		end if
	elseif	ls_slipTypeRef = 'IS'  then
	elseif	ls_slipTypeRef = 'QT'  then
		of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
			ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate, ldec_transportfee)
		lds_header.SetItem(lds_header.Getrow(), 'transportfee', ldec_transportfee)	
		lds_header.SetItem(lds_header.Getrow(), 'paymentby', ls_payment_type)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'transportfee', ldec_transportfee)	
	elseif	ls_slipTypeRef = 'SO'  then
		of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
			ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate, ldec_transportfee, ls_empid, ls_storeid)
		lds_header.SetItem(lds_header.Getrow(), 'transportfee', ldec_transportfee)	
		lds_header.SetItem(lds_header.Getrow(), 'paymentby', ls_payment_type)	
		lds_header.SetItem(lds_header.Getrow(), 'store_id', ls_storeid)	
		lds_header.SetItem(lds_header.Getrow(), 'employee_id', ls_empid)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'transportfee', ldec_transportfee)	
	elseif	ls_slipTypeRef = 'IV'  then
		of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
			ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate, ldec_transportfee, ls_empid, ls_storeid)
//		of_	
		lds_header.SetItem(lds_header.Getrow(), 'transportfee', ldec_transportfee)	
		lds_header.SetItem(lds_header.Getrow(), 'paymentby', ls_payment_type)	
		lds_header.SetItem(lds_header.Getrow(), 'store_id', ls_storeid)	
		lds_header.SetItem(lds_header.Getrow(), 'employee_id', ls_empid)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'transportfee', ldec_transportfee)	
	else
		of_GetSlipHeader(ls_branchid, ls_slipTypeRef, ls_slipNo, ls_debtno, ls_debttype, ls_debtnm, ls_addr, ls_payment_type, ll_creditterm, ll_leadtime, ls_pricelevel, ls_contact, ls_phone, ls_fax, &
			ldec_slipamt, ls_discpercent, ldec_discamt, ls_taxtype, ldec_taxrate, ldec_amtbefortax, ls_taxopt, ldec_taxamt, ldec_slipnetamt, ld_duedate)
	end if
	
	if not (ls_slipType = 'PR') then
		lds_header.SetItem(lds_header.Getrow(), 'debt_no', ls_debtno)	
		lds_header.SetItem(lds_header.Getrow(), 'debtnm', ls_debtnm)	
		lds_header.SetItem(lds_header.Getrow(), 'credit_term', ll_creditterm)	
		lds_header.SetItem(lds_header.Getrow(), 'debt_addr', ls_addr)	
		lds_header.SetItem(lds_header.Getrow(), 'debt_type', ls_debttype)	
	end if	
	lds_header.SetItem(lds_header.Getrow(), 'taxopt', ls_taxopt)	
	lds_header.SetItem(lds_header.Getrow(), 'slip_amt', ldec_slipamt)	
	lds_header.SetItem(lds_header.Getrow(), 'disc_percent', ls_discpercent)	
	lds_header.SetItem(lds_header.Getrow(), 'disc_amt', ldec_discamt)	
	lds_header.SetItem(lds_header.Getrow(), 'amtbefortax', ldec_amtbefortax)	
	lds_header.SetItem(lds_header.Getrow(), 'taxtype_code', ls_taxtype)	
	lds_header.SetItem(lds_header.Getrow(), 'tax_rate', ldec_taxrate)	
	lds_header.SetItem(lds_header.Getrow(), 'tax_amt', ldec_taxamt)	
	lds_header.SetItem(lds_header.Getrow(), 'slipnet_amt', ldec_slipnetamt)	
	lds_header.SetItem(lds_header.Getrow(), 'due_date', ld_duedate)	
	
//	if not (ls_slipType = 'SR' or ls_slipType = 'PR') then
//	if not (ls_slipType = 'PR') then
		lds_tailer.SetItem(lds_tailer.Getrow(), 'taxopt', ls_taxopt)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'slip_amt', ldec_slipamt)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'disc_percent', ls_discpercent)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'disc_amt', ldec_discamt)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'amtbefortax', ldec_amtbefortax)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'taxtype_code', ls_taxtype)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'tax_rate', ldec_taxrate)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'tax_amt', ldec_taxamt)	
		lds_tailer.SetItem(lds_tailer.Getrow(), 'slipnet_amt', ldec_slipnetamt)	
//	end if
	
	lds_proddt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
	lds_proddt.SetTransObject(itr_sqlca)
	if lds_proddt.retrieve() <= 0 then
		ithw_exception.text	= "ไม่พบข้อมูลรายการสินค้า "+" กรุณาตรวจสอบ"
		lb_err = true ; Goto objdestroy
	end if
	
	//
	ll_rowcount = lds_proddt.rowcount()
	
	lds_detail.Reset()
	for i=1 to ll_rowcount
		ls_refno = lds_proddt.GetItemString(i, 'tdstockslipdet_slip_no')
		ls_prodcd = lds_proddt.GetItemString(i, 'tdstockslipdet_product_no')
		ls_Proddsc = lds_proddt.GetItemString(i, 'tdstockslipdet_product_desc')
		ldec_itemqty = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_item_qty')
		ldec_price = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_product_price')
		ls_uncd = lds_proddt.GetItemString(i, 'tdstockslipdet_unit_code')
		ls_discpercent = lds_proddt.GetItemString(i, 'tdstockslipdet_disc_percent')
		ldec_discamt = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_disc_amt')
		ldec_amtbefortax = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_amtbefortax')
		ls_taxtype = lds_proddt.GetItemString(i, 'tdstockslipdet_taxtype_code')
		ldec_taxrate = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_tax_rate')
		ldec_Netamt = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_net_amt')
		ls_storeid = lds_proddt.GetItemString(i, 'tdstockslipdet_store_id')
		ldec_balqty = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_balance_qty')
	
	//	ls_refno = lds_proddt.GetItemString(i, 'slip_no')
	//	ls_prodcd = lds_proddt.GetItemString(i, 'product_no')
	//	ls_Proddsc = lds_proddt.GetItemString(i, 'product_desc')
	//	ldec_itemqty = lds_proddt.GetItemdecimal(i, 'item_qty')
	//	ldec_price = lds_proddt.GetItemdecimal(i, 'product_price')
	//	ls_uncd = lds_proddt.GetItemString(i, 'unit_code')
	//	ls_discpercent = lds_proddt.GetItemString(i, 'disc_percent')
	//	ldec_discamt = lds_proddt.GetItemdecimal(i, 'disc_amt')
	//	ldec_amtbefortax = lds_proddt.GetItemdecimal(i, 'amtbefortax')
	//	ls_taxtype = lds_proddt.GetItemString(i, 'taxtype_code')
	//	ldec_taxrate = lds_proddt.GetItemdecimal(i, 'tax_rate')
	//	ldec_Netamt = lds_proddt.GetItemdecimal(i, 'net_amt')
	
		ll_row = lds_detail.Insertrow(0)
		lds_detail.SetItem(ll_row, 'refdoc_no', ls_refno)
		lds_detail.SetItem(ll_row, 'seq_no', i)
		lds_detail.SetItem(ll_row, 'coop_id', ls_branchid)
		lds_detail.SetItem(ll_row, 'sliptype_code', ls_slipType)
		lds_detail.SetItem(ll_row, 'slip_no', ls_slipNo)
		lds_detail.SetItem(ll_row, 'product_no', ls_prodcd)
		lds_detail.SetItem(ll_row, 'product_desc', ls_Proddsc)
		lds_detail.SetItem(ll_row, 'item_qty', ldec_itemqty)
		lds_detail.SetItem(ll_row, 'product_price', ldec_price)
		lds_detail.SetItem(ll_row, 'unit_code', ls_uncd)
		lds_detail.SetItem(ll_row, 'disc_percent', ls_discpercent)
		lds_detail.SetItem(ll_row, 'disc_amt', ldec_discamt)
		lds_detail.SetItem(ll_row, 'amtbefortax', ldec_amtbefortax)
		lds_detail.SetItem(ll_row, 'taxtype_code', ls_taxtype)
		lds_detail.SetItem(ll_row, 'tax_rate', ldec_taxrate)
		lds_detail.SetItem(ll_row, 'net_amt', ldec_Netamt)
		lds_detail.SetItem(ll_row, 'store_id', ls_storeid)
		lds_detail.SetItem(ll_row, 'balance_qty', ldec_balqty)
	next
	
	astr_tradsrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_header )
	astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
	
//	if not (ls_slipType = 'SR' or ls_slipType = 'PR') then
//	if not (ls_slipType = 'PR') then
		astr_tradsrv_oper.xml_tailer	= inv_dwxmliesrv.of_xmlexport( lds_tailer )
//	end if
	
end if
objdestroy:
if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_header) then destroy lds_header
if isvalid(lds_tailer) then destroy lds_tailer

this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = string(li_ret) + "n_cst_tradesrv_operate.of_init_info_slipref() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function string of_getdebtno (string as_branchid, string as_sliptype, string as_slipno);string	ls_debtno

select debt_no
into	:ls_debtno
from tdstockslip
where	tdstockslip.coop_id = :as_BranchId and
			tdstockslip.sliptype_code = :as_Sliptype and
			tdstockslip.slip_no = :as_SlipNo
using 		itr_sqlca;

return ls_debtno
end function

public function integer of_save_op_slip (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype, &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent
//datetime	ldtm_entrydate, ldtm_opedate
boolean 	lb_err = false
//long		ll_count, i
//dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
//			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย (0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if
ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
if ls_sliptype = 'APC' or ls_sliptype = 'ARC' then
	of_save_fin_credit_slip(astr_trsrv_oper)
elseif ls_sliptype = 'ARRC'  then
	of_save_fin_arreceive(astr_trsrv_oper)
elseif ls_sliptype = 'APRC'  then
	of_save_fin_apreceive(astr_trsrv_oper)
elseif ls_sliptype = 'ARDN'  or ls_sliptype = 'ARCN' or  ls_sliptype = 'APDN'  or ls_sliptype = 'APCN' then
	of_save_op_slip2(astr_trsrv_oper)
else
	of_save_op_stockslip(astr_trsrv_oper)
end if


if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
this.of_setsrvdwxmlie( false )

if lb_err then
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_op_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_fin_info_cred (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_xmlmemdet, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_credtype
long		ll_count, i
n_ds		lds_main, lds_debtdt, lds_detail
string	ls_debtnm, ls_contact, ls_phone, ls_fax
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_detail)
lds_detail.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradesrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลผู้จำหน่าย "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
select          "MBUCFPRENAME"."PRENAME_DESC"||"TDCREDMASTER"."CRED_NAME"||' '||"MBUCFPRENAME"."SUFFNAME_DESC" as crednm,  
//cred_name,   
         cred_contact,   
         payment_type,   
         cred_addr||' '||' '||district_desc||' '||province_desc  as addr, 
         phone,   
         fax,   
         credit_term,   
         lead_time,   
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type, 
		:ls_addr,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_credtype
    from tdcredmaster,   
         mbucfprovince,   
         mbucfdistrict, 
		cmucfdropdownlist,   
         "MBUCFPRENAME"  
   WHERE ( tdcredmaster.cred_province = mbucfprovince.province_code (+)) and  
         ( tdcredmaster.cred_province = mbucfdistrict.province_code (+)) and  
         ( tdcredmaster.cred_district = mbucfdistrict.district_code (+))  and  
         ( tdcredmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( tdcredmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tdcredmaster.coop_id =  :ls_branchid ) and 
         ( tdcredmaster.cred_no = :ls_debtno )
	USING	itr_sqlca;

lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_credtype)

ls_sql = "  SELECT TDSTOCKSLIP.SLIPNET_AMT,   "
ls_sql += "  TDSTOCKSLIP.SLIP_NO,   "
ls_sql += "  TDSTOCKSLIP.SLIP_DATE,   "
ls_sql += "  TDSTOCKSLIP.DUE_DATE  "
ls_sql += "  FROM TDSTOCKSLIP   "
ls_sql += "  WHERE ( TDSTOCKSLIP.PAYMENTBY = 'LON' ) and  "
ls_sql += "  ( TDSTOCKSLIP.SLIP_STATUS = 8 ) AND "
ls_sql += "  ( TDSTOCKSLIP.SLIPTYPE_CODE = 'RC' ) and " 
ls_sql += "  ( TDSTOCKSLIP.CRED_NO = '" + ls_debtno + "' ) "    
ls_sql += "  ORDER BY  TDSTOCKSLIP.SLIP_DATE "    

string	ls_refdocNo;datetime	ldt_DocDate, ldt_DueDate; dec{4}	ldec_Amt, ldec_total=0

lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//lds_debtdt = create n_ds
//lds_debtdt.Dataobject = 'd_tradesrv_info_debt1'
lds_debtdt.SetTransObject(itr_sqlca)
ll_count = lds_debtdt.retrieve()
if ll_count <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลผู้ผลิต "+ls_debtno+" กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
else
	for i = 1 to ll_count
//		ls_refdocNo = lds_debtdt.GetitemString( i, 'tdstockslip_slip_no')
//		ldt_DocDate = lds_debtdt.GetitemDatetime( i, 'tdstockslip_slip_date')
//		ldt_DueDate = lds_debtdt.GetitemDatetime( i, 'tdstockslip_due_date')
//		ldec_Amt = lds_debtdt.GetitemDecimal( i, 'tdstockslip_slipnet_amt')
		ls_refdocNo = lds_debtdt.GetitemString( i, 'slip_no')
		ldt_DocDate = lds_debtdt.GetitemDatetime( i, 'slip_date')
		ldt_DueDate = lds_debtdt.GetitemDatetime( i, 'due_date')
		ldec_Amt = lds_debtdt.GetitemDecimal( i, 'slipnet_amt')
		if IsNull(ldec_Amt)    then ldec_Amt = 0
		ldec_total += ldec_Amt
		lds_detail.insertrow(0)
		lds_detail.SetItem(i, 'seq_no', i)
		lds_detail.SetItem(i, 'refdoc_no', ls_refdocNo)
		lds_detail.SetItem(i, 'refdoc_date', ldt_DocDate)
		lds_detail.SetItem(i, 'due_date', ldt_DueDate)
		lds_detail.SetItem(i, 'debt_amt', ldec_Amt)
	next
	lds_main.SetItem(1, 'debt_amt', ldec_total)
end if

astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

if ll_count > 0 then
	astr_tradesrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
else
	astr_tradesrv_oper.xml_detail	= ''
end if
//if isnull(astr_tradesrv_oper.xml_detail) or trim(astr_tradesrv_oper.xml_detail) =  '' then 
//	ithw_exception.text	= "Can not Export XML"
//	ithw_exception.text	+= astr_tradesrv_oper.xml_header
//	li_ret = -3
//	lb_err = true ; Goto objdestroy
//end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_debtdt) then destroy lds_debtdt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_info_cred() " + ithw_exception.text
	throw ithw_exception
end if
return 1

end function

private function integer of_init_info_cred1 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_xmlmemdet, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_credtype
long		ll_count
n_ds		lds_main, lds_debtdt, lds_tailer
string	ls_debtnm, ls_contact, ls_phone, ls_fax
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลผู้จำหน่าย "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
select          "MBUCFPRENAME"."PRENAME_DESC"||"TDCREDMASTER"."CRED_NAME"||' '||"MBUCFPRENAME"."SUFFNAME_DESC" as crednm,  
//cred_name,   
         cred_contact,   
         payment_type,   
         cred_addr||' '||' '||district_desc||' '||province_desc  as addr, 
         phone,   
         fax,   
         credit_term,   
         lead_time,   
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type, 
		:ls_addr,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_credtype
    from tdcredmaster,   
         mbucfprovince,   
         mbucfdistrict, 
		cmucfdropdownlist,   
         "MBUCFPRENAME"  
   WHERE ( tdcredmaster.cred_province = mbucfprovince.province_code (+)) and  
         ( tdcredmaster.cred_province = mbucfdistrict.province_code (+)) and  
         ( tdcredmaster.cred_district = mbucfdistrict.district_code (+))  and  
         ( tdcredmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( tdcredmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tdcredmaster.coop_id =  :ls_branchid ) and 
         ( tdcredmaster.cred_no = :ls_debtno )
	USING	itr_sqlca;

ldt_slipdate = lds_main.GetItemDatetime(1, 'slip_date')

//ls_fax = lds_debtdt.GetItemString(1, 'validay')

//lds_main.SetItem(1, 'tdcredmaster_cred_name', ls_debtnm)
lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_credtype)
//lds_main.SetItem(1, 'cred_contact', ls_contact)
//lds_main.SetItem(1, 'contact_phone', ls_phone)
//lds_main.SetItem(1, 'contact_fax', ls_fax)
lds_main.SetItem(1, 'credit_term', ll_creditterm)
lds_main.SetItem(1, 'deliday', ll_leadtime)
lds_main.SetItem(1, 'validay', 7)
//lds_main.SetItem(1, 'debt_addr', ls_addr)
lds_main.SetItem(1, 'paymentby', ls_payment_type)
lds_main.SetItem(1, 'due_date', RelativeDate( date(ldt_slipdate), ll_leadtime ))
//ls_xmlmemdet		= string( lds_main.describe( "Datawindow.data.XML" ) )
//
//astr_tradesrv_oper.xml_header	= ls_xmlmemdet
astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

if (trim(astr_tradesrv_oper.xml_tailer) <> '')  then
	lds_tailer = create n_ds
	lds_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_tailer)
	lds_tailer.Reset()
	
	if inv_dwxmliesrv.of_xmlimport( lds_tailer, astr_tradesrv_oper.xml_tailer ) <= 0 then
		ithw_exception.text	= "Can not Import XML"
		li_ret = -4
		lb_err = true ; Goto objdestroy
	end if
	astr_tradesrv_oper.xml_tailer	= inv_dwxmliesrv.of_xmlexport( lds_tailer )
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_tailer) then destroy lds_tailer
if isvalid(lds_debtdt) then f_destroydatastore(lds_debtdt)
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_cred1() " + ithw_exception.text
	throw ithw_exception
end if
return 1

end function

private function integer of_init_info_debt1 (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype
long		ll_count, ll_val
integer	li_ret = 1
n_ds		lds_main, lds_tailer, lds_debtdt
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean 	lb_err = false
dec		ldec_taxrate1, ldec_taxrate2

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'debt_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลลูกค้า "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if

select          mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
		debt_contact ,   
         payment_type,   
         phone,   
         fax,   
         credit_term,   
         lead_time,   
         price_level,   
         debt_addr||' '||' '||district_desc||' '||province_desc  as addr ,
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_pricelevel,
		:ls_addr,
		:ls_debttype
    from tddebtmaster,   
         mbucfprovince,   
         mbucfdistrict, 
         mbucfprename,  
		cmucfdropdownlist
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+))  and  
         ( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and   
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tddebtmaster.coop_id = :ls_branchid) and 
         ( tddebtmaster.debt_no = :ls_debtno)
			USING	itr_sqlca;

ldt_slipdate = lds_main.GetItemDatetime(1, 'slip_date')

if of_getdefaultval(ls_branchid, ls_taxtype, ldec_taxrate1, ldec_taxrate2, ll_val) < 1 then
	ls_taxtype = 'E'
	ldec_taxrate1 = 3
	ldec_taxrate2 = 7
	ll_val = 7
end if

lds_main.SetItem(1, 'tddebtmaster_debt_name', ls_debtnm)
lds_main.SetItem(1, 'debtnm', ls_debtnm)
lds_main.SetItem(1, 'debt_addr', ls_addr)
lds_main.SetItem(1, 'debt_contact', ls_contact)
lds_main.SetItem(1, 'contact_phone', ls_phone)
lds_main.SetItem(1, 'contact_fax', ls_fax)
lds_main.SetItem(1, 'credit_term', ll_creditterm)
lds_main.SetItem(1, 'deliday', ll_leadtime)
lds_main.SetItem(1, 'validay', ll_val)
lds_main.SetItem(1, 'debt_addr', ls_addr)
lds_main.SetItem(1, 'paymentby', ls_payment_type)
lds_main.SetItem(1, 'price_level', ls_pricelevel)
//lds_main.SetItem(1, 'due_date', RelativeDate( date(ldt_slipdate), ll_leadtime ))
lds_main.SetItem(1, 'due_date', RelativeDate( date(ldt_slipdate), ll_creditterm ))
lds_main.SetItem(1, 'taxtype_code', ls_taxtype)
lds_main.SetItem(1, 'tax_rate', ldec_taxrate2)
lds_main.SetItem(1, 'debt_type', ls_debttype)

astr_tradsrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradsrv_oper.xml_header) or trim(astr_tradsrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradsrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

//if (not isnull(astr_tradsrv_oper.xml_tailer)) or trim(astr_tradsrv_oper.xml_tailer) <> '' then
if (trim(astr_tradsrv_oper.xml_tailer) <> '')  then
	lds_tailer = create n_ds
	lds_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_tailer)
	lds_tailer.Reset()
	
	if inv_dwxmliesrv.of_xmlimport( lds_tailer, astr_tradsrv_oper.xml_tailer ) <= 0 then
		ithw_exception.text	= "Can not Import XML"
		li_ret = -4
		lb_err = true ; Goto objdestroy
	end if
	
	lds_tailer.SetItem(1, 'taxtype_code',ls_taxtype)
	lds_tailer.SetItem(1, 'tax_rate', ldec_taxrate2)
	
	astr_tradsrv_oper.xml_tailer	= inv_dwxmliesrv.of_xmlexport( lds_tailer )
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_tailer) then destroy lds_tailer
if isvalid(lds_debtdt) then f_destroydatastore(lds_debtdt)
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_debt1() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret

//catch( throwable lthw_setdwsql)
//	ithw_exception.text	+= "~r~nพบขอผิดพลาด (0.2)"
//	ithw_exception.text	+= lthw_setdwsql.text
//	lb_err = true
//end try
//if lb_err then Goto objdestroy

////lds_debtdt = create n_ds
//lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//if not isvalid(lds_debtdt) then
//	ithw_exception.text	= "create lds_debtdt"
//	li_ret = -4
//	lb_err = true ; Goto objdestroy
//end if
////lds_debtdt.Dataobject = 'd_tradesrv_info_debt1'
//
//if lds_debtdt.SetTransObject(itr_sqlca) <> 1 then
//	ithw_exception.text	= "Can not set transaction lds_debtdt"
//	li_ret = -5
//	lb_err = true ; Goto objdestroy
//end if
////if lds_debtdt.retrieve(ls_debtno) < 1 then
//if lds_debtdt.retrieve() < 1 then
//	li_ret = -6
//	ithw_exception.text	=  "ไม่พบข้อมูลลูกค้า "+ls_debtno+" กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
//end if

//integer li_colcount, i; string	ls_colnm
//li_colcount = integer(lds_debtdt.describe("DataWindow.Column.Count"))
//FOR i=1 TO li_colcount
//	ls_colnm = lds_debtdt.describe ("#" + string (i) + ".name")
//	Messagebox('test', ls_colnm)
//NEXT

//ls_debtnm = lds_debtdt.GetItemString(1, 'debtnm') // 'debt_name')
//ls_contact = lds_debtdt.GetItemString(1, 'tddebtmaster_debt_contact')
//ls_phone = lds_debtdt.GetItemString(1, 'tddebtmaster_phone')
//ls_fax = lds_debtdt.GetItemString(1, 'tddebtmaster_fax')
//ll_creditterm = lds_debtdt.GetItemnumber(1, 'tddebtmaster_credit_term')
//ll_leadtime = lds_debtdt.GetItemnumber(1, 'tddebtmaster_lead_time')
//ls_addr = lds_debtdt.GetItemstring(1, 'addr')
//ls_payment_type = lds_debtdt.GetItemstring(1, 'tddebtmaster_payment_type')
//ls_pricelevel = lds_debtdt.GetItemstring(1, 'tddebtmaster_price_level')

////try
//	ls_debtnm = lds_debtdt.GetItemString(1, 'tddebtmaster_debt_name')
//	ls_contact = lds_debtdt.GetItemString(1, 'tddebtmaster_debt_contact')
//	ls_phone = lds_debtdt.GetItemString(1, 'tddebtmaster_phone')
//	ls_fax = lds_debtdt.GetItemString(1, 'tddebtmaster_fax')
//	ll_creditterm = lds_debtdt.GetItemnumber(1, 'tddebtmaster_credit_term')
//	ll_leadtime = lds_debtdt.GetItemnumber(1, 'tddebtmaster_lead_time')
//	ls_addr = lds_debtdt.GetItemstring(1, 'tddebtmaster_debt_addr')
//	ls_payment_type = lds_debtdt.GetItemstring(1, 'tddebtmaster_payment_type')

end function

public function integer of_init_fin_info_debt (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype
long		ll_count, ll_val, i
integer	li_ret = 1
n_ds		lds_main, lds_detail, lds_debtdt
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean 	lb_err = false
dec		ldec_taxrate1, ldec_taxrate2

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_detail)
lds_detail.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradesrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
lds_detail.Reset()

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'debt_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลลูกค้า "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if

select mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
		debt_contact ,   
         payment_type,   
         phone,   
         fax,   
         credit_term,   
         lead_time,   
         price_level,   
         debt_addr||' '||' '||district_desc||' '||province_desc  as addr ,
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_pricelevel,
		:ls_addr,
		:ls_debttype
    from tddebtmaster,   
         mbucfprovince,   
         mbucfdistrict, 
         mbucfprename,  
		cmucfdropdownlist
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+))  and  
         ( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and   
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tddebtmaster.coop_id = :ls_branchid) and 
         ( tddebtmaster.debt_no = :ls_debtno)
			USING	itr_sqlca;

lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_debttype)

ls_sql = "  SELECT TDSTOCKSLIP.SLIPNET_AMT,   "
ls_sql += "  TDSTOCKSLIP.SLIP_NO,   "
ls_sql += "  TDSTOCKSLIP.SLIP_DATE,   "
ls_sql += "  TDSTOCKSLIP.DUE_DATE  "
ls_sql += "  FROM TDSTOCKSLIP   "
ls_sql += "  WHERE ( TDSTOCKSLIP.PAYMENTBY = 'LON' ) and  "
ls_sql += "  ( TDSTOCKSLIP.SLIP_STATUS = 8 ) AND "
ls_sql += "  ( TDSTOCKSLIP.SLIPTYPE_CODE = 'IV' ) and " 
ls_sql += "  ( TDSTOCKSLIP.DEBT_NO = '" + ls_debtno + "' ) "    
ls_sql += "  ORDER BY  TDSTOCKSLIP.SLIP_DATE "    

string	ls_refdocNo;datetime	ldt_DocDate, ldt_DueDate; dec{4}	ldec_Amt, ldec_total=0

lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//lds_debtdt = create n_ds
//lds_debtdt.Dataobject = 'd_tradesrv_info_debt1'
lds_debtdt.SetTransObject(itr_sqlca)
ll_count = lds_debtdt.retrieve()
if ll_count <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลรายการหนี้ของลูกหนี้  "+ls_debtno
//	lb_err = true ; Goto objdestroy
else
	for i = 1 to ll_count
//		ls_refdocNo = lds_debtdt.GetitemString( i, 'tdstockslip_slip_no')
//		ldt_DocDate = lds_debtdt.GetitemDatetime( i, 'tdstockslip_slip_date')
//		ldt_DueDate = lds_debtdt.GetitemDatetime( i, 'tdstockslip_due_date')
//		ldec_Amt = lds_debtdt.GetitemDecimal( i, 'tdstockslip_slipnet_amt')
		ls_refdocNo = lds_debtdt.GetitemString( i, 'slip_no')
		ldt_DocDate = lds_debtdt.GetitemDatetime( i, 'slip_date')
		ldt_DueDate = lds_debtdt.GetitemDatetime( i, 'due_date')
		ldec_Amt = lds_debtdt.GetitemDecimal( i, 'slipnet_amt')
		if IsNull(ldec_Amt)    then ldec_Amt = 0
		ldec_total += ldec_Amt
		lds_detail.insertrow(0)
		lds_detail.SetItem(i, 'seq_no', i)
		lds_detail.SetItem(i, 'refdoc_no', ls_refdocNo)
		lds_detail.SetItem(i, 'refdoc_date', ldt_DocDate)
		lds_detail.SetItem(i, 'due_date', ldt_DueDate)
		lds_detail.SetItem(i, 'debt_amt', ldec_Amt)
	next
	lds_main.SetItem(1, 'debt_amt', ldec_total)
end if


astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

if ll_count > 0 then
	astr_tradesrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
else
	astr_tradesrv_oper.xml_detail	= ''
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_debtdt) then destroy lds_debtdt
if isvalid(lds_detail) then destroy lds_detail
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_info_debt() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret

end function

protected function integer of_init_op_countstck_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;//string		ls_xmlmemdet, , ls_prodcd, 
string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
//long		ll_count
n_ds		lds_hd, lds_dt, lds_tl
//dec{2}	ldec_taxamt
boolean lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

//lds_tl= create n_ds
//lds_tl.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
//lds_tl.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )
//inv_dwxmliesrv.of_xmlimport( lds_tl, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_slipno = lds_hd.GetItemString(1, 'slip_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tdstockcount.coop_id = '" + ls_branchid + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockcount.slip_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sql = lds_dt.GetSQLSelect()
//ls_sql += " and tdstockslipdet.coop_id = '" + ls_branchid + "' and tdstockslipdet.sliptype_code = '" + ls_sliptype + "' and tdstockslipdet.slip_no = '" + ls_slipno + "'"
//ls_sql += " order by tdstockslipdet.seq_no"

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockcountdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockcountdet.slip_no = '" + ls_slipno + "'"
ls_sql += " order by tdstockcountdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
end if

//lds_hd.Sharedata(lds_tl)
//ls_sql = lds_tl.GetSQLSelect()
//if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tdstockslip.branch_id = '" + ls_branchid + "'"
//if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tdstockslip.sliptype_code = '" + ls_sliptype + "'"
//if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockslip.slip_no = '" + ls_slipno + "'"
//lds_tl.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")
//if lds_tl.retrieve() <= 0 then
////	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
////	lb_err = true ; Goto objdestroy
//end if

astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
//astr_tradsrv_op.xml_tailer	= string( lds_tl.describe( "Datawindow.data.XML" ) )

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
//if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_op_countstck_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_save_fin_credit_slip (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype, &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent, &
			ls_refdocno
datetime	ldtm_entrydate, ldtm_opedate, ldt_slipdate
boolean 	lb_err = false
long		ll_count, i
dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt


this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำรายตั้งหนี้(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำรายตั้งหนี้(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
if ls_sliptype = 'APC' then
	ls_debtno= lds_slip_head.getitemstring( 1, "cred_no" )
else
	ls_debtno= lds_slip_head.getitemstring( 1, "debt_no" )
end if
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
ls_branchid	= lds_slip_head.getitemstring( 1, "coop_id" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)

//ldt_slipdate =  lds_slip_head.getitemDatetime( 1, "slip_date" )
ldt_slipdate =  lds_slip_head.getitemDatetime( 1, "creditdoc_date" )
ls_slipno = lds_slip_head.getitemstring( 1, "creditdoc_no" )
if upper(trim(ls_slipno)) = 'AUTO' then
	try
		this.of_setsrvdoccontrol( true )
		ls_doccd = of_getdoctype(ls_branchid, ls_sliptype)
		ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , ls_doccd)	// get เลขที่เอกสาร
	catch( throwable lthw_getreqdoc )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	this.of_setdsmodify( lds_slip_head, 1, false )
	delete from tddebtcreditdet 
	where coop_id = :ls_branchid and
		creditdoc_no = :ls_slipno	
		using itr_sqlca;
end if

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "creditdoc_no", ls_slipno )
lds_slip_head.setitem( 1, "debt_status", 8 )

lds_slip_detail.SetFilter("chkflag = 'Y' ")
lds_slip_detail.Filter()
lds_slip_detail.RowsDiscard(1, lds_slip_detail.FilteredCount(), Filter!)
ll_count = lds_slip_detail.rowcount()
ldec_slipnetamt = 0
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "creditdoc_no", ls_slipno )
	lds_slip_detail.setitem( i, "credittype_code", ls_sliptype )
	lds_slip_detail.setitem( i, "seq_no", i )
	ldec_slipnetamt += lds_slip_detail.GetItemdecimal(i, 'debt_amt')
	ls_refdocno = lds_slip_detail.GetItemString( i, 'refdoc_no')
	update tdstockslip set slip_status = 0 where slip_no = :ls_refdocno using itr_sqlca;
next
lds_slip_head.setitem( 1, "debt_amt", ldec_slipnetamt)
of_post2debt ( ls_branchid,  ls_debtno, ls_slipno,  ldt_slipdate,  ls_sliptype,  ls_slipno,  ldec_slipnetamt,  ldec_slipnetamt,  ls_entryid)

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล SlipDet ไม่ได้"
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_fin_credit_slip() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

public function integer of_init_fin_info_cred1 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_xmlmemdet, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_credtype
long		ll_count, i
n_ds		lds_main, lds_debtdt, lds_detail
string	ls_debtnm, ls_contact, ls_phone, ls_fax
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลผู้จำหน่าย "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
  SELECT          "MBUCFPRENAME"."PRENAME_DESC"||"TDCREDMASTER"."CRED_NAME"||' '||"MBUCFPRENAME"."SUFFNAME_DESC" as crednm ,  
//		"TDCREDMASTER"."CRED_NAME",   
         "TDCREDMASTER"."CRED_CONTACT",   
         "TDCREDMASTER"."PAYMENT_TYPE",   
         cred_addr||' '||' '||district_desc||' '||province_desc as addr,   
         "TDCREDMASTER"."PHONE",   
         "TDCREDMASTER"."FAX",   
         "TDCREDMASTER"."CREDIT_TERM",   
         "TDCREDMASTER"."LEAD_TIME",   
         "CMUCFDROPDOWNLIST"."VALUE_DESC"  
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type, 
		:ls_addr,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_credtype
    FROM "TDCREDMASTER",   
         "MBUCFPROVINCE",   
         "MBUCFDISTRICT",   
         "CMUCFDROPDOWNLIST",   
         "MBUCFPRENAME"  
   WHERE ( tdcredmaster.cred_province = mbucfprovince.province_code (+)) and  
         ( tdcredmaster.cred_province = mbucfdistrict.province_code (+)) and  
         ( tdcredmaster.cred_district = mbucfdistrict.district_code (+)) and  
         ( tdcredmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and  
         ( tdcredmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tdcredmaster.coop_id =  :ls_branchid ) and 
         ( tdcredmaster.cred_no = :ls_debtno )
	USING	itr_sqlca;

lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_credtype)


astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_debtdt) then destroy lds_debtdt
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_info_cred1() " + ithw_exception.text
	throw ithw_exception
end if
return 1

end function

protected function integer of_save_op_slip2 (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype, &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent, ls_refdoc
datetime	ldtm_entrydate, ldtm_opedate, ldt_slipdate
boolean 	lb_err = false
long		ll_count, i
dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt


this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Saleorder(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย Saleorder(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
ls_branchid	= lds_slip_head.getitemstring( 1, "coop_id" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)
ldt_slipdate = lds_slip_head.getitemdatetime( 1, "slip_date" )
ls_slipno = lds_slip_head.getitemstring( 1, "slip_no" )
if mid(ls_sliptype, 1, 2) = 'AP' then
	ls_debtno = lds_slip_head.getitemstring( 1, "cred_no" )
elseif mid(ls_sliptype, 1, 2) = 'AR' then
	ls_debtno = lds_slip_head.getitemstring( 1, "debt_no" )
end if
if upper(trim(ls_slipno)) = 'AUTO' then
	try
		this.of_setsrvdoccontrol( true )
		ls_doccd = of_getdoctype(ls_branchid, ls_sliptype)
		ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , ls_doccd)	// get เลขที่เอกสาร
	catch( throwable lthw_getreqdoc )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	this.of_setdsmodify( lds_slip_head, 1, false )
	delete from tddebtincdet 
	where coop_id = :ls_branchid and
		debtincdoc_no = :ls_slipno	
		using itr_sqlca;
end if

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "debtbranch_id", ls_branchid )
lds_slip_head.setitem( 1, "slip_no", ls_slipno )
//lds_slip_head.setitem( 1, "sliptype_code", ls_sliptype )
//lds_slip_head.setitem( 1, "debt_no", ls_debtno )
//lds_slip_head.setitem( 1, "entry_id", ls_entryid )
//lds_slip_head.setitem( 1, "entry_date", ldtm_entrydate )

//lds_slip_head.setitem( 1, "slip_amt", ldec_slipamt )
//lds_slip_head.setitem( 1, "dwnpayment_percent", ldec_dwnpercent )
//lds_slip_head.setitem( 1, "dwnpayment_amt", ldec_dwnamt )
//lds_slip_head.setitem( 1, "disc_percent", ls_discpercent )
//lds_slip_head.setitem( 1, "disc_amt", ldec_discamt )
//lds_slip_head.setitem( 1, "amtbefortax", ldec_amtbefortax )
//lds_slip_head.setitem( 1, "taxtype_code", ls_taxtype )
//lds_slip_head.setitem( 1, "tax_rate", ldec_taxrate )
//lds_slip_head.setitem( 1, "tax_amt", ldec_taxamt )
//lds_slip_head.setitem( 1, "slipnet_amt", ldec_slipnetamt )
//lds_slip_head.setitem( 1, "remark", ls_remark )
//lds_slip_head.setitem( 1, "taxopt", ls_taxopt )
////lds_slip_head.setitem( 1, "debt_contact", ldtm_entrydate )

// ใส่เลขที่ Slip และลำดับที่ใน detail
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "debtincdoc_no", ls_slipno )
	lds_slip_detail.setitem( i, "sliptype_code", ls_sliptype )
	lds_slip_detail.setitem( i, "seq_no", i )
	if not isnull(lds_slip_detail.GetItemdecimal(i, 'debt_amt')) then &
		ldec_slipnetamt += lds_slip_detail.GetItemdecimal(i, 'debt_amt')
next
//ldec_slipnetamt = lds_slip_head.GetItemDecimal( 1, "debt_amt" )
lds_slip_head.SetItem( 1, "debt_amt", ldec_slipnetamt )
ls_refdoc = lds_slip_head.getitemstring( 1, "refdoc_no" )
of_post2debt ( ls_branchid,  ls_debtno, ls_refdoc,  ldt_slipdate,  ls_sliptype,  ls_slipno,  ldec_slipnetamt,  ldec_slipnetamt,  ls_entryid)

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if


// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล SlipDet ไม่ได้"
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_op_slip() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;

return 1
end function

public function integer of_init_fin_info_debt1 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype
long		ll_count, ll_val, i
integer	li_ret = 1
n_ds		lds_main, lds_detail, lds_debtdt
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean 	lb_err = false
dec		ldec_taxrate1, ldec_taxrate2

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'debt_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลลูกค้า "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if

select          mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
		debt_contact ,   
         payment_type,   
         phone,   
         fax,   
         credit_term,   
         lead_time,   
         price_level,   
         debt_addr||' '||' '||district_desc||' '||province_desc  as addr ,
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_pricelevel,
		:ls_addr,
		:ls_debttype
    from tddebtmaster,   
         mbucfprovince,   
         mbucfdistrict, 
         mbucfprename,  
		cmucfdropdownlist
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+))  and  
         ( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and   
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tddebtmaster.coop_id = :ls_branchid) and 
         ( tddebtmaster.debt_no = :ls_debtno)
			USING	itr_sqlca;

lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_debttype)

astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_info_debt() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret

end function

public function integer of_init_fin_arcredit (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype
long		ll_count, ll_val, i, ll_rowcount, ll_row
integer	li_ret = 1
n_ds		lds_main, lds_detail, lds_debtdt, lds_debtinc
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype, ls_arcreditNo, ls_refno
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate, ldt_duedate, ldt_slipdate0
boolean 	lb_err = false
dec		ldec_amt, ldec_amtbefortax, ldec_taxamt, ldec_transfee, ldec_DiscCount, ldec_debtamt

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_detail)
lds_detail.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradesrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'debt_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลลูกค้า "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
ls_arcreditNo = lds_main.GetItemString(1, 'refdoc_no')
if isnull(ls_arcreditNo) or trim(ls_arcreditNo) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลใบตั้งหนี้ "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

select  creditdoc_date, debt_amt
into	:ldt_slipdate, :ldec_amt
    from tddebtcredit
   WHERE ( tddebtcredit.coop_id = :ls_branchid) and 
         ( tddebtcredit.credittype_code = 'ARC') and
         ( tddebtcredit.debt_no = :ls_debtno) and
         ( tddebtcredit.creditdoc_no = :ls_arcreditNo) 
			USING	itr_sqlca;
			
lds_main.SetItem(lds_main.Getrow(), 'creditdoc_date', ldt_slipdate)
ldt_slipdate0 = lds_main.GetItemDatetime(lds_main.Getrow(), 'creditdoc_date')
//lds_main.SetItem(lds_main.Getrow(), 'debtdec_amt', ldec_amt)
//ldec_DiscCount = of_GetDisctCount(ls_branchid, ls_debtno)

ls_sql = "select tddebtcreditdet.refdoc_no, tdstockslip.slip_date, tdstockslip.due_date, tdstockslip.slipnet_amt, 	tdstockslip.paymentby, "
ls_sql += "tdstockslip.	tax_amt, tdstockslip.amtbefortax, nvl(tdstockslip.transportfee, 0) as tdstockslip_transportfee,  tddebtcreditdet.debt_amt "
ls_sql += "from		tddebtcreditdet, tdstockslip "
ls_sql += "where 	(tddebtcreditdet.coop_id = tdstockslip.coop_id) and "
ls_sql += "(tddebtcreditdet.refdoc_no = tdstockslip.slip_no) and "
ls_sql += "(tdstockslip.slip_status = 0) and "
ls_sql += "(tddebtcreditdet.coop_id = '" + ls_branchid + "') and "
ls_sql += "(tddebtcreditdet.credittype_code = 'ARC') and "
ls_sql += "(tddebtcreditdet.creditdoc_no = '" + ls_arcreditNo + "') "
ls_sql += "order by  tddebtcreditdet.refdoc_no, tdstockslip.slip_date " 

lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
lds_debtdt.SetTransObject(itr_sqlca)
if lds_debtdt.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูล "+" กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ll_rowcount = lds_debtdt.rowcount()
dec	ldec_allamt
string	ls_paymentby
ldec_allamt = 0 
lds_detail.Reset()
for i=1 to ll_rowcount
	ls_refno = lds_debtdt.GetItemString(i, 'tddebtcreditdet_refdoc_no')
	ldt_slipdate = lds_debtdt.GetItemDatetime(i, 'tdstockslip_slip_date')
	ldt_duedate = lds_debtdt.GetItemDatetime(i, 'tdstockslip_due_date')
	ldec_debtamt = lds_debtdt.GetItemDecimal(i, 'tddebtcreditdet_debt_amt')
	ldec_amt = lds_debtdt.GetItemDecimal(i, 'tdstockslip_slipnet_amt')
	if ldec_debtamt <> ldec_amt then 
		ldec_amtbefortax = ldec_debtamt
		ldec_amt = ldec_amtbefortax
		ldec_taxamt = 0
		ldec_transfee = 0
	else
		ldec_amtbefortax = lds_debtdt.GetItemDecimal(i, 'tdstockslip_amtbefortax')
		ldec_taxamt = lds_debtdt.GetItemDecimal(i, 'tdstockslip_tax_amt')
		ldec_transfee = lds_debtdt.GetItemDecimal(i, 'tdstockslip_transportfee')
	end if
	
	ldec_amt += of_GetIncDecAmt(ls_debtno, ls_arcreditNo, ls_refno)	
	ll_row = lds_detail.Insertrow(0)
	ls_paymentby = lds_debtdt.GetItemString(i, 'tdstockslip_paymentby')
	if ls_paymentby = 'LON' and ldt_slipdate0 <= ldt_duedate then
//		lds_detail.SetItem(ll_row, 'discount_amt', ldec_amtbefortax*ldec_DiscCount)
//		ldec_amt = ldec_amtbefortax + ldec_taxamt - ldec_amtbefortax*ldec_DiscCount + ldec_transfee
		ldec_amt = ldec_amtbefortax + ldec_taxamt  + ldec_transfee
	end if
	lds_detail.SetItem(ll_row, 'seq_no', ll_row)
	lds_detail.SetItem(ll_row, 'refdoc_no', ls_refno)
	lds_detail.SetItem(ll_row, 'slip_date', ldt_slipdate)
	lds_detail.SetItem(ll_row, 'due_date', ldt_duedate)
	lds_detail.SetItem(ll_row, 'transportfee', ldec_transfee)
	lds_detail.SetItem(ll_row, 'debt_amt', ldec_amt)
	lds_detail.SetItem(ll_row, 'tot_amt', ldec_amtbefortax)
	lds_detail.SetItem(ll_row, 'tax_amt', ldec_taxamt)
	lds_detail.SetItem(ll_row, 'pay_amt', ldec_amt)
	
	lds_detail.SetItem(ll_row, 'debtdecdet_status', 1)
	ldec_allamt +=ldec_amt
next
lds_main.SetItem(lds_main.Getrow(), 'debtdec_amt', ldec_allamt)

astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

astr_tradesrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
if isnull(astr_tradesrv_oper.xml_detail) or trim(astr_tradesrv_oper.xml_detail) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_detail
	li_ret = -4
	lb_err = true ; Goto objdestroy
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_debtdt) then destroy lds_debtdt
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_arcredit() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret

end function

protected function integer of_save_fin_arreceive (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype, &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent, ls_refdoc, &
			ls_payby
datetime	ldtm_entrydate, ldtm_opedate, ldt_slipdate
boolean 	lb_err = false, lb_new = false
long		ll_count, i
dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt, ldec_DebtForwardAmt, ldec_AvPayAmt

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Saleorder(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย Saleorder(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

///ls_sliptype= lds_slip_head.getitemstring( 1, "credittype_code" )

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
if ls_sliptype = 'APRC' then
	ls_debtno= lds_slip_head.getitemstring( 1, "cred_no" )
else
	ls_debtno= lds_slip_head.getitemstring( 1, "debt_no" )
end if
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
ls_branchid	= lds_slip_head.getitemstring( 1, "coop_id" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)
ldt_slipdate= lds_slip_head.getitemdatetime( 1, "slip_date" )
ls_slipno = lds_slip_head.getitemstring( 1, "debtdecdoc_no" )
if upper(trim(ls_slipno)) = 'AUTO' then
	try
		lb_new = true
		this.of_setsrvdoccontrol( true )
		ls_doccd = of_getdoctype(ls_branchid, ls_sliptype)
		ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , ls_doccd)	// get เลขที่เอกสาร
	catch( throwable lthw_getreqdoc )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	lb_new = false
	this.of_setdsmodify( lds_slip_head, 1, false )
	delete from tddebtdecdet 
	where coop_id = :ls_branchid and
		debtdectype_code = :ls_sliptype	and
		debtdecdoc_no = :ls_slipno	
		using itr_sqlca;
end if

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "debtdecdoc_no", ls_slipno )
lds_slip_head.setitem( 1, "debtdectype_code", ls_sliptype)

lds_slip_detail.SetFilter("trim(paymentby) <> '' or (not isnull(paymentby))")
lds_slip_detail.Filter()
lds_slip_detail.RowsDiscard(1, lds_slip_detail.FilteredCount(), Filter!)
ll_count = lds_slip_detail.rowcount()
ldec_slipnetamt = 0
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "debtdecdoc_no", ls_slipno )
	lds_slip_detail.setitem( i, "seq_no", i )
	lds_slip_detail.setitem( i, "debtdectype_code", ls_sliptype)
	lds_slip_detail.setitem( i, "debtbranch_id", ls_branchid )
	if not Isnull(lds_slip_detail.GetItemdecimal(i, 'pay_amt')) then ldec_slipnetamt += lds_slip_detail.GetItemdecimal(i, 'pay_amt')
	ldec_DebtForwardAmt = lds_slip_detail.GetItemNumber(i, 'debtforward_amt')
	ldec_AvPayAmt = lds_slip_detail.GetItemNumber(i, 'avpay_amt')
	if not Isnull(ldec_DebtForwardAmt) or ldec_DebtForwardAmt > 0 or not Isnull(ldec_AvPayAmt) or ldec_AvPayAmt > 0 then lds_slip_detail.setitem( i, "debtdecdet_status", 0 )
	ls_refdoc = lds_slip_detail.GetItemString( i, 'refdoc_no')
	update tdstockslip set slip_status = 1 where slip_no = :ls_refdoc using itr_sqlca;
next
lds_slip_head.setitem( 1, "debtdec_amt", ldec_slipnetamt)
//ldec_slipnetamt = lds_slip_head.GetItemDecimal( 1, "debtdec_amt" )
ls_refdoc = lds_slip_head.getitemstring( 1, "refdoc_no" )

if lb_new then  &
	of_post2debt ( ls_branchid,  ls_debtno, ls_slipno,  ldt_slipdate,  ls_sliptype,  ls_slipno,  ldec_slipnetamt,  ldec_slipnetamt,  ls_entryid)

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception   
end if

// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล SlipDet ไม่ได้"
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if
//update tddebtcredit set debt_status = 1 where branch_id = :ls_branchid and
//credittype_code = 'ARC' and creditdoc_no = :ls_refdoc using itr_sqlca;
//if itr_sqlca.SQLCode	<> 0 then 
//	lb_err = true
//end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_fin_arreceive() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

protected function integer of_save_fin_apreceive (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype, &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent, ls_refdoc
datetime	ldtm_entrydate, ldtm_opedate, ldt_slipdate
boolean 	lb_err = false, lb_new = false
long		ll_count, i
dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Saleorder(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย Saleorder(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

///ls_sliptype= lds_slip_head.getitemstring( 1, "credittype_code" )

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
if ls_sliptype = 'APC' or ls_sliptype = 'APRC' then
	ls_debtno= lds_slip_head.getitemstring( 1, "cred_no" )
else
	ls_debtno= lds_slip_head.getitemstring( 1, "debt_no" )
end if
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
ls_branchid	= lds_slip_head.getitemstring( 1, "coop_id" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)
ldt_slipdate = lds_slip_head.getitemdatetime( 1, "slip_date" )
ls_slipno = lds_slip_head.getitemstring( 1, "debtdecdoc_no" )
if upper(trim(ls_slipno)) = 'AUTO' then
	try
		this.of_setsrvdoccontrol( true )
		ls_doccd = of_getdoctype(ls_branchid, 'APRC') //ls_sliptype)
		ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , ls_doccd)	// get เลขที่เอกสาร
		lb_new = true
	catch( throwable lthw_getreqdoc )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	lb_new = false
	this.of_setdsmodify( lds_slip_head, 1, false )
	delete from tddebtdecdet 
	where coop_id = :ls_branchid and
		debtdectype_code = 'APRC'	and
		debtdecdoc_no = :ls_slipno	
		using itr_sqlca;
end if

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "debtdecdoc_no", ls_slipno )
lds_slip_head.setitem( 1, "debtdectype_code", 'APRC' )
//ldec_slipnetamt = lds_slip_head.GetItemDecimal( 1, "debtdec_amt" )
//ls_refdoc = lds_slip_head.getitemstring( 1, "refdoc_no" )
//of_post2debt ( ls_branchid,  ls_debtno, ls_refdoc,  ldt_slipdate,  ls_sliptype,  ls_slipno,  ldec_slipnetamt,  ldec_slipnetamt,  ls_entryid)

lds_slip_detail.SetFilter("chkflag = 'Y' ")
lds_slip_detail.Filter()
lds_slip_detail.RowsDiscard(1, lds_slip_detail.FilteredCount(), Filter!)
ll_count = lds_slip_detail.rowcount()
ldec_slipnetamt = 0
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "debtdecdoc_no", ls_slipno )
	lds_slip_detail.setitem( i, "seq_no", i )
	lds_slip_detail.setitem( i, "debtdectype_code", 'APRC' )
	lds_slip_detail.setitem( i, "debtbranch_id", ls_branchid )
	if not Isnull(lds_slip_detail.GetItemdecimal(i, 'pay_amt')) then ldec_slipnetamt += lds_slip_detail.GetItemdecimal(i, 'pay_amt')
	ls_refdoc = lds_slip_detail.GetItemString( i, 'refdoc_no')
	update tdstockslip set slip_status = 1 where slip_no = :ls_refdoc using itr_sqlca;
next
lds_slip_head.setitem( 1, "debtdec_amt", ldec_slipnetamt)
//ldec_slipnetamt = lds_slip_head.GetItemDecimal( 1, "debtdec_amt" )
//ls_refdoc = lds_slip_head.getitemstring( 1, "refdoc_no" )
if lb_new then  &
	of_post2debt ( ls_branchid,  ls_debtno, ls_slipno,  ldt_slipdate,  ls_sliptype,  ls_slipno,  ldec_slipnetamt,  ldec_slipnetamt,  ls_entryid)

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Tddebtdec ไม่ได้"
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Tddebtdecdet ไม่ได้"
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if
//update tddebtcredit set debt_status = 1 where branch_id = :ls_branchid and
//credittype_code = 'APC' and creditdoc_no = :ls_refdoc using itr_sqlca;
//if itr_sqlca.SQLCode	<> 0 then 
//	lb_err = true
//end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_fin_apreceive() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

public function integer of_init_fin_apcredit (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_xmlmemdet, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_credtype
long		ll_count
n_ds		lds_main, lds_debtdt, lds_tailer, lds_detail
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_refno, ls_taxtype
long		ll_creditterm, ll_leadtime, ll_rowcount, ll_row
datetime ldt_slipdate, ldt_duedate
boolean 	lb_err = false
integer	li_ret = 1, i, li_servicetax
dec		ldec_amt, ldec_servicetax, ldec_servicetaxamt, ldec_amtbefortax, ldec_taxrate, &
			ldec_taxamt, ldec_slipnet_amt

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_detail)
lds_detail.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradesrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_tailer = create n_ds
lds_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_tailer)
lds_tailer.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_tailer, astr_tradesrv_oper.xml_tailer ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลผู้จำหน่าย "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
select          "MBUCFPRENAME"."PRENAME_DESC"||"TDCREDMASTER"."CRED_NAME"||' '||"MBUCFPRENAME"."SUFFNAME_DESC" as crednm,  
//cred_name,   
         cred_contact,   
         payment_type,   
         cred_addr||' '||' '||district_desc||' '||province_desc  as addr, 
         phone,   
         fax,   
         credit_term,   
         lead_time,   
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type, 
		:ls_addr,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_credtype
    from tdcredmaster,   
         mbucfprovince,   
         mbucfdistrict, 
		cmucfdropdownlist,   
         "MBUCFPRENAME"  
   WHERE ( tdcredmaster.cred_province = mbucfprovince.province_code (+)) and  
         ( tdcredmaster.cred_province = mbucfdistrict.province_code (+)) and  
         ( tdcredmaster.cred_district = mbucfdistrict.district_code (+))  and  
         ( tdcredmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( tdcredmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tdcredmaster.coop_id =  :ls_branchid ) and 
         ( tdcredmaster.cred_no = :ls_debtno )
	USING	itr_sqlca;

ldt_slipdate = lds_main.GetItemDatetime(1, 'slip_date')

//ls_fax = lds_debtdt.GetItemString(1, 'validay')

//lds_main.SetItem(1, 'tdcredmaster_cred_name', ls_debtnm)
lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_credtype)

ls_sql = "select 	tddebtcredit.creditdoc_no, cred_no,tddebtcreditdet.refdoc_no, tdstockslip.slip_date, "
ls_sql += "tdstockslip.due_date, tdstockslip.slipnet_amt, slip_status, tdstockslip.amtbefortax	 "
ls_sql += "from		tddebtcredit, tddebtcreditdet, tdstockslip "
ls_sql += "where 	(tddebtcredit.coop_id = tddebtcreditdet.coop_id) and "
ls_sql += "(tddebtcredit.creditdoc_no = tddebtcreditdet.creditdoc_no) and "
ls_sql += "(tddebtcreditdet.coop_id = tdstockslip.coop_id) and "
ls_sql += "(tddebtcreditdet.refdoc_no = tdstockslip.slip_no) and "
ls_sql += "(tddebtcredit.debt_no = '" + ls_debtno + "') and "
ls_sql += "(tddebtcreditdet.coop_id = '" + ls_branchid + "') and "
ls_sql += "(tddebtcreditdet.credittype_code = 'APC') and "
ls_sql += "(tdstockslip.slip_status = 0) "
ls_sql += "order by  tddebtcreditdet.refdoc_no, tdstockslip.slip_date " 

lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
lds_debtdt.SetTransObject(itr_sqlca)
if lds_debtdt.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูล "+" กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if
//
ll_rowcount = lds_debtdt.rowcount()
string		ls_arcreditNo
dec	ldec_allamt
ldec_allamt = 0 
lds_detail.Reset()
for i=1 to ll_rowcount
	ls_arcreditNo = lds_debtdt.GetItemString(i, 'tddebtcredit_creditdoc_no')
	ls_refno = lds_debtdt.GetItemString(i, 'tddebtcreditdet_refdoc_no')
	ldt_slipdate = lds_debtdt.GetItemDatetime(i, 'tdstockslip_slip_date')
	ldt_duedate = lds_debtdt.GetItemDatetime(i, 'tdstockslip_due_date')
	ldec_amt = lds_debtdt.GetItemDecimal(i, 'tdstockslip_amtbefortax')
//	ldec_amt = lds_debtdt.GetItemDecimal(i, 'tdstockslip_slipnet_amt')
	ldec_amt += of_GetIncDecAmt(ls_debtno, ls_arcreditNo, ls_refno)	
	ll_row = lds_detail.Insertrow(0)
	lds_detail.SetItem(ll_row, 'seq_no', ll_row)
	lds_detail.SetItem(ll_row, 'refdoc_no', ls_refno)
	lds_detail.SetItem(ll_row, 'slip_date', ldt_slipdate)
	lds_detail.SetItem(ll_row, 'due_date', ldt_duedate)
	lds_detail.SetItem(ll_row, 'debt_amt', ldec_amt)
	lds_detail.SetItem(ll_row, 'pay_amt', ldec_amt)
	lds_detail.SetItem(ll_row, 'debtdecdet_status', 1)
	lds_detail.SetItem(ll_row, 'chkflag', 'Y')
	ldec_allamt +=ldec_amt
	lds_detail.SetItem(ll_row, 'chkall', 'Y')
next
select 	nvl(servicetax, 0), 'E', 7
into		:ldec_servicetax, :ls_taxtype, :ldec_taxrate
from		tdcredmaster
where	cred_no = :ls_debtno
using	itr_sqlca;
if ldec_servicetax > 0 then
	li_servicetax = 1
else
	li_servicetax = 0
end if
ldec_servicetaxamt = ldec_allamt*ldec_servicetax/100
ldec_amtbefortax = ldec_allamt - ldec_servicetaxamt
ldec_taxamt = ldec_allamt*ldec_taxrate/100
ldec_slipnet_amt = ldec_amtbefortax + ldec_taxamt

lds_main.SetItem(lds_main.Getrow(), 'debtdec_amt', ldec_allamt)
lds_main.SetItem(lds_main.Getrow(), 'isservicetax', li_servicetax)
lds_main.SetItem(lds_main.Getrow(), 'servicetax', ldec_servicetax)
lds_main.SetItem(lds_main.Getrow(), 'servicetaxamt', ldec_servicetaxamt)
lds_main.SetItem(lds_main.Getrow(), 'amtbefortax', ldec_amtbefortax)
lds_main.SetItem(lds_main.Getrow(), 'taxtype_code', ls_taxtype)
lds_main.SetItem(lds_main.Getrow(), 'tax_rate', ldec_taxrate)
lds_main.SetItem(lds_main.Getrow(), 'tax_amt', ldec_taxamt)
lds_main.SetItem(lds_main.Getrow(), 'slipnet_amt', ldec_slipnet_amt)

lds_tailer.SetItem(lds_tailer.Getrow(), 'debtdec_amt', ldec_allamt)
lds_tailer.SetItem(lds_tailer.Getrow(), 'isservicetax', li_servicetax)
lds_tailer.SetItem(lds_tailer.Getrow(), 'servicetax', ldec_servicetax)
lds_tailer.SetItem(lds_tailer.Getrow(), 'servicetaxamt', ldec_servicetaxamt)
lds_tailer.SetItem(lds_tailer.Getrow(), 'amtbefortax', ldec_amtbefortax)
lds_tailer.SetItem(lds_tailer.Getrow(), 'taxtype_code', ls_taxtype)
lds_tailer.SetItem(lds_tailer.Getrow(), 'tax_rate', ldec_taxrate)
lds_tailer.SetItem(lds_tailer.Getrow(), 'tax_amt', ldec_taxamt)
lds_tailer.SetItem(lds_tailer.Getrow(), 'slipnet_amt', ldec_slipnet_amt)

astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

astr_tradesrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
if isnull(astr_tradesrv_oper.xml_detail) or trim(astr_tradesrv_oper.xml_detail) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_detail
	li_ret = -4
	lb_err = true ; Goto objdestroy
end if

astr_tradesrv_oper.xml_tailer	= inv_dwxmliesrv.of_xmlexport( lds_tailer )
if isnull(astr_tradesrv_oper.xml_tailer) or trim(astr_tradesrv_oper.xml_tailer) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_detail
	li_ret = -5
	lb_err = true ; Goto objdestroy
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_tailer) then destroy lds_tailer
if isvalid(lds_debtdt) then f_destroydatastore(lds_debtdt)
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_cred1() " + ithw_exception.text
	throw ithw_exception
end if
return 1


end function

public function integer of_init_fin_apcredit2 (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype
long		ll_count, ll_val, i, ll_rowcount, ll_row
integer	li_ret = 1
n_ds		lds_main, lds_detail, lds_debtdt
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype, ls_arcreditNo, ls_refno
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate, ldt_duedate
boolean 	lb_err = false
dec		ldec_amt

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_detail)
lds_detail.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradesrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลลูกค้า "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
ls_arcreditNo = lds_main.GetItemString(1, 'refdoc_no')
if isnull(ls_arcreditNo) or trim(ls_arcreditNo) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลใบตั้งหนี้ "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

select  creditdoc_date, debt_amt
into	:ldt_slipdate, :ldec_amt
    from tddebtcredit
   WHERE ( tddebtcredit.coop_id = :ls_branchid) and 
         ( tddebtcredit.credittype_code = 'ARC') and
         ( tddebtcredit.debt_no = :ls_debtno) and
         ( tddebtcredit.creditdoc_no = :ls_arcreditNo) 
			USING	itr_sqlca;
			
//lds_main.SetItem(lds_main.Getrow(), 'creditdoc_date', ldt_slipdate)
lds_main.SetItem(lds_main.Getrow(), 'slip_amt', ldec_amt)

ls_sql = "select tddebtcreditdet.refdoc_no, tdstockslip.slip_date, tdstockslip.due_date, tdstockslip.slipnet_amt	 "
ls_sql += "from		tddebtcreditdet, tdstockslip "
ls_sql += "where 	(tddebtcreditdet.coop_id = tdstockslip.coop_id) and "
ls_sql += "(tddebtcreditdet.refdoc_no = tdstockslip.slip_no) and "
ls_sql += "(tddebtcreditdet.coop_id = '" + ls_branchid + "') and "
ls_sql += "(tddebtcreditdet.credittype_code = 'APC') and "
ls_sql += "(tddebtcreditdet.creditdoc_no = '" + ls_arcreditNo + "')"

lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
lds_debtdt.SetTransObject(itr_sqlca)
if lds_debtdt.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูล "+" กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if
//
ll_rowcount = lds_debtdt.rowcount()

lds_detail.Reset()
for i=1 to ll_rowcount
	ls_refno = lds_debtdt.GetItemString(i, 'tddebtcreditdet_refdoc_no')
	ldt_slipdate = lds_debtdt.GetItemDatetime(i, 'tdstockslip_slip_date')
	ldt_duedate = lds_debtdt.GetItemDatetime(i, 'tdstockslip_due_date')
	ldec_amt = lds_debtdt.GetItemDecimal(i, 'tdstockslip_slipnet_amt')
	
	ll_row = lds_detail.Insertrow(0)
	lds_detail.SetItem(ll_row, 'seq_no', ll_row)
	lds_detail.SetItem(ll_row, 'refdoc_no', ls_refno)
	lds_detail.SetItem(ll_row, 'slip_date', ldt_slipdate)
	lds_detail.SetItem(ll_row, 'due_date', ldt_duedate)
	lds_detail.SetItem(ll_row, 'debt_amt', ldec_amt)
	lds_detail.SetItem(ll_row, 'pay_amt', ldec_amt)
	lds_detail.SetItem(ll_row, 'debtdecdet_status', 1)
	
next

astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

astr_tradesrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
if isnull(astr_tradesrv_oper.xml_detail) or trim(astr_tradesrv_oper.xml_detail) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_detail
	li_ret = -4
	lb_err = true ; Goto objdestroy
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_debtdt) then destroy lds_debtdt
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_arcredit() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret

end function

public function integer of_init_info_store (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_branchid, ls_storeid, ls_sql, ls_prodno, ls_prodnm, ls_unitcd
n_ds		lds_hd, lds_dt, lds_tl
boolean lb_err = false
long		ll_rowcount, ll_row, i

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_detail)
lds_dt.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradesrv_oper.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradesrv_oper.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_storeid = lds_hd.GetItemString(1, 'store_id')

ls_sql = "select tdstockmaster.product_no, tdproductmaster.product_desc, tdproductmaster.unit_code, tdstockmaster.balance_qty "
ls_sql += " from tdstockmaster, tdproductmaster "
ls_sql += " where tdstockmaster.coop_id = tdproductmaster.coop_id and "
ls_sql += " tdstockmaster.product_no = tdproductmaster.product_no and "
ls_sql += " tdstockmaster.coop_id = '" + ls_branchid + "' and tdstockmaster.store_id = '" + ls_storeid + "'"
ls_sql += " order by tdstockmaster.product_no"

lds_tl = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//lds_debtdt = create n_ds
//lds_debtdt.Dataobject = 'd_tradesrv_info_debt1'
lds_tl.SetTransObject(itr_sqlca)
ll_rowcount = lds_tl.retrieve()

for i=1 to ll_rowcount
	ls_prodno = lds_tl.GetItemString(i, 'tdstockmaster_product_no')
	ls_prodnm = lds_tl.GetItemString(i, 'tdproductmaster_product_desc')
	ls_unitcd = lds_tl.GetItemString(i, 'tdproductmaster_unit_code')
	ll_row = lds_dt.insertrow(0)
	lds_dt.Setitem(ll_row, 'coop_id', ls_branchid)
	lds_dt.Setitem(ll_row, 'seq_no', ll_row)
	lds_dt.Setitem(ll_row, 'product_no', ls_prodno)
	lds_dt.Setitem(ll_row, 'unit_code', ls_unitcd)
	lds_dt.Setitem(ll_row, 'product_desc', ls_prodnm)
//	lds_dt.Setitem(ll_row, 'cost_amt', ll_row)
next
//if lds_dt.retrieve() <= 0 then
////	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
//end if

astr_tradesrv_oper.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
astr_tradesrv_oper.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
//astr_tradsrv_op.xml_tailer	= string( lds_tl.describe( "Datawindow.data.XML" ) )

//objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
//if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_store() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_save_verifycountstk (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype = 'VCS', &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent
datetime	ldtm_entrydate, ldtm_opedate
boolean 	lb_err = false
long		ll_count, i
dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt

this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Saleorder(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย Saleorder(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_branchid	= lds_slip_head.getitemstring( 1, "coop_id" )
ls_storeid= lds_slip_head.getitemstring( 1, "store_id" )
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)
ls_slipno = lds_slip_head.getitemstring( 1, "slip_no" )
ls_sliptype = lds_slip_head.getitemstring( 1, "sliptype_code" )
if upper(trim(ls_slipno)) = 'AUTO' then
	try
		this.of_setsrvdoccontrol( true )
		ls_doccd = of_getdoctype(ls_branchid, ls_sliptype)
		ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , ls_doccd)	// get เลขที่เอกสาร
	catch( throwable lthw_getreqdoc )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	this.of_setdsmodify( lds_slip_head, 1, false )
	delete from tdstockcountdet 
	where coop_id = :ls_branchid and
		slip_no = :ls_slipno	
		using itr_sqlca;
end if

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "slip_no", ls_slipno )
lds_slip_head.setitem( 1, "store_id", ls_storeid )
lds_slip_head.setitem( 1, "entry_id", ls_entryid )
lds_slip_head.setitem( 1, "entry_date", ldtm_entrydate )
lds_slip_head.setitem( 1, "remark", ls_remark )

// ใส่เลขที่ Slip และลำดับที่ใน detail
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "slip_no", ls_slipno )
	lds_slip_detail.setitem( i, "seq_no", i )
	lds_slip_detail.setitem( i, "sliptype_code", ls_sliptype )
next

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้ "
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล SlipDet ไม่ได้ "
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_verifycountstk() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;

return 1
end function

public function integer of_init_verifycountstk (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
n_ds		lds_hd, lds_dt
boolean lb_err = false


this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_slipno = lds_hd.GetItemString(1, 'slip_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockcount.coop_id = '" + ls_branchid + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockcount.slip_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sql = lds_dt.GetSQLSelect()

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockcountdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockcountdet.slip_no = '" + ls_slipno + "'"
ls_sql += " order by tdstockcountdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
end if

astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_verifycountstk() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_fin_credit_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
//long		ll_count
n_ds		lds_hd, lds_dt, lds_tl
//dec{2}	ldec_taxamt
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
ls_slipno = lds_hd.GetItemString(1, 'creditdoc_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtcredit.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtcredit.credittype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtcredit.creditdoc_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if
astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )

ls_sql = lds_dt.GetSQLSelect()

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tddebtcreditdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtcreditdet.credittype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtcreditdet.creditdoc_no = '" + ls_slipno + "'"
ls_sql += " order by tddebtcreditdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
	astr_tradsrv_op.xml_detail	= ''
else
	astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
end if


objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
//if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_credit_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_fin_info_credit (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet, ls_refdocno
			
datetime	ldt_refdocdate, ldt_duedate			
long		ll_ct, ll_dd, ll_vd, li_seqno, ll_row
long		ll_rowcount, i
n_ds		lds_hd, lds_dt, lds_tl
dec{2}	ldec_amt
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = astr_tradsrv_op.xml_list
//ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
//ls_sliptype = lds_hd.GetItemString(1, 'credittype_code')
ls_slipno = lds_hd.GetItemString(1, 'refdoc_no')

//ls_sql = lds_hd.GetSQLSelect()
//if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtcredit.branch_id = '" + ls_branchid + "'"
//if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtcredit.credittype_code = '" + ls_sliptype + "'"
//if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtcredit.creditdoc_no = '" + ls_slipno + "'"
//lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")
//
//if lds_hd.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
//end if

//ls_sql = lds_dt.GetSQLSelect()
//
//if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tddebtcreditdet.branch_id = '" + ls_branchid + "'"
//if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtcreditdet.credittype_code = '" + ls_sliptype + "'"
//if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtcreditdet.creditdoc_no = '" + ls_slipno + "'"
//ls_sql += " order by tddebtcreditdet.seq_no"
//lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

//if lds_dt.retrieve() <= 0 then
////	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
////	lb_err = true ; Goto objdestroy
//end if
ls_sql = "select tddebtcreditdet.seq_no, tddebtcreditdet.refdoc_no, tddebtcreditdet.refdoc_date, tddebtcreditdet.due_date, tddebtcreditdet.debt_amt "
ls_sql += " from tddebtcreditdet "
ls_sql += " where tddebtcreditdet.coop_id ='"  + ls_branchid + "'"
ls_sql += " and tddebtcreditdet.credittype_code = '" + ls_sliptype + "'"
ls_sql += " and tddebtcreditdet.creditdoc_no = '" + ls_slipno + "'"
lds_tl = f_newdatastoresql(itr_sqlca, ls_sql) 

//"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//lds_debtdt = create n_ds
//lds_debtdt.Dataobject = 'd_tradesrv_info_debt1'
lds_tl.SetTransObject(itr_sqlca)
ll_rowcount = lds_tl.retrieve()
lds_dt.Reset()
for i=1 to ll_rowcount
	li_seqno = lds_tl.GetItemnumber(i, 'seq_no')
	ls_refdocno = lds_tl.GetItemString(i, 'refdoc_no')
	ldt_refdocdate = lds_tl.GetItemDatetime(i, 'refdoc_date')
	ldt_duedate = lds_tl.GetItemDatetime(i, 'due_date')
	ldec_amt = lds_tl.GetItemDecimal(i, 'debt_amt')
	ll_row = lds_dt.insertrow(0)
	lds_dt.Setitem(ll_row, 'coop_id', ls_branchid)
	lds_dt.Setitem(ll_row, 'seq_no', ll_row)
	lds_dt.Setitem(ll_row, 'refdoc_no', ls_refdocno)
	lds_dt.Setitem(ll_row, 'slip_date', ldt_refdocdate)
	lds_dt.Setitem(ll_row, 'due_date', ldt_duedate)
	lds_dt.Setitem(ll_row, 'slipnet_amt', ldec_amt)
////	lds_dt.Setitem(ll_row, 'cost_amt', ll_row)
next

astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
astr_tradsrv_op.xml_tailer	= string( lds_dt.describe( "Datawindow.data.XML" ) )

//objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_credit_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_fin_dncn_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
n_ds		lds_hd, lds_dt, lds_tl
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
ls_slipno = lds_hd.GetItemString(1, 'slip_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtinc.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtinc.debtinctype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtinc.debtincdoc_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
end if

ls_sql = lds_dt.GetSQLSelect()

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtincdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtincdet.debtinctype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtincdet.debtincdoc_no = '" + ls_slipno + "'"
ls_sql += " order by tddebtincdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
	astr_tradsrv_op.xml_detail	= ''
else
	astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
end if


objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
//if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_dncn_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_getslipdetail ();
return 1

end function

public function integer of_init_info_slipis (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_Proddsc, ls_uncd, ls_discpercent, ls_taxtype, ls_branchid, ls_slipTypeRef, ls_slipNo, ls_prodcd, ls_sql, ls_refno, ls_debtno, ls_taxopt, ls_slipType
long		ll_row, ll_rowcount, i
n_ds		lds_header, lds_detail, lds_proddt, lds_tailer
dec{4}	ldec_discamt, ldec_amtbefortax, ldec_taxrate, ldec_Netamt, ldec_itemqty, ldec_price, ldec_slipamt, ldec_taxamt, ldec_slipnetamt
boolean 	lb_err = false
integer	li_ret = 1
string		ls_debtnm, ls_contact, ls_payment_type, ls_phone, ls_fax, ls_pricelevel, ls_addr, ls_debttype, ls_credno, ls_credtype, ls_crednm
long		ll_creditterm, ll_leadtime
datetime ld_duedate			

this.of_setsrvdwxmlie( true )
lds_header = create n_ds
lds_header.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_header.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_header, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) < 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_header.GetItemString(lds_header.Getrow(), 'coop_id')
ls_slipTypeRef = astr_tradsrv_oper.xml_list 
ls_slipNo = lds_header.GetItemString(lds_header.Getrow(), 'refdoc_no')
ls_slipType = lds_header.GetItemString(lds_header.Getrow(), 'sliptype_code')

ls_sql = "select 	slip_no, tdstockslipdet.product_no, tdstockslipdet.product_desc, item_qty, product_price, tdstockslipdet.unit_code, disc_percent, disc_amt, amtbefortax, taxtype_code, tax_rate, net_amt "
ls_sql += "from		tdstockslipdet, tdproductmaster "
ls_sql += "where 	(tdstockslipdet.coop_id = tdproductmaster.coop_id) and "
ls_sql += "(tdstockslipdet.product_no = tdproductmaster.product_no) and "
ls_sql += "(tdstockslipdet.coop_id = '" + ls_branchid + "') and "
ls_sql += "(sliptype_code = '" + ls_slipTypeRef + "') and "
ls_sql += "(slip_no = '" + ls_slipNo + "')"

lds_proddt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
lds_proddt.SetTransObject(itr_sqlca)
if lds_proddt.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลรายการสินค้า "+" กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

//
ll_rowcount = lds_proddt.rowcount()

lds_detail.Reset()
for i=1 to ll_rowcount
	ls_refno = lds_proddt.GetItemString(i, 'tdstockslipdet_slip_no')
	ls_prodcd = lds_proddt.GetItemString(i, 'tdstockslipdet_product_no')
	ls_Proddsc = lds_proddt.GetItemString(i, 'tdstockslipdet_product_desc')
	ldec_itemqty = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_item_qty')
	ldec_price = lds_proddt.GetItemdecimal(i, 'tdstockslipdet_product_price')
	ls_uncd = lds_proddt.GetItemString(i, 'tdstockslipdet_unit_code')

//	ls_refno = lds_proddt.GetItemString(i, 'slip_no')
//	ls_prodcd = lds_proddt.GetItemString(i, 'product_no')
//	ls_Proddsc = lds_proddt.GetItemString(i, 'product_desc')
//	ldec_itemqty = lds_proddt.GetItemdecimal(i, 'item_qty')
//	ldec_price = lds_proddt.GetItemdecimal(i, 'product_price')
//	ls_uncd = lds_proddt.GetItemString(i, 'unit_code')
//	ls_discpercent = lds_proddt.GetItemString(i, 'disc_percent')
//	ldec_discamt = lds_proddt.GetItemdecimal(i, 'disc_amt')
//	ldec_amtbefortax = lds_proddt.GetItemdecimal(i, 'amtbefortax')
//	ls_taxtype = lds_proddt.GetItemString(i, 'taxtype_code')
//	ldec_taxrate = lds_proddt.GetItemdecimal(i, 'tax_rate')
//	ldec_Netamt = lds_proddt.GetItemdecimal(i, 'net_amt')

	ll_row = lds_detail.Insertrow(0)
	lds_detail.SetItem(ll_row, 'seq_no', i)
	lds_detail.SetItem(ll_row, 'coop_id', ls_branchid)
	lds_detail.SetItem(ll_row, 'sliptype_code', ls_slipType)
	lds_detail.SetItem(ll_row, 'slip_no', ls_slipNo)
	lds_detail.SetItem(ll_row, 'product_no', ls_prodcd)
	lds_detail.SetItem(ll_row, 'product_desc', ls_Proddsc)
	lds_detail.SetItem(ll_row, 'item_qty', ldec_itemqty)
	lds_detail.SetItem(ll_row, 'product_price', ldec_price)
	lds_detail.SetItem(ll_row, 'unit_code', ls_uncd)
next

astr_tradsrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_header )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )

objdestroy:
if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_header) then destroy lds_header

this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = string(li_ret) + "n_cst_tradesrv_operate.of_init_info_slipIS() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_info_product_vcs (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_xmlmemdet, ls_sql, ls_prodcd, ls_branchid, ls_prodnm, ls_uncd, ls_storeid, ls_taxtype
long		ll_row, ll_rowcount, i
n_ds		lds_header, lds_detail
dec{2}	ldec_oldqty, ldec_costamt, ldec_balqty
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_header = create n_ds
lds_header.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_header.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_header, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ls_storeid = lds_header.GetItemString(lds_header.GetRow(), 'store_id')

ll_rowcount = lds_detail.rowcount()
for i=1 to ll_rowcount
	ls_branchid = lds_detail.GetItemString(i, 'coop_id')
	ls_prodcd = lds_detail.GetItemString(i, 'product_no')
	of_GetProductInfo(ls_branchid, ls_storeid, ls_prodcd, ls_prodnm, ls_uncd, ldec_oldqty, ldec_costamt, ldec_balqty)
		
	lds_detail.SetItem(i, 'product_desc', ls_prodnm)
	lds_detail.SetItem(i, 'unit_code', ls_uncd)
//	lds_detail.SetItem(i, 'old_qty', ldec_oldqty)
next

astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )

objdestroy:
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_header) then destroy lds_header
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product_adj() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_post2stock (string as_branchid, string as_storeid, string as_prodcd, string as_sliptype, string as_slipno, datetime adt_slipdate, decimal adec_qty, decimal adec_price);string		ls_lotno
dec		ldec_balqty

adec_qty *= of_GetOprFlag(as_sliptype)

if adec_qty <> 0 then
	// ถ้ารับสินค้าไม่มีให้ insert มี ให้ update
//	ค่ายอดคงเหลือส่งมาทุก function 
	if of_post2stockmaster (as_branchid, as_storeid, as_prodcd, adec_qty, adec_price, ldec_balqty) < 0 then return -1
	// ถ้ารับสินค้าให้ insert Gen Lot , รับเข้า ส่งคืนให้ใช้ lot เดิม
	if of_post2stocklot (as_branchid, as_storeid, as_slipno, as_sliptype, adt_slipdate, as_prodcd, adec_qty, ls_lotno) < 0 then return -1
	if of_post2stockstmt (as_branchid, as_slipno, as_sliptype, adt_slipdate, as_storeid, as_prodcd, adec_qty, adec_price, ls_lotno, ldec_balqty) < 0 then return -1
end if
return 1
end function

protected function integer of_save_op_stockslip (ref str_tradesrv_oper astr_trsrv_oper) throws throwable;n_ds 		lds_slip_head, lds_slip_detail, lds_slip_tailer
string 	ls_xmlheader , ls_xmldetail, ls_xmltailer, ls_slipno, ls_branchid, ls_sliptype, &
			ls_storeid, ls_debtno, ls_entryid, ls_doccd, ls_taxtype, ls_remark, ls_taxopt, ls_discpercent, ls_prodcd, ls_DocrefNo
datetime	ldtm_entrydate, ldtm_opedate, ldt_slipdate
boolean 	lb_err = false
long		ll_count, i
dec		ldec_slipamt, ldec_dwnpercent, ldec_dwnamt, ldec_discamt, &
			ldec_amtbefortax, ldec_taxrate, ldec_taxamt, ldec_slipnetamt, ldec_qty, ldec_price, ldec_transportfee


this.of_setsrvdwxmlie( true )
lds_slip_head = create n_ds
lds_slip_head.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_header)
lds_slip_head.settransobject( itr_sqlca )

lds_slip_detail = create n_ds
lds_slip_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_detail)
lds_slip_detail.settransobject( itr_sqlca )

lds_slip_tailer = create n_ds
lds_slip_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_trsrv_oper.xml_tailer)
lds_slip_tailer.settransobject( itr_sqlca )

ls_xmlheader		= astr_trsrv_oper.xml_header
ls_xmldetail			= astr_trsrv_oper.xml_detail
ls_xmltailer			= astr_trsrv_oper.xml_tailer

lds_slip_head.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_head , ls_xmlheader ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลใบทำราย Saleorder(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_slip_detail.reset()
if inv_dwxmliesrv.of_xmlimport( lds_slip_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย Saleorder(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_sliptype= trim(lds_slip_head.getitemstring( 1, "sliptype_code" ))

//if not (ls_slipType = 'SR' or ls_slipType = 'PR' or ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS' or ls_slipType = 'RC' or ls_slipType = 'REC'  ) then
//if not (ls_slipType = 'SR' or ls_slipType = 'PR' or ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS' or ls_slipType = 'REC'  ) then
//if not (ls_slipType = 'PR' or ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS' or ls_slipType = 'REC'  ) then
if not (ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS' or ls_slipType = 'REC'  ) then
	lds_slip_tailer.reset()
	if inv_dwxmliesrv.of_xmlimport( lds_slip_tailer , ls_xmltailer ) < 1 then
		ithw_exception.text = "~r~nพบข้อผิดพลาดในการนำเข้าข้อมูลรายละเอียดใบทำราย (0.3)"
		ithw_exception.text += "~r~nกรุณาตรวจสอบ"
		lb_err = true ; Goto objdestroy
	end if
end if

// ตรวจเช็คจำนวนแถว
ll_count		= lds_slip_detail.rowcount()
if ll_count <= 0 then
	return 0
end if

ls_sliptype= lds_slip_head.getitemstring( 1, "sliptype_code" )
//ls_storeid= lds_slip_head.getitemstring( 1, "store_id" )
ls_debtno= lds_slip_head.getitemstring( 1, "debt_no" )
ls_entryid= lds_slip_head.getitemstring( 1, "entry_id" )
ls_branchid	= lds_slip_head.getitemstring( 1, "coop_id" )
ldt_slipdate = lds_slip_head.getitemDateTime( 1, "slip_date" )
ldtm_entrydate	= f_GetCurrentDate(inv_transection)
if isnull(ls_storeid) or trim(ls_storeid) = '' then ls_storeid = '001'

//if not (ls_slipType = 'SR' or ls_slipType = 'PR' or ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS' or ls_slipType = 'RC' or ls_slipType = 'REC'  ) then
//if not (ls_slipType = 'SR' or ls_slipType = 'PR' or ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS'  or ls_slipType = 'REC'  ) then
//if not (ls_slipType = 'PR' or ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS'  or ls_slipType = 'REC'  ) then
if not ( ls_slipType = 'AJI' or ls_slipType = 'AJD' or ls_slipType = 'IS'  or ls_slipType = 'REC'  ) then
	ldec_slipamt = lds_slip_tailer.getitemDecimal( 1, "slip_amt" )
	ldec_dwnpercent = lds_slip_tailer.getitemDecimal( 1, "dwnpayment_percent" )
	ldec_dwnamt = lds_slip_tailer.getitemDecimal( 1, "dwnpayment_amt" )
	ls_discpercent = lds_slip_tailer.GetitemString( 1, "disc_percent" )
	ldec_discamt = lds_slip_tailer.getitemDecimal( 1, "disc_amt" )
	ldec_amtbefortax = lds_slip_tailer.getitemDecimal( 1, "amtbefortax" )
	ls_taxtype = lds_slip_tailer.getitemstring( 1, "taxtype_code" )
	ldec_taxrate = lds_slip_tailer.getitemDecimal( 1, "tax_rate" )
	ldec_taxamt = lds_slip_tailer.getitemDecimal( 1, "tax_amt" )
	ldec_slipnetamt = lds_slip_tailer.getitemDecimal( 1, "slipnet_amt" )
	ls_remark = lds_slip_tailer.getitemstring( 1, "remark" )
	ls_taxopt = lds_slip_tailer.getitemstring( 1, "taxopt" )
//	if ls_slipType = 'QT' or ls_slipType = 'SO' or ls_slipType = 'IV' then
	if trim(ls_slipType) = 'QT' or trim(ls_slipType) = 'SO' or trim(ls_slipType) = 'IV'  or trim(ls_slipType) = 'SR' then
		ldec_transportfee	= lds_slip_tailer.GetItemDecimal( 1, "transportfee" )
		lds_slip_head.SetItem( 1, "transportfee", ldec_transportfee )
	end if
end if

ls_slipno = lds_slip_head.getitemstring( 1, "slip_no" )
if upper(trim(ls_slipno)) = 'AUTO' then
	try
		this.of_setsrvdoccontrol( true )
		ls_doccd = of_getdoctype(ls_branchid, ls_sliptype)
		ls_slipno	= inv_docsrv.of_getnewdocno( ls_branchid , ls_doccd)	// get เลขที่เอกสาร
	catch( throwable lthw_getreqdoc )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	this.of_setdsmodify( lds_slip_head, 1, false )
	delete from tdstockslipdet 
	where coop_id = :ls_branchid and
		slip_no = :ls_slipno	
		using itr_sqlca;
end if

// ใส่เลขที่ Slip ใน Header
lds_slip_head.setitem( 1, "coop_id", ls_branchid )
lds_slip_head.setitem( 1, "slip_no", ls_slipno )
//lds_slip_head.setitem( 1, "store_id", ls_storeid )
lds_slip_head.setitem( 1, "sliptype_code", ls_sliptype )
lds_slip_head.setitem( 1, "debt_no", ls_debtno )
lds_slip_head.setitem( 1, "entry_id", ls_entryid )
lds_slip_head.setitem( 1, "entry_date", ldtm_entrydate )

lds_slip_head.setitem( 1, "slip_amt", ldec_slipamt )
lds_slip_head.setitem( 1, "dwnpayment_percent", ldec_dwnpercent )
lds_slip_head.setitem( 1, "dwnpayment_amt", ldec_dwnamt )
lds_slip_head.setitem( 1, "disc_percent", ls_discpercent )
lds_slip_head.setitem( 1, "disc_amt", ldec_discamt )
lds_slip_head.setitem( 1, "amtbefortax", ldec_amtbefortax )
lds_slip_head.setitem( 1, "taxtype_code", ls_taxtype )
lds_slip_head.setitem( 1, "tax_rate", ldec_taxrate )
lds_slip_head.setitem( 1, "tax_amt", ldec_taxamt )
lds_slip_head.setitem( 1, "slipnet_amt", ldec_slipnetamt )
lds_slip_head.setitem( 1, "remark", ls_remark )
lds_slip_head.setitem( 1, "taxopt", ls_taxopt )

// ใส่เลขที่ Slip และลำดับที่ใน detail
for i = 1 to ll_count
	lds_slip_detail.setitem( i, "coop_id", ls_branchid )
	lds_slip_detail.setitem( i, "slip_no", ls_slipno )
	lds_slip_detail.setitem( i, "sliptype_code", ls_sliptype )
	lds_slip_detail.setitem( i, "seq_no", i )
	ls_storeid= lds_slip_detail.getitemstring( i, "store_id" )
	ls_prodcd = lds_slip_detail.GetitemString( i, "product_no")
	ldec_qty = lds_slip_detail.GetitemDecimal( i, "item_qty" )
	ldec_price = lds_slip_detail.GetitemDecimal( i, "product_price" )
//post Statement
	if of_post2stock (ls_branchid, ls_storeid, ls_prodcd, ls_sliptype, ls_slipno, ldt_slipdate, ldec_qty, ldec_price) < 1 then 
		ithw_exception.text	= "Post to Stock ไม่ได้ " 
		ithw_exception.text	+= lds_slip_head.of_geterrormessage()
		lb_err = true; Goto objdestroy
	end if
next

// บันทึก Slip
if lds_slip_head.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล Slip ไม่ได้ "
	ithw_exception.text	+= lds_slip_head.of_geterrormessage()
	lb_err = true; Goto objdestroy
end if


// บันทึก Slip Detail
if lds_slip_detail.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูล SlipDet ไม่ได้ "
	ithw_exception.text	+= lds_slip_detail.of_geterrormessage()
	lb_err = true; Goto objdestroy
end if

ls_DocrefNo = lds_slip_head.GetitemString( 1, "refdoc_no" )
if not Isnull(ls_DocrefNo) or trim(ls_DocrefNo) <> '' then
	if ls_sliptype = 'SO'  then
		update 	tdstockslip set slip_status = 1 
		where  	sliptype_code = 'QT' and 
					slip_no = :ls_DocrefNo
		using 		itr_sqlca;
	elseif ls_sliptype = 'IV'  then
		update 	tdstockslip set slip_status = 1 
		where  	sliptype_code = 'SO' and 
					slip_no = :ls_DocrefNo
		using 		itr_sqlca;
	elseif ls_sliptype = 'SR'  then
		update 	tdstockslip set slip_status = 1 
		where  	sliptype_code = 'IV' and 
					slip_no = :ls_DocrefNo
		using 		itr_sqlca;
	elseif ls_sliptype = 'RC'  then
		update 	tdstockslip set slip_status = 1 
		where  	sliptype_code = 'PO' and 
					slip_no = :ls_DocrefNo
		using 		itr_sqlca;
	elseif ls_sliptype = 'PR'  then
		update 	tdstockslip set slip_status = 1 
		where  	sliptype_code = 'RC' and 
					slip_no = :ls_DocrefNo
		using 		itr_sqlca;
	end if
end if

astr_trsrv_oper.xml_header	= string( lds_slip_head.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_detail = string( lds_slip_detail.describe( "Datawindow.data.XML" ) )
astr_trsrv_oper.xml_tailer = string( lds_slip_tailer.describe( "Datawindow.data.XML" ) )

if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_slip_head) then destroy lds_slip_head
if isvalid(lds_slip_detail) then destroy lds_slip_detail
if isvalid(lds_slip_tailer) then destroy lds_slip_tailer
if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_save_op_stockslip() " + ithw_exception.text
	throw ithw_exception
end if
commit using itr_sqlca ;


return 1
end function

protected function integer of_init_op_stockslip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
n_ds		lds_hd, lds_dt, lds_tl
boolean lb_err = false


this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

lds_tl= create n_ds
lds_tl.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
lds_tl.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )
inv_dwxmliesrv.of_xmlimport( lds_tl, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
ls_slipno = lds_hd.GetItemString(1, 'slip_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tdstockslip.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tdstockslip.sliptype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockslip.slip_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

lds_hd.Sharedata(lds_tl)
if lds_hd.retrieve() <= 0 then
	astr_tradsrv_op.xml_header		= ''
	astr_tradsrv_op.xml_tailer	= ''
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )
	astr_tradsrv_op.xml_tailer	= string( lds_tl.describe( "Datawindow.data.XML" ) )
end if

ls_sql = lds_dt.GetSQLSelect()

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockslipdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tdstockslipdet.sliptype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tdstockslipdet.slip_no = '" + ls_slipno + "'"
ls_sql += " order by tdstockslipdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
	astr_tradsrv_op.xml_detail	= ''
else
	astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
end if

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_op_stockslip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_getoprflag (string as_sliptype);long		li_flag

select 	accnature_flag
into		:li_flag
from		tducfsliptype
where 	sliptype_code = :as_sliptype
using		itr_sqlca;
return li_flag
end function

public function integer of_post2stockmaster (string as_branchid, string as_storeid, string as_prodcd, decimal adec_qty, decimal adec_unitprice, ref decimal adec_balqty);// update วันทำรายการ
select 		balance_qty
into			:adec_balqty
from			tdstockmaster
where		coop_id	= :as_branchid and
				store_id	= :as_storeid and
				product_no	= :as_prodcd
using 			itr_sqlca ;
adec_balqty  += adec_qty

update		tdstockmaster
set				balance_qty	=  :adec_balqty,
				cost_amt		= :adec_unitprice,
				costavg_amt = :adec_unitprice
//				entry_date = sysdate,
//				entry_id = 
where		coop_id	= :as_branchid and
				store_id	= :as_storeid and
				product_no	= :as_prodcd
using 			itr_sqlca ;

//adec_balqty = adec_qty
if itr_sqlca.SQLNRows <= 0 then
	insert into tdstockmaster ( coop_id, store_id, product_no, product_status, minpoint_qty, balance_qty, bfbalance_qty , taxtype_code, tax_rate, cost_amt, costavg_amt)
	values (:as_branchid, :as_storeid, :as_prodcd, 1, null, :adec_qty, 0, 'E', 7, :adec_unitprice, :adec_unitprice) using itr_sqlca;
end if


return itr_sqlca.sqlcode

end function

public function integer of_post2stockstmt (string as_branchid, string as_slipno, string as_sliptype, datetime adt_slipdate, string as_storeid, string as_prodcd, decimal adec_qty, decimal adec_price, string as_lotno, decimal adec_balqty);long	li_seqno
dec	ldec_costamt

select			max ( seq_no )
into			:li_seqno
from			tdstockcard
where		coop_id		= :as_branchId and
				store_id			= :as_storeId and
				product_no		= :as_prodcd 
using itr_sqlca;

if itr_sqlca.sqlcode <> 0 or isnull( li_seqno ) then
	li_seqno = 0
end if

li_seqno	++

  INSERT INTO "TDSTOCKCARD"  
         ( "COOP_ID",   
           "STORE_ID",   
           "PRODUCT_NO",   
           "SEQ_NO",   
           "SLIP_NO",   
           "SLIPTYPE_CODE",   
           "SLIP_DATE",   
           "LOT_NO",   
           "ITEM_QTY",   
           "PRODUCT_PRICE",   
           "BALANCE_QTY",   
           "COST_AMT",   
           "STOCKCARD_STATUS" )  
  VALUES ( :as_branchid,   
           :as_storeid,   
           :as_prodcd,   
           :li_seqno,   
           :as_slipno,   
           :as_sliptype,   
           :adt_slipdate,   
           :as_lotno,   
           abs(:adec_qty),   
           :adec_price,   
           :adec_balqty,   
           :ldec_costamt,   
           1 )  using itr_sqlca;

return itr_sqlca.sqlcode
end function

public function integer of_post2stocklot (string as_branchid, string as_storeid, string as_slipno, string as_sliptype, datetime adt_slipdate, string as_prodcd, decimal adec_qty, ref string as_lotno);long		li_startno, li_endno
dec		ldec_cost, ldec_balqty
boolean	lb_err = false

// เอาราคาที่ซื้อมา
//if adec_qty > 0 then 
if as_sliptype = 'RC' or as_sliptype = 'AJI' or as_sliptype = 'REC' or as_sliptype = 'SR' then
	select 	max( to_number(lot_no) ) 
	into		:li_startno
	from 		tdstocklot 
	where 	coop_id		= :as_branchid and
				store_id			= :as_storeid and
				product_no 		= :as_prodcd
	using 		itr_sqlca;
	if isnull(li_startno) 	then li_startno = 0
	li_startno ++
	as_lotno = string(li_startno)

  INSERT INTO "TDSTOCKLOT"  
         ( "COOP_ID",   
           "STORE_ID",   
           "PRODUCT_NO",   
           "LOT_NO",   
           "LOT_DATE",   
           "LOT_QTY",   
           "PRODUCT_COST",   
           "BALANCE_QTY",   
           "START_NO",   
           "END_NO",   
           "REFDOC_NO",   
           "STOCKLOT_STATUS" )  
  VALUES ( :as_branchid,   
           :as_storeid,   
           :as_prodcd,   
           :as_lotno,   
           :adt_slipdate,   
           abs(:adec_qty),   
           :ldec_cost,   
           :ldec_balqty,   
           :li_startno,   
           :li_endno,   
           :as_slipno,   
           1 )  using 		itr_sqlca;
elseif as_sliptype = 'IS' or as_sliptype = 'AJD' or as_sliptype = 'SO'  or as_sliptype = 'PR'  then
// loop update  ลดยอดจำนวนสินค้าทีละ lot จนกว่าจะหมด 


end if

if itr_sqlca.sqlcode <> 0 then
	messagebox( "นำเ้ข้าข้อมูล ststocklot", "ไม่สามารถ ทำการ insert ข้อมูลได้ ~r~n กรุณาเซฟภาพแล้วติดต่อโปรแกรมเมอร์ ~r~n " + itr_sqlca.SQLERRTEXT + " ", stopsign! )
	rollback using itr_sqlca;
	return -1
end if

return 1
end function

public function integer of_post2debtmaster (string as_branchid, string as_debtno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, ref decimal adec_balamt, string as_entryid);
if mid(as_sliptype, 1, 2) = 'AR' then
	update		tddebtmaster
	set				debt_amt	=  nvl(debt_amt, 0) + :adec_slipamt,
					creditbalance_amt = credit_amt - (nvl(debt_amt, 0) + :adec_slipamt),
					entry_id = :as_entryid, 
					entry_date = :adt_slipdate
	where		coop_id	= :as_branchid and
					debt_no	= :as_debtno
	using 			itr_sqlca ;
elseif mid(as_sliptype, 1, 2) = 'AP' then
	update		tdcredmaster
	set				cred_amt	=  nvl(cred_amt, 0) + :adec_slipamt,
					creditbalance_amt = credit_amt - (nvl(cred_amt, 0) + :adec_slipamt),
					entry_id = :as_entryid, 
					entry_date = :adt_slipdate
	where		coop_id	= :as_branchid and
					cred_no	= :as_debtno
	using 			itr_sqlca ;
end if
return itr_sqlca.sqlcode


//if itr_sqlca.SQLNRows <= 0 then
//	insert into tddebtmaster ( branch_id, store_id, product_no, product_status, minpoint_qty, balance_qty, bfbalance_qty , taxtype_code, tax_rate, cost_amt, costavg_amt)
//	values (:as_branchid, :as_storeid, :as_prodcd, 1, null, :adec_qty, 0, 'E', 7, :adec_unitprice, :adec_unitprice) using itr_sqlca;
//end if

//select 		balance_qty
//into			:adec_balqty
//from			tddebtmaster
//where		branch_id	= :as_branchid and
//				product_no	= :as_prodcd
//using 			itr_sqlca ;
//

end function

public function integer of_post2debtstmt (string as_branchid, string as_debtno, string as_creditno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, decimal adec_balamt, string as_entryid);long			li_seqno
dec			ldec_costamt
string			ls_debttype
dec			ldec_balqty

select			max ( seq_no )
into			:li_seqno
from			tddebtdet
where		coop_id		= :as_branchId and
				debt_no		= :as_debtno 
using itr_sqlca;

if itr_sqlca.sqlcode <> 0 or isnull( li_seqno ) then
	li_seqno = 0
end if

li_seqno	++
//
// เอาเลขที่ใบตั้งหนี้มา ด้วย รับมาจาก argument
if as_sliptype = 'APC' or as_sliptype = 'APDN' or as_sliptype = 'APCN' or as_sliptype = 'APRC' then

	ls_debttype = 'AP'
	select 	nvl(cred_amt, 0)
	into			:ldec_balqty
	from		tdcredmaster
	where 	coop_id = :as_branchId and
				cred_no = :as_debtno
	using itr_sqlca;
				
elseif as_sliptype = 'ARC' or as_sliptype = 'ARDN' or as_sliptype = 'ARCN' or as_sliptype = 'ARRC' then
	ls_debttype = 'AR'
	select 	nvl(debt_amt, 0)
	into			:ldec_balqty
	from		tddebtmaster
	where 	coop_id = :as_branchId and
				debt_no = :as_debtno
	using itr_sqlca;
end if

  INSERT INTO "TDDEBTDET"  
         ( "COOP_ID",   
           "DEBTBRANCH_ID",   
           "DEBT_NO",   
           "SEQ_NO",   
           "CREDITDOC_NO",   
           "DEBTDET_DATE",   
           "DEBTDETTYPE_CODE",   
           "DEBTINCDECTYPE_CODE",   
           "REFDOC_NO",   
           "DEBTDET_AMT",   
           "DEBTBALANCE_AMT",   
           "DEBTDET_STATUS",   
           "REMARK",   
           "ENTRY_ID",   
           "ENTRY_DATE" )  
  VALUES ( :as_branchid,   
           :as_branchid,   
           :as_debtno,   
           :li_seqno,   
		  :as_creditno,
           :adt_slipdate,   
           :ls_debttype,   
           :as_sliptype,   
//           :as_slipref,   
           null,   
           abs(:adec_slipamt),   
           :ldec_balqty,   
           1,   
           null,
		  :as_entryid,
		  :adt_slipdate) 
  using itr_sqlca;
return 1
end function

public function integer of_post2debt (string as_branchid, string as_debtno, string as_creditno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, decimal adec_balamt, string as_entryid);string		ls_lotno
dec		ldec_balqty

adec_slipamt *= of_GetOprFlag(as_sliptype)

if adec_slipamt <> 0 then
	if of_post2debtmaster ( as_branchid,  as_debtno,  adt_slipdate,  as_sliptype,  as_slipref,  adec_slipamt,  adec_balamt, as_entryid) < 0 then return -1
	if of_post2debtdet (as_branchid, as_debtno, as_creditno, adt_slipdate, as_sliptype, as_slipref, adec_slipamt, adec_balamt) < 0 then return -1
	if of_post2debtstmt ( as_branchid,  as_debtno, as_creditno,  adt_slipdate,  as_sliptype,  as_slipref,  adec_slipamt,  adec_balamt, as_entryid) < 0 then return -1
end if

return 1
end function

public function integer of_post2debtdet (string as_branchid, string as_debtno, string as_creditno, datetime adt_slipdate, string as_sliptype, string as_slipref, decimal adec_slipamt, decimal adec_balamt);//
//// ใบตั้งหนี้ = lot
//// ต้องมีลำดับใบตั้งหนี้
//
////long		li_startno, li_endno
////dec		ldec_cost, ldec_balqty
////boolean	lb_err = false
////
if  as_sliptype = 'APC' or as_sliptype =  'ARC' then 
	//	Insert table ตั้งหนี้ 
	
elseif as_sliptype = 'APDN' or as_sliptype =  'ARDN' then 
	// update ยอดใบตั้งตามใบตั้งหนี้ที่รับมา
	update 	tddebtcredit 
	set 		debt_amt = debt_amt + :adec_slipamt
	where 	coop_id = :as_branchid and
				credittype_code = :as_sliptype and
				creditdoc_no = :as_creditno
	using		itr_sqlca;
elseif as_sliptype = 'APRC' or as_sliptype =  'ARRC' or as_sliptype = 'APCN' or as_sliptype =  'ARCN'  then 
	// update ยอดใบตั้งตามใบตั้งหนี้ที่รับมา
	update 	tddebtcredit 
	set 		debt_amt = debt_amt - :adec_slipamt
	where 	coop_id = :as_branchid and
				credittype_code = :as_sliptype and
				creditdoc_no = :as_creditno
	using		itr_sqlca;
end if

return itr_sqlca.sqlcode
//
//
//
////	select 	max( to_number(lot_no) ) 
////	into		:li_startno
////	from 		tdstocklot 
////	where 	branch_id		= :as_branchid and
////				store_id			= :as_storeid and
////				product_no 		= :as_prodcd
////	using 		itr_sqlca;
////					
//////	if isnull( li_startno ) or li_startno = 0 then li_startno = 0
//////	li_endno		= adec_qty + li_startno
////	li_startno ++
////	as_lotno = string(li_startno)
//////	try
//////		this.of_setsrvdoccontrol( true )
//////		as_lotno	= inv_docsrv.of_getnewdocno( as_branchid , "TDLOTNO")	// get เลขที่เอกสาร
//////	catch( throwable lthw_getreqdoc )
//////		ithw_exception.text	= "~r~nพบขอผิดพลาด (1)" + lthw_getreqdoc.text
//////		lb_err = true
//////	end try
////else
////	select 	min( lot_no ) 
////	into		:as_lotno
////	from 		tdstocklot 
////	where 	branch_id		= :as_branchid and
////				store_id			= :as_storeid and
////				product_no 		= :as_prodcd and
////				balance_qty > 0
////	using 		itr_sqlca;
////	if isnull( as_lotno ) or as_lotno = '' then 
////		try
////			this.of_setsrvdoccontrol( true )
////			as_lotno	= inv_docsrv.of_getnewdocno( as_branchid , "TDLOTNO")	// get เลขที่เอกสาร
////		catch( throwable lthw_getreqdoc )
////			ithw_exception.text	= "~r~nพบขอผิดพลาด (2)" + lthw_getreqdoc.text
////			lb_err = true
////		end try
////	end if
////	select sysdate
////	into	:adt_slipdate
////	from 	dual
////	using	itr_sqlca;
////end if
////  INSERT INTO "TDSTOCKLOT"  
////         ( "BRANCH_ID",   
////           "STORE_ID",   
////           "PRODUCT_NO",   
////           "LOT_NO",   
////           "LOT_DATE",   
////           "LOT_QTY",   
////           "PRODUCT_COST",   
////           "BALANCE_QTY",   
////           "START_NO",   
////           "END_NO",   
////           "REFDOC_NO",   
////           "STOCKLOT_STATUS" )  
////  VALUES ( :as_branchid,   
////           :as_storeid,   
////           :as_prodcd,   
////           :as_lotno,   
////           :adt_slipdate,   
////           abs(:adec_qty),   
////           :ldec_cost,   
////           :ldec_balqty,   
////           :li_startno,   
////           :li_endno,   
////           :as_slipno,   
////           1 )  using 		itr_sqlca;
////if isvalid(inv_docsrv) then 	this.of_setsrvdoccontrol( false)
////
////if itr_sqlca.sqlcode <> 0 then
////	messagebox( "นำเ้ข้าข้อมูล ststocklot", "ไม่สามารถ ทำการ insert ข้อมูลได้ ~r~n กรุณาเซฟภาพแล้วติดต่อโปรแกรมเมอร์ ~r~n " + itr_sqlca.SQLERRTEXT + " ", stopsign! )
////	rollback using itr_sqlca;
////	return -1
////end if


end function

public function integer of_getproductinfo (string as_branchid, string as_storeid, string as_prodno, ref string as_prodnm, ref string as_uncd, ref decimal adec_qty, ref decimal adec_cost, ref decimal adec_balqty);select product_desc, unit_code, balance_qty, costavg_amt, balance_qty 
into	:as_Prodnm, :as_uncd, :adec_qty, :adec_cost, :adec_balqty
from tdproductmaster, tdstockmaster   
where ( tdproductmaster.coop_id = tdstockmaster.coop_id (+)) and 
( tdproductmaster.product_no = tdstockmaster.product_no (+)) and 
tdproductmaster.coop_id = :as_branchid  and 
trim(store_id) = trim(:as_storeid) and  
tdproductmaster.product_no  = :as_prodNO using itr_sqlca;
		
return 1
end function

public function integer of_init_info_member (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_memberno, ls_branchid, ls_memnm, ls_prename
n_ds		lds_main
boolean 	lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_memberno = lds_main.GetItemString(1, 'member_no')

select 	prename_code, memb_name
into		:ls_prename, :ls_memnm
from 		mbmembmaster
where 	coop_id = :ls_branchid and
			member_no = :ls_memberno
using	itr_sqlca;

if itr_sqlca.sqlnrows > 0 then
	lds_main.SetItem(1, 'prename_code', ls_prename)
	if lds_main.dataobject = 'd_tradesrv_info_debt' then
		lds_main.SetItem(1, 'debt_name', ls_memnm)
	elseif lds_main.dataobject = 'd_tradesrv_info_debt' then
		lds_main.SetItem(1, 'cred_name', ls_memnm)
	end if
	astr_tradesrv_oper.xml_header	= string( lds_main.describe( "Datawindow.data.XML" ) )
else
	astr_tradesrv_oper.xml_header	= ''
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
this.of_setsrvdwxmlie( false )

if lb_err then
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_member() " + ithw_exception.text
	throw ithw_exception
end if
return 1

end function

private function integer of_init_info_debtpo (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_debtno, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_pricelevel, ls_taxtype
long		ll_count, ll_val
integer	li_ret = 1
n_ds		lds_main, lds_tailer, lds_debtdt
string		ls_debtnm, ls_contact, ls_phone, ls_fax, ls_debttype
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean 	lb_err = false
dec		ldec_taxrate1, ldec_taxrate2

this.of_setsrvdwxmlie( true )

lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradsrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if

ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'debt_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
//	ithw_exception.text	= "ไม่พบข้อมูลลูกค้า "+ ls_debtno + " กรุณาตรวจสอบ"
//	li_ret = -2
//	lb_err = true ; Goto objdestroy
else
	select          mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
			debt_contact ,   
				payment_type,   
				phone,   
				fax,   
				credit_term,   
				lead_time,   
				price_level,   
				trim(debt_addr)||' '||trim(district_desc)||' '||trim(province_desc)||' '||trim(post_code)  as addr ,
			value_desc
	into	:ls_debtnm,
			:ls_contact,
			:ls_payment_type,
			:ls_phone,
			:ls_fax,
			:ll_creditterm,
			:ll_leadtime,
			:ls_pricelevel,
			:ls_addr,
			:ls_debttype
		 from tddebtmaster,   
				mbucfprovince,   
				mbucfdistrict, 
				mbucfprename,  
			cmucfdropdownlist
		WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
				( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
				( tddebtmaster.debt_district = mbucfdistrict.district_code (+))  and  
				( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and   
				( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
				( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
				( tddebtmaster.coop_id = :ls_branchid) and 
				( tddebtmaster.debt_no = :ls_debtno)
				USING	itr_sqlca;
	lds_main.SetItem(1, 'tddebtmaster_debt_name', ls_debtnm)
	lds_main.SetItem(1, 'debtnm', ls_debtnm)
	lds_main.SetItem(1, 'debt_addr', ls_addr)
//	lds_main.SetItem(1, 'debt_contact', ls_contact)
//	lds_main.SetItem(1, 'contact_phone', ls_phone)
//	lds_main.SetItem(1, 'contact_fax', ls_fax)
//	lds_main.SetItem(1, 'credit_term', ll_creditterm)
//	lds_main.SetItem(1, 'deliday', ll_leadtime)
//	lds_main.SetItem(1, 'validay', ll_val)
	lds_main.SetItem(1, 'debt_addr', ls_addr)
//	lds_main.SetItem(1, 'paymentby', ls_payment_type)
//	lds_main.SetItem(1, 'price_level', ls_pricelevel)
//	lds_main.SetItem(1, 'due_date', RelativeDate( date(ldt_slipdate), ll_leadtime ))
//	lds_main.SetItem(1, 'taxtype_code', ls_taxtype)
//	lds_main.SetItem(1, 'tax_rate', ldec_taxrate2)
	lds_main.SetItem(1, 'debt_type', ls_debttype)
end if


//ldt_slipdate = lds_main.GetItemDatetime(1, 'slip_date')

if of_getdefaultval(ls_branchid, ls_taxtype, ldec_taxrate1, ldec_taxrate2, ll_val) < 1 then
	ls_taxtype = 'E'
	ldec_taxrate1 = 3
	ldec_taxrate2 = 7
	ll_val = 7
end if


astr_tradsrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradsrv_oper.xml_header) or trim(astr_tradsrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradsrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

//if (not isnull(astr_tradsrv_oper.xml_tailer)) or trim(astr_tradsrv_oper.xml_tailer) <> '' then
if (trim(astr_tradsrv_oper.xml_tailer) <> '')  then
	lds_tailer = create n_ds
	lds_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_tailer)
	lds_tailer.Reset()
	
	if inv_dwxmliesrv.of_xmlimport( lds_tailer, astr_tradsrv_oper.xml_tailer ) <= 0 then
		ithw_exception.text	= "Can not Import XML"
		li_ret = -4
		lb_err = true ; Goto objdestroy
	end if
	
	lds_tailer.SetItem(1, 'taxtype_code',ls_taxtype)
	lds_tailer.SetItem(1, 'tax_rate', ldec_taxrate2)
	
	astr_tradsrv_oper.xml_tailer	= inv_dwxmliesrv.of_xmlexport( lds_tailer )
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_tailer) then destroy lds_tailer
if isvalid(lds_debtdt) then f_destroydatastore(lds_debtdt)
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_debt1() " + string(li_ret) + ' ' + ithw_exception.text
	throw ithw_exception
end if
return li_ret

//catch( throwable lthw_setdwsql)
//	ithw_exception.text	+= "~r~nพบขอผิดพลาด (0.2)"
//	ithw_exception.text	+= lthw_setdwsql.text
//	lb_err = true
//end try
//if lb_err then Goto objdestroy

////lds_debtdt = create n_ds
//lds_debtdt = f_newdatastoresql(itr_sqlca, ls_sql) //"select * from tddebtmaster where debt_no = '" + ls_debtno + "'")
//if not isvalid(lds_debtdt) then
//	ithw_exception.text	= "create lds_debtdt"
//	li_ret = -4
//	lb_err = true ; Goto objdestroy
//end if
////lds_debtdt.Dataobject = 'd_tradesrv_info_debt1'
//
//if lds_debtdt.SetTransObject(itr_sqlca) <> 1 then
//	ithw_exception.text	= "Can not set transaction lds_debtdt"
//	li_ret = -5
//	lb_err = true ; Goto objdestroy
//end if
////if lds_debtdt.retrieve(ls_debtno) < 1 then
//if lds_debtdt.retrieve() < 1 then
//	li_ret = -6
//	ithw_exception.text	=  "ไม่พบข้อมูลลูกค้า "+ls_debtno+" กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
//end if

//integer li_colcount, i; string	ls_colnm
//li_colcount = integer(lds_debtdt.describe("DataWindow.Column.Count"))
//FOR i=1 TO li_colcount
//	ls_colnm = lds_debtdt.describe ("#" + string (i) + ".name")
//	Messagebox('test', ls_colnm)
//NEXT

//ls_debtnm = lds_debtdt.GetItemString(1, 'debtnm') // 'debt_name')
//ls_contact = lds_debtdt.GetItemString(1, 'tddebtmaster_debt_contact')
//ls_phone = lds_debtdt.GetItemString(1, 'tddebtmaster_phone')
//ls_fax = lds_debtdt.GetItemString(1, 'tddebtmaster_fax')
//ll_creditterm = lds_debtdt.GetItemnumber(1, 'tddebtmaster_credit_term')
//ll_leadtime = lds_debtdt.GetItemnumber(1, 'tddebtmaster_lead_time')
//ls_addr = lds_debtdt.GetItemstring(1, 'addr')
//ls_payment_type = lds_debtdt.GetItemstring(1, 'tddebtmaster_payment_type')
//ls_pricelevel = lds_debtdt.GetItemstring(1, 'tddebtmaster_price_level')

////try
//	ls_debtnm = lds_debtdt.GetItemString(1, 'tddebtmaster_debt_name')
//	ls_contact = lds_debtdt.GetItemString(1, 'tddebtmaster_debt_contact')
//	ls_phone = lds_debtdt.GetItemString(1, 'tddebtmaster_phone')
//	ls_fax = lds_debtdt.GetItemString(1, 'tddebtmaster_fax')
//	ll_creditterm = lds_debtdt.GetItemnumber(1, 'tddebtmaster_credit_term')
//	ll_leadtime = lds_debtdt.GetItemnumber(1, 'tddebtmaster_lead_time')
//	ls_addr = lds_debtdt.GetItemstring(1, 'tddebtmaster_debt_addr')
//	ls_payment_type = lds_debtdt.GetItemstring(1, 'tddebtmaster_payment_type')

end function

private function integer of_init_info_credpo (ref str_tradesrv_oper astr_tradesrv_oper) throws throwable;string		ls_debtno, ls_xmlmemdet, ls_sql, ls_addr, ls_payment_type, ls_branchid, ls_credtype
long		ll_count
n_ds		lds_main, lds_debtdt, lds_tailer
string	ls_debtnm, ls_contact, ls_phone, ls_fax
long		ll_creditterm, ll_leadtime
datetime ldt_slipdate
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )
lds_main = create n_ds
lds_main.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_header)
lds_main.Reset()
if inv_dwxmliesrv.of_xmlimport( lds_main, astr_tradesrv_oper.xml_header ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ls_branchid = lds_main.GetItemString(1, 'coop_id')
ls_debtno = lds_main.GetItemString(1, 'cred_no')
if isnull(ls_debtno) or trim(ls_debtno) =  '' then 
	ithw_exception.text	= "ไม่พบข้อมูลผู้จำหน่าย "+ ls_debtno + " กรุณาตรวจสอบ"
	li_ret = -2
	lb_err = true ; Goto objdestroy
end if
select          "MBUCFPRENAME"."PRENAME_DESC"||"TDCREDMASTER"."CRED_NAME"||' '||"MBUCFPRENAME"."SUFFNAME_DESC" as crednm,  
         cred_contact,   
         payment_type,   
//         trim(cred_addr||' '||' '||district_desc||' '||province_desc)  as addr, 
         trim(cred_addr)||' '||trim(district_desc)||' '||trim(province_desc)||' '||trim(post_code)  as addr, 
         phone,   
         fax,   
         credit_term,   
         lead_time,   
		value_desc
into	:ls_debtnm,
		:ls_contact,
		:ls_payment_type, 
		:ls_addr,
		:ls_phone,
		:ls_fax,
		:ll_creditterm,
		:ll_leadtime,
		:ls_credtype
    from tdcredmaster,   
         mbucfprovince,   
         mbucfdistrict, 
		cmucfdropdownlist,   
         "MBUCFPRENAME"  
   WHERE ( tdcredmaster.cred_province = mbucfprovince.province_code (+)) and  
         ( tdcredmaster.cred_province = mbucfdistrict.province_code (+)) and  
         ( tdcredmaster.cred_district = mbucfdistrict.district_code (+))  and  
         ( tdcredmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and   
         ( tdcredmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( cmucfdropdownlist.field_code = 'CUSTTYPE') and   
         ( tdcredmaster.coop_id =  :ls_branchid ) and 
         ( tdcredmaster.cred_no = :ls_debtno )
	USING	itr_sqlca;

ldt_slipdate = lds_main.GetItemDatetime(1, 'slip_date')

lds_main.SetItem(1, 'crednm', ls_debtnm)
lds_main.SetItem(1, 'cred_type', ls_credtype)
lds_main.SetItem(1, 'credit_term', ll_creditterm)
lds_main.SetItem(1, 'deliday', ll_leadtime)
lds_main.SetItem(1, 'due_date', RelativeDate( date(ldt_slipdate), ll_creditterm ))
lds_main.SetItem(1, 'validay', 7)
lds_main.SetItem(1, 'paymentby', ls_payment_type)
lds_main.SetItem(1, 'delivery_date', RelativeDate( date(ldt_slipdate), ll_leadtime ))

astr_tradesrv_oper.xml_header	= inv_dwxmliesrv.of_xmlexport( lds_main )
if isnull(astr_tradesrv_oper.xml_header) or trim(astr_tradesrv_oper.xml_header) =  '' then 
	ithw_exception.text	= "Can not Export XML"
	ithw_exception.text	+= astr_tradesrv_oper.xml_header
	li_ret = -3
	lb_err = true ; Goto objdestroy
end if

if (trim(astr_tradesrv_oper.xml_tailer) <> '')  then
	lds_tailer = create n_ds
	lds_tailer.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradesrv_oper.xml_tailer)
	lds_tailer.Reset()
	
	if inv_dwxmliesrv.of_xmlimport( lds_tailer, astr_tradesrv_oper.xml_tailer ) <= 0 then
		ithw_exception.text	= "Can not Import XML"
		li_ret = -4
		lb_err = true ; Goto objdestroy
	end if
	astr_tradesrv_oper.xml_tailer	= inv_dwxmliesrv.of_xmlexport( lds_tailer )
end if

objdestroy:
if isvalid(lds_main) then destroy lds_main
if isvalid(lds_tailer) then destroy lds_tailer
if isvalid(lds_debtdt) then f_destroydatastore(lds_debtdt)
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_cred1() " + ithw_exception.text
	throw ithw_exception
end if
return 1

end function

public function integer of_init_info_product_master_ed (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_prodcd, ls_sql, ls_storeid
n_ds		lds_hd, lds_dt1, lds_dt2, lds_dt3
boolean lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )

lds_dt1= create n_ds
lds_dt1.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt1.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt1, astr_tradsrv_op.xml_detail )

lds_dt2= create n_ds
lds_dt2.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
lds_dt2.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt2, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_prodcd = lds_hd.GetItemString(1, 'product_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdproductmaster.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdproductmaster.product_no = '" + ls_prodcd + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า " + ls_prodcd + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_header	= string( lds_hd.describe( "Datawindow.data.XML" ) )
end if

ls_sql = lds_dt1.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockmaster.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdstockmaster.product_no = '" + ls_prodcd + "'"
//ls_sql += " order by tdstockmaster.product_no, tdstockmaster.seq_no"
lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt1.retrieve() <= 0 then
	astr_tradsrv_op.xml_detail	= ''
else
	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
end if

ls_sql = lds_dt2.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdproductpricelist.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdproductpricelist.product_no = '" + ls_prodcd + "'"
ls_sql += " order by tdproductpricelist.coop_id, tdproductpricelist.product_no, tdproductpricelist.seq_no"
lds_dt2.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt2.retrieve() <= 0 then
	astr_tradsrv_op.xml_tailer	= ''
else
	astr_tradsrv_op.xml_tailer	= string( lds_dt2.describe( "Datawindow.data.XML" ) )
end if

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt1) then destroy lds_dt1
if isvalid(lds_dt2) then destroy lds_dt2
this.of_setsrvdwxmlie( false )

if lb_err then
	astr_tradsrv_op.xml_header	 = ''
	astr_tradsrv_op.xml_detail	= ''
	astr_tradsrv_op.xml_tailer	= ''
	astr_tradsrv_op.xml_list	= ''
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product_master() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_getincdecamt (string as_debtno, string as_doc1, string as_doc2);dec	ldec_amt
select sum(decode(tddebtinc.debtinctype_code, 'ARDN', 1, 'ARCN', -1, 'APDN', 1, 'APCN', -1)*nvl(tddebtincdet.debt_amt,0))
into	:ldec_amt
from 	tddebtinc, tddebtincdet
where tddebtinc.coop_id = tddebtincdet.coop_id and
		 tddebtinc.debtinctype_code = tddebtincdet.debtinctype_code and
		 tddebtinc.debtincdoc_no = tddebtincdet.debtincdoc_no and
		 tddebtinc.debt_no = :as_debtno and
		 tddebtinc.refdoc_no = :as_doc1 and
			tddebtincdet.refdoc_no =:as_doc2 
using itr_sqlca;
//if itr_sqlca.SQLNRows	 = 0 then ldec_amt = 0
if isnull(ldec_amt) then ldec_amt = 0
return ldec_amt
end function

private function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate);  SELECT   "TDSTOCKSLIP"."DEBT_NO",  
  		"CMUCFDROPDOWNLIST"."VALUE_DESC",   
//  		"TDDEBTMASTER"."DEBTFROMTYPE_CODE",  
		mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
         tddebtmaster.debt_addr||' '||' '||district_desc||' '||province_desc  as addr,   
         "TDSTOCKSLIP"."DEBT_CONTACT",   
         "TDSTOCKSLIP"."PAYMENTBY",  
         "TDSTOCKSLIP"."CONTACT_PHONE",   
         "TDSTOCKSLIP"."CONTACT_FAX",   
         "TDSTOCKSLIP"."CREDIT_TERM",   
//         "TDSTOCKSLIP"."DEBT_ADDR",   
//         "TDSTOCKSLIP"."REMARK",   
         "TDSTOCKSLIP"."SLIP_AMT",   
         "TDSTOCKSLIP"."DISC_PERCENT",   
         "TDSTOCKSLIP"."DISC_AMT",   
         "TDSTOCKSLIP"."TAXTYPE_CODE",   
         "TDSTOCKSLIP"."TAX_RATE",   
         "TDSTOCKSLIP"."AMTBEFORTAX",   
         "TDSTOCKSLIP"."TAXOPT",   
         "TDSTOCKSLIP"."TAX_AMT",   
         "TDSTOCKSLIP"."SLIPNET_AMT",   
         "TDSTOCKSLIP"."DUE_DATE"  
	into	:as_debtno,
			:as_DebtType,
			:as_DebtNm,
			:as_Addr,
			:as_Contact,
			:as_PaymentType,
			:as_Phone,
			:as_Fax,
			:al_CreditTerm,
			:adec_slipamt,
			:as_discpercent,
			:adec_discamt,
			:as_taxtype,
			:adec_taxrate,
			:adec_amtbefortax,
			:as_taxopt,
			:adec_taxamt,
			:adec_slipnetamt,
			:ad_duedate
//			:al_LeadTime,
//			:as_PriceLevel
    FROM "TDSTOCKSLIP",   
         "TDDEBTMASTER",   
         "MBUCFPROVINCE",   
         "MBUCFDISTRICT",   
         "MBUCFPRENAME",   
         "CMUCFDROPDOWNLIST"  
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+)) and  
         ( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."DEBT_NO" = "TDDEBTMASTER"."DEBT_NO" ) and  
         ( ( "CMUCFDROPDOWNLIST"."FIELD_CODE" = 'CUSTTYPE' ) )  and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."SLIPTYPE_CODE" = :as_sliptype ) and  
         ( "TDSTOCKSLIP"."SLIP_NO" = :as_slipNo )   
				USING	itr_sqlca;

return itr_sqlca.SQLCODE


end function

private function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate, ref decimal adec_transportfee);  SELECT   "TDSTOCKSLIP"."DEBT_NO",  
  		"CMUCFDROPDOWNLIST"."VALUE_DESC",   
//  		"TDDEBTMASTER"."DEBTFROMTYPE_CODE",  
		mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
         tddebtmaster.debt_addr||' '||' '||district_desc||' '||province_desc  as addr,   
         "TDSTOCKSLIP"."DEBT_CONTACT",   
         "TDSTOCKSLIP"."PAYMENTBY",  
         "TDSTOCKSLIP"."CONTACT_PHONE",   
         "TDSTOCKSLIP"."CONTACT_FAX",   
         "TDSTOCKSLIP"."CREDIT_TERM",   
//         "TDSTOCKSLIP"."DEBT_ADDR",   
//         "TDSTOCKSLIP"."REMARK",   
         "TDSTOCKSLIP"."SLIP_AMT",   
         "TDSTOCKSLIP"."DISC_PERCENT",   
         "TDSTOCKSLIP"."DISC_AMT",   
         "TDSTOCKSLIP"."TAXTYPE_CODE",   
         "TDSTOCKSLIP"."TAX_RATE",   
         "TDSTOCKSLIP"."AMTBEFORTAX",   
         "TDSTOCKSLIP"."TAXOPT",   
         "TDSTOCKSLIP"."TAX_AMT",   
         "TDSTOCKSLIP"."SLIPNET_AMT",   
         "TDSTOCKSLIP"."DUE_DATE",  
         "TDSTOCKSLIP"."TRANSPORTFEE"  
	into	:as_debtno,
			:as_DebtType,
			:as_DebtNm,
			:as_Addr,
			:as_Contact,
			:as_PaymentType,
			:as_Phone,
			:as_Fax,
			:al_CreditTerm,
			:adec_slipamt,
			:as_discpercent,
			:adec_discamt,
			:as_taxtype,
			:adec_taxrate,
			:adec_amtbefortax,
			:as_taxopt,
			:adec_taxamt,
			:adec_slipnetamt,
			:ad_duedate,
			:adec_transportfee
//			:as_PriceLevel
    FROM "TDSTOCKSLIP",   
         "TDDEBTMASTER",   
         "MBUCFPROVINCE",   
         "MBUCFDISTRICT",   
         "MBUCFPRENAME",   
         "CMUCFDROPDOWNLIST"  
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+)) and  
         ( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."DEBT_NO" = "TDDEBTMASTER"."DEBT_NO" ) and  
         ( ( "CMUCFDROPDOWNLIST"."FIELD_CODE" = 'CUSTTYPE' ) )  and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."SLIPTYPE_CODE" = :as_sliptype ) and  
         ( "TDSTOCKSLIP"."SLIP_NO" = :as_slipNo )   
				USING	itr_sqlca;

return itr_sqlca.SQLCODE


end function

private function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate, ref decimal adec_transportfee, ref string as_empid, ref string as_storeid);  SELECT   "TDSTOCKSLIP"."DEBT_NO",  
  		"CMUCFDROPDOWNLIST"."VALUE_DESC",   
//  		"TDDEBTMASTER"."DEBTFROMTYPE_CODE",  
		mbucfprename.prename_desc||tddebtmaster.debt_name||' '||mbucfprename.suffname_desc  as debtnm,   
         tddebtmaster.debt_addr||' '||' '||district_desc||' '||province_desc  as addr,   
         "TDSTOCKSLIP"."DEBT_CONTACT",   
         "TDSTOCKSLIP"."PAYMENTBY",  
         "TDSTOCKSLIP"."CONTACT_PHONE",   
         "TDSTOCKSLIP"."CONTACT_FAX",   
         "TDSTOCKSLIP"."CREDIT_TERM",   
//         "TDSTOCKSLIP"."DEBT_ADDR",   
//         "TDSTOCKSLIP"."REMARK",   
         "TDSTOCKSLIP"."SLIP_AMT",   
         "TDSTOCKSLIP"."DISC_PERCENT",   
         "TDSTOCKSLIP"."DISC_AMT",   
         "TDSTOCKSLIP"."TAXTYPE_CODE",   
         "TDSTOCKSLIP"."TAX_RATE",   
         "TDSTOCKSLIP"."AMTBEFORTAX",   
         "TDSTOCKSLIP"."TAXOPT",   
         "TDSTOCKSLIP"."TAX_AMT",   
         "TDSTOCKSLIP"."SLIPNET_AMT",   
         "TDSTOCKSLIP"."DUE_DATE",  
         "TDSTOCKSLIP"."TRANSPORTFEE",
         "TDSTOCKSLIP"."EMPLOYEE_ID",  
         "TDSTOCKSLIP"."STORE_ID"  
	into	:as_debtno,
			:as_DebtType,
			:as_DebtNm,
			:as_Addr,
			:as_Contact,
			:as_PaymentType,
			:as_Phone,
			:as_Fax,
			:al_CreditTerm,
			:adec_slipamt,
			:as_discpercent,
			:adec_discamt,
			:as_taxtype,
			:adec_taxrate,
			:adec_amtbefortax,
			:as_taxopt,
			:adec_taxamt,
			:adec_slipnetamt,
			:ad_duedate,
			:adec_transportfee,
			:as_empid, 
			:as_storeid
    FROM "TDSTOCKSLIP",   
         "TDDEBTMASTER",   
         "MBUCFPROVINCE",   
         "MBUCFDISTRICT",   
         "MBUCFPRENAME",   
         "CMUCFDROPDOWNLIST"  
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+)) and  
         ( tddebtmaster.prename_code = mbucfprename.prename_code (+)) and  
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist.value_code (+)) and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."DEBT_NO" = "TDDEBTMASTER"."DEBT_NO" ) and  
         ( ( "CMUCFDROPDOWNLIST"."FIELD_CODE" = 'CUSTTYPE' ) )  and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."SLIPTYPE_CODE" = :as_sliptype ) and  
         ( "TDSTOCKSLIP"."SLIP_NO" = :as_slipNo )   
				USING	itr_sqlca;

return itr_sqlca.SQLCODE


end function

protected function integer of_getslipheader (string as_branchid, string as_sliptype, string as_slipno, ref string as_debtno, ref string as_debttype, ref string as_debtnm, ref string as_credno, ref string as_credtype, ref string as_crednm, ref string as_addr, ref string as_paymenttype, ref long al_creditterm, ref long al_leadtime, ref string as_pricelevel, ref string as_contact, ref string as_phone, ref string as_fax, ref decimal adec_slipamt, ref string as_discpercent, ref decimal adec_discamt, ref string as_taxtype, ref decimal adec_taxrate, ref decimal adec_amtbefortax, ref string as_taxopt, ref decimal adec_taxamt, ref decimal adec_slipnetamt, ref datetime ad_duedate);  SELECT "TDSTOCKSLIP"."DEBT_NO",
  		"CMUCFDROPDOWNLIST_A"."VALUE_DESC",   
//  		"TDDEBTMASTER"."DEBTFROMTYPE_CODE",   
         mbucfprename_a.prename_desc||tddebtmaster.debt_name||' '||mbucfprename_a.suffname_desc as debtnm,   
         tddebtmaster.debt_addr||' '||' '||district_desc||' '||province_desc as addr,   
         "TDSTOCKSLIP"."DEBT_CONTACT",   
         "TDSTOCKSLIP"."PAYMENTBY",   
         "TDSTOCKSLIP"."CONTACT_PHONE",   
         "TDSTOCKSLIP"."CONTACT_FAX",   
         "TDSTOCKSLIP"."CREDIT_TERM",   
         "TDSTOCKSLIP"."SLIP_AMT",   
         "TDSTOCKSLIP"."DISC_PERCENT",   
         "TDSTOCKSLIP"."DISC_AMT",   
         "TDSTOCKSLIP"."TAXTYPE_CODE",   
         "TDSTOCKSLIP"."TAX_RATE",   
         "TDSTOCKSLIP"."AMTBEFORTAX",   
         "TDSTOCKSLIP"."TAXOPT",   
         "TDSTOCKSLIP"."TAX_AMT",   
         "TDSTOCKSLIP"."SLIPNET_AMT",   
         "TDSTOCKSLIP"."DUE_DATE",   
         "TDSTOCKSLIP"."CRED_NO",   
         mbucfprename_b.prename_desc||tdcredmaster.cred_name||' '||mbucfprename_b.suffname_desc as crednm  
	into	:as_debtno,
			:as_DebtType,
			:as_DebtNm,
			:as_Addr,
			:as_Contact,
			:as_PaymentType,
			:as_Phone,
			:as_Fax,
			:al_CreditTerm,
			:adec_slipamt,
			:as_discpercent,
			:adec_discamt,
			:as_taxtype,
			:adec_taxrate,
			:adec_amtbefortax,
			:as_taxopt,
			:adec_taxamt,
			:adec_slipnetamt,
			:ad_duedate,
			:as_credno,
			:as_crednm
//			:as_credtype,
//			:as_PriceLevel
    FROM "TDSTOCKSLIP",   
         "TDDEBTMASTER",   
         "MBUCFPROVINCE",   
         "MBUCFDISTRICT",   
         "MBUCFPRENAME" "MBUCFPRENAME_A",   
         "CMUCFDROPDOWNLIST" "CMUCFDROPDOWNLIST_A",   
         "TDCREDMASTER",   
         "MBUCFPRENAME" "MBUCFPRENAME_B",   
         "CMUCFDROPDOWNLIST" "CMUCFDROPDOWNLIST_B"  
   WHERE ( tddebtmaster.debt_province = mbucfprovince.province_code (+)) and  
         ( tddebtmaster.debt_province = mbucfdistrict.province_code (+)) and  
         ( tddebtmaster.debt_district = mbucfdistrict.district_code (+)) and  
         ( tddebtmaster.prename_code = mbucfprename_a.prename_code (+)) and  
         ( tddebtmaster.debtfromtype_code = cmucfdropdownlist_a.value_code (+)) and  
         ( tdstockslip.coop_id = tdcredmaster.coop_id (+)) and  
         ( tdstockslip.cred_no = tdcredmaster.cred_no (+)) and  
         ( tdcredmaster.prename_code = mbucfprename_b.prename_code (+)) and  
         ( tdcredmaster.debtfromtype_code = cmucfdropdownlist_b.value_code (+)) and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( "TDSTOCKSLIP"."DEBT_NO" = "TDDEBTMASTER"."DEBT_NO" ) and  
         ( "TDSTOCKSLIP"."COOP_ID" = "TDDEBTMASTER"."COOP_ID" ) and  
         ( ( "CMUCFDROPDOWNLIST_A"."FIELD_CODE" = 'CUSTTYPE' ) ) AND  
         ( ( "CMUCFDROPDOWNLIST_B"."FIELD_CODE" = 'CUSTTYPE' ) ) AND   
        ( "TDSTOCKSLIP"."SLIPTYPE_CODE" = :as_sliptype ) and  
         ( "TDSTOCKSLIP"."SLIP_NO" = :as_slipNo )   
				USING	itr_sqlca;
return itr_sqlca.SQLCODE

end function

private function integer of_gencndoc (string as_branchid, string as_slipno, string as_slippref, string as_debtno, datetime adt_slipdate, string as_payment);return 1
end function

private function integer of_init_info_product1 (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_xmlmemdet, ls_sql, ls_prodcd, ls_branchid, ls_prodnm, ls_uncd, ls_storeid, ls_taxtype, ls_taxtypeold
long		ll_row, ll_rowcount, i
n_ds		lds_header, lds_detail, lds_proddt
dec{2}	ldec_taxrate, ldec_taxrateold
dec{3}	ldec_balqty
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()

for i=1 to ll_rowcount
//	ls_prodnm = lds_detail.GetItemString(i, 'product_desc')
//	if isnull(ls_prodnm) or trim(ls_prodnm) =  '' then 
		ls_branchid = lds_detail.GetItemString(i, 'coop_id')
		ls_prodcd = lds_detail.GetItemString(i, 'product_no')
		ls_storeid = lds_detail.GetItemString(i, 'store_id')
		ls_taxtypeold = lds_detail.GetItemString(i, 'taxtype_code')
		ldec_taxrateold = lds_detail.GetItemDecimal(i, 'tax_rate')
		if isnull(ls_storeid) or trim(ls_storeid) =  '' then 
			ithw_exception.text	= "ไม่ระบุคลังสินค้า "+ ls_storeid + " กรุณาตรวจสอบ"
			li_ret = -2
			lb_err = true ; Goto objdestroy
		end if
		if isnull(ls_prodcd) or trim(ls_prodcd) =  '' then 
			ithw_exception.text	= "ไม่ระบุรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
			li_ret = -3
			lb_err = true ; Goto objdestroy
		end if
		select product_desc, unit_code, taxtype_code, tax_rate, balance_qty 
		into	:ls_prodnm,
				:ls_uncd,
				:ls_taxtype,
				:ldec_taxrate,
				:ldec_balqty
		from tdproductmaster, tdstockmaster  
		where ( tdproductmaster.coop_id = tdstockmaster.coop_id (+)) and
		 ( tdproductmaster.product_no = tdstockmaster.product_no (+)) and
		 ( tdproductmaster.coop_id = :ls_branchid) and 
		 ( trim(store_id) = trim(:ls_storeid)) and  
		 ( tdproductmaster.product_no  = :ls_prodcd)
		 using itr_sqlca;
		lds_detail.SetItem(i, 'product_desc', ls_prodnm)
		lds_detail.SetItem(i, 'unit_code', ls_uncd)
		if isnull(ls_taxtypeold) or trim(ls_taxtypeold) = '' then
			lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
		end if
		if isnull(ldec_taxrateold) or ldec_taxrateold = 0 then
			lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
		end if
		lds_detail.SetItem(i, 'balance_qty', ldec_balqty)
//	end if
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradewsrv_req.xml_header	= ls_xmlmemdet

objdestroy:
if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_header) then destroy lds_header
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

private function integer of_init_info_product2 (ref str_tradesrv_oper astr_tradsrv_oper) throws throwable;string		ls_xmlmemdet, ls_sql, ls_prodcd, ls_branchid, ls_prodnm, ls_uncd, ls_storeid, ls_taxtype
long		ll_row, ll_rowcount, i
n_ds		lds_header, lds_detail, lds_proddt
dec{2}	ldec_taxrate
dec{3}	ldec_balqty
boolean lb_err = false
integer	li_ret = 1

this.of_setsrvdwxmlie( true )

lds_detail = create n_ds
lds_detail.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_oper.xml_detail)
lds_detail.Reset()

if inv_dwxmliesrv.of_xmlimport( lds_detail, astr_tradsrv_oper.xml_detail ) <= 0 then
	ithw_exception.text	= "Can not Import XML"
	li_ret = -1
	lb_err = true ; Goto objdestroy
end if
ll_rowcount = lds_detail.rowcount()

for i=1 to ll_rowcount
//	ls_prodnm = lds_detail.GetItemString(i, 'product_desc')
//	if isnull(ls_prodnm) or trim(ls_prodnm) =  '' then 
		ls_branchid = lds_detail.GetItemString(i, 'coop_id')
		ls_prodcd = lds_detail.GetItemString(i, 'product_no')
//		ls_storeid = lds_detail.GetItemString(i, 'store_id')
//		if isnull(ls_storeid) or trim(ls_storeid) =  '' then 
//			ithw_exception.text	= "ไม่ระบุคลังสินค้า "+ ls_storeid + " กรุณาตรวจสอบ"
//			li_ret = -2
//			lb_err = true ; Goto objdestroy
//		end if
		if isnull(ls_prodcd) or trim(ls_prodcd) =  '' then 
			ithw_exception.text	= "ไม่ระบุรหัสสินค้า "+ ls_prodcd + " กรุณาตรวจสอบ"
			li_ret = -3
			lb_err = true ; Goto objdestroy
		end if
		select product_desc, unit_code, 'E', 7 //, taxtype_code, tax_rate, balance_qty 
		into	:ls_prodnm,
				:ls_uncd,
				:ls_taxtype,
				:ldec_taxrate//,
//				:ldec_balqty
		from tdproductmaster//, tdstockmaster  
		where 
//		( tdproductmaster.branch_id = tdstockmaster.branch_id (+)) and
//		 ( tdproductmaster.product_no = tdstockmaster.product_no (+)) and
		 ( tdproductmaster.coop_id = :ls_branchid) and 
//		 ( trim(store_id) = trim(:ls_storeid)) and  
		 ( tdproductmaster.product_no  = :ls_prodcd)
		 using itr_sqlca;
		lds_detail.SetItem(i, 'product_desc', ls_prodnm)
		lds_detail.SetItem(i, 'unit_code', ls_uncd)
		lds_detail.SetItem(i, 'taxtype_code', ls_taxtype)
		lds_detail.SetItem(i, 'tax_rate', ldec_taxrate)
//		lds_detail.SetItem(i, 'balance_qty', ldec_balqty)
//	end if
next

//ls_xmlmemdet		= string( lds_detail.describe( "Datawindow.data.XML" ) )
astr_tradsrv_oper.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_detail )
//astr_tradewsrv_req.xml_header	= ls_xmlmemdet

objdestroy:
if isvalid(lds_proddt) then destroy lds_proddt
if isvalid(lds_detail) then destroy lds_detail
if isvalid(lds_header) then destroy lds_header
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product() " + ithw_exception.text
	throw ithw_exception
end if

return li_ret

end function

public function integer of_init_aprc_info_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
n_ds		lds_hd, lds_dt, lds_tl
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

lds_tl= create n_ds
lds_tl.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
lds_tl.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )
inv_dwxmliesrv.of_xmlimport( lds_tl, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
ls_slipno = lds_hd.GetItemString(1, 'debtdecdoc_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtdec.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtdec.debtdectype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtdec.debtdecdoc_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	astr_tradsrv_op.xml_header		= ''
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
//	lds_hd.ShareData(lds_tl)
	astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )	
	astr_tradsrv_op.xml_tailer		= string( lds_tl.describe( "Datawindow.data.XML" ) )	
end if

ls_sql = lds_dt.GetSQLSelect()

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtdecdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtdecdet.debtdectype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtdecdet.debtdecdoc_no = '" + ls_slipno + "'"
ls_sql += " order by tddebtdecdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
end if


objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_rec_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_arrc_info_slip (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_slipno, ls_sql, ls_sliptype, ls_cebtno, &
			ls_debtnm, ls_contact, ls_phone, ls_fax, ls_xmlmemdet
long		ll_ct, ll_dd, ll_vd
n_ds		lds_hd, lds_dt, lds_tl
boolean 	lb_err = false

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )

lds_dt= create n_ds
lds_dt.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt.settransobject( itr_sqlca )

lds_tl= create n_ds
lds_tl.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
lds_tl.settransobject( itr_sqlca )

inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )
inv_dwxmliesrv.of_xmlimport( lds_dt, astr_tradsrv_op.xml_detail )
inv_dwxmliesrv.of_xmlimport( lds_tl, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_sliptype = lds_hd.GetItemString(1, 'sliptype_code')
ls_slipno = lds_hd.GetItemString(1, 'debtdecdoc_no')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtdec.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtdec.debtdectype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtdec.debtdecdoc_no = '" + ls_slipno + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_hd.retrieve() <= 0 then
	astr_tradsrv_op.xml_header		= ''
	ithw_exception.text	= "ไม่พบข้อมูลเลขที่เอกสาร " + ls_slipno + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
	lds_hd.ShareData(lds_tl)
	astr_tradsrv_op.xml_header		= string( lds_hd.describe( "Datawindow.data.XML" ) )	
	astr_tradsrv_op.xml_tailer		= string( lds_tl.describe( "Datawindow.data.XML" ) )	
end if

ls_sql = lds_dt.GetSQLSelect()

if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " and tddebtdecdet.coop_id = '" + ls_branchid + "'"
if not isnull(ls_sliptype) or trim(ls_sliptype) <> '' then ls_sql += " and tddebtdecdet.debtdectype_code = '" + ls_sliptype + "'"
if not isnull(ls_slipno) or trim(ls_slipno) <> '' then ls_sql += " and tddebtdecdet.debtdecdoc_no = '" + ls_slipno + "'"
ls_sql += " order by tddebtdecdet.seq_no"
lds_dt.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt.retrieve() <= 0 then
//	ithw_exception.text	= "ไม่พบข้อมูลใบเสนอราคา " + ls_slipno + " กรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
else
	astr_tradsrv_op.xml_detail	= string( lds_dt.describe( "Datawindow.data.XML" ) )
end if


objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt) then destroy lds_dt
if isvalid(lds_tl) then destroy lds_tl
this.of_setsrvdwxmlie( false )

if lb_err then
//	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_fin_rec_slip() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function decimal of_getdisctcount (string as_branchid, string as_debtno);dec 		ldec_distcount

select 	nvl(disccredits, 0)/100
into		:ldec_distcount
from		tddebtmaster
where	coop_id = :as_branchid and
			debt_no = :as_debtno
using		itr_sqlca;
			
return ldec_distcount
end function

public function integer of_init_stockcard (ref str_tradesrv_oper astr_tradsrv_op) throws throwable;string		ls_branchid, ls_prodcd, ls_sql
n_ds		lds_hd, lds_dt1, lds_dt2, lds_dt3
boolean lb_err = false
string		ls_storeid

this.of_setsrvdwxmlie( true )
lds_hd = create n_ds
lds_hd.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_header)
lds_hd.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_hd, astr_tradsrv_op.xml_header )

lds_dt1= create n_ds
lds_dt1.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_detail)
lds_dt1.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt1, astr_tradsrv_op.xml_detail )

lds_dt2= create n_ds
lds_dt2.dataobject	= inv_dwxmliesrv.of_getdataobject(astr_tradsrv_op.xml_tailer)
lds_dt2.settransobject( itr_sqlca )
inv_dwxmliesrv.of_xmlimport( lds_dt2, astr_tradsrv_op.xml_tailer )

ls_branchid = lds_hd.GetItemString(1, 'coop_id')
ls_prodcd = lds_hd.GetItemString(1, 'product_no')
ls_storeid = lds_hd.GetItemString(1, 'store_id')

ls_sql = lds_hd.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdproductmaster.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdproductmaster.product_no = '" + ls_prodcd + "'"
lds_hd.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")
if lds_hd.retrieve() <= 0 then
	ithw_exception.text	= "ไม่พบข้อมูลรหัสสินค้า " + ls_prodcd + " กรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
else
	lds_hd.SetItem(1, 'store_id', ls_storeid)
	astr_tradsrv_op.xml_header	= string( lds_hd.describe( "Datawindow.data.XML" ) )
end if

//ls_sql = lds_dt1.GetSQLSelect()
//if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdproductpricelist.branch_id = '" + ls_branchid + "'"
//if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdproductpricelist.product_no = '" + ls_prodcd + "'"
//ls_sql += " order by tdproductpricelist.seq_no"
//lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")
//
//if lds_dt1.retrieve() <= 0 then
//	astr_tradsrv_op.xml_detail	= ''
//else
//	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
//end if

ls_sql = lds_dt1.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstockcard.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdstockcard.product_no = '" + ls_prodcd + "'"
if not isnull(ls_storeid) or trim(ls_storeid) <> '' then ls_sql += " and tdstockcard.store_id = '" + ls_storeid + "'"
ls_sql += " order by tdstockcard.product_no, tdstockcard.seq_no desc"
lds_dt1.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt1.retrieve() <= 0 then
	astr_tradsrv_op.xml_detail	= ''
else
	astr_tradsrv_op.xml_detail	= string( lds_dt1.describe( "Datawindow.data.XML" ) )
end if

ls_sql = lds_dt2.GetSQLSelect()
if not isnull(ls_branchid) or trim(ls_branchid) <> '' then ls_sql += " where tdstocklot.coop_id = '" + ls_branchid + "'"
if not isnull(ls_prodcd) or trim(ls_prodcd) <> '' then ls_sql += " and tdstocklot.product_no = '" + ls_prodcd + "'"
ls_sql += " order by tdstocklot.lot_date, tdstocklot.lot_no"
lds_dt2.modify ( "datawindow.table.select = '" + of_convert_quote(ls_sql) + "'")

if lds_dt2.retrieve() <= 0 then
	astr_tradsrv_op.xml_tailer	= ''
else
	astr_tradsrv_op.xml_tailer	= string( lds_dt2.describe( "Datawindow.data.XML" ) )
end if

objdestroy:
if isvalid(lds_hd) then destroy lds_hd
if isvalid(lds_dt1) then destroy lds_dt1
if isvalid(lds_dt2) then destroy lds_dt2
this.of_setsrvdwxmlie( false )

if lb_err then
	astr_tradsrv_op.xml_header	 = ''
	astr_tradsrv_op.xml_detail	= ''
	astr_tradsrv_op.xml_tailer	= ''
	astr_tradsrv_op.xml_list	= ''
	ithw_exception.text = "n_cst_tradesrv_operate.of_init_info_product_master() " + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

on n_cst_tradesrv_operate.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_tradesrv_operate.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create throwable
end event

