$PBExportHeader$n_cst_loansrv_collpermiss.sru
forward
global type n_cst_loansrv_collpermiss from NonVisualObject
end type
end forward

global type n_cst_loansrv_collpermiss from NonVisualObject
end type
global n_cst_loansrv_collpermiss n_cst_loansrv_collpermiss

type variables
transaction		itr_sqlca
Exception		ithw_exception

string		is_coopcontrol, is_coopid


boolean	ib_resignchk = true

n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_datawindowsservice	inv_dwsrv
n_cst_stringservice			inv_stringsrv
n_cst_datetimeservice		inv_datetime
n_cst_doccontrolservice		inv_docsrv
end variables

forward prototypes
private function integer of_setsrvdwxmlie (boolean ab_switch)
private function integer of_setsrvdw (boolean ab_switch)
public function decimal of_getcollusereqamt (string as_coopid, string as_refcollno, string as_loantype, string as_colltype, string as_excludereq) throws Exception
private function integer of_checkcollmancountcont (n_ds ads_contgrt, integer ai_maxcont) throws Exception
private function integer of_setsrvstring (boolean ab_switch)
public function decimal of_getcollusecontamt (string as_coopid, string as_refcollno, string as_loantype, string as_colltype, string as_excludecont, string as_excludereq) throws Exception
private function integer of_getcollmanuselist (string as_mcoopid, string as_memno, ref n_ds ads_grtmaninfo) throws Exception
private function integer of_parsetoarray (string as_source, ref string as_contclr[])
private function integer of_checkcollmancountmem (n_ds ads_contgrt, string as_reqmemno, integer ai_maxmem) throws Exception
private function integer of_checkcollmancount_bygrp (string as_reqmemno, string as_reqlntype, integer ai_memtype, n_ds ads_mangrt) throws Exception
public function integer of_checkcollmancount (string as_mcoopid, string as_collmemno, string as_reqmemno, string as_reqlntype, string as_excludecont, string as_excludereq) throws Exception
private function integer of_setsrvdatetime (boolean ab_switch)
public function integer of_getcollpermiss (string as_loantype, string as_colltype, string as_refcoopid, string as_refcollno, datetime adtm_check, ref decimal adc_permiss, ref decimal adc_maxcoll, ref decimal adc_percent) throws Exception
private function integer of_getcollpermiss_man (string as_loantype, string as_mcoopid, string as_memno, datetime adtm_check, ref decimal adc_permiss, ref decimal adc_maxcoll) throws Exception
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans)
public function integer of_isvalidcoll (string as_reqlntype, string as_colltype, string as_refcoopid, string as_refcollno) throws Exception
public function integer of_isvalidcoll (ref str_permisscoll astr_permcoll) throws Exception
public function integer of_setresigncheck (boolean ab_switch)
public function integer of_savelncollmast2 (ref str_lncollmast astr_collmast) throws Exception
public function integer of_setsrvdoccontrol (boolean ab_switch)
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

private function integer of_setsrvdw (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_dwsrv ) or not isvalid( inv_dwsrv ) then
		inv_dwsrv	= create n_cst_datawindowsservice
		inv_dwsrv.of_initservice( inv_transection )
		return 1
	end if
else
	if isvalid( inv_dwsrv ) then
		destroy inv_dwsrv
		return 1
	end if
end if

return 0
end function

public function decimal of_getcollusereqamt (string as_coopid, string as_refcollno, string as_loantype, string as_colltype, string as_excludereq) throws Exception;//////////////////////////////////////////////////////////////////
//	หาค่าการค้ำประกันที่ใช้ไปแล้วของสมาชิก
//	argument
//		as_refcollno		: เลขที่หลักประกัน
//		as_loantype	: ประเภทเงินกู้ที่ต้องการตรวจสอบค้ำ
//		as_colltype		: ประเภทหลักประกัน
//		as_contno[]	: เลขที่สัญญาที่ไม่นับการค้ำประกัน ( ย้ำ ไม่นับ!! )
//		as_reqno[]		: เลขที่ใบคำขอที่กำลังตรวจสอบอยู่นี้
//////////////////////////////////////////////////////////////////
string ls_sqlbase, ls_sqlcond, ls_sqlall, ls_mangrtgrpmain, ls_mangrtgrpco
integer li_index, li_count, li_memtype, li_retval
dec{2}ldc_reqamt, ldc_collactamt, ldc_smcolluse
dec{4}ldc_collpercent, ldc_basepercent
boolean lb_error = false
n_ds lds_loangrt

ls_sqlbase = ""
ls_sqlcond = ""
ls_sqlall = ""

ls_sqlbase += " select	trim( a.loanrequest_docno ) as loanrequest_docno, nvl( a.loanrequest_amt, 0 ) as loanrequest_amt, "
ls_sqlbase += "		nvl( b.collactive_percent, 0 ) as collactive_percent, nvl( b.collbase_percent, 0 ) as collbase_percent, "
ls_sqlbase += "		nvl( b.collactive_amt, 0 ) as collactive_amt, nvl( c.collreturnval_status, 0 ) as collreturnval_status "
ls_sqlbase += " from	lnreqloan a, lnreqloancoll b, lnloantype c "
ls_sqlbase += " where	( a.loanrequest_docno	= b.loanrequest_docno ) "
ls_sqlbase += " and		( a.loantype_code			= c.loantype_code ) "
ls_sqlbase += " and		( a.loanrequest_status	= 8 ) "

ls_sqlcond += " and		( b.ref_collno			= '" + as_refcollno + "' ) "
ls_sqlcond += " and		( b.loancolltype_code	= '" + as_colltype + "' ) "

if as_colltype = "01" then
	select member_type
	into :li_memtype
	from mbmembmaster
	where(coop_id = :is_coopcontrol)
	and (member_no = :as_refcollno)
	using itr_sqlca;
	
	select mangrtpermgrp_code, mangrtpermgrpco_code
	into :ls_mangrtgrpmain, :ls_mangrtgrpco
	from lnloantype
	where(coop_id = :is_coopcontrol)
	and (loantype_code = :as_loantype)
	using itr_sqlca;
	
	ls_sqlcond += " and		( c.cntmangrtval_flag = 1 )"
	
	if li_memtype = 1 then
		ls_sqlcond += " and		( c.mangrtpermgrp_code		= '" + ls_mangrtgrpmain + "' )"
	else
		ls_sqlcond += " and		( c.mangrtpermgrpco_code	= '" + ls_mangrtgrpco + "' )"
	end if
end if

// ตัดใบคำขอกู้เงินที่ไม่นับออก
if trim(as_excludereq) <> "" and not isnull(as_excludereq) then
	ls_sqlcond += " and		( a.loanrequest_docno <> '" + as_excludereq + "' ) "
end if

ls_sqlall = ls_sqlbase + ls_sqlcond;

// สร้าง Dw ขึ้นมาใช้งาน
this.of_setsrvdw( true )

lds_loangrt = create n_ds
lds_loangrt.settransobject(itr_sqlca)

try
	inv_dwsrv.of_create_dw(lds_loangrt, ls_sqlall, "")
catch (Exception lthw_crtdw)
	ithw_exception.text = lthw_crtdw.text
	lb_error = true
end try

if lb_error then goto objdestroy

lds_loangrt.settransobject(itr_sqlca)
lds_loangrt.retrieve()

// ตรวจสอบ % การค้ำประกัน
li_count = lds_loangrt.rowcount()
for li_index = 1 to li_count
	li_retval = lds_loangrt.GetItemNumber(li_index, "collreturnval_status")
	ldc_reqamt = lds_loangrt.GetItemDecimal(li_index, "loanrequest_amt")
	ldc_basepercent = lds_loangrt.GetItemDecimal(li_index, "collbase_percent")
	ldc_collactamt = lds_loangrt.GetItemDecimal(li_index, "collactive_amt")
	
	ldc_smcolluse = ldc_smcolluse+ (ldc_collactamt / (ldc_basepercent/100))
