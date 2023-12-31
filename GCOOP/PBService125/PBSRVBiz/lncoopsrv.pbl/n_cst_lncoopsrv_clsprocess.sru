$PBExportHeader$n_cst_lncoopsrv_clsprocess.sru
$PBExportComments$lcsrv ส่วนบริการใบคำขอต่างๆ
forward
global type n_cst_lncoopsrv_clsprocess from nonvisualobject
end type
end forward

global type n_cst_lncoopsrv_clsprocess from nonvisualobject
end type
global n_cst_lncoopsrv_clsprocess n_cst_lncoopsrv_clsprocess

type prototypes

end prototypes

type variables
Public:

transaction						itr_sqlca
Exception						ithw_exception

n_cst_procservice				inv_procsrv
n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_progresscontrol		inv_progress
n_cst_lncoopsrv_interest		inv_intsrv
n_cst_datetimeservice		inv_datetime
end variables

forward prototypes
private function integer of_setsrvdwxmlie (boolean ab_switch)
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws Exception
public function integer of_setprogress (ref n_cst_progresscontrol anv_progress) throws Exception
private function integer of_setsrvproc (boolean ab_switch)
public function integer of_lccls_mth_opt (ref str_lcproccls astr_lcproccls) throws Exception
public function integer of_lccls_mth_loan (n_ds ads_clsmth) throws Exception
public function integer of_lccls_mth_loanarr (n_ds ads_clsmth) throws Exception
private function integer of_setsrvlninterest (boolean ab_switch)
public function integer of_lccls_year_lon_opt (str_lcproccls astr_lcproccls) throws Exception
private function integer of_lccls_year_lon_clrdoc (n_ds ads_clsyr_lon, n_ds ads_clsyr_doc) throws Exception
private function integer of_lccls_year_lon_clrint (n_ds ads_clsyr_lon) throws Exception
public function integer of_init_lccls_year_lon_opt (ref str_lcproccls astr_lcproccls) throws Exception
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

