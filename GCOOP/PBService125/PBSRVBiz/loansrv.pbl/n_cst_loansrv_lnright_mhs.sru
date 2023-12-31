$PBExportHeader$n_cst_loansrv_lnright_mhs.sru
forward
global type n_cst_loansrv_lnright_mhs from NonVisualObject
end type
end forward

global type n_cst_loansrv_lnright_mhs from NonVisualObject
end type
global n_cst_loansrv_lnright_mhs n_cst_loansrv_lnright_mhs

type variables
transaction		itr_sqlca
Exception		ithw_exception

string		is_coopcontrol, is_coopid

n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_doccontrolservice		inv_docsrv
end variables

forward prototypes
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws Exception
public function integer of_save_lnreq (ref str_savereqloan astr_reqloan) throws Exception
protected function integer of_setsrvdwxmlie (boolean ab_switch)
protected function integer of_setdsmodify (ref n_ds ads_requester, long al_row, boolean ab_keymodify)
protected function integer of_setsrvdoccontrol (boolean ab_switch)
public function integer of_save_lnapv (string as_apvsyntax, string as_apvid, datetime adtm_apvdate) throws Exception
public function integer of_buildcontno (string as_reqloan, ref string as_contno, integer ai_continttype) throws Exception
public function string of_gennewcontractno (string as_coopid, string as_loantype) throws Exception
end prototypes

public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws Exception;// Service Transection
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

public function integer of_save_lnreq (ref str_savereqloan astr_reqloan) throws Exception;string ls_reqdocno, ls_loantype, ls_lnprefix, ls_contno, ls_entryid
integer li_reqstatus, li_apvflag, li_continttype
long ll_index, ll_find
dec{2}ldc_reqamt
boolean lb_error = false
datetime ldtm_entrydate, ldtm_loanrcvfix, ldtm_reqdate

n_ds lds_rqmain, lds_rqcoll, lds_rqclr, lds_rqclroth, lds_rqintspc, ldc_rqmthexp

ls_entryid = astr_reqloan.entry_id
ldtm_entrydate = datetime(today(), now())

// สร้าง ds สำหรับ save
lds_rqmain = create n_ds
lds_rqmain.dataobject = "d_lnsrv_req_rqloan_mhs"
lds_rqmain.settransobject(itr_sqlca)

lds_rqclr = create n_ds
lds_rqclr.dataobject = "d_lnsrv_req_rqloan_clr_mhs"
lds_rqclr.settransobject(itr_sqlca)

lds_rqclroth = create n_ds
lds_rqclroth.dataobject = "d_lnsrv_req_rqloan_clrother_mhs"
lds_rqclroth.settransobject(itr_sqlca)

lds_rqcoll = create n_ds
lds_rqcoll.dataobject = "d_lnsrv_req_rqloan_coll_mhs"
lds_rqcoll.settransobject(itr_sqlca)

lds_rqintspc = create n_ds
lds_rqintspc.dataobject = "d_lnsrv_req_rqloan_intspc_mhs"
lds_rqintspc.settransobject(itr_sqlca)

ldc_rqmthexp = create n_ds
ldc_rqmthexp.dataobject = "d_lnsrv_req_rqloan_mthexp_mhs"
ldc_rqmthexp.settransobject(itr_sqlca)

// Import xml สำหรับงาน save
this.of_setsrvdwxmlie( true )
try
	inv_dwxmliesrv.of_xmlimport(lds_rqmain, astr_reqloan.xml_main)
	inv_dwxmliesrv.of_xmlimport(lds_rqcoll, astr_reqloan.xml_guarantee)
	inv_dwxmliesrv.of_xmlimport(lds_rqclr, astr_reqloan.xml_clear)
	inv_dwxmliesrv.of_xmlimport(lds_rqclroth, astr_reqloan.xml_otherclr)
	inv_dwxmliesrv.of_xmlimport(lds_rqintspc, astr_reqloan.xml_intspc)
	inv_dwxmliesrv.of_xmlimport(ldc_rqmthexp, astr_reqloan.xml_mthexp)
catch (Exception lthw_errimp)
	ithw_exception.Text = lthw_errimp.Text
	lb_error = true
end try

if lb_error then
	goto objdestroy
end if
// ตรวจสอบข้อมูลก่อนบันทึก
//if this.of_checkdatabeforesave( ls_message ) = failure then
//	ithw_exception.text	= ls_message
//	rollback using itr_sqlca ;
//	throw ithw_exception
//end if