next

if isnull(ldc_smcolluse) then ldc_smcolluse = 0

objdestroy:
destroy (lds_loangrt)

return ldc_smcolluse
end function

private function integer of_checkcollmancountcont (n_ds ads_contgrt, integer ai_maxcont) throws Exception;string		ls_contno, ls_loantype
integer	li_index, li_count, li_find, li_grtcount

li_grtcount		= ads_contgrt.rowcount()

if li_grtcount <= 0 then
	return 1
end if
		
if li_grtcount >= ai_maxcont then
	ithw_exception.text	= "ผู้ค้ำประกันคนนี้ ค้ำประกันสัญญาครบแล้ว จำนวนสัญญา/คำขอกู้ที่ค้ำไปแล้ว "+string( li_grtcount, "#,##0" )+"   จำนวนสัญญาที่ค้ำได้ "+string( ai_maxcont, "#,##0" )
	throw ithw_exception
end if

return 1
end function

private function integer of_setsrvstring (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_stringsrv ) or not isvalid( inv_stringsrv ) then
		inv_stringsrv	= create n_cst_stringservice
		return 1
	end if
else
	if isvalid( inv_stringsrv ) then
		destroy inv_stringsrv
		return 1
	end if
end if

return 0
end function

public function decimal of_getcollusecontamt (string as_coopid, string as_refcollno, string as_loantype, string as_colltype, string as_excludecont, string as_excludereq) throws Exception;//////////////////////////////////////////////////////////////////
//	หาค่าการค้ำประกันที่ใช้ไปแล้วของสมาชิก
//	argument
//		as_refcollno		: เลขที่หลักประกัน
//		as_loantype	: ประเภทเงินกู้ที่ต้องการตรวจสอบค้ำ
//		as_colltype		: ประเภทหลักประกัน
//		as_contno	: เลขที่สัญญาที่ไม่นับการค้ำประกัน ( ย้ำ ไม่นับ!! )
//		as_reqno[]		: เลขที่ใบคำขอที่กำลังตรวจสอบอยู่นี้
//////////////////////////////////////////////////////////////////
string ls_contcut, ls_temp
string ls_sqlbase, ls_sqlcond, ls_sqlall, ls_mangrtgrpmain, ls_mangrtgrpco, ls_contexc[]
integer li_memtype, li_retval
long ll_max, ll_find, ll_index
dec ldc_withdraw, ldc_balance, ldc_sumcolluse, ldc_collactamt
dec ldc_baseperc, ldc_collactperc
boolean lb_error = false
n_ds lds_loangrt

ls_sqlbase = ""
ls_sqlcond = ""
ls_sqlall = ""

ls_sqlbase += " select	trim( a.loancontract_no ) as loancontract_no, "
ls_sqlbase += "			nvl( a.withdrawable_amt, 0 ) as withdrawable_amt, nvl( a.principal_balance, 0 ) as principal_balance, "
ls_sqlbase += "			nvl( b.collactive_amt, 0 ) as collactive_amt, nvl( b.collactive_percent, 0 ) as collactive_percent, "
ls_sqlbase += "			nvl( b.collbase_percent, 0 ) as collbase_percent, nvl( c.collreturnval_status, 0 ) as collreturnval_status "
ls_sqlbase += " from	lncontmaster a, lncontcoll b, lnloantype c "
ls_sqlbase += " where	( a.coop_id				= b.coop_id ) "
ls_sqlbase += " and		( a.loancontract_no	= b.loancontract_no ) "
ls_sqlbase += " and		( a.coop_id				= c.coop_id ) "
ls_sqlbase += " and		( a.loantype_code		= c.loantype_code ) "
ls_sqlbase += " and		( a.contract_status		> 0 ) "
ls_sqlbase += " and		( b.coll_status			= 1 ) "

ls_sqlcond += " and		( b.ref_collno			= '" + as_refcollno + "' ) "
ls_sqlcond += " and		( b.loancolltype_code	= '" + as_colltype + "' ) "

if as_colltype = "01" then
	select member_type
	into :li_memtype
	from mbmembmaster
	where(coop_id = :is_coopcontrol)
	and (member_no = :as_refcollno)
	using itr_sqlca;
	
	select mangrtpermgrp_code, mangrtpermgrpco_code
	into :ls_mangrtgrpmain, :ls_mangrtgrpco
	from lnloantype
	where(coop_id = :is_coopcontrol)
	and (loantype_code = :as_loantype)
	using itr_sqlca;
	
	ls_sqlcond += " and		( c.cntmangrtval_flag = 1 )"
	
	if li_memtype = 1 then
		ls_sqlcond += " and		( c.mangrtpermgrp_code		= '" + ls_mangrtgrpmain + "' )"
	else
		ls_sqlcond += " and		( c.mangrtpermgrpco_code	= '" + ls_mangrtgrpco + "' )"
	end if
end if

// สัญญาที่ไม่นับนำมาตัดใส่ Array
this.of_parsetoarray(as_excludecont, ls_contexc)

// ถ้ามีสัญญาที่ไม่นับให้ใส่รูปแบบที่จะนำไปใช้ใน SQL ได้ เพราะเวลาส่งเข้ามามันไม่มี quate ( ' )
ll_max = upperbound(ls_contexc)
for ll_index = 1 to ll_max
	ls_temp += ",'" + trim(ls_contexc[ll_index])+"' "
next

if ls_temp <> "" and not isnull(ls_temp) then
	ls_sqlcond += " and		( a.loancontract_no not in ( " + mid(ls_temp, 2)+" ) )"
end if

ls_sqlall = ls_sqlbase + ls_sqlcond;

// สร้าง Dw ขึ้นมาใช้งาน
this.of_setsrvdw( true )

lds_loangrt = create n_ds
lds_loangrt.settransobject(itr_sqlca)

try
	inv_dwsrv.of_create_dw(lds_loangrt, ls_sqlall, "")
catch (Exception lthw_crtdw)
	ithw_exception.text = lthw_crtdw.text
	lb_error = true
end try

if lb_error then goto objdestroy

lds_loangrt.settransobject(itr_sqlca)
lds_loangrt.retrieve()

if as_excludereq = "" or isnull(as_excludereq) then
	as_excludereq = " "
end if

// สัญญาที่จะโดนหักกลบในคำขอกู้ที่ยังไม่อนุมัติ ไม่นับคำขอที่ตรวจอยู่นี้
declare reqclr_cur cursor for
select b.loancontract_no
from lnreqloan a, lnreqloanclr b, lncontcoll c
where(a.coop_id = b.coop_id)
and (a.loanrequest_docno = b.loanrequest_docno)
and (b.coop_id = c.coop_id)
and (b.loancontract_no = c.loancontract_no)
and (a.coop_id = :is_coopcontrol)
and (c.loancolltype_code = :as_colltype)
and (c.ref_collno = :as_refcollno)
and (a.loanrequest_docno <> :as_excludereq)
and (a.loanrequest_status = 8)
and (b.clear_status = 1)
and (c.coll_status = 1)
using itr_sqlca;

open reqclr_cur;
fetch reqclr_cur into :ls_contcut;
do while itr_sqlca.sqlcode = 0
	ll_find = lds_loangrt.find("loancontract_no = '" + ls_contcut + "'", 1, lds_loangrt.rowcount())
	if ll_find > 0 then
		lds_loangrt.rowsdiscard(ll_find, ll_find, primary!)
	end if
	fetch reqclr_cur into :ls_contcut;
loop
close reqclr_cur;