public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws Exception;/***********************************************************
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

public function integer of_setprogress (ref n_cst_progresscontrol anv_progress) throws Exception;/***********************************************************
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

private function integer of_setsrvproc (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_procsrv ) or not isvalid( inv_procsrv ) then
		inv_procsrv	= create n_cst_procservice
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

public function integer of_lccls_mth_opt (ref str_lcproccls astr_lcproccls) throws Exception;string ls_xmloption , ls_recv
integer li_year, li_mth
boolean lb_err = false
n_ds lds_clsmth
this.of_setsrvdwxmlie( true )

inv_progress.istr_progress.progress_text = "ประมวลปิดสิ้นเดือน"
inv_progress.istr_progress.progress_index = 0
inv_progress.istr_progress.progress_max = 1
inv_progress.istr_progress.subprogress_text = "เตรียมข้อมูล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1
inv_progress.istr_progress.status = 8

lds_clsmth = create n_ds
lds_clsmth.dataobject = "d_lcsrv_clsmonth_loanoption"
lds_clsmth.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_lcproccls.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_clsmth , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมวลผลปิดสิ้นเดือน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

li_year		= lds_clsmth.object.clsmth_year[1]
li_mth			= lds_clsmth.object.clsmth_month[1]

ls_recv		= string( li_year ) + string( li_mth , "00" )

inv_progress.istr_progress.progress_max = 2

try
	inv_progress.istr_progress.progress_text = "สรุปยอดหนี้คงเหลือ"
	this.of_lccls_mth_loan(lds_clsmth)
	inv_progress.istr_progress.progress_index = 1
	
	inv_progress.istr_progress.progress_text = "ทำรายการดอกเบี้ยค้างรับ"
	this.of_lccls_mth_loanarr(lds_clsmth)
	inv_progress.istr_progress.progress_index = 2
catch( Exception lthw_shlncls )
	ithw_exception.text = lthw_shlncls.text
	lb_err = true
end try

objdestroy:
if isvalid(lds_clsmth) then destroy lds_clsmth

this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_slcls_process.of_lccls_mth_opt()~r~n" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca ;
end if

inv_progress.istr_progress.status = 1

return 1
end function

public function integer of_lccls_mth_loan (n_ds ads_clsmth) throws Exception;string ls_coopid , ls_recv , ls_lastmth
string ls_sql
integer li_year, li_mth

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลหนี้ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 2

ls_coopid			= ads_clsmth.object.coop_id[1]
li_year			= ads_clsmth.object.clsmth_year[1]
li_mth				= ads_clsmth.object.clsmth_month[1]

ls_recv			= string( li_year ) + string( li_mth , "00" )
ls_lastmth		= "01" + "/" + string( li_mth , "00" ) + "/" + string( li_year - 543 )

// ตรวจสอบการสั่งหยุดทำงาน
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "หยุดการทำงานโดยผู้ใช้ระบบ"
	throw ithw_exception
end if	

ls_sql		= " delete from lcclsmthbalance where coop_id = '"+ ls_coopid +"' and clsmth_period = '"+ ls_recv +"' " 
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_lccls_mth_loan (70.0) "
	ithw_exception.text 	+= "~r~nไม่สามารถลบข้อมูลหนี้ ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลหนี้ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 1

// ตรวจสอบการสั่งหยุดทำงาน
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "หยุดการทำงานโดยผู้ใช้ระบบ"
	throw ithw_exception
end if	

ls_sql		= " insert into lcclsmthbalance "
ls_sql		+= " ( coop_id , loancontract_no , clsmth_period , "
ls_sql		+= " loantype_code, principal_balance, lastcalint_date , "
ls_sql		+= " day_amt , intarrear_amt, intaccum_amt, intaccum_allamt ) "
ls_sql		+= " select lm.coop_id , lm.loancontract_no , '"+ ls_recv +"' ,  "
ls_sql		+= " lm.loantype_code , lm.principal_balance , lm.lastcalint_date , "
ls_sql		+= " ( last_day( to_date( '"+ ls_lastmth +"' , 'dd/mm/yyyy' ) ) - lm.lastcalint_date ) + 1 as calday , 0 as intamt , "
ls_sql		+= " lm.interest_accum , lm.intpayment_amt "
ls_sql		+= " from lccontmaster lm "
ls_sql		+= " where lm.coop_id = '"+ ls_coopid +"' "
ls_sql		+= " and lm.principal_balance > 0 "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_lccls_mth_loan (70.1) "
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลหนี้ ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลหนี้ เสร็จเรียบร้อย"
inv_progress.istr_progress.subprogress_index = 2

return 1
end function

public function integer of_lccls_mth_loanarr (n_ds ads_clsmth) throws Exception;string ls_coopid , ls_recv
string ls_concoop , ls_contno , ls_continttabcode
string ls_loantype
integer li_intsteptype , li_continttype
integer li_year, li_mth , li_seqno
long ll_index , ll_count
dec{3} ldc_intamt, ldc_balance
dec{3} ldc_apvamt , ldc_contintfixrate , ldc_contintincrease
datetime ldtm_lastcal , ldtm_calintto
boolean lb_err = false
n_ds lds_loanarr , lds_inttable

str_lccalinterest lstr_calintcri

inv_progress.istr_progress.subprogress_text = "ดึงข้อมูลหนี้ กรุณารอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1

this.of_setsrvproc( true )
this.of_setsrvlninterest( true )

lds_loanarr		= create n_ds
lds_loanarr.dataobject = "d_lcsrv_clsmonth_loandata"
lds_loanarr.settransobject( itr_sqlca )

ls_coopid			= ads_clsmth.object.coop_id[1]
li_year			= ads_clsmth.object.clsmth_year[1]
li_mth				= ads_clsmth.object.clsmth_month[1]

ls_recv			= string( li_year ) + string( li_mth , "00" )
li_mth++
if li_mth = 13 then 
	li_mth = 1
	li_year++
end if
li_year	= li_year - 543

ldtm_calintto	= datetime( string( li_year ) + "/" + string( li_mth , "00" ) + "/" + "01" )

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqldw_column( lds_loanarr, " and lcclsmthbalance.coop_id = '" + ls_coopid + "' " ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_loanarr, " and lcclsmthbalance.clsmth_period = '"+ ls_recv +"' " ) // ใส่เงื่อนไขอื่นๆ
catch( Exception lthw_setdwsql )
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (0.2)"
	ithw_exception.text	+= lthw_setdwsql.text
	lb_err = true
end try
if lb_err then Goto objdestroy

ll_count	= lds_loanarr.retrieve()
if ll_count < 0 then goto objdestroy
inv_progress.istr_progress.subprogress_max = ll_count

for ll_index = 1 to ll_count
	
	inv_progress.istr_progress.subprogress_index	= ll_index
	
	// ตรวจสอบการสั่งหยุดทำงาน
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "หยุดการทำงานโดยผู้ใช้ระบบ"
		lb_err = true ; Goto objdestroy
	end if	
	
	ls_continttabcode		= lds_loanarr.object.int_continttabcode[ll_index]
	li_intsteptype			= lds_loanarr.object.int_intsteptype[ll_index]
	li_continttype			= lds_loanarr.object.int_continttype[ll_index]
	ls_concoop 				= lds_loanarr.object.coop_id[ll_index]
	ls_contno				= lds_loanarr.object.loancontract_no[ll_index]
	ldc_apvamt				= lds_loanarr.object.loanapprove_amt[ll_index]
	ldc_balance				= lds_loanarr.object.principal_balance[ll_index]
	ldc_contintfixrate		= lds_loanarr.object.int_contintrate[ll_index]
	ldc_contintincrease	= lds_loanarr.object.int_contintincrease[ll_index]
	ldtm_lastcal				= lds_loanarr.object.lastcalint_date[ll_index]
	
	lstr_calintcri.contcoop_id				= ls_concoop
	lstr_calintcri.loancontract_no		= ls_contno
	lstr_calintcri.loantype_code			= ls_loantype
	lstr_calintcri.loanapprove_amt		= ldc_apvamt
	lstr_calintcri.int_continttype			= li_continttype
	lstr_calintcri.int_contintrate			= ldc_contintfixrate
	lstr_calintcri.int_continttabcode		= ls_continttabcode
	lstr_calintcri.int_contintincrease	= ldc_contintincrease
	lstr_calintcri.int_intsteptype			= li_intsteptype
	lstr_calintcri.prncalint_amt			= ldc_balance
	lstr_calintcri.calint_from				= ldtm_lastcal
	lstr_calintcri.calint_to					= ldtm_calintto
	
	if ldtm_lastcal = ldtm_calintto then continue ;
	
	ldc_intamt		= inv_intsrv.of_computeinterestx( lstr_calintcri )
	
	update	lcclsmthbalance
	set			intarrear_amt	= :ldc_intamt
	where	coop_id = :ls_concoop
	and		loancontract_no = :ls_contno
	and		clsmth_period = :ls_recv
	using itr_sqlca ;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "พบข้อผิดพลาด of_lccls_mth_loanarr (70.1) "
		ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทข้อมูลดอกเบี้ยค้างรับได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end if
	if lb_err then Goto objdestroy
	
	inv_progress.istr_progress.subprogress_text = string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " สัญญา : " + ls_contno + " ดอกเบี้ยค้างชำระ : " + string( ldc_intamt , "#,##0.00" )
	
next

objdestroy:
if isvalid(lds_loanarr) then destroy lds_loanarr
if isvalid(lds_inttable) then destroy lds_inttable

this.of_setsrvlninterest( false )
this.of_setsrvproc( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_slcls_process.of_lccls_mth_loanarr()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

private function integer of_setsrvlninterest (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_intsrv ) or not isvalid( inv_intsrv ) then
		inv_intsrv	= create n_cst_lncoopsrv_interest
		inv_intsrv.of_initservice( inv_transection )
		return 1
	end if
else
	if isvalid( inv_intsrv ) then
		destroy inv_intsrv
		return 1
	end if
end if

return 0
end function

public function integer of_lccls_year_lon_opt (str_lcproccls astr_lcproccls) throws Exception;string ls_xmloption , ls_xmldoc , ls_recv
integer li_year
integer li_clrint , li_clrdoc
boolean lb_err = false
n_ds lds_clsyr_lon , lds_clsyr_doc

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true )

inv_progress.istr_progress.progress_text = "ประมวลปิดสิ้นปีหนี้"
inv_progress.istr_progress.progress_index = 0
inv_progress.istr_progress.progress_max = 1
inv_progress.istr_progress.subprogress_text = "เตรียมข้อมูล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1
inv_progress.istr_progress.status = 8

lds_clsyr_lon = create n_ds
lds_clsyr_lon.dataobject = "d_slclssrv_prc_year_lon_option"
lds_clsyr_lon.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_lcproccls.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_clsyr_lon , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมวลผลปิดสิ้นปีหนี้(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

li_year		= lds_clsyr_lon.object.clsyr_year[1]
li_clrint		= lds_clsyr_lon.object.clrint_status[1]
li_clrdoc		= lds_clsyr_lon.object.clrdoc_status[1]

ls_recv		= string( li_year )

if li_clrdoc = 1 then
	lds_clsyr_doc= create n_ds
	lds_clsyr_doc.dataobject = "d_slclssrv_prc_year_lon_docctrl_list"
	lds_clsyr_doc.settransobject( itr_sqlca )
	
	// นำเข้าข้อมูล
	ls_xmldoc		= astr_lcproccls.xml_clrdoc
	if inv_dwxmliesrv.of_xmlimport( lds_clsyr_doc , ls_xmldoc ) < 1 then
		ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเคลียร์เลขที่เอกสาร(0.2)"
		ithw_exception.text += "~r~nกรุณาตรวจสอบ"
		lb_err = true ; Goto objdestroy
	end if
end if

inv_progress.istr_progress.progress_max = li_clrint + li_clrdoc

try
	if li_clrint = 1 then
		inv_progress.istr_progress.progress_text = "เคลียร์ดอกเบี้ยสะสม"
		this.of_lccls_year_lon_clrint(lds_clsyr_lon)
		inv_progress.istr_progress.progress_index = 1
	end if
	
	if li_clrdoc = 1 then
		inv_progress.istr_progress.progress_text = "เคลียร์เลขที่เอกสาร"
		this.of_lccls_year_lon_clrdoc(lds_clsyr_lon,lds_clsyr_doc)
		inv_progress.istr_progress.progress_index = 1
	end if
catch( Exception lthw_clsyr_lon )
	ithw_exception.text	= lthw_clsyr_lon.text
	lb_err = true
end try

objdestroy:
this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false )

if isvalid(lds_clsyr_lon) then destroy lds_clsyr_lon
if isvalid(lds_clsyr_doc) then destroy lds_clsyr_doc

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_slcls_process.of_lccls_year_lon_opt()~r~n" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca ;
end if

inv_progress.istr_progress.status = 1

return 1
end function

private function integer of_lccls_year_lon_clrdoc (n_ds ads_clsyr_lon, n_ds ads_clsyr_doc) throws Exception;string ls_coopid , ls_recv 
string ls_sql
string ls_doccoop , ls_doccode , ls_docname , ls_docyear
string ls_entry , ls_entry_bycoop
long ll_index , ll_count

inv_progress.istr_progress.subprogress_text = "กำลังทำรายการเคลียร์เลขที่เอกสาร รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 2

ls_coopid				= ads_clsyr_lon.object.coop_id[1]
ls_entry				= ads_clsyr_lon.object.entry_id[1] ; if isnull( ls_entry ) then ls_entry = ""
ls_entry_bycoop	= ads_clsyr_lon.object.entryby_coopid[1] ; if isnull( ls_entry_bycoop ) then ls_entry_bycoop = ""

// กรองให้เหลือแต่พวกที่ทำรายการเท่านั้น
ads_clsyr_doc.setfilter( "clear_type > 0" )
ads_clsyr_doc.filter()

// ลบพวกไม่ทำรายการทิ้งไป
ads_clsyr_doc.rowsdiscard( 1, ads_clsyr_doc.filteredcount(), filter! )

ll_count		= ads_clsyr_doc.rowcount()

for ll_index = 1 to ll_count
	// ตรวจสอบการสั่งหยุดทำงาน
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "หยุดการทำงานโดยผู้ใช้ระบบ"
		throw ithw_exception
	end if	
	
	ls_doccoop		= ads_clsyr_doc.object.coop_id[ll_index]
	ls_doccode		= ads_clsyr_doc.object.document_code[ll_index]
	ls_docname		= ads_clsyr_doc.object.document_name[ll_index]
	ls_docyear		= ads_clsyr_doc.object.document_year[ll_index]
	
	ls_docyear		= string( integer( ls_docyear ) + 1 )
	
	update cmdocumentcontrol cm
	set cm.last_documentno	= 0,
	cm.document_year = :ls_docyear
	where cm.coop_id = :ls_doccoop
	and cm.document_code = :ls_doccode
	using itr_sqlca ;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "พบข้อผิดพลาด of_lccls_year_lon_clrint (70.0) "
		ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์เลขที่เอกสาร ได้"
		ithw_exception.text 	+= "~r~n" + ls_doccode 
		ithw_exception.text 	+= "~r~n" + ls_docname
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		throw ithw_exception
	end if
	
	inv_progress.istr_progress.subprogress_text = "เคลียร์เลขที่เอกสาร " + ls_docname + " เสร็จเรียบร้อย"
	inv_progress.istr_progress.subprogress_index = ll_index
next

return 1
end function

private function integer of_lccls_year_lon_clrint (n_ds ads_clsyr_lon) throws Exception;string ls_coopid , ls_recv 
string ls_sql
string ls_entry , ls_entry_bycoop

inv_progress.istr_progress.subprogress_text = "กำลังทำรายการเคลียร์ดอกเบี้ยสะสม รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1

ls_coopid				= ads_clsyr_lon.object.coop_id[1]
ls_entry				= ads_clsyr_lon.object.entry_id[1] ; if isnull( ls_entry ) then ls_entry = ""
ls_entry_bycoop	= ads_clsyr_lon.object.entryby_coopid[1] ; if isnull( ls_entry_bycoop ) then ls_entry_bycoop = ""

// ตรวจสอบการสั่งหยุดทำงาน
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "หยุดการทำงานโดยผู้ใช้ระบบ"
	throw ithw_exception
end if	

ls_sql		= " update lccontmaster "
ls_sql		+= "set interest_accum = 0 "
ls_sql		+= "where lccontmaster.coop_id = '"+ ls_coopid +"' "

execute immediate :ls_sql using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_lccls_year_lon_clrint (70.0) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ดอกเบี้ยสะสมทะเบียนหนี้ ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "เคลียร์ดอกเบี้ยสะสมทะเบียนหนี้ เสร็จเรียบร้อย"
inv_progress.istr_progress.subprogress_index = 1

return 1
end function

public function integer of_init_lccls_year_lon_opt (ref str_lcproccls astr_lcproccls) throws Exception;string ls_coopid
string ls_xmloption , ls_xmldoc
boolean lb_err = false
n_ds lds_clsyr_lon , lds_clsyr_doc

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true )

lds_clsyr_lon = create n_ds
lds_clsyr_lon.dataobject = "d_slclssrv_prc_year_lon_option"
lds_clsyr_lon.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_lcproccls.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_clsyr_lon , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมวลผลปิดสิ้นปีหนี้(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_clsyr_doc= create n_ds
lds_clsyr_doc.dataobject = "d_slclssrv_prc_year_lon_docctrl_list"
lds_clsyr_doc.settransobject( itr_sqlca )

ls_coopid		= lds_clsyr_lon.object.coop_id[1]

try
//	inv_procsrv.of_set_sqldw_column( lds_clsyr_doc, " where cmdocumentcontrol.coop_id = '"+ ls_coopid +"' " ) // ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_clsyr_doc, " and cmdocumentcontrol.system_code in ( 'LON' , 'KEP' , 'DIV' ) " ) // ใส่เงื่อนไขอื่นๆ
catch( Exception lthw_setdwsql )
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (0.0)"
	ithw_exception.text	+= lthw_setdwsql.text
	throw ithw_exception
end try

lds_clsyr_doc.retrieve()

astr_lcproccls.xml_option	= inv_dwxmliesrv.of_xmlexport( lds_clsyr_lon )
astr_lcproccls.xml_clrdoc	= inv_dwxmliesrv.of_xmlexport( lds_clsyr_doc )

objdestroy:
this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false )

if isvalid(lds_clsyr_lon) then destroy lds_clsyr_lon
if isvalid(lds_clsyr_doc) then destroy lds_clsyr_doc

if lb_err then
	astr_lcproccls.xml_option	= ""
	astr_lcproccls.xml_clrdoc	= ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_slcls_process.of_init_slcls_year_lon_opt()~r~n" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca ;
end if

return 1
end function

on n_cst_lncoopsrv_clsprocess.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_lncoopsrv_clsprocess.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create Exception
end event