// เรียกใช้ Service doccontrol
this.of_setsrvdoccontrol( true )

ls_reqdocno = lds_rqmain.object.loanrequest_docno[1]
li_apvflag = lds_rqmain.object.apvimmediate_status[1]
li_reqstatus = lds_rqmain.object.loanrequest_status[1]
ls_loantype = lds_rqmain.object.loantype_code[1]
ldc_reqamt = lds_rqmain.object.loanrequest_amt[1]
li_continttype = lds_rqmain.getitemnumber(1, "int_continttype")
ldtm_loanrcvfix = lds_rqmain.getitemdatetime(1, "loanrcvfix_date")
ldtm_reqdate = lds_rqmain.getitemdatetime(1, "loanrequest_date")

if isnull(li_apvflag) then li_apvflag = 0
if isnull(li_reqstatus) then li_reqstatus = 8
if isnull(ldc_reqamt) then ldc_reqamt = 0.00

if upper(trim(ls_reqdocno)) = "AUTO" or trim(ls_reqdocno) = "" or isnull(ls_reqdocno) then
	
	this.of_setsrvdoccontrol( true )
	
	// เอาตัวย่อของประเภทเงินกู้
	select prefix
	into :ls_lnprefix
	from lnloantype
	where(coop_id = :is_coopcontrol)
	and (loantype_code = :ls_loantype)
	using itr_sqlca;
	
	// ขอเลขที่ ใบคำขอกู้เงิน
	ls_reqdocno = inv_docsrv.of_getnewdocno(is_coopid, "LNREQUESDOCNO", ls_lnprefix)
	
	// จะบันทึกครั้งแรกเท่านั้น
	lds_rqmain.setitem(1, "coop_id", is_coopcontrol)
	lds_rqmain.setitem(1, "loanrequest_docno", ls_reqdocno)
	lds_rqmain.setitem(1, "memcoop_id", is_coopcontrol)
	lds_rqmain.setitem(1, "entry_id", ls_entryid)
	lds_rqmain.setitem(1, "entry_date", ldtm_entrydate)
	lds_rqmain.setitem(1, "entry_bycoopid", is_coopid)
else
	this.of_setdsmodify(lds_rqmain, 1, false )
	
	delete from lnreqloancoll
	where(coop_id = :is_coopcontrol)
	and (loanrequest_docno = :ls_reqdocno)
	using itr_sqlca;
	
	delete from lnreqloanclr
	where(coop_id = :is_coopcontrol)
	and (loanrequest_docno = :ls_reqdocno)
	using itr_sqlca;

	delete from lnreqloanclrother
	where(coop_id = :is_coopcontrol)
	and (loanrequest_docno = :ls_reqdocno)
	using itr_sqlca;

	delete from lnreqloanintspc
	where(coop_id = :is_coopcontrol)
	and (loanrequest_docno = :ls_reqdocno)
	using itr_sqlca;

	delete from lnreqloanmthexp
	where(coop_id = :is_coopcontrol)
	and (loanrequest_docno = :ls_reqdocno)
	using itr_sqlca;
end if

// ถ้าสถานะการอนุมัติเป็น 11 หมายความว่าป้อนแล้วให้สถานะเป็นอนุมัติไว้เลยแต่ยังไม่ต้องออกเลข
if li_reqstatus = 11 then
	lds_rqmain.setitem(1, "approve_id", ls_entryid)
	lds_rqmain.setitem(1, "approve_date", ldtm_entrydate)
	lds_rqmain.setitem(1, "loanapprove_amt", ldc_reqamt)
end if

// Service doccontrol หมดประโยชน์
this.of_setsrvdoccontrol( false )

// ใส่เลขที่ใบคำขอกู้ ใน Main
lds_rqmain.setitem(1, "loanrequest_docno", ls_reqdocno)

// ใส่เลขที่ใบคำขอกู้ และลำดับที่ในรายการค้ำประกัน
for ll_index = 1 to lds_rqcoll.rowcount()
	lds_rqcoll.setitem(ll_index, "coop_id", is_coopcontrol)
	lds_rqcoll.setitem(ll_index, "loanrequest_docno", ls_reqdocno)
	lds_rqcoll.setitem(ll_index, "seq_no", ll_index)
	lds_rqcoll.setitem(ll_index, "refcoop_id", is_coopcontrol)
next