// ตรวจสอบ % การค้ำประกัน
ll_max = lds_loangrt.rowcount()
for ll_index = 1 to ll_max
	ldc_withdraw = lds_loangrt.GetItemDecimal(ll_index, "withdrawable_amt")
	ldc_balance = lds_loangrt.GetItemDecimal(ll_index, "principal_balance")
	ldc_baseperc = lds_loangrt.GetItemDecimal(ll_index, "collbase_percent")
	ldc_collactamt = lds_loangrt.GetItemDecimal(ll_index, "collactive_amt")
	ldc_collactperc = lds_loangrt.GetItemDecimal(ll_index, "collactive_percent")
	li_retval = lds_loangrt.GetItemNumber(ll_index, "collreturnval_status")
	
	if li_retval = 1 then
		ldc_sumcolluse = ldc_sumcolluse+(ldc_withdraw+ldc_balance)*(ldc_collactperc/ldc_baseperc)
	else
		ldc_sumcolluse = ldc_sumcolluse + (ldc_collactamt / (ldc_baseperc / 100))
	end if
next

if isnull(ldc_sumcolluse) then ldc_sumcolluse = 0

objdestroy:
destroy (lds_loangrt)

return ldc_sumcolluse
end function

private function integer of_getcollmanuselist (string as_mcoopid, string as_memno, ref n_ds ads_grtmaninfo) throws Exception;string			ls_sqlcont, ls_sqlreq, ls_sqlall

ls_sqlcont	= ""
ls_sqlreq		= ""
ls_sqlall		= ""

ls_sqlcont	+= " select	'CONT' as itemtype_code, "
ls_sqlcont	+= "			trim( a.loancontract_no ) as loancontract_no, "
ls_sqlcont	+= "			trim( b.member_no ) as member_no, "
ls_sqlcont	+= "			trim( c.mangrtpermgrp_code ) as mangrtpermgrp_code, "
ls_sqlcont	+= "			trim( c.mangrtpermgrpco_code ) as mangrtpermgrpco_code "
ls_sqlcont	+= " from	lncontcoll a, lncontmaster b, lnloantype c "
ls_sqlcont	+= " where	( a.coop_id				= b.coop_id ) "
ls_sqlcont	+= " and		( a.loancontract_no	= b.loancontract_no ) "
ls_sqlcont	+= " and		( b.coop_id				= c.coop_id ) "
ls_sqlcont	+= " and		( b.loantype_code		= c.loantype_code ) "
ls_sqlcont	+= " and		( a.loancolltype_code	= '01' ) "
ls_sqlcont	+= " and		( a.coll_status			= 1 ) "
ls_sqlcont	+= " and		( b.contract_status		> 0 ) "
ls_sqlcont	+= " and		( c.cntmangrtnum_flag > 0 ) "
ls_sqlcont	+= " and		( a.refcoop_id			= '"+as_mcoopid+"' ) "
ls_sqlcont	+= " and		( a.ref_collno			= '"+as_memno+"' ) "

ls_sqlreq		+= " select	'REQ' as itemtype_code, "
ls_sqlreq		+= "			trim( a.loanrequest_docno ) as loanrequest_docno, "
ls_sqlreq		+= "			trim( b.member_no ) as member_no, "
ls_sqlreq		+= "			trim( c.mangrtpermgrp_code ) as mangrtpermgrp_code, "
ls_sqlreq		+= "			trim( c.mangrtpermgrpco_code ) as mangrtpermgrpco_code "
ls_sqlreq		+= " from	lnreqloancoll a, lnreqloan b, lnloantype c "
ls_sqlreq		+= " where	( a.coop_id					= b.coop_id ) "
ls_sqlreq		+= " and		( a.loanrequest_docno	= b.loanrequest_docno ) "
ls_sqlreq		+= " and		( b.coop_id					= c.coop_id ) "
ls_sqlreq		+= " and		( b.loantype_code			= c.loantype_code ) "
ls_sqlreq		+= " and		( a.loancolltype_code		= '01' ) "
ls_sqlreq		+= " and		( b.loanrequest_status	= 8 ) "
ls_sqlreq		+= " and		( c.cntmangrtnum_flag 	> 0 ) "
ls_sqlreq		+= " and		( a.refcoop_id			= '"+as_mcoopid+"' ) "
ls_sqlreq		+= " and		( a.ref_collno			= '"+as_memno+"' ) "

ls_sqlall		= ls_sqlcont +" union "+ ls_sqlreq

// สร้าง Dw ขึ้นมาใช้งาน
this.of_setsrvdw( true )

if not isvalid( ads_grtmaninfo ) then
	ads_grtmaninfo		= create n_ds
end if

ads_grtmaninfo.settransobject( itr_sqlca )

try
	inv_dwsrv.of_create_dw( ads_grtmaninfo, ls_sqlall , "" )
catch( Exception lthw_crtdw )
	ithw_exception.text	= lthw_crtdw.text
	throw ithw_exception
end try

ads_grtmaninfo.settransobject( itr_sqlca )
ads_grtmaninfo.retrieve()

return 1
end function

private function integer of_parsetoarray (string as_source, ref string as_contclr[]);this.of_setsrvstring( true )
inv_stringsrv.of_parsetoarray( as_source, ",", as_contclr )
this.of_setsrvstring( false )

return 1
end function

private function integer of_checkcollmancountmem (n_ds ads_contgrt, string as_reqmemno, integer ai_maxmem) throws Exception;string		ls_memno, ls_memprior
integer	li_grtcount
long		ll_index, ll_count

li_grtcount	= 0
ll_count		= ads_contgrt.rowcount()

if ll_count <= 0 then
	return 1
end if

// ตัดคนกู้นี้ออกไป
ads_contgrt.setfilter( "member_no <> '"+as_reqmemno+"'" )
ads_contgrt.filter()

ads_contgrt.setsort( "member_no A" ) ;	ads_contgrt.sort()

ll_count	= ads_contgrt.rowcount()

for ll_index = 1 to ll_count
	ls_memno		= ads_contgrt.getitemstring( ll_index, "member_no" )
	
	if ls_memno <> ls_memprior then
		ls_memprior	= ls_memno
		li_grtcount ++
	end if
next

if li_grtcount >= ai_maxmem then
	ithw_exception.text	= "ผู้ค้ำประกันคนนี้ ค้ำประกันผู้กู้ครบแล้ว จำนวนผู้กู้ที่ค้ำไปแล้ว "+string( li_grtcount, "#,##0" )+"  จำนวนผู้กู้ที่ค้ำได้ "+string( ai_maxmem, "#,##0" )
	throw ithw_exception
end if

return 1
end function

private function integer of_checkcollmancount_bygrp (string as_reqmemno, string as_reqlntype, integer ai_memtype, n_ds ads_mangrt) throws Exception;string		ls_grtgrpmain, ls_grtgrpco, ls_grtgrpperm
integer	li_flagmemnum, li_flagcontnum, li_memnum, li_contnum

// ดูว่าเงินกู้ประเภทนี้อยู่ในกลุ่มการค้ำอะไร
select		mangrtpermgrp_code, mangrtpermgrpco_code
into		:ls_grtgrpmain, :ls_grtgrpco
from		lnloantype
where	( coop_id				= :is_coopcontrol )
and		( loantype_code	= :as_reqlntype )
using		itr_sqlca ;

// กลุ่มการค้ำแยกตามประเภทสมาชิก
if ai_memtype = 1 then
	ls_grtgrpperm		= ls_grtgrpmain
else
	ls_grtgrpperm		= ls_grtgrpco
end if

// ดูข้อกำหนดตามกลุ่มการค้ำ
select		grtright_memflag, grtright_contflag, grtright_member, grtright_contract
into		:li_flagmemnum, :li_flagcontnum, :li_memnum, :li_contnum
from		lngrpmangrtperm
where	( coop_id						= :is_coopcontrol )
and		( mangrtpermgrp_code	= :ls_grtgrpperm )
using		itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "ไม่พบข้อมูลรหัสกลุ่มการค้ำประกัน รหัส "+ls_grtgrpperm+" กรุณาตรวจสอบ"
	throw ithw_exception
end if

if isnull( li_flagmemnum ) then li_flagmemnum = 0
if isnull( li_flagcontnum ) then li_flagcontnum = 0
if isnull( li_memnum ) then li_memnum = 0
if isnull( li_contnum ) then li_contnum = 0

