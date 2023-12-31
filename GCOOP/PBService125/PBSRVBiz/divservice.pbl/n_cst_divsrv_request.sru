$PBExportHeader$n_cst_divsrv_request.sru
$PBExportComments$ใบคำขอเกี่ยวกับปันผลเฉลี่ยคืน
forward
global type n_cst_divsrv_request from NonVisualObject
end type
end forward

/// <summary> ใบคำขอเกี่ยวกับปันผลเฉลี่ยคืน
/// </summary>
global type n_cst_divsrv_request from NonVisualObject
end type
global n_cst_divsrv_request n_cst_divsrv_request

type variables
Public:

string	is_coopcontrol , is_coopid

transaction						itr_sqlca
Exception						ithw_exception

n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_divsrv_proc_service	inv_procsrv
n_cst_doccontrolservice		inv_docsrv
end variables

forward prototypes
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws Exception
public function integer of_save_methpay_ccl (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_init_methpay (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_init_methpay_ccl (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_init_reqchg (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_save_reqchg (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_save_methpay (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_post_reqchg_refrain (n_ds ads_req_main, n_ds ads_req_det_refrain) throws Exception
public function integer of_init_methpay_grp (ref str_divsrv_req astr_divsrv_req) throws Exception
public function integer of_openreq_methpay (ref str_divsrv_req astr_divsrv_req) throws Exception
protected function integer of_chk_methreq (string as_membranch, string as_memno) throws Exception
protected function integer of_chk_reqchg_refrain (n_ds ads_req_det_refrain) throws Exception
protected function integer of_init_methpay_main (n_ds ads_info_mem, n_ds ads_req_main) throws Exception
protected function integer of_init_reqchg_main (n_ds ads_info_mem, n_ds ads_req_main) throws Exception
protected function integer of_post_methpay (n_ds ads_req_main, n_ds ads_req_dateil) throws Exception
protected function integer of_setdsmodify (ref n_ds ads_requester, long al_row, boolean ab_keymodify)
protected function integer of_setsrvdoccontrol (boolean ab_switch)
protected function integer of_setsrvdwxmlie (boolean ab_switch)
protected function integer of_setsrvproc (boolean ab_switch)
end prototypes

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

is_coopcontrol 	= anv_dbtrans.is_coopcontrol
is_coopid			= anv_dbtrans.is_coopid

return 1
end function

public function integer of_save_methpay_ccl (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_xmlmain , ls_xmllist
string ls_coopid , ls_methreq
string ls_entry
integer li_index , li_count
datetime ldtm_entry
boolean lb_err = false
n_ds lds_reqccl_main , lds_reqccl_list , lds_reqccl_detail

this.of_setsrvdwxmlie( true )

lds_reqccl_main = create n_ds
lds_reqccl_main.dataobject = "d_divsrv_req_methpay_ccl_main"
lds_reqccl_main.settransobject( itr_sqlca )

lds_reqccl_list = create n_ds
lds_reqccl_list.dataobject = "d_divsrv_req_methpay_ccl_list"
lds_reqccl_list.settransobject( itr_sqlca )

ls_xmlmain		= astr_divsrv_req.xml_main
ls_xmllist			= astr_divsrv_req.xml_list
ls_entry			= astr_divsrv_req.entry_id

if inv_dwxmliesrv.of_xmlimport( lds_reqccl_main , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลยกเลิกใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

if inv_dwxmliesrv.of_xmlimport( lds_reqccl_list , ls_xmllist ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลยกเลิกใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// กรองให้เหลือแต่พวกที่ทำรายการเท่านั้น
lds_reqccl_list.setfilter( "operate_flag > 0" )
lds_reqccl_list.filter()
// ลบพวกไม่ทำรายการทิ้งไป
lds_reqccl_list.rowsdiscard( 1, lds_reqccl_list.filteredcount(), filter! )

li_count	= lds_reqccl_list.rowcount()

if li_count <= 0 then
	ithw_exception.text = "~r~nพบขอผิดพลาด(40.1)"
	ithw_exception.text += "~r~nไม่พบข้อมูลการทำรายการ(List)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

for li_index = 1 to li_count
	ls_coopid 		= lds_reqccl_list.object.coop_id[li_index]
	ls_methreq		= lds_reqccl_list.object.methreq_docno[li_index]
	
	ldtm_entry		= datetime( today() , now() )
	
	update yrreqmethpay
	set cancel_id = :ls_entry ,
	cancel_date = :ldtm_entry ,
	methreq_status = -9
	where coop_id = :ls_coopid
	and methreq_docno = :ls_methreq
	using itr_sqlca ;
	if ( itr_sqlca.sqlcode <> 0 ) then
		ithw_exception.text = "~r~nพบขอผิดพลาด(70.1)"
		ithw_exception.text += "~r~nไม่สามารถปรับปรุงสถานะยกเลิกได้" 
		ithw_exception.text += "~r~nสาขาใบคำขอ : " + ls_coopid
		ithw_exception.text += "~r~nเลขที่ใบคำขอ : " + ls_methreq
		ithw_exception.text += "~r~n" + string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text += "~r~nกรุณาตรวจสอบ"
		lb_err = true ; Goto objdestroy
	end if
	
	//** ถ้าผ่านรายการแล้วให้ลบข้อมูลออก yrdivmehtpay
	
next

objdestroy:
if isvalid(lds_reqccl_main) then destroy lds_reqccl_main
if isvalid(lds_reqccl_list) then destroy lds_reqccl_list

this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_request.of_save_methpay_ccl()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca ;
end if

return 1
end function

public function integer of_init_methpay (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_xmlmain , ls_oldreqno
string ls_memcoopid , ls_memno , ls_divyear
boolean lb_err = false
n_ds lds_info_mem
n_ds lds_req_main , lds_req_detail

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true )

lds_info_mem = create n_ds
lds_info_mem.dataobject = "d_divsrv_info_member"
lds_info_mem.settransobject( itr_sqlca )

lds_req_main = create n_ds
lds_req_main.dataobject = "d_divsrv_req_methpay_main"
lds_req_main.settransobject( itr_sqlca )

lds_req_detail = create n_ds
lds_req_detail.dataobject = "d_divsrv_req_methpay_detail"
lds_req_detail.settransobject( itr_sqlca )

ls_xmlmain		= astr_divsrv_req.xml_main

if inv_dwxmliesrv.of_xmlimport( lds_req_main , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_memcoopid		= lds_req_main.object.coop_id[1]
ls_memno				= lds_req_main.object.member_no[1]
ls_divyear				= lds_req_main.object.div_year[1]

// ตรวจสอบว่ามีคำขอที่ยังรออนุมัติหรือไม่
select	 max( methreq_docno )
into	:ls_oldreqno
from	yrreqmethpay
where( coop_id	=	:ls_memcoopid )
and	( member_no		=	:ls_memno )
and	( div_year		=	:ls_divyear )
and	( methreq_status 	in (1,8) )
using itr_sqlca ;

// ถ้ามีใบคำขออยู่ ก็เปิดมันขึ้นมาซะ
if len( trim( ls_oldreqno ) ) > 0 and not isnull( ls_oldreqno ) then
	
	astr_divsrv_req.reqdoc_no	= ls_oldreqno
	
	try
		this.of_openreq_methpay( astr_divsrv_req )
	catch( Exception lthw_erropen )
		ithw_exception.text	= lthw_erropen.text
		lb_err						= true
	end try
	
	goto objdestroy
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqldw_column( lds_info_mem, "mbmembmaster" , "coop_id" , "=" , is_coopcontrol ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_info_mem, "mbmembmaster" , "member_no" , "=" , ls_memno ) // ใส่เงื่อนไขอื่นๆ
catch( Exception lthw_setdwsql )
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (0.2)"
	ithw_exception.text	+= lthw_setdwsql.text
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_info_mem.retrieve()

// init ข้อมูล
try
	this.of_init_methpay_main( lds_info_mem , lds_req_main )
catch( Exception lthw_init )
	ithw_exception.text 	= "~r~nพบขอผิดพลาด(10.1)"
	ithw_exception.text	+= lthw_init.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_req_detail.insertrow(0)

astr_divsrv_req.xml_main	= inv_dwxmliesrv.of_xmlexport( lds_req_main )
astr_divsrv_req.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_req_detail )

objdestroy:
if isvalid(lds_info_mem) then destroy lds_info_mem
if isvalid(lds_req_main) then destroy lds_req_main
if isvalid(lds_req_detail) then destroy lds_req_detail

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_request.of_init_methpay()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_methpay_ccl (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_xmlmain
string ls_coopid , ls_memno
string ls_methreq
boolean lb_err = false
n_ds lds_reqccl_main , lds_reqccl_list , lds_reqccl_detail

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true )

lds_reqccl_main = create n_ds
lds_reqccl_main.dataobject = "d_divsrv_req_methpay_ccl_main"
lds_reqccl_main.settransobject( itr_sqlca )

lds_reqccl_list = create n_ds
lds_reqccl_list.dataobject = "d_divsrv_req_methpay_ccl_list"
lds_reqccl_list.settransobject( itr_sqlca )

lds_reqccl_detail = create n_ds
lds_reqccl_detail.dataobject = "d_divsrv_req_methpay_ccl_detail"
lds_reqccl_detail.settransobject( itr_sqlca )

ls_xmlmain		= astr_divsrv_req.xml_main

if inv_dwxmliesrv.of_xmlimport( lds_reqccl_main , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลยกเลิกใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_coopid			= lds_reqccl_main.object.coop_id[1]
ls_memno			= lds_reqccl_main.object.member_no[1]

try
//	inv_procsrv.of_set_proctype( 60 ) // กำหนดวิธีดึงข้อมูล 60 ดึงข้อมูลตามทะเบียนสมาชิก
//	inv_procsrv.of_set_txtproc( ls_memno ) // ใส่ค่าที่ดึงข้อมูล
//	inv_procsrv.of_set_analyze() // gen ข้อมูลในการดึง
//	inv_procsrv.of_set_sqlselect( "mbmembmaster") // set ค่าที่ gen ลงในตารางที่เลือก
//	inv_procsrv.of_set_sqldw( lds_reqccl_main ) // ใส่ค่าที่กำหนดลง n_ds
	inv_procsrv.of_set_sqldw_column( lds_reqccl_main, "mbmembmaster" , "coop_id" , "=" , ls_coopid ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_reqccl_main, "mbmembmaster" , "member_no" , "=" , ls_memno ) // ใส่เงื่อนไขอื่นๆ
	
	inv_procsrv.of_set_sqldw_column( lds_reqccl_list, " where yrreqmethpay.coop_id = '" + ls_coopid + "' " ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_reqccl_list, "yrreqmethpay" , "member_no" , "=" , ls_memno ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_reqccl_list, "and yrreqmethpay.methreq_status in ( 1 , 8 )" ) // ใส่เงื่อนไขอื่นๆ
	
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (0.2)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_reqccl_main.retrieve()
if lds_reqccl_main.rowcount() < 1 then
	ithw_exception.text 	= "~r~nพบขอผิดพลาด(10.1)"
	ithw_exception.text	+= "~r~nไม่พบข้อมูลสมาชิก"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

lds_reqccl_list.retrieve()

if lds_reqccl_list.rowcount() > 0 then
	ls_coopid			= lds_reqccl_list.object.coop_id[1]
	ls_methreq		= lds_reqccl_list.object.methreq_docno[1]

	lds_reqccl_detail.retrieve( ls_coopid , ls_methreq )
end if

astr_divsrv_req.xml_main	= inv_dwxmliesrv.of_xmlexport( lds_reqccl_main )
astr_divsrv_req.xml_list		= inv_dwxmliesrv.of_xmlexport( lds_reqccl_list )
astr_divsrv_req.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_reqccl_detail )

objdestroy:
if isvalid(lds_reqccl_main) then destroy lds_reqccl_main
if isvalid(lds_reqccl_list) then destroy lds_reqccl_list
if isvalid(lds_reqccl_detail) then destroy lds_reqccl_detail

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)

if lb_err then
	astr_divsrv_req.xml_main	= ""
	astr_divsrv_req.xml_list		= ""
	astr_divsrv_req.xml_detail	= ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_request.of_init_methpay_ccl()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_init_reqchg (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_xmlmain
string ls_memcoopid , ls_memno , ls_divyear
integer li_refdivflg , li_refavgflg
integer li_row
boolean lb_err = false
n_ds lds_info_mem
n_ds lds_req_main , lds_req_det_refrain

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true )

lds_info_mem = create n_ds
lds_info_mem.dataobject = "d_divsrv_info_member"
lds_info_mem.settransobject( itr_sqlca )

lds_req_main = create n_ds
lds_req_main.dataobject = "d_divsrv_req_chg_main"
lds_req_main.settransobject( itr_sqlca )

lds_req_det_refrain = create n_ds
lds_req_det_refrain.dataobject = "d_divsrv_req_chg_det_refrain"
lds_req_det_refrain.settransobject( itr_sqlca )

ls_xmlmain		= astr_divsrv_req.xml_main

if inv_dwxmliesrv.of_xmlimport( lds_req_main , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลใบคำขอเปลี่ยนแปลงข้อมูลปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_memcoopid		= lds_req_main.object.coop_id[1]
ls_memno				= lds_req_main.object.member_no[1]
ls_divyear				= lds_req_main.object.div_year[1]

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqldw_column( lds_info_mem, " and mbmembmaster.coop_id = '" + ls_memcoopid + "'" ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_info_mem, " and mbmembmaster.member_no = '" + ls_memno + "'" ) // ใส่เงื่อนไขอื่นๆ
catch( Exception lthw_setdwsql )
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (0.2)"
	ithw_exception.text	+= lthw_setdwsql.text
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_info_mem.retrieve()

// init ข้อมูล
try
	this.of_init_reqchg_main( lds_info_mem , lds_req_main )
catch( Exception lthw_init )
	ithw_exception.text 	= "~r~nพบขอผิดพลาด(10.1)"
	ithw_exception.text	+= lthw_init.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

// hardcode
select 	refraindiv_flag , refrainavg_flag
into		:li_refdivflg , :li_refavgflg
from 		yrbgmaster
where 	coop_id = :ls_memcoopid
and 		member_no = :ls_memno
and 		div_year = :ls_divyear
using itr_sqlca;
if isnull( li_refdivflg ) then li_refdivflg = 1
if isnull( li_refavgflg ) then li_refavgflg = 1
// จบ hardcode

li_row		= lds_req_det_refrain.insertrow(0)
lds_req_det_refrain.object.coop_id[li_row]			= ""
lds_req_det_refrain.object.reqchg_docno[li_row]		= ""
lds_req_det_refrain.object.seq_no[li_row]				= li_row
lds_req_det_refrain.object.reqchgtype_code[li_row]	= "DVS"
lds_req_det_refrain.object.old_flag[li_row]				= li_refdivflg
lds_req_det_refrain.object.new_flag[li_row]			= li_refdivflg

li_row		= lds_req_det_refrain.insertrow(0)
lds_req_det_refrain.object.coop_id[li_row]			= ""
lds_req_det_refrain.object.reqchg_docno[li_row]		= ""
lds_req_det_refrain.object.seq_no[li_row]				= li_row
lds_req_det_refrain.object.reqchgtype_code[li_row]	= "AVS"
lds_req_det_refrain.object.old_flag[li_row]				= li_refavgflg
lds_req_det_refrain.object.new_flag[li_row]			= li_refavgflg

astr_divsrv_req.xml_main			= inv_dwxmliesrv.of_xmlexport( lds_req_main )
astr_divsrv_req.xml_detail_refrain	= inv_dwxmliesrv.of_xmlexport( lds_req_det_refrain )

objdestroy:
if isvalid(lds_info_mem) then destroy lds_info_mem
if isvalid(lds_req_main) then destroy lds_req_main
if isvalid(lds_req_det_refrain) then destroy lds_req_det_refrain

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)

if lb_err then
	astr_divsrv_req.xml_main	= ""
	astr_divsrv_req.xml_detail	= ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_request.of_init_reqchg()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_save_reqchg (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_xmlmain , ls_xmldetrefrain
string ls_divyear , ls_reqchg
string ls_memno
integer li_row , li_chkcnt , li_reqchgsts
integer li_refraincnt

boolean lb_err = false

n_ds lds_req_main , lds_req_det_refrain

this.of_setsrvdwxmlie( true )
this.of_setsrvdoccontrol( true )

lds_req_main = create n_ds
lds_req_main.dataobject = "d_divsrv_req_chg_main"
lds_req_main.settransobject( itr_sqlca )

lds_req_det_refrain = create n_ds
lds_req_det_refrain.dataobject = "d_divsrv_req_chg_det_refrain"
lds_req_det_refrain.settransobject( itr_sqlca )

ls_xmlmain			= astr_divsrv_req.xml_main
ls_xmldetrefrain	= astr_divsrv_req.xml_detail_refrain

if inv_dwxmliesrv.of_xmlimport( lds_req_main , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลใบคำขอเปลี่ยนแปลงข้อมูลปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

if inv_dwxmliesrv.of_xmlimport( lds_req_det_refrain , ls_xmldetrefrain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลใบคำขอเปลี่ยนแปลงข้อมูลปันผลเฉลี่ยคืน(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// กรองให้เหลือแต่พวกที่ทำรายการเท่านั้น
lds_req_det_refrain.setfilter( "operate_flag > 0" )
lds_req_det_refrain.filter()
// ลบพวกไม่ทำรายการทิ้งไป
lds_req_det_refrain.rowsdiscard( 1, lds_req_det_refrain.filteredcount(), filter! )

li_refraincnt	= lds_req_det_refrain.rowcount()

li_chkcnt		= li_refraincnt

if li_refraincnt <= 0 and li_chkcnt <= 0 then
	ithw_exception.text = "~r~nพบขอผิดพลาด(40.1)"
	ithw_exception.text += "~r~nไม่พบข้อมูลการทำรายการ(Detail Refrain)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_reqchg		= lds_req_main.object.reqchg_docno[1]
ls_divyear		= lds_req_main.object.div_year[1]
ls_memno		= lds_req_main.object.member_no[1]
li_reqchgsts		= lds_req_main.object.reqchg_status[1]

try
//	this.of_chk_reqchg_mem( lds_req_main ) // ตรวจสอบการทำรายการซ้ำ
	if li_refraincnt > 0 then this.of_chk_reqchg_refrain( lds_req_det_refrain )	// ตรวจสอบใบคำขอ
	ls_reqchg	= inv_docsrv.of_getnewdocno( is_coopid , "YRREQCHG")	// get เลขที่เอกสาร
catch( Exception lthw_errreqchg )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (20.1)~r~n" + lthw_errreqchg.text
	ithw_exception.text	+= "~r~nปีปันผล : " + ls_divyear
	ithw_exception.text	+= "~r~nเลขสมาชิก : " + ls_memno
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_req_main.object.reqchg_docno[1]	= ls_reqchg
lds_req_main.object.entry_bycoopid[1]	= is_coopid
lds_req_main.object.entry_date[1]		= datetime( today() , now() )

for li_row = 1 to li_refraincnt
	lds_req_det_refrain.object.coop_id[li_row]				= is_coopcontrol
	lds_req_det_refrain.object.reqchg_docno[li_row]		= ls_reqchg
	lds_req_det_refrain.object.seq_no[li_row]				= li_row
next

// Save
// บันทึก Main
if lds_req_main.update() <> 1 then
	ithw_exception.text	= "บันทึกข้อมูลใบคำขอเปลี่ยนแปลงข้อมูลปันผลเฉลี่ยคืน (Main) ไม่ได้ (70.1)"
	ithw_exception.text	+= "~r~nเลขที่ใบคำขอ : " + ls_reqchg 
	ithw_exception.text	+= "~r~nเลขที่สมาชิก : " + ls_memno
	ithw_exception.text	+= "~r~n" + lds_req_main.of_geterrormessage()
	ithw_exception.text	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// บันทึก Detail
if li_refraincnt > 0 then
	if lds_req_det_refrain.update() <> 1 then
		ithw_exception.text	= "บันทึกข้อมูลใบคำขอเปลี่ยนแปลงข้อมูลปันผลเฉลี่ยคืน (Detail Refrain) ไม่ได้ (70.2)"
		ithw_exception.text	+= "~r~n" + ls_reqchg 
		ithw_exception.text	+= "~r~nเลขที่สมาชิก : " + ls_memno
		ithw_exception.text	+= "~r~n" + lds_req_det_refrain.of_geterrormessage()
		ithw_exception.text	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; Goto objdestroy
	end if
end if

// ผ่านรายการ
if li_reqchgsts = 1 then
	try
		if li_refraincnt > 0 then this.of_post_reqchg_refrain( lds_req_main , lds_req_det_refrain )
	catch( Exception lthw_postreqchg )
		ithw_exception.text	= "~r~nพบขอผิดพลาด (90.1)"
		ithw_exception.text	+= lthw_postreqchg.text
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end try
end if

objdestroy:
if isvalid(lds_req_main) then destroy lds_req_main
if isvalid(lds_req_det_refrain) then destroy lds_req_det_refrain

this.of_setsrvdoccontrol( false )
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_request.of_save_reqchg()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca ;
end if

return 1
end function

public function integer of_save_methpay (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_xmlmain , ls_xmldetail
string ls_coopid , ls_divyear , ls_methreq
string ls_memcoop , ls_memno
integer li_row , li_count , li_methstatus
datetime ldtm_entry
boolean lb_err = false

n_ds lds_req_main , lds_req_detail

this.of_setsrvdwxmlie( true )
this.of_setsrvdoccontrol( true )

lds_req_main = create n_ds
lds_req_main.dataobject = "d_divsrv_req_methpay_main"
lds_req_main.settransobject( itr_sqlca )

lds_req_detail = create n_ds
lds_req_detail.dataobject = "d_divsrv_req_methpay_detail_hat"
lds_req_detail.settransobject( itr_sqlca )

ls_xmlmain = astr_divsrv_req.xml_main
ls_xmldetail = astr_divsrv_req.xml_detail

if inv_dwxmliesrv.of_xmlimport( lds_req_main , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

if inv_dwxmliesrv.of_xmlimport( lds_req_detail , ls_xmldetail ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_coopid 		= lds_req_main.object.coop_id[1]
ls_methreq 		= lds_req_main.object.methreq_docno[1]
ls_divyear 		= lds_req_main.object.div_year[1]
ls_memcoop 	= lds_req_main.object.coop_id[1]
ls_memno 		= lds_req_main.object.member_no[1]
li_methstatus 	= lds_req_main.object.methreq_status[1]
ldtm_entry 		= datetime( today() , now() )

if isnull( ls_methreq ) or trim( ls_methreq ) = "" or upper( ls_methreq ) = "AUTO" then
	try
		this.of_chk_methreq( ls_memcoop , ls_memno ) // ตรวจสอบใบคำขอ
		ls_methreq = inv_docsrv.of_getnewdocno( ls_coopid , "YRMETHPAYREQ") // get เลขที่เอกสาร
		
		lds_req_main.object.methreq_docno[1] = ls_methreq
		lds_req_main.object.entry_date[1] = ldtm_entry
		
		// กรองให้เหลือแต่พวกที่ทำรายการเท่านั้น
		lds_req_detail.setfilter( "operate_flag > 0" )
		lds_req_detail.filter()
		// ลบพวกไม่ทำรายการทิ้งไป
		lds_req_detail.rowsdiscard( 1, lds_req_detail.filteredcount(), filter! )
		
		li_count = lds_req_detail.rowcount()
		
		for li_row = 1 to li_count
			lds_req_detail.object.coop_id[li_row] = ls_coopid
			lds_req_detail.object.methreq_docno[li_row] = ls_methreq
			lds_req_detail.object.seq_no[li_row] = li_row
		next
		
	catch( Exception lthw_getreqdoc )
		ithw_exception.text = "~r~nพบขอผิดพลาด (20.1)" + lthw_getreqdoc.text
		lb_err = true
	end try
else
	// ลบข้อมูลเก่าทิ้งก่อน
	delete from yrreqmethpaydet where coop_id = :is_coopcontrol and methreq_docno = :ls_methreq using itr_sqlca ;
	delete from yrreqmethpay where coop_id = :is_coopcontrol and methreq_docno = :ls_methreq using itr_sqlca ;

	li_count = lds_req_detail.rowcount()
	for li_row = 1 to li_count
		lds_req_detail.SetItem( li_row,"coop_id", is_coopcontrol )
		lds_req_detail.SetItem( li_row,"methreq_docno", ls_methreq )
		lds_req_detail.SetItem( li_row,"seq_no", li_row )
	next
end if
if lb_err then Goto objdestroy

if li_count <= 0 then
	ithw_exception.text = "~r~nพบขอผิดพลาด(40.1)"
	ithw_exception.text += "~r~nไม่พบข้อมูลการทำรายการ(Detail)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// Save
// บันทึก Main
if lds_req_main.update() <> 1 then
	ithw_exception.text = "บันทึกข้อมูลใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน (Main) ไม่ได้ (70.1)"
	ithw_exception.text += "~r~n" + ls_methreq
	ithw_exception.text += "~r~n" + lds_req_main.of_geterrormessage()
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// บันทึก Detail
if lds_req_detail.update() <> 1 then
	ithw_exception.text = "บันทึกข้อมูลใบคำขอวิธีจ่ายเงินปันผลเฉลี่ยคืน (Detail) ไม่ได้ (70.2)"
	ithw_exception.text += "~r~n" + ls_methreq
	ithw_exception.text += "~r~n" + lds_req_detail.of_geterrormessage()
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ผ่านรายการไปยัง yrdivmethpay เลย
if li_methstatus = 1 then
	try
		this.of_post_methpay( lds_req_main , lds_req_detail )
	catch( Exception lthw_postmethpay )
		ithw_exception.text = "~r~nพบขอผิดพลาด (90.1)"
		ithw_exception.text += lthw_postmethpay.text
		ithw_exception.text += "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end try
end if

objdestroy:
if isvalid(lds_req_main) then destroy lds_req_main
if isvalid(lds_req_detail) then destroy lds_req_detail

this.of_setsrvdoccontrol( false )
this.of_setsrvdwxmlie( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_request.of_save_methpay()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca ;
end if

return 1
end function

public function integer of_post_reqchg_refrain (n_ds ads_req_main, n_ds ads_req_det_refrain) throws Exception;string ls_memcoop , ls_memno , ls_divyear
string ls_reqchgtyp
integer li_index , li_count
integer li_refraindiv , li_refrainavg

ls_memcoop		= ads_req_main.object.coop_id[1]
ls_memno			= ads_req_main.object.member_no[1]
ls_divyear			= ads_req_main.object.div_year[1]

li_count	= ads_req_det_refrain.rowcount()

for li_index = 1 to li_count
	ls_reqchgtyp	= ads_req_det_refrain.object.reqchgtype_code[li_index]
	
	if ls_reqchgtyp = "DVS" then
		li_refraindiv			= ads_req_det_refrain.object.new_flag[li_index]
		update 	yrbgmaster
		set 		refraindiv_flag 	= :li_refraindiv 
		where 	coop_id 		= :ls_memcoop
		and 		member_no 	= :ls_memno
		and 		div_year 	= :ls_divyear 
		using itr_sqlca;
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nเปลี่ยนแปลงสถานะการงดปันผล(70.1) สมาชิก : " + ls_memno
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text 	+= "~r~n" + itr_sqlca.sqlerrtext
			throw ithw_exception
		end if
		
		update yrdivmaster
		set div_amt = 0 ,
		div_balamt = 0
		where coop_id 		= :is_coopcontrol
		and member_no 	= :ls_memno
		and div_year 		= :ls_divyear 
		using itr_sqlca;
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nปรับปรุงยอดปันผล(70.2) สมาชิก : " + ls_memno
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text 	+= "~r~n" + itr_sqlca.sqlerrtext
			throw ithw_exception
		end if
		
	end if
	
	if ls_reqchgtyp = "AVS" then
		li_refrainavg			= ads_req_det_refrain.object.new_flag[li_index]
		update 	yrbgmaster
		set 		refrainavg_flag	= :li_refrainavg
		where 	coop_id 			= :ls_memcoop
		and 		member_no 		= :ls_memno
		and 		div_year 		= :ls_divyear 
		using itr_sqlca;
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nเปลี่ยนแปลงสถานะการงดเฉลี่ยคืน(70.3)"
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text 	+= "~r~n" + itr_sqlca.sqlerrtext
			throw ithw_exception
		end if
		
		update yrdivmaster
		set avg_amt = 0 ,
		avg_balamt = 0
		where coop_id 		= :is_coopcontrol
		and member_no 	= :ls_memno
		and div_year 		= :ls_divyear 
		using itr_sqlca;
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nปรับปรุงยอดเฉลี่ยคืน(70.4) สมาชิก : " + ls_memno
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text 	+= "~r~n" + itr_sqlca.sqlerrtext
			throw ithw_exception
		end if
		
	end if
	
	update yrdivmaster
	set item_balamt = div_balamt + avg_balamt + etc_balamt
	where coop_id = :is_coopcontrol
	and member_no = :ls_memno
	and div_year 		= :ls_divyear 
	using itr_sqlca;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nปรับปรุงยอดคงเหลือปันผลเฉลี่ยคืน(70.5) สมาชิก : " + ls_memno
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text 	+= "~r~n" + itr_sqlca.sqlerrtext
		throw ithw_exception
	end if
	
next

return 1
end function

public function integer of_init_methpay_grp (ref str_divsrv_req astr_divsrv_req) throws Exception;// หน้าจอสำหรับประมวลคีย์ใบคำขอสมาชิกที่ไม่มีวิธีชำระเงิน

//string ls_xmloption , ls_rpt_sql
//string ls_column , ls_tag , ls_columntyp
//string ls_value , ls_sql , ls_sqlext
//integer li_num_cols
//integer li_index
//datetime ldtm_date
//boolean lb_err = false
//n_ds lds_req_option , lds_rpt
//
//this.of_setsrvdwxmlie( true )
//
//lds_req_option = create n_ds
//lds_req_option.dataobject = "d_divsrv_req_methpay_grp_option"
//lds_req_option.settransobject( itr_sqlca )
//
//lds_rpt = create n_ds
//lds_rpt.dataobject = "d_divsrv_req_methpay_grp_rpt"
//lds_rpt.settransobject( itr_sqlca )
//
//ls_xmloption		= astr_divsrv_req.xml_option
//
//if inv_dwxmliesrv.of_xmlimport( lds_req_option , ls_xmloption ) < 1 then
//	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูล Xml Option (0.1)"
//	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
//	lb_err = true ; Goto objdestroy
//end if
//
//li_num_cols 	= Integer (lds_req_option.Describe ( "DataWindow.Column.Count" )) 
//
//for li_index = 1 to li_num_cols
//	ls_column 		= trim(lds_req_option.Describe ( "#" + String(li_index) + ".Name" ))
//	ls_tag				= trim(lds_req_option.Describe ( "#" + String(li_index) + ".Tag" ))
//	ls_columntyp	= upper( left( lds_req_option.Describe ( "#" + String(li_index) + ".ColType" ) , 4 ) )
//	choose case ls_columntyp
//		case "CHAR"
//			if lower( right( ls_column , 4 ) ) = "date" or lower( trim( ls_column ) ) = "ordertype_code" then continue ;// หมายเหตุ เป็นวันที่ให้ข้ามไป ให้ใช้จาก Type DateTime
//			ls_value		= lds_req_option.getitemstring( 1 , ls_column )
//			if lower(right( ls_tag , 4 )) = "like" then ls_value = "%" + ls_value + "%"
//			ls_value		= "'"+ ls_value + "'"
//		case "DECI"
//			ls_value		= string( lds_req_option.getitemdecimal( 1 , ls_column ) )
//			if lower(right( ls_tag , 4 )) = "like" then ls_value = "%" + ls_value + "%"
//		case "DATE"
//			ldtm_date	= lds_req_option.getitemdatetime( 1 , ls_column )
//			if isnull( ldtm_date ) then continue ;
//			ls_value		= string( ldtm_date , "dd/mm/yyyy" )
//			ls_value		= "to_date( '" + ls_value + "' , 'dd/mm/yyyy' ) "
//	end choose
//	
//	if (not IsNull(ls_value)) and trim(ls_value) <> "" then ls_sqlext += " and " + ls_tag + " " + ls_value + " "
//	
//next
//
////ls_sql		= lds_xmllist.getsqlselect()
////
////ls_sql		+= ls_sqlext + " and yrdivmethpay.methpay_status = 0 "
//
//select *
//from mbmembmaster 
//where resign_status = 0
//and not exists( 	select 1 
//					from yrreqmethpay 
//					where yrreqmethpay.div_year = '2555'
//					and yrreqmethpay.coop_id = mbmembmaster.coop_id
//					and yrreqmethpay.member_no = mbmembmaster.member_no
//					and yrreqmethpay.methreq_status > 0
//					)
//;
//
//astr_divsrv_req.xml_option	= inv_dwxmliesrv.of_xmlexport( lds_req_option )
//astr_divsrv_req.xml_rpt		= ""
//astr_divsrv_req.xml_rpt_sql	= lds_rpt.getsqlselect()
//
//objdestroy:
//if isvalid(lds_req_option) then destroy lds_req_option
//
//this.of_setsrvdwxmlie( false )
//
//if lb_err then
//	rollback using itr_sqlca ;
//	ithw_exception.text = "n_cst_divsrv_request.of_init_methpay_grp()" + ithw_exception.text
//	throw ithw_exception
//end if

return 1
end function

public function integer of_openreq_methpay (ref str_divsrv_req astr_divsrv_req) throws Exception;string ls_reqdocno

n_ds lds_req_main , lds_req_detail

lds_req_main = create n_ds
lds_req_main.dataobject = "d_divsrv_req_methpay_main"
lds_req_main.settransobject( itr_sqlca )

lds_req_detail = create n_ds
lds_req_detail.dataobject = "d_divsrv_req_methpay_detail"
lds_req_detail.settransobject( itr_sqlca )

ls_reqdocno		= astr_divsrv_req.reqdoc_no

lds_req_main.retrieve( is_coopcontrol, ls_reqdocno )
lds_req_detail.retrieve( is_coopcontrol, ls_reqdocno )

this.of_setsrvdwxmlie( true )
astr_divsrv_req.xml_main	= inv_dwxmliesrv.of_xmlexport( lds_req_main )
astr_divsrv_req.xml_detail	= inv_dwxmliesrv.of_xmlexport( lds_req_detail )
this.of_setsrvdwxmlie( false )

if isvalid(lds_req_main) then destroy lds_req_main
if isvalid(lds_req_detail) then destroy lds_req_detail

return 1
end function

protected function integer of_chk_methreq (string as_membranch, string as_memno) throws Exception;string ls_methreq , ls_coopid
integer li_chk

//** รอทำแบบ cur ในการตรวจสอบ
select count( methreq_count )
into :li_chk
from (	select count(methreq_docno) as methreq_count
			from yrreqmethpay
			where coop_id		= :as_membranch
			and member_no			= :as_memno
			and methreq_status		= 1
//			union
//			select count(methreq_docno) as methreq_count
//			from yrreqmethpay
//			where coop_id		= :as_membranch
//			and member_no			= :as_memno
//			and methreq_status		= 8	
			) tp
using itr_sqlca ;

if li_chk > 1 then
	ithw_exception.text = "~r~nมีใบคำขอรอผ่านรายการ หรือผ่านรายการไปแล้ว"
	ithw_exception.text += "~r~nสาขาสมาชิก : " + as_membranch
	ithw_exception.text += "~r~nเลขที่สมาชิก : " + as_memno
	ithw_exception.text += "~r~nสาขาใบคำขอ : " + ls_coopid
	ithw_exception.text += "~r~nเลขที่ใบคำขอ : " + ls_methreq
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

return 1
end function

protected function integer of_chk_reqchg_refrain (n_ds ads_req_det_refrain) throws Exception;string ls_reqchgtyp
integer li_index , li_count
integer li_refraindivnew , li_refrainavgnew
integer li_refraindivold , li_refrainavgold

li_count		= ads_req_det_refrain.rowcount()

for li_index = 1 to li_count
	ls_reqchgtyp	= ads_req_det_refrain.object.reqchgtype_code[li_index]
	
	if ls_reqchgtyp = "DVS" then
		li_refraindivnew	= ads_req_det_refrain.object.new_flag[li_index]
		li_refraindivold		= ads_req_det_refrain.object.old_flag[li_index]
		if li_refraindivold = li_refraindivnew then
			ithw_exception.text 	= "~r~nสถานะการงดปันผลไม่มีการเปลี่ยนแปลงค่า"
			throw ithw_exception
		end if
	end if
	
	if ls_reqchgtyp = "AVS" then
		li_refrainavgnew	= ads_req_det_refrain.object.new_flag[li_index]
		li_refrainavgold		= ads_req_det_refrain.object.old_flag[li_index]
		if li_refrainavgold = li_refrainavgnew then
			ithw_exception.text 	= "~r~nสถานะการงดเฉลี่ยคืนไม่มีการเปลี่ยนแปลงค่า"
			throw ithw_exception
		end if
	end if
	
next

return 1
end function

protected function integer of_init_methpay_main (n_ds ads_info_mem, n_ds ads_req_main) throws Exception;integer li_ifrow , li_rqrow

li_ifrow	= ads_info_mem.rowcount()
li_rqrow	= ads_req_main.rowcount()

if isnull( li_ifrow ) or li_ifrow < 1 then
	ithw_exception.text	+= "~r~nไม่พบข้อมูลรายละเอียดสมาชิก"
	throw ithw_exception
end if

ads_req_main.object.coop_id[li_rqrow]				= ads_info_mem.object.coop_id[li_ifrow]
ads_req_main.object.membtype_code[li_rqrow]	= ads_info_mem.object.membtype_code[li_ifrow]
ads_req_main.object.membtype_desc[li_rqrow]	= ads_info_mem.object.membtype_desc[li_ifrow]
ads_req_main.object.membgroup_code[li_rqrow]	= ads_info_mem.object.membgroup_code[li_ifrow]
ads_req_main.object.membgroup_desc[li_rqrow]	= ads_info_mem.object.membgroup_desc[li_ifrow]
ads_req_main.object.member_no[li_rqrow]			= ads_info_mem.object.member_no[li_ifrow]
ads_req_main.object.prename_desc[li_rqrow]		= ads_info_mem.object.prename_desc[li_ifrow]
//ads_req_main.object.prename_edesc[li_rqrow]	= ads_info_mem.object.prename_edesc[li_ifrow]
ads_req_main.object.memb_name[li_rqrow]		= ads_info_mem.object.memb_name[li_ifrow]
ads_req_main.object.memb_surname[li_rqrow]	= ads_info_mem.object.memb_surname[li_ifrow]
ads_req_main.object.memb_ename[li_rqrow]		= ads_info_mem.object.memb_ename[li_ifrow]
ads_req_main.object.memb_esurname[li_rqrow]	= ads_info_mem.object.memb_esurname[li_ifrow]
ads_req_main.object.resign_status[li_rqrow]		= ads_info_mem.object.resign_status[li_ifrow]
ads_req_main.object.resign_date[li_rqrow]			= ads_info_mem.object.resign_date[li_ifrow]
ads_req_main.object.member_status[li_rqrow]	= ads_info_mem.object.member_status[li_ifrow]
ads_req_main.object.member_date[li_rqrow]		= ads_info_mem.object.member_date[li_ifrow]
ads_req_main.object.methreq_status[1]				= 8

return 1
end function

protected function integer of_init_reqchg_main (n_ds ads_info_mem, n_ds ads_req_main) throws Exception;integer li_ifrow , li_rqrow

li_ifrow	= ads_info_mem.rowcount()
li_rqrow	= ads_req_main.rowcount()

if isnull( li_ifrow ) or li_ifrow < 1 then
	ithw_exception.text	+= "~r~nไม่พบข้อมูลรายละเอียดสมาชิก"
	throw ithw_exception
end if

ads_req_main.object.coop_id[li_rqrow]				= ads_info_mem.object.coop_id[li_ifrow]
ads_req_main.object.membtype_code[li_rqrow]	= ads_info_mem.object.membtype_code[li_ifrow]
ads_req_main.object.membtype_desc[li_rqrow]	= ads_info_mem.object.membtype_desc[li_ifrow]
ads_req_main.object.membgroup_code[li_rqrow]	= ads_info_mem.object.membgroup_code[li_ifrow]
ads_req_main.object.membgroup_desc[li_rqrow]	= ads_info_mem.object.membgroup_desc[li_ifrow]
ads_req_main.object.member_no[li_rqrow]			= ads_info_mem.object.member_no[li_ifrow]
ads_req_main.object.prename_desc[li_rqrow]		= ads_info_mem.object.prename_desc[li_ifrow]
//ads_req_main.object.prename_edesc[li_rqrow]	= ads_info_mem.object.prename_edesc[li_ifrow]
ads_req_main.object.memb_name[li_rqrow]		= ads_info_mem.object.memb_name[li_ifrow]
ads_req_main.object.memb_surname[li_rqrow]	= ads_info_mem.object.memb_surname[li_ifrow]
ads_req_main.object.memb_ename[li_rqrow]		= ads_info_mem.object.memb_ename[li_ifrow]
ads_req_main.object.memb_esurname[li_rqrow]	= ads_info_mem.object.memb_esurname[li_ifrow]
ads_req_main.object.resign_status[li_rqrow]		= ads_info_mem.object.resign_status[li_ifrow]
ads_req_main.object.resign_date[li_rqrow]			= ads_info_mem.object.resign_date[li_ifrow]
ads_req_main.object.member_status[li_rqrow]	= ads_info_mem.object.member_status[li_ifrow]
ads_req_main.object.member_date[li_rqrow]		= ads_info_mem.object.member_date[li_ifrow]
ads_req_main.object.reqchg_status[1]				= 1

return 1
end function

protected function integer of_post_methpay (n_ds ads_req_main, n_ds ads_req_dateil) throws Exception;//** รอทำผ่าน ไป yrdivmethpay

return 1
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

protected function integer of_setsrvproc (boolean ab_switch);// Check argument
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

on n_cst_divsrv_request.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_divsrv_request.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create Exception
end event