// ใส่เลขที่ใบคำขอกู้ในรายการหักกลบ
for ll_index = 1 to lds_rqclr.rowcount()
	lds_rqclr.setitem(ll_index, "coop_id", is_coopcontrol)
	lds_rqclr.setitem(ll_index, "loanrequest_docno", ls_reqdocno)
	lds_rqclr.setitem(ll_index, "seq_no", ll_index)
next

// ใส่เลขที่ใบคำขอกู้ และลำดับที่ในรายการหักชำระอื่นๆ
for ll_index = 1 to lds_rqclroth.rowcount()
	lds_rqclroth.setitem(ll_index, "coop_id", is_coopcontrol)
	lds_rqclroth.setitem(ll_index, "loanrequest_docno", ls_reqdocno)
	lds_rqclroth.setitem(ll_index, "seq_no", ll_index)
next

// ใส่เลขที่ใบคำขอกู้ และลำดับที่ในรายการด/บพิเศษเป็นช่วง
for ll_index = 1 to lds_rqintspc.rowcount()
	lds_rqintspc.setitem(ll_index, "coop_id", is_coopcontrol)
	lds_rqintspc.setitem(ll_index, "loanrequest_docno", ls_reqdocno)
	lds_rqintspc.setitem(ll_index, "seq_no", ll_index)
next

// ใส่เลขที่ใบคำขอกู้ และลำดับที่ในรายการหักชำระอื่นๆ
for ll_index = 1 to ldc_rqmthexp.rowcount()
	ldc_rqmthexp.setitem(ll_index, "coop_id", is_coopcontrol)
	ldc_rqmthexp.setitem(ll_index, "loanrequest_docno", ls_reqdocno)
	ldc_rqmthexp.setitem(ll_index, "seq_no", ll_index)
next

// ใส่ค่าเลขที่ใบคำขอกู้กลับสำหรับนำไปพิมพ์ใบขาว
astr_reqloan.request_no = ls_reqdocno
astr_reqloan.loancontract_no = ls_contno

// ------------------------------------------
// เริ่มกระบวนการบันทึกและถ้ามีการอนุมัติเลยก็อนุมัติ
// ------------------------------------------
// บันทึกใบคำขอ
if lds_rqmain. update () <> 1 then
	ithw_exception.text = "บันทึกข้อมูลใบคำขอกู้ไม่ได้ " + lds_rqmain.of_geterrormessage()
	lb_error = true
	goto objdestroy
end if

// บันทึกข้อมูลการค้ำประกัน
if lds_rqcoll. update () <> 1 then
	ithw_exception.text = "บันทึกข้อมูลการค้ำประกันไม่ได้ " + lds_rqcoll.of_geterrormessage()
	lb_error = true
	goto objdestroy
end if

// บันทึกข้อมูลการหักกลบ
if lds_rqclr. update () <> 1 then
	ithw_exception.text = "บันทึกข้อมูลการหักกลบไม่ได้ " + lds_rqclr.of_geterrormessage()
	lb_error = true
	goto objdestroy
end if

// บันทึกข้อมูลการหักอื่นๆ
if lds_rqclroth. update () <> 1 then
	ithw_exception.text = "บันทึกข้อมูลรายการหักอื่นๆไม่ได้ " + lds_rqclroth.of_geterrormessage()
	lb_error = true
	goto objdestroy
end if

// บันทึกข้อมูลดอกเบี้ยอัตราพิเศษ
if lds_rqintspc. update () <> 1 then
	ithw_exception.text = "บันทึกข้อมูลอัตราด/บพิเศษไม่ได้" + lds_rqintspc.of_geterrormessage()
	lb_error = true
	goto objdestroy
end if

// บันทึกข้อมูลรายการเงินหักรายเดือน
if ldc_rqmthexp. update () <> 1 then
	ithw_exception.text = "บันทึกข้อมูลรายการเงินหักรายเดือนไม่ได้" + ldc_rqmthexp.of_geterrormessage()
	lb_error = true
	goto objdestroy
end if