// ถ้าไม่ตรวจสอบก็ออก แสดงว่าค้ำได้
if li_flagcontnum = 0 and li_flagmemnum = 0 then
	return 1
end if

// กรองให้เหลือแต่ประเภทกลุ่มการค้ำประกันนี้
if ai_memtype = 1 then
	ads_mangrt.setfilter( "mangrtpermgrp_code = '"+ls_grtgrpperm+"'" )
	ads_mangrt.filter()
else
	ads_mangrt.setfilter( "mangrtpermgrpco_code = '"+ls_grtgrpperm+"'" )
	ads_mangrt.filter()
end if

ads_mangrt.rowsdiscard( 1, ads_mangrt.filteredcount(), filter! )

// ค้ำได้ไม่เกินจำนวนสัญญา
if li_flagcontnum = 1 then
	this.of_checkcollmancountcont( ads_mangrt, li_contnum )
end if

// ค้ำได้ไม่เกินจำนวนคน
if li_flagmemnum = 1 then
	this.of_checkcollmancountmem( ads_mangrt, as_reqmemno, li_memnum )
end if

return 1
end function

public function integer of_checkcollmancount (string as_mcoopid, string as_collmemno, string as_reqmemno, string as_reqlntype, string as_excludecont, string as_excludereq) throws Exception;string		ls_grtgrpmain, ls_grtgrpco
string		ls_contexc[]
integer	li_index, li_count, li_find, li_grtcount, li_memtype
integer	li_flagmemnum, li_flagcontnum, li_grtmaxcont, li_grtmaxmem
boolean	lb_error = false
n_ds		lds_mangrt

// ดึงรายละเอียดการค้ำประกัน
try
	this.of_getcollmanuselist( as_mcoopid, as_collmemno, lds_mangrt )
catch( Exception lthw_errget )
	ithw_exception.text	= lthw_errget.text
	lb_error					= true
end try

if lb_error then
	goto objdestroy
end if

// ถ้าไม่มีการค้ำตามสบายเลย
if lds_mangrt.rowcount() <= 0 then
	goto objdestroy
end if

// สัญญาที่ไม่นับนำมาตัดใส่ Array
this.of_parsetoarray( as_excludecont, ls_contexc )

// ตัดสัญญาที่ไม่นับออกไป
li_count		= upperbound( ls_contexc )
if li_count > 0 then
	for li_index = 1 to li_count
		li_find	= lds_mangrt.find( "loancontract_no = '"+ls_contexc[ li_index ]+"' and itemtype_code = 'CONT'", 1, lds_mangrt.rowcount() )
		if li_find > 0 then
			lds_mangrt.rowsdiscard( li_find, li_find, primary! )
		end if
	next
end if

li_grtcount		= lds_mangrt.rowcount()

if li_grtcount <= 0 then
	goto objdestroy
end if

// ตัดคำขอที่ไม่นับออกไป
if as_excludereq <> "" and not isnull( as_excludereq ) then
	li_find	= lds_mangrt.find( "loanrequest_docno = '"+as_excludereq+"' and itemtype_code = 'REQ'", 1, lds_mangrt.rowcount() )
	
	if li_find > 0 then
		lds_mangrt.rowsdiscard( li_find, li_find, primary! )
	end if
end if

// ประเภทสมาชิกของคนค้ำ
select		member_type
into		:li_memtype
from		mbmembmaster
where	( coop_id			= :as_mcoopid )
and		( member_no	= :as_collmemno )
using		itr_sqlca ;

// ตรวจสอบตามกลุ่มการค้ำประกันก่อน
try
	this.of_checkcollmancount_bygrp( as_reqmemno, as_reqlntype, li_memtype, lds_mangrt )
catch( Exception lthw_errgrp )
	ithw_exception.text	= lthw_errgrp.text
	lb_error					= true
end try

if lb_error then
	goto objdestroy
end if

if li_memtype = 1 then
	select		grtright_memflag, grtright_contflag, grtright_contract, grtright_member
	into		:li_flagmemnum, :li_flagcontnum, :li_grtmaxcont, :li_grtmaxmem
	from		lnloanconstant
	where	( coop_id			= :is_coopcontrol )
	using		itr_sqlca ;
else
	select		grtmemco_memflag, grtmemco_contflag, grtmemco_contract, grtmemco_member
	into		:li_flagmemnum, :li_flagcontnum, :li_grtmaxcont, :li_grtmaxmem
	from		lnloanconstant
	where	( coop_id			= :is_coopcontrol )
	using		itr_sqlca ;
end if

// ตรวจสอบจากการกำหนดรวมใหญ่
// ถ้าไม่มีการ check แล้วออกไปเลย
if li_flagcontnum = 0 and li_flagmemnum = 0 then
	goto objdestroy
end if

try
	// ค้ำได้ไม่เกินจำนวนสัญญา
	if li_flagcontnum = 1 then
		this.of_checkcollmancountcont( lds_mangrt, li_grtmaxcont )
	end if
	
	// ค้ำได้ไม่เกินจำนวนคน
	if li_flagmemnum = 1 then
		this.of_checkcollmancountmem( lds_mangrt, as_reqmemno, li_grtmaxmem )
	end if
catch( Exception lthw_errchkall )
	ithw_exception.text	= lthw_errchkall.text
	lb_error					= true
end try

objdestroy:
destroy	lds_mangrt

if lb_error then
	throw ithw_exception
end if

return 1
end function

private function integer of_setsrvdatetime (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_datetime ) or not isvalid( inv_datetime ) then
		inv_datetime	= create n_cst_datetimeservice
		return 1
	end if
else
	if isvalid( inv_datetime ) then
		destroy inv_datetime
		return 1
	end if
end if

return 0
end function

public function integer of_getcollpermiss (string as_loantype, string as_colltype, string as_refcoopid, string as_refcollno, datetime adtm_check, ref decimal adc_permiss, ref decimal adc_maxcoll, ref decimal adc_percent) throws Exception;string		ls_collmasttype
integer	li_cmpricetype,li_cntmangrtval
dec		ldc_estprice, ldc_mortgprice,ldc_maxloan

select cntmangrtval_flag, maxloan_amt
into :li_cntmangrtval, :ldc_maxloan
from lnloantype 
where loantype_code = :as_loantype and coop_id = :as_refcoopid using itr_sqlca ;
		
choose case as_colltype
	case "01"	// คนค้ำ
		if li_cntmangrtval = 1 then
			this.of_getcollpermiss_man( as_loantype, as_refcoopid, as_refcollno, adtm_check, adc_permiss, adc_maxcoll  )
	
			if not ( adc_maxcoll > 0 ) then
				adc_maxcoll		= adc_permiss
			end if
		else
			adc_permiss = ldc_maxloan
		end if
	case "02"	// หุ้น
		select		a.sharestk_amt * b.unitshare_value
		into		:adc_permiss
		from		shsharemaster a, shsharetype b
		where	( a.coop_id				= b.coop_id )
		and		( a.sharetype_code	= b.sharetype_code )
		and		( a.coop_id				= :as_refcoopid )
		and		( a.member_no			= :as_refcollno )
		using		itr_sqlca ;
		
		adc_maxcoll		= adc_permiss
	case "03"	// เงินฝาก
		select		withdrawable_amt
		into		:adc_permiss
		from		dpdeptmaster
		where	( coop_id				= :as_refcoopid )
		and		( deptaccount_no	= :as_refcollno )
		and		( deptclose_status	= 0 )
		using		itr_sqlca ;
		
		adc_maxcoll		= adc_permiss
	case "04"	// ทะเบียนหลักทรัพย์
		select		estimate_price, mortgage_price, collmasttype_code
		into		:ldc_estprice, :ldc_mortgprice, :ls_collmasttype
		from		lncollmaster
		where	( coop_id			= :as_refcoopid )				
		and		( collmast_no	= :as_refcollno )
		using		itr_sqlca ;
		
		select		collmastprice_type
		into		:li_cmpricetype
		from		lnloantype
		where	( coop_id				= :is_coopcontrol )
		and		( loantype_code	= :as_loantype )
		using		itr_sqlca ;
	
		if li_cmpricetype = 1 then
			adc_permiss	= ldc_estprice
		else
			adc_permiss	= ldc_mortgprice
		end if
		
		adc_maxcoll		= adc_permiss
	case "55"	// ตำแหน่งค้ำประกัน(เฉพาะที่ออมสิน)
		adc_permiss	= ldc_maxloan
		adc_maxcoll = ldc_maxloan
