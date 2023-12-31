$PBExportHeader$n_cst_loansrv_printform.sru
forward
global type n_cst_loansrv_printform from nonvisualobject
end type
end forward

global type n_cst_loansrv_printform from nonvisualobject
end type
global n_cst_loansrv_printform n_cst_loansrv_printform

type variables
transaction		itr_sqlca
throwable		ithw_exception

n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_printservice				inv_printsrv
end variables

forward prototypes
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws throwable
private function integer of_setsrvprint (boolean ab_switch)
private function integer of_setsrvdwxmlie (boolean ab_switch)
public function long of_initlist_payinreceipt (string as_xmlcriteria, ref string as_xmlpayinlist) throws throwable
public function integer of_printloan_agree (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
public function integer of_printloan_collagree (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
public function integer of_printloan_dept (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
public function integer of_printloancoll (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
public function integer of_printreceipt (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
public function integer of_printreceipt_loan (string as_coopid, string as_formset, string as_payinslipno, ref string as_xml) throws throwable
public function integer of_printreceipt_reprint (string as_xmlpayinlist, string as_formset, ref string as_xml) throws throwable
public function integer of_printslippayin (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
public function integer of_printloan (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable
end prototypes

public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws throwable;// Service Transection
if isnull( inv_transection ) or not isvalid( inv_transection ) then
	inv_transection	= create n_cst_dbconnectservice
	inv_transection	= anv_dbtrans
end if

itr_sqlca 		= inv_transection.itr_dbconnection

this.of_setsrvdwxmlie( true )

return 1
end function

private function integer of_setsrvprint (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_printsrv ) or not isvalid( inv_printsrv ) then
		inv_printsrv	= create n_cst_printservice
		return 1
	end if
else
	if isvalid( inv_printsrv ) then
		destroy inv_printsrv
		return 1
	end if
end if

return 0
end function

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

public function long of_initlist_payinreceipt (string as_xmlcriteria, ref string as_xmlpayinlist) throws throwable;string		ls_memno, ls_grpno, ls_datestart, ls_dateend, ls_recpnostart, ls_recpnoend,ls_coop_id
string		ls_sql, ls_sqlext
long		ll_chk
datetime	ldtm_start, ldtm_end
n_ds		lds_criteria, lds_payinlist

lds_criteria	= create n_ds
lds_criteria.dataobject	= "d_loansrv_prn_payinslipcriteria"

lds_payinlist	= create n_ds
lds_payinlist.dataobject	= "d_loansrv_prn_payinsliplist"
lds_payinlist.settransobject( itr_sqlca )

ll_chk		= inv_dwxmliesrv.of_xmlimport( lds_criteria, as_xmlcriteria )

// ถ้าไม่มีการส่งข้อมูลมาแสดงว่า ดึงทั้งหมด

if ll_chk < 1 then 
	//ยังไม่ต้อง  Retrive  เพื่อให้  ใส่ค่าใน  Criteria ก่อน
	//lds_payinlist.retrieve() 
	as_xmlpayinlist	= inv_dwxmliesrv.of_xmlexport( lds_payinlist )
	ithw_exception.text	= " โปรดระบุเงื่อนไขข้อมูลที่ต้องการ พิมพ์"
	throw ithw_exception
end if

ls_sql		= lds_payinlist.getsqlselect()
ls_sqlext	= ""

ls_memno		= trim( lds_criteria.getitemstring( 1, "member_no" ) )
ls_grpno			= trim( lds_criteria.getitemstring( 1, "membgroup_code" ) )
ls_recpnostart	= trim( lds_criteria.getitemstring( 1, "receiptno_start" ) )
ls_recpnoend	= trim( lds_criteria.getitemstring( 1, "receiptno_end" ) )
ldtm_start		= lds_criteria.getitemdatetime( 1, "receiptdate_start" )
ldtm_end			= lds_criteria.getitemdatetime( 1, "receiptdate_end" )
ls_coop_id        = lds_criteria.getitemstring( 1, "coop_id" )



if isnull( ls_recpnostart ) then ls_recpnostart = ""
if isnull( ls_recpnoend ) then ls_recpnoend = ""

if isnull( ls_coop_id ) then  
	 ithw_exception.text	= "โปรดเลือกรหัส สหกรณ์ "
	 throw ithw_exception
end if


if isnull( ldtm_start ) then
	ls_datestart		= "19000101"
else
	ls_datestart		= string( ldtm_start, "yyyymmdd" )
end if

if isnull( ldtm_end ) then
	ls_dateend		= "19000101"
else
	ls_dateend		= string( ldtm_end, "yyyymmdd" )
end if

if ls_coop_id <> ""  and not isnull( ls_coop_id ) then
	ls_sqlext		+= " and slslippayin.coop_id = '"+ls_coop_id+"'"
end if 	

if ls_memno <> "" and not isnull( ls_memno ) then
	ls_memno	= right( "000000"+ls_memno, 6 )
	ls_sqlext		+= " and slslippayin.member_no = '"+ls_memno+"'"
end if

if ls_grpno <> "" and not isnull( ls_grpno ) then
	ls_sqlext		+= " and slslippayin.membgroup_code = '"+ls_grpno+"'"
end if

if ( ls_datestart <> "19000101" ) and ( ls_dateend <> "19000101" ) then
	ls_sqlext		+= " and slslippayin.slip_date between to_date('"+ls_datestart+"', 'yyyymmdd') and to_date('"+ls_dateend+"','yyyymmdd')"
elseif ( ls_datestart <> "19000101" ) and ( ls_dateend = "19000101" ) then
	ls_sqlext		+= " and slslippayin.slip_date = to_date('"+ls_datestart+"', 'yyyymmdd')"
elseif ( ls_datestart = "19000101" ) and ( ls_dateend <> "19000101" ) then
	ls_sqlext		+= " and slslippayin.slip_date = to_date('"+ls_dateend+"', 'yyyymmdd')"
end if

if ( ls_recpnostart <> "" ) and ( ls_recpnoend <> "" ) then
	ls_sqlext		+= " and slslippayin.document_no between '"+ls_recpnostart+"' and '"+ls_recpnoend+"'"
	
elseif ( ls_recpnostart <> "19000101" ) and ( ls_recpnoend = "19000101" ) then
	ls_sqlext		+= " and slslippayin.document_no = '"+ls_recpnostart+"'"
	
elseif ( ls_recpnostart = "19000101" ) and ( ls_recpnoend <> "19000101" ) then
	ls_sqlext		+= " and slslippayin.document_no = '"+ls_recpnoend+"'"
end if

ls_sql	= ls_sql + ls_sqlext

lds_payinlist.setsqlselect( ls_sql )
lds_payinlist.settransobject( itr_sqlca )
lds_payinlist.retrieve()

as_xmlpayinlist	= inv_dwxmliesrv.of_xmlexport( lds_payinlist )

destroy lds_criteria
destroy lds_payinlist

return 1
end function

public function integer of_printloan_agree (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "r_shrlon_loanrequest_agree"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )

as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )

ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "CONTLOAN" , as_formset  )
this.of_setsrvprint( false )


return 1
end function

public function integer of_printloan_collagree (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "r_shrlon_loanrequest_coll_agree"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )

ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "CONTLOAN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

public function integer of_printloan_dept (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "r_shrlon_loanrequest_dept_agree"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )
ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "CONTLOAN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

public function integer of_printloancoll (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "r_shrlon_loanrequest_coll"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )

as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )
ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "CONTLOAN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

public function integer of_printreceipt (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "r_shrln_slip_payout"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )
ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "SLIPPAYIN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

public function integer of_printreceipt_loan (string as_coopid, string as_formset, string as_payinslipno, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "shrlon_loanrequest_slip"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )
ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "SLIPPAYIN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

public function integer of_printreceipt_reprint (string as_xmlpayinlist, string as_formset, ref string as_xml) throws throwable;//ก่อนส่งมาพิมพ์ โดยเรียก function นี้  จะต้อง  filter  เอารายการที่เลือกเท่านั้น

string	ls_payinslipno
long	ll_row, ll_find, ll_count
n_ds 	lds_payinlist, lds_printreceipt

// ตัวใบเสร็จ
lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "dw_shrln_printslip_cen"
lds_printreceipt.settrans( itr_sqlca )

// รายการที่จะ Reprint
lds_payinlist		=	create n_ds
lds_payinlist.dataobject = "d_loansrv_prn_payinsliplist"

ll_count = inv_dwxmliesrv.of_xmlimport( lds_payinlist, as_xmlpayinlist )

if ll_count <= 0 then
	destroy lds_printreceipt
	destroy lds_payinlist
	
	return 0
end if

lds_printreceipt.object.t_copy.visible	= 1

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()

ll_find		= lds_payinlist.find( "operate_flag = 1", 1, ll_count )
do while ll_find > 0
	ls_payinslipno	= lds_payinlist.getitemstring( ll_find, "payinslip_no" )
	
	ll_row = lds_printreceipt.retrieve( ls_payinslipno )
	
	if ll_row < 1 then
		ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
		
		destroy lds_printreceipt
		destroy lds_payinlist
		
		this.of_setsrvprint( false )

		throw ithw_exception
	end if	
	
	// ส่งงานไปพิมพ์
	inv_printsrv.of_print( lds_printreceipt , "SLIPPAYIN" , as_formset  )
	
	ll_find ++
	if ll_find > ll_count then
		exit
	end if
	ll_find		= lds_payinlist.find( "operate_flag = 1", ll_find, ll_count )
loop
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )

destroy lds_printreceipt
destroy lds_payinlist

this.of_setsrvprint( false )

return 1
end function

public function integer of_printslippayin (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "dw_shrln_printslip_cen"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )

ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )
this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "SLIPPAYIN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

public function integer of_printloan (string as_payinslipno, string as_formset, string as_coopid, ref string as_xml) throws throwable;//print สัญญาloan
long	ll_row
n_ds 	lds_printreceipt

lds_printreceipt		=	create n_ds
lds_printreceipt.dataobject = "r_shrlon_loanrequest_norm"
lds_printreceipt.settrans( itr_sqlca )
lds_printreceipt.retrieve( as_coopid,as_payinslipno )
as_xml	= inv_dwxmliesrv.of_xmlexport( lds_printreceipt )
ll_row = lds_printreceipt.rowcount( )
if ll_row < 1 then
	ithw_exception.text	= "ไม่สามารถดึงข้อมูลเตรียมการพิมพ์ได้"
	throw ithw_exception
end if

this.of_setsrvprint( true )
inv_printsrv.of_reloadsetting()
inv_printsrv.of_print( lds_printreceipt , "CONTLOAN" , as_formset  )
this.of_setsrvprint( false )

return 1
end function

on n_cst_loansrv_printform.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_loansrv_printform.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;/***************************************************************
<object>
เป็น Object ที่รวบรวมฟังก์ชั่นสำหรับการทำงานที่เกี่ยวข้องกับการทำรายการเงินกู้ต่างๆ
เช่นการจ่ายเงินกู้ การชำระ การโอนหนี้ การยกเลิก การปรับปรุง ฯลฯ
เมื่อมีการประกาศ Object นี้เสร็จแล้วจำเป็นที่จะต้องเรียกใช้ฟังก์ชั่น
of_initservice( transection ) เพื่อกำหนดตัวแปรหรือค่าคงที่ต่างๆที่จำเป็นสำหรับ
การทำงานของ Object 
</object>
	  
<author>
	Initial Version by Oh ho
</author>
 
<usage>  
  	ตัวอย่างการเรียกใช้งาน
	n_cst_loansrv_lnoperate		lnv_lnoperate 
	lnv_lnoperate	= create n_cst_loansrv_lnoperate
	lnv_lnoperate.initservice( transection ) 
</usage> 
****************************************************************/ 

// ประกาศ Throw สำหรับ Err
ithw_exception	= create throwable
end event

event destructor;this.of_setsrvdwxmlie( false )
end event