// ถ้ามีการอนุมัติเลยและสถานะเป็นรออนุมัติ
if li_apvflag >= 1 and li_reqstatus = 8 then
	
	ls_contno = trim(lds_rqmain.GetItemString(1, "loancontract_no"))
	
	if ls_contno = "" or isNull(ls_contno) then
		// สร้างเลขสัญญา
		ls_contno = this.of_gennewcontractno(is_coopid, ls_loantype)
	end if
	
	try
		this.of_buildcontno(ls_reqdocno, ls_contno, li_continttype)

		update lnreqloan
		set loancontract_no = :ls_contno,
		loanrequest_status = 1,
		approve_id = :ls_entryid,
		approve_date = :ldtm_entrydate,
		loanapprove_amt = :ldc_reqamt
		where(coop_id = :is_coopcontrol)
		and (loanrequest_docno = :ls_reqdocno)
		using itr_sqlca;
		
	catch (Exception lthw_errbuild)
		ithw_exception.text = lthw_errbuild.text
		lb_error = true
	end try

	if lb_error then
		goto objdestroy
	end if
	
end if

objdestroy:
this.of_setsrvdoccontrol( true )
destroy lds_rqmain
destroy lds_rqclr
destroy lds_rqcoll
destroy lds_rqintspc
destroy lds_rqclroth

if lb_error then
	rollback using itr_sqlca;
	throw ithw_exception
end if

commit using itr_sqlca;

return 1
end function

protected function integer of_setsrvdwxmlie (boolean ab_switch);// Check argument
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

protected function integer of_setdsmodify (ref n_ds ads_requester, long al_row, boolean ab_keymodify);string		ls_iskey
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

protected function integer of_setsrvdoccontrol (boolean ab_switch);// Check argument
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

public function integer of_save_lnapv (string as_apvsyntax, string as_apvid, datetime adtm_apvdate) throws Exception;string		ls_syntaxstep
string		ls_mainstep[]
string		ls_reqno, ls_contno, ls_loantype, ls_ecoopid, ls_registno
integer	li_pos1, li_pos2, li_apvsts, li_continttype
long		ll_index, ll_count
dec		ldc_reqamt
n_cst_stringservice	lnv_strsrv

lnv_strsrv	= create n_cst_stringservice

ll_count		= lnv_strsrv.of_parsetoarray( as_apvsyntax, ";", ls_mainstep )

for ll_index = 1 to ll_count
	// ช่วงหาเลขคำขอ เลขสัญญา สถานะอนุมัติ
	ls_syntaxstep	= ls_mainstep[ ll_index ]
	
	li_pos1	= pos( ls_syntaxstep, "," )
	li_pos2	= pos( ls_syntaxstep, ",", li_pos1 + 1 )
	
	ls_reqno		= mid( ls_syntaxstep, 1, li_pos1 - 1 )
	
	if li_pos2 > 0 then
		li_apvsts		= integer( mid( ls_syntaxstep, li_pos1+1, li_pos2 - (li_pos1+1) ) )
		ls_contno	= mid( ls_syntaxstep, li_pos2+1 )
	else
		li_apvsts		= integer( mid( ls_syntaxstep, li_pos1+1 ) )
		ls_contno	= ""
	end if

	// สถานะการอนุมัติ
	choose case li_apvsts
		case 8	// รออนุมัติ (ไม่น่าเข้ามาใน Service ได้)
			continue
		case 0	// ไม่อนุมัติ
			update	lnreqloan
			set			loanrequest_status	= :li_apvsts,
						loanapprove_amt		= 0,
						approve_id				= :as_apvid,
						approve_date            = :adtm_apvdate
			where	( coop_id					= :is_coopcontrol )
			and		( loanrequest_docno	= :ls_reqno )
			using		itr_sqlca ;
			
			if itr_sqlca.sqlcode <> 0 then
				ithw_exception.text	+= "ใบคำขอกู้เงิน เลขที่ "+ls_reqno+" ไม่สามารถปรับปรุงสถานะไม่อนุมัติได้ <br>"+itr_sqlca.sqlerrtext
				rollback using itr_sqlca ;
				throw ithw_exception
			end if
			
			// ทำอันต่อไปเลย
			continue
	end choose
	
	// รายละเอียดใบขอกู้
	select		loantype_code, ref_registerno, loanrequest_amt, entry_bycoopid, int_continttype
	into		:ls_loantype, :ls_registno, :ldc_reqamt, :ls_ecoopid, :li_continttype
	from		lnreqloan
	where	( coop_id					= :is_coopcontrol )
	and		( loanrequest_docno	= :ls_reqno )
	using		itr_sqlca ;

	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	+= "ไม่สามารถดึงข้อมูล ใบคำขอกู้เงิน เลขที่ "+ls_reqno+" ได้ <br>"+itr_sqlca.sqlerrtext
		rollback using itr_sqlca ;
		throw ithw_exception
	end if
	
	// ถ้าสาขาของใบคำขอไม่ได้ป้อนให้ค่าเท่ากับ is_coopid (ซึ่งเป็นสาขาที่ทำการอนุมัติ)
	if isnull( ls_ecoopid ) then ls_ecoopid = is_coopid

	// ถ้าสถานะเป็นอนุมัติสร้างเลขสัญญาแต่ไม่มีเลขที่สัญญาส่งมาสร้างเอาใหม่
	if ( trim( ls_contno ) = "" or isnull( ls_contno ) ) and li_apvsts = 1 then
		ls_contno	= this.of_gennewcontractno( ls_ecoopid, ls_loantype )
	end if
	
	// บันทึกกลับไปที่ใบคำขอกู้ก่อน เพราะเวลาสร้างสัญญาจะต้องไปดึงข้อมูลจากใบคำขอมาสร้าง
	update	lnreqloan
	set			loanrequest_status	= :li_apvsts,
				loanapprove_amt		= loanrequest_amt,
				loancontract_no		= :ls_contno,
				approve_id				= :as_apvid,
				approve_date            = :adtm_apvdate
	where	( coop_id					= :is_coopcontrol )
	and		( loanrequest_docno	= :ls_reqno )
	using		itr_sqlca ;
		
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	+= "ใบคำขอกู้เงิน เลขที่ "+ls_reqno+" ไม่สามารถปรับปรุงสถานะได้ "+itr_sqlca.sqlerrtext
		rollback using itr_sqlca ;
		throw ithw_exception
	end if
	
	// ปรับปรุงสถานะในใบลงรับคำขอกู้
	update	lnreqloanregister
	set			reqregister_status		= 1,
				lnapprove_date			= :adtm_apvdate,
				loanapprove_amt		= :ldc_reqamt
	where	( coop_id					= :is_coopcontrol )
	and		( reqregister_docno	= :ls_registno )
	using itr_sqlca;

	// ถ้าอนุมัติสร้างเลขสัญญาเลย
	if li_apvsts = 1 then
		try
			this.of_buildcontno( ls_reqno, ls_contno, li_continttype  )
		catch ( exception lthw_buildcontno )
			rollback using itr_sqlca ;
			throw lthw_buildcontno
		end try
	end if