end choose

if as_colltype = "01" or as_colltype = "55" then
	adc_percent		= 100
else
	if as_colltype = "04" then
		select		coll_percent
		into		:adc_percent
		from		lnloantypecolluse
		where	( coop_id					= :is_coopcontrol )
		and		( loantype_code		= :as_loantype )
		and		( loancolltype_code	= :as_colltype )
		and		( collmasttype_code	= :ls_collmasttype )
		using		itr_sqlca ;
	else
		select		coll_percent
		into		:adc_percent
		from		lnloantypecolluse
		where	( coop_id					= :is_coopcontrol )
		and		( loantype_code		= :as_loantype )
		and		( loancolltype_code	= :as_colltype )
		using		itr_sqlca ;
	end if
	
	if itr_sqlca.sqlcode <> 0 then
		adc_percent		= 100
	end if
	
end if

return 1
end function

private function integer of_getcollpermiss_man (string as_loantype, string as_mcoopid, string as_memno, datetime adtm_check, ref decimal adc_permiss, ref decimal adc_maxcoll) throws Exception;string		ls_mangrtgrp, ls_mangrtgrpmain, ls_mangrtgrpco, ls_membtdesc
integer	li_membtime, li_worktime, li_timetype, li_shrperiod, li_memtype, li_resignstatus, li_usemanflag, li_mintime
dec{2}	ldc_maxgrt, ldc_salary, ldc_maincollmax, ldc_cocollmax
dec{4}	ldc_mulsalary, ldc_mulshare, ldc_shrstkamt
datetime	ldtm_membdate, ldtm_workdate

// ดึงค่าต่างๆ ที่ใช้ในการคำนวณสิทธิ
select		member_date, work_date, resign_status, salary_amount, member_type, sharestk_amt * 10, last_period,
			to_number( ft_calage( member_date, :adtm_check, 8 ) ) as member_age,
		    to_number( ft_calage( work_date, :adtm_check, 8 ) ) as work_age
into		:ldtm_membdate, :ldtm_workdate, :li_resignstatus, :ldc_salary, :li_memtype, :ldc_shrstkamt, :li_shrperiod,
			:li_membtime, :li_worktime
from		mbmembmaster, shsharemaster
where	( mbmembmaster.coop_id		= :as_mcoopid )
and		( mbmembmaster.member_no	= :as_memno )
and		( mbmembmaster.coop_id		= shsharemaster.coop_id )
and		( mbmembmaster.member_no	= shsharemaster.member_no )
using		itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "ไม่พบข้อมูลของสมาชิกเลขที่  "+as_memno+"("+as_mcoopid+") กรุณาตรวจสอบ"
	throw ithw_exception
end if

if li_resignstatus = 1 then
	if ib_resignchk then
		ithw_exception.text	= "สมาชิกเลขที่  "+as_memno+" ได้ลาออกแล้วไม่สามารถค้ำประกันได้อีก  กรุณาตรวจสอบ"
		throw ithw_exception
	else
		adc_permiss	= 0
		adc_maxcoll		= 0
		
		return 1
	end if
end if

select		mangrtpermgrp_code, mangrtpermgrpco_code, usemangrt_status, usemangrt_mainmaxvalue, usemangrt_comaxvalue
into		:ls_mangrtgrpmain, :ls_mangrtgrpco, :li_usemanflag, :ldc_maincollmax, :ldc_cocollmax
from		lnloantype
where	( coop_id				= :is_coopcontrol )
and		( loantype_code	= :as_loantype )
using		itr_sqlca ;

if li_usemanflag <> 1 then
	ithw_exception.text	= "เงินกู้ประเภทนี้ไม่อนุญาตให้ใช้บุคคลค้ำประกัน กรุณาตรวจสอบ"
	throw ithw_exception
end if

if li_memtype = 1 then
	ls_membtdesc		= "ปกติ"
	ls_mangrtgrp		= ls_mangrtgrpmain
	adc_maxcoll			= ldc_maincollmax
else
	ls_membtdesc		= "สมทบ"
	ls_mangrtgrp		= ls_mangrtgrpco
	adc_maxcoll			= ldc_cocollmax
end if

if isnull( ls_mangrtgrp ) or trim( ls_mangrtgrp ) = "" then
	ithw_exception.text	= "เงินกู้ประเภทนี้ไม่ได้มีการกำหนดกลุ่มการค้ำประกันสำหรับสมาชิกประเภท "+ls_membtdesc+" กรุณาตรวจสอบ หรือ ไปกำหนดกลุ่มการค้ำประกันให้สมบูรณ์ก่อน"
	throw ithw_exception
end if

// เรียกใช้ service ที่เกี่ยวข้องกับวันที่
this.of_setsrvdatetime( true )

// ดึงรายละเอียดการค้ำประกัน
select		member_time, mangrttime_type
into		:li_mintime, :li_timetype
from		lngrpmangrtperm
where	( coop_id						= :is_coopcontrol )
and		( mangrtpermgrp_code	= :ls_mangrtgrp )
using		itr_sqlca ;

li_membtime	= inv_datetime.of_monthsafter( date( ldtm_membdate ), date( adtm_check ) )

if li_membtime < li_mintime then
	this.of_setsrvdatetime( false )
	ithw_exception.text	= "อายุการเป็นสมาชิกไม่ถึงตามที่กำหนดไว้ที่จะค้ำประกันได้ "+string( li_membtime )+"/"+string( li_mintime )+" กรุณาตรวจสอบ "
	throw ithw_exception
end if

choose case li_timetype
	case 2
		li_membtime	= li_worktime
	case 3
		li_membtime	= li_shrperiod	
end choose

this.of_setsrvdatetime( false )

select		multiple_salary, multiple_share, maxgrt_amt
into		:ldc_mulsalary, :ldc_mulshare, :ldc_maxgrt
from		lngrpmangrtpermdet
where	( coop_id			= :is_coopcontrol )
and		( mangrtpermgrp_code	= :ls_mangrtgrp )
and		( :ldc_shrstkamt	between startshare_amt and endshare_amt )
and		( :li_membtime		between startmember_time and endmember_time )
using		itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "ไม่พบช่วงข้อมูลที่กำหนดในตารางสิทธิการค้ำประกัน ประเภท "+ls_mangrtgrp+" ทุนเรือนหุ้น = "+string( ldc_shrstkamt, "#,##0.00" )+" ช่วงเวลา = "+string( li_membtime )
	throw ithw_exception
end if

adc_permiss	= ( ldc_mulsalary * ldc_salary ) + ( ldc_mulshare * ldc_shrstkamt )

// ตรวจว่าสิทธิเกินสิทธิค้ำสูงสุดของกลุ่มการค้ำมั้ย
if adc_permiss > ldc_maxgrt then
	adc_permiss = ldc_maxgrt
end if

return 1
end function

public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans);// Service Transection
if isnull( inv_transection ) or not isvalid( inv_transection ) then
	inv_transection	= create n_cst_dbconnectservice
end if

inv_transection	= anv_dbtrans
itr_sqlca 			= inv_transection.itr_dbconnection
is_coopcontrol	= inv_transection.is_coopcontrol
is_coopid			= inv_transection.is_coopid

this.of_setsrvdwxmlie( true )

return 1
end function

public function integer of_isvalidcoll (string as_reqlntype, string as_colltype, string as_refcoopid, string as_refcollno) throws Exception;long		ll_count

choose case as_colltype
	case "01"	// คนค้ำประกัน
		integer	li_usemanstatus, li_dropgrtflag
		
		select		nvl( usemangrt_status, 0 )
		into		:li_usemanstatus
		from		lnloantype
		where	( coop_id				= :is_coopcontrol )
		and		( loantype_code	= :as_reqlntype )
		using		itr_sqlca ;
		
		if li_usemanstatus = 0 then
			ithw_exception.text		= "เงินกู้ประเภทนี้ ไม่อนุญาติให้ใช้บุคคลค้ำประกัน กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		// ตรวจสอบสถานะการค้ำประกัน
		select		dropgurantee_flag
		into		:li_dropgrtflag
		from		mbmembmaster
		where	( coop_id			= :as_refcoopid )
		and		( member_no	= :as_refcollno )
		using		itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text		= "ไม่พบข้อมูลสมาชิกเลขที่ ("+as_refcollno+") ในฐานข้อมูล กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		if li_dropgrtflag = 1 then
			ithw_exception.text		= "สมาชิกเลขที่ "+as_refcollno+" มีสถานะเป็นงดค้ำประกัน กรุณาตรวจสอบ"
			throw ithw_exception
		end if
	case "02"	// หุ้นค้ำประกัน
	case "03"	// เงินฝากประกัน
		integer	li_clsstatus
		
		select		deptclose_status
		into		:li_clsstatus
		from		dpdeptmaster
		where	( coop_id				= :as_refcoopid )
		and		( deptaccount_no	= :as_refcollno )
		using		itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text		= "ไม่พบข้อมูลเงินฝากเลขที่ ("+as_refcollno+") ในฐานข้อมูล กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		if li_clsstatus = 1 then
			ithw_exception.text		= "บัญชีเงินฝากเลขที่ "+as_refcollno+" มีสถานะเป็นปิดบัญชีไปแล้ว กรุณาตรวจสอบ"
			throw ithw_exception
		end if
	case "04"	// หลักทรัพย์ประกัน
		integer	li_redeemflag
		
		select		nvl( redeem_flag, 0 )
		into		:li_redeemflag
		from		lncollmaster
		where	( coop_id			= :as_refcoopid )				
		and		( collmast_no	= :as_refcollno )
		using		itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text		= "ไม่พบข้อมูลทะเบียนหลักทรัพย์เลขที่ ("+as_refcollno+") ในฐานข้อมูล กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		if li_redeemflag = 1 then
			ithw_exception.text		= "ทะเบียนหลักทรัพย์เลขที่ "+as_refcollno+" มีสถานะเป็นไถ่ถอนไปแล้ว กรุณาตรวจสอบ"
			throw ithw_exception
		end if
end choose

return 1
end function

public function integer of_isvalidcoll (ref str_permisscoll astr_permcoll) throws Exception;string		ls_reqlntype, ls_colltype, ls_refcoopid, ls_refcollno
long		ll_count

ls_reqlntype		= astr_permcoll.req_loantype
ls_colltype		= astr_permcoll.colltype_code
ls_refcoopid		= astr_permcoll.coll_coopid
ls_refcollno		= astr_permcoll.coll_refno

choose case ls_colltype
	case "01"	// คนค้ำประกัน
		integer	li_usemanstatus, li_dropgrtflag
		
		select		nvl( usemangrt_status, 0 )
		into		:li_usemanstatus
		from		lnloantype
		where	( coop_id				= :is_coopcontrol )
		and		( loantype_code	= :ls_reqlntype )
		using		itr_sqlca ;
		
		if li_usemanstatus = 0 then
			ithw_exception.text		= "เงินกู้ประเภทนี้ ไม่อนุญาติให้ใช้บุคคลค้ำประกัน กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		// ตรวจสอบสถานะการค้ำประกัน
		select		dropgurantee_flag
		into		:li_dropgrtflag
		from		mbmembmaster
		where	( coop_id			= :ls_refcoopid )
		and		( member_no	= :ls_refcollno )
		using		itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text		= "ไม่พบข้อมูลสมาชิกเลขที่ ("+ls_refcollno+") ในฐานข้อมูล กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		if li_dropgrtflag = 1 then
			ithw_exception.text		= "สมาชิกเลขที่ "+ls_refcollno+" มีสถานะเป็นงดค้ำประกัน กรุณาตรวจสอบ"
			throw ithw_exception
		end if
	case "02"	// หุ้นค้ำประกัน
	case "03"	// เงินฝากประกัน
		integer	li_clsstatus
		
		select		deptclose_status
		into		:li_clsstatus
		from		dpdeptmaster
		where	( coop_id				= :ls_refcoopid )
		and		( deptaccount_no	= :ls_refcollno )
		using		itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text		= "ไม่พบข้อมูลเงินฝากเลขที่ ("+ls_refcollno+") ในฐานข้อมูล กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		if li_clsstatus = 1 then
			ithw_exception.text		= "บัญชีเงินฝากเลขที่ "+ls_refcollno+" มีสถานะเป็นปิดบัญชีไปแล้ว กรุณาตรวจสอบ"
			throw ithw_exception
		end if
	case "04"	// หลักทรัพย์ประกัน
		integer	li_redeemflag
		
		select		nvl( redeem_flag, 0 )
		into		:li_redeemflag
		from		lncollmaster
		where	( coop_id			= :ls_refcoopid )				
		and		( collmast_no	= :ls_refcollno )
		using		itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text		= "ไม่พบข้อมูลทะเบียนหลักทรัพย์เลขที่ ("+ls_refcollno+") ในฐานข้อมูล กรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		if li_redeemflag = 1 then
			ithw_exception.text		= "ทะเบียนหลักทรัพย์เลขที่ "+ls_refcollno+" มีสถานะเป็นไถ่ถอนไปแล้ว กรุณาตรวจสอบ"
			throw ithw_exception
		end if
end choose

return 1
end function

public function integer of_setresigncheck (boolean ab_switch);ib_resignchk		= ab_switch

return 1
end function

public function integer of_savelncollmast2 (ref str_lncollmast astr_collmast) throws Exception;/***********************************************************


===========================================
return type = integer
pass by = reference  ,argument type = str_lncollmast ,argument name = astr_lncollmast
Throws : Exception
=========================================

<description>
	สำหรับบันทึกรายละเอียดทะเบียนหลักทรัพย์
</description>

<arguments>  
	str_lncollmast		Structure รายการทะเบียนหลักทรัพย์
		Attrib ภายใน Structure ที่ต้องใช้คือ
		- member_no			String			ทะเบียนสมาชิกที่เป็นเจ้าของทะเบียนหลักทรัพย์
		- xml_collmastdet		String			XML รายละเอียดทะเบียนหลักทรัพย์
		- xml_collmemco		String			XML รายการผู้กู้ที่จะใช้ทะเบียนหลักทรัพย์นี้
		- entry_id				String			ผู้ทำรายการ
		- branch_id				String			สาขาที่ทำรายการ
</arguments> 

<return> 
	Integer
	1		ถ้าไม่มีข้อผิดพลาด
</return> 

<usage> 
	ส่ง XML รายการทะเบียนหลักทรัพย์ทีเพิ่มหรือแก้ไขผ่าน Structure เข้ามา 
	ระบบจะนำข้อมูลไปบันทึกลงฐานข้อมูล
	
	str_lncollmast	lstr_lncollmast
	
	lstr_lncollmast.member_no			= dw_memdet.getitemstring( 1, "member_no" )
	
	lstr_lncollmast.xml_collmastdet		= dw_collmastdet.describe( "Datawindow.Data.XML" )
	lstr_lncollmast.xml_collmemco		= dw_collmemco.describe( "Datawindow.Data.XML" )
	lstr_lncollmast.entry_id				= entry_id
	lstr_lncollmast.branch_id				= branch_id
	
	lnv_lnoperate.of_savelncollmast( str_lncollmast )
	----------------------------------------------------------------------
	Revision History:
	Version 1.0 (Initial version) Modified Date 20/9/2010 by OhhO

</usage> 
***********************************************************/
string		ls_memno, ls_xmlcollmastdet, ls_xmlcollmemco, ls_mrtg1, ls_mrtg2, ls_mrtg3,ls_colltype
string		ls_collmastno, ls_collnochk, ls_updatestatus, ls_iskey, ls_colname,ls_prop,ls_xmlprop,ls_documentcode
string		ls_entryid,ls_coopid,ls_pro_code
string		mrtg_memberno, mrtg_name, mrtg_age, mrtg_parentname, landdepartment_province
long		ll_index, ll_count, ll_find, ll_row, ll_rowcount
integer	li_impchk
n_ds		lds_collmast, lds_collmemco, lds_mrtg1, lds_mrtg2, lds_prop, lds_review