next

commit using itr_sqlca ;

return 1
end function

public function integer of_buildcontno (string as_reqloan, ref string as_contno, integer ai_continttype) throws Exception;// argument check
if isnull( as_reqloan ) then as_reqloan = ""
if isnull( as_contno ) then as_contno = ""

as_reqloan		= trim( as_reqloan )
as_contno		= trim( as_contno )

// ตรวจสอบใบคำขอ
if as_reqloan = "" or as_reqloan = "CNV" then
	ithw_exception.text	= "เลขที่ใบคำขอไม่มีส่งมา หรือ เลขที่ส่งมาไม่ถูกต้อง "+as_reqloan
	return -1
end if

// ตรวจสอบเลขสัญญา
if as_contno = "" or isnull( as_contno ) then
	ithw_exception.text	= "สร้างสัญญา (of_buildcontno) ไม่มีการส่งเลขสัญญาที่จะสร้างเข้ามา กรุณาตรวจสอบ"
	return -1
end if

insert into lncontmaster
		( coop_id,					loancontract_no,		memcoop_id,			member_no,			loantype_code,				loanobjective_code,
		  loanrequest_docno,		loanrequest_amt,
		  loanapprove_date,		loanapprove_amt,		withdrawable_amt,	principal_balance,		loanpayment_type,
		  period_payamt,			period_payment,		period_lastpayment,	payment_status,		contract_time,
		  od_flag,					contlaw_status,			contract_status,		approve_id,
		  int_continttype,			int_contintrate,			int_continttabcode,	int_contintincrease,	int_intsteptype,
		  intcertificate_status,		expense_code,			expense_bank,			expense_branch,		expense_accid,
		  loanpay_code,			loanpay_bank,			loanpay_branch,		loanpay_accid )

select	  :is_coopcontrol,			:as_contno,				memcoop_id,			member_no,			loantype_code,				loanobjective_code,
		  loanrequest_docno,		loanrequest_amt,
		  approve_date,			loanapprove_amt,		loanapprove_amt,		0,							loanpayment_type,
		  period_payamt,			period_payment,		period_lastpayment,	1,							contract_time,
		  od_flag,					1,							1,							approve_id,
		  int_continttype,			int_contintrate,			int_continttabcode,	int_contintincrease,	int_intsteptype,
		  intcertificate_status,		expense_code,			expense_bank,			expense_branch,		expense_accid,
		  loanpay_code,			loanpay_bank,			loanpay_branch,		loanpay_accid