ls_memno			= astr_collmast.member_no
ls_xmlcollmastdet	= astr_collmast.xml_collmastdet
ls_xmlcollmemco	= astr_collmast.xml_collmemco
ls_mrtg1				= astr_collmast.xml_mrtg1
ls_mrtg2				= astr_collmast.xml_mrtg2
ls_entryid			= astr_collmast.entry_id
ls_xmlprop			= astr_collmast.xml_prop
ls_coopid			= astr_collmast.coop_id

lds_collmast		= create n_ds
lds_collmast.dataobject	= "d_loansrv_lncollmast_detail_pea"
lds_collmast.settransobject( itr_sqlca )
li_impchk			= lds_collmast.importstring( XML!, ls_xmlcollmastdet )

if li_impchk	<= 0 then
	ithw_exception.text	= "ไม่สามารถ Import String ทะเบียนหลักทรัพย์ได้ (รายละเอียด 1)"
	throw ithw_exception
end if

//ผู้กู้ร่วม
lds_collmemco		= create n_ds
lds_collmemco.dataobject	= "d_loansrv_lncollmast_memco"
lds_collmemco.settransobject( itr_sqlca )
li_impchk			= lds_collmemco.importstring( XML!, ls_xmlcollmemco )

// ตรวจแค่ว่า error หรือเปล่าก็พอ ไม่ต้องตรวจว่ามีแถวหรือไม่
if li_impchk	< 0 then
	ithw_exception.text	= "ไม่สามารถ Import String ทะเบียนกู้ร่วมได้"
	throw ithw_exception
end if

//ผู้มีกรรมสิทธิ 
lds_prop		= create n_ds
lds_prop.dataobject	= "d_loansrv_lncollmast_prop"
lds_prop.settransobject( itr_sqlca )
li_impchk			= lds_prop.importstring( XML!, ls_xmlprop )

// ตรวจแค่ว่า error หรือเปล่าก็พอ ไม่ต้องตรวจว่ามีแถวหรือไม่
if li_impchk	< 0 then
	ithw_exception.text	= "ไม่สามารถ Import String ผู้มีกรรมสิทธิ"
	throw ithw_exception
end if

// ส่วนของรายละเอียดจำนอง 1
lds_mrtg1		= create n_ds
lds_mrtg1.dataobject	= "d_loansrv_lncollmast_mrtg1_pea" //"d_ln_colldetail_msk2"  
lds_mrtg1.settransobject( itr_sqlca )
li_impchk			= lds_mrtg1.importstring( XML!, ls_mrtg1 )


if li_impchk	<= 0 then
	ithw_exception.text	= "ไม่สามารถ Import String ทะเบียนหลักทรัพย์ (รายละเอียด 2) ได้"
	throw ithw_exception
end if


// ส่วนของรายละเอียดจำนอง 2
lds_mrtg2		= create n_ds
lds_mrtg2.dataobject	= "d_loansrv_lncollmast_mrtg2"
lds_mrtg2.settransobject( itr_sqlca )
li_impchk			= lds_mrtg2.importstring( XML!, ls_mrtg2 )

if li_impchk	<= 0 then
	ithw_exception.text	= "ไม่สามารถ Import String ทะเบียนหลักทรัพย์ (ส่วนงานจำนอง 1 )ได้"
	throw ithw_exception
end if


ls_collmastno		= trim( lds_collmast.getitemstring( 1, "collmast_no" ) )
ls_colltype			=  lds_collmast.getitemstring( 1, "collmasttype_code" ) 



delete from lncolldetail
where	( collmast_no	= :ls_collmastno )
using		itr_sqlca ;

delete from lncollmastmemco
where	( collmast_no	= :ls_collmastno )
using		itr_sqlca ;

delete from lncollmastprop
where	( collmast_no	= :ls_collmastno )
using		itr_sqlca ;

delete from lncollmaster
where	( collmast_no	= :ls_collmastno )
using		itr_sqlca ;	

// ถ้าไม่มีทะเบียนหลักทรัพย์มาแสดงว่าเป็นการเพิ่ม
if ls_collmastno  = "AUTO"    then
	this.of_setsrvdoccontrol( true )
	select document_code 
	into :ls_documentcode
	from lnucfcollmasttype 
	where collmasttype_code = :ls_colltype using itr_sqlca;
	
	ls_collmastno		= inv_docsrv.of_getnewdocno(ls_coopid, ls_documentcode )
	this.of_setsrvdoccontrol( false )
	lds_collmast.setitem( 1, "coop_id", ls_coopid )
	lds_collmast.setitem( 1, "collmast_no", ls_collmastno )
	lds_collmast.setitem( 1, "member_no", ls_memno )
end if

// ตรวจว่ามีทะเบียนสมาชิกใน MemCo หรือเปล่า
//ll_count	= lds_collmemco.rowcount()
//ll_find		= lds_collmemco.find( "memco_no = '"+ls_memno+"'", 1, ll_count )
//
//if ll_count <= 0 or ll_find <= 0 then
//	ll_row		= lds_collmemco.insertrow( 0 )
//	
//	lds_collmemco.setitem( ll_row, "coop_id", ls_coopid )
//	lds_collmemco.setitem( ll_row, "memco_no", ls_memno )
//	lds_collmemco.setitem( ll_row, "collmastmain_flag", 1 )
//end if

// ใส่ทะเบียนเลขที่หลักทรัพย์
ll_count	= lds_collmemco.rowcount()
for ll_index = 1 to ll_count
	lds_collmemco.setitem(ll_index, "collmast_no", ls_collmastno )
	lds_collmemco.setitem(ll_index, "coop_id", ls_coopid )
	lds_collmemco.setitem(ll_index, "memcoop_id", ls_coopid )
next

// ใส่ผู้มีกรรมสิทธิ
ll_count	= lds_prop.rowcount()
for ll_index = 1 to ll_count
	lds_prop.setitem(ll_index, "collmast_no", ls_collmastno )
	lds_prop.setitem(ll_index, "coop_id", ls_coopid )
	lds_prop.setitem(ll_index, "seq_no", ll_index )
next

// ใส่ทะเบียนเลขที่หลักทรัพย์ในส่วนงานจำนอง
lds_mrtg1.setitem( 1, "collmast_no", ls_collmastno )
lds_mrtg1.setitem( 1, "coop_id", ls_coopid )

// บันทึก Master
if lds_collmast.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลทะเบียนหลักทรัพย์ (CollMaster) ไม่ได้  "
	ithw_exception.text	+= ls_collmastno +"  "+ lds_collmast.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
	return -1
end if

 mrtg_memberno = lds_mrtg2.object.mrtg_memberno[1]
 mrtg_name = lds_mrtg2.object.mrtg_name[1]
 mrtg_age = lds_mrtg2.object.mrtg_age[1]
 mrtg_parentname = lds_mrtg2.object.mrtg_parentname[1]
 landdepartment_province = lds_mrtg2.object.landdepartment_province[1]
  
lds_mrtg1.object.mrtg_memberno[1]			= mrtg_memberno // lds_mrtg2.object.mrtg_memberno[1]
lds_mrtg1.object.mrtg_name[1]				= mrtg_name // lds_mrtg2.object.mrtg_name[1]
lds_mrtg1.object.mrtg_personid[1]			= lds_mrtg2.object.mrtg_personid[1]
lds_mrtg1.object.mrtg_age[1]					=  mrtg_age //lds_mrtg2.object.mrtg_age[1]
lds_mrtg1.object.mrtg_nationality[1]			= lds_mrtg2.object.mrtg_nationality[1]
lds_mrtg1.object.mrtg_citizenship[1]			= lds_mrtg2.object.mrtg_citizenship[1]
lds_mrtg1.object.mrtg_parentname[1]		=  mrtg_parentname //lds_mrtg2.object.mrtg_parentname[1]
lds_mrtg1.object.mrtg_matename[1]			= lds_mrtg2.object.mrtg_matename[1]
lds_mrtg1.object.mrtg_village[1]				= lds_mrtg2.object.mrtg_village[1]
lds_mrtg1.object.mrtg_address[1]				= lds_mrtg2.object.mrtg_address[1]
lds_mrtg1.object.mrtg_moo[1]					= lds_mrtg2.object.mrtg_moo[1]
lds_mrtg1.object.mrtg_soi[1]					= lds_mrtg2.object.mrtg_soi[1]
lds_mrtg1.object.mrtg_road[1]					= lds_mrtg2.object.mrtg_road[1]
lds_mrtg1.object.mrtg_tumbol[1]				= lds_mrtg2.object.mrtg_tumbol[1]
lds_mrtg1.object.mrtg_district[1]				= lds_mrtg2.object.mrtg_district[1]
lds_mrtg1.object.mrtg_province[1]			= lds_mrtg2.object.mrtg_province[1]
lds_mrtg1.object.mrtg_tel[1]					= lds_mrtg2.object.mrtg_tel[1]
lds_mrtg1.object.mrtg_mariage[1]			= lds_mrtg2.object.mrtg_mariage[1]
lds_mrtg1.object.autrz_name01[1]			= lds_mrtg2.object.autrz_name01[1]
lds_mrtg1.object.autrz_age[1]			= lds_mrtg2.object.autrz_age[1]
lds_mrtg1.object.autrz_name02[1]			= lds_mrtg2.object.autrz_name02[1]
lds_mrtg1.object.autrz_name03[1]			= lds_mrtg2.object.autrz_name03[1]
lds_mrtg1.object.autrz_pos01[1]				= lds_mrtg2.object.autrz_pos01[1]
lds_mrtg1.object.autrz_pos02[1]				= lds_mrtg2.object.autrz_pos02[1]
lds_mrtg1.object.autrz_age[1]					= lds_mrtg2.object.autrz_age[1]
lds_mrtg1.object.autrz_nationality[1]			= lds_mrtg2.object.autrz_nationality[1]
lds_mrtg1.object.autrz_citizenship[1]			= lds_mrtg2.object.autrz_citizenship[1]
lds_mrtg1.object.autrz_parentname[1]		= lds_mrtg2.object.autrz_parentname[1]
lds_mrtg1.object.autrz_village[1]				= lds_mrtg2.object.autrz_village[1]
lds_mrtg1.object.autrz_address[1]			= lds_mrtg2.object.autrz_address[1]
lds_mrtg1.object.autrz_moo[1]					= lds_mrtg2.object.autrz_moo[1]
lds_mrtg1.object.autrz_soi[1]					= lds_mrtg2.object.autrz_soi[1]
lds_mrtg1.object.autrz_road[1]					= lds_mrtg2.object.autrz_road[1]
lds_mrtg1.object.autrz_tumbol[1]				= lds_mrtg2.object.autrz_tumbol[1]
lds_mrtg1.object.autrz_district[1]				= lds_mrtg2.object.autrz_district[1]
lds_mrtg1.object.autrz_province[1]			= lds_mrtg2.object.autrz_province[1]
lds_mrtg1.object.autrz_cardperson[1]			= lds_mrtg2.object.autrz_cardperson[1]
lds_mrtg1.object.landdepartment_province[1]			= landdepartment_province

lds_mrtg1.object.autrz_name02_1[1]			= lds_mrtg2.object.autrz_name02_1[1]
lds_mrtg1.object.autrz_name02_2[1]			= lds_mrtg2.object.autrz_name02_2[1]
lds_mrtg1.object.autrz_name02_3[1]			= lds_mrtg2.object.autrz_name02_3[1]

/*
lds_mrtg1.object.landcount[1]							= lds_mrtg3.object.landcount[1]
lds_mrtg1.object.landdepartment[1]					= lds_mrtg3.object.landdepartment[1]
lds_mrtg1.object.mortgage_date[1]					= lds_mrtg3.object.mortgage_date[1]
lds_mrtg1.object.mortgage_count[1]					= lds_mrtg3.object.mortgage_count[1]
lds_mrtg1.object.this_mrtg_amt[1]					= lds_mrtg3.object.this_mrtg_amt[1]
lds_mrtg1.object.old_mrtg_amt[1]						= lds_mrtg3.object.old_mrtg_amt[1]
lds_mrtg1.object.first_mrtg_amt[1]					= lds_mrtg3.object.first_mrtg_amt[1]
lds_mrtg1.object.secound_mrtg_amt[1]				= lds_mrtg3.object.secound_mrtg_amt[1]
lds_mrtg1.object.total_mrtg_amt[1]					= lds_mrtg3.object.total_mrtg_amt[1]
lds_mrtg1.object.interest_rate[1]						= lds_mrtg3.object.interest_rate[1]
lds_mrtg1.object.landdepartment_province[1]		= lds_mrtg3.object.landdepartment_province[1]
lds_mrtg1.object.duplicate_count[1]					= lds_mrtg3.object.duplicate_count[1]
*/


if lds_mrtg1.update() <> 1 then
		ithw_exception.text	= "บันทึกข้อมูลทะเบียนหลักทรัพย์ (รายละเอียด 1) ไม่ได้  "
		ithw_exception.text	+= ls_collmastno +"  "+ lds_mrtg1.of_geterrormessage()
		rollback using itr_sqlca ;
		throw ithw_exception
end if

// บันทึก Memco
if lds_collmemco.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลรายการผู้กู้ร่วม (MemCo) ไม่ได้  "
	ithw_exception.text	+= ls_collmastno +"  "+ lds_collmemco.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
	return -1
end if
// บันทึก Prop
if lds_prop.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลผู้มีกรรมสิทธิ ไม่ได้  "
	ithw_exception.text	+= ls_collmastno +"  "+ lds_prop.of_geterrormessage()
	rollback using itr_sqlca ;
	throw ithw_exception
	return -1
end if
commit using itr_sqlca ;

astr_collmast.xml_collmastdet	= lds_collmast.describe( "Datawindow.Data.XML" )
astr_collmast.xml_collmemco	= lds_collmemco.describe( "Datawindow.Data.XML" )
astr_collmast.xml_mrtg1			= lds_mrtg1.describe( "Datawindow.Data.XML" )
astr_collmast.xml_mrtg2			= lds_mrtg2.describe( "Datawindow.Data.XML" )
astr_collmast.xml_prop			= lds_prop.describe( "Datawindow.Data.XML" )
//astr_collmast.xml_mrtg3			= lds_mrtg3.describe( "Datawindow.Data.XML" )
//astr_collmast.xml_prop			= lds_prop.describe( "Datawindow.Data.XML" )


destroy lds_collmast
destroy lds_mrtg1
destroy lds_mrtg2
//destroy lds_mrtg3
destroy lds_collmemco
destroy lds_prop
return 1
end function

public function integer of_setsrvdoccontrol (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull(inv_docsrv ) or not isvalid( inv_docsrv ) then
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

on n_cst_loansrv_collpermiss.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_loansrv_collpermiss.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;
// ประกาศ Throw สำหรับ Err
ithw_exception	= create Exception
end event