from		lnreqloan
where	( coop_id					= :is_coopcontrol )
and		( loanrequest_docno	= :as_reqloan )
using		itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "ไม่สามารถผ่านรายการใบคำขอไปสร้างเป็นสัญญาได้ "+itr_sqlca.sqlerrtext
	throw ithw_exception
end if

//ตรวจสอบแถวค้ำประกัน
long ll_check
select count(loancontract_no) 
into :ll_check
from		lnreqloancoll
where	( coop_id					= :is_coopcontrol )
and		( loanrequest_docno	= :as_reqloan )
using		itr_sqlca ;

if not IsNull(ll_check) and ll_check > 0 then 
	// รายการค้ำประกัน
	insert into lncontcoll
			( coop_id,			loancontract_no,		seq_no,			loancolltype_code,		refcoop_id,			ref_collno,		description,
			  collbase_amt,		collbase_percent,		collused_amt,	collbalance_amt,		collmax_amt,
			  collactive_amt,	collactive_percent,		coll_status )
	select   :is_coopcontrol,	:as_contno,				seq_no,			loancolltype_code,		:is_coopcontrol,	ref_collno,		description,
			  collbase_amt,		collbase_percent,		collused_amt,	collbalance_amt,		collmax_amt,
			  collactive_amt,	collactive_percent,		1
	from		lnreqloancoll
	where	( coop_id					= :is_coopcontrol )
	and		( loanrequest_docno	= :as_reqloan )
	using		itr_sqlca ;

	if itr_sqlca.sqlcode = -1 then
		ithw_exception.text	= "ไม่สามารถผ่านรายการหลักประกันในใบคำขอไปสร้างเป็นหลักประกันของสัญญาได้ "+itr_sqlca.sqlerrtext
		throw ithw_exception
	end if
end if

// ถ้าเป็นสัญญาที่คิดดอกเบี้ยเป็นช่วง
if ai_continttype = 3 then
	insert into lncontintspc
				( coop_id,			loancontract_no, 		seq_no, 		int_continttype, 		int_contintrate, 		int_continttabcode,		 int_contintincrease	, int_timetype,		 int_timeamt )
	select		:is_coopcontrol,	:as_contno,				seq_no, 		int_continttype, 		int_contintrate, 		int_continttabcode, 		 int_contintincrease	, int_timetype,		 int_timeamt
	from		lnreqloanintspc
	where	( coop_id					= :is_coopcontrol )
	and		( loanrequest_docno	= :as_reqloan )
	using		itr_sqlca ;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "ไม่สามารถผ่านรายการใบคำขอไปสร้างเป็นสัญญาได้ (ส่วนของอัตราดอกเบี้ยพิเศษเป็นช่วง) "+itr_sqlca.sqlerrtext
		throw ithw_exception
	end if

end if

return 1
end function

public function string of_gennewcontractno (string as_coopid, string as_loantype) throws Exception;string		ls_contno, ls_prefix, ls_doccode, ls_doccoopid
integer	li_splitflag

// ดึงค่าเลขเอกสารจาก config
select		prefix, document_code, contnosplitbranch_flag
into		:ls_prefix, :ls_doccode, :li_splitflag
from		lnloantype
where	( coop_id				= :is_coopcontrol )
and		( loantype_code	= :as_loantype )
using		itr_sqlca ;

if ls_doccode = "" or isnull( ls_doccode ) then
	ithw_exception.text	= "เงินกู้ประเภทนี้ไม่มีเลขที่เอกสารสำหรับออกเลขสัญญา กรุณาไปกำหนดด้วย"
	throw ithw_exception
end if

if isnull( li_splitflag ) then li_splitflag = 0

if li_splitflag = 1 then
	ls_doccoopid	= as_coopid
else
	ls_doccoopid	= is_coopcontrol
end if

this.of_setsrvdoccontrol( true )

ls_contno	= inv_docsrv.of_getnewdocno( ls_doccoopid, ls_doccode, ls_prefix )

this.of_setsrvdoccontrol( false )

return ls_contno
end function

on n_cst_loansrv_lnright_mhs.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_loansrv_lnright_mhs.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;
// ประกาศ Throw สำหรับ Err
ithw_exception	= create Exception
end event
