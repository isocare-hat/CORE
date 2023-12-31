$PBExportHeader$n_cst_assist_sk_process.sru
forward
global type n_cst_assist_sk_process from nonvisualobject
end type
end forward

global type n_cst_assist_sk_process from nonvisualobject
end type
global n_cst_assist_sk_process n_cst_assist_sk_process

type variables

n_ds		ids_loandata, ids_contintspc, ids_inttable
n_ds		ids_constant
n_cst_dbconnectservice		inv_transection
n_cst_loansrv_interest		inv_intsrv
n_cst_progresscontrol		inv_progress
n_cst_dwxmlieservice				inv_dwxmliesrv
transaction	itr_sqlca
Exception	ithw_exception
end variables

forward prototypes
public function integer of_initservice (n_cst_dbconnectservice atr_dbtrans)
public function integer of_xmlimport (n_ds ads_info, string as_dwobjname, string as_xmlinfo)
public function string of_xmlexport (n_ds ads_info)
public function string of_get_insreceive (string as_period)
public function integer of_init_ins_loan (ref string as_xmldatacri, ref string as_xmdataloan)
public function integer of_ins_processinstallfromloan (string as_xmldatacri, string as_xmlloandata) throws Exception
public function integer of_setsrvdwxmlie (boolean ab_switch)
public function integer of_setprogress (ref n_cst_progresscontrol anv_progress) throws Exception
public function integer of_ins_processcancleinstallfromloan (string as_xmldatacri, string as_xmlloandata) throws Exception
end prototypes

public function integer of_initservice (n_cst_dbconnectservice atr_dbtrans);/***********************************************************
<description>
	ใช้สำหรับ Intial service
</description>

<arguments>  
	atr_dbtrans			n_cst_dbconnectservice	รายละเอียดการเชื่อมต่อฐานข้อมูล
</arguments> 

<return> 
	Integer				1 = success
</return> 

<usage> 
	เรียกใช้ครั้งเดียว และต้องเรียกใช้เป็นฟังก์ชั่นแรกหลังจาก create instance
	ก่อนที่จะเรียกใช้ฟังก์ชั่นอื่น ๆ
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 28/9/2010 by MiT
</usage> 
***********************************************************/

if isnull( inv_transection ) or not isvalid( inv_transection ) then
	inv_transection = create n_cst_dbconnectservice
	inv_transection = atr_dbtrans
end if
itr_sqlca = atr_dbtrans.itr_dbconnection

// สร้าง Progress สำหรับแสดงสถานะการประมวลผล
inv_progress = create n_cst_progresscontrol

return 1
end function

public function integer of_xmlimport (n_ds ads_info, string as_dwobjname, string as_xmlinfo);/***********************************************************
<description>
	Import Xml
</description>

<arguments>  
	ads_info				n_ds		datastore ที่จะ import ข้อมูลเข้า
	as_dwobjname		String		ชื่อ dw object
	as_xmlinfo			String		ข้อมูลในรูปแบบ xml ที่ต้องการ import
</arguments> 

<return> 
	Integer	 	จำนวนแถวที่ import ได้
					-1   No rows or startrow value supplied is greater than the number of rows in the string
					-3   Invalid argument
					-4   Invalid input
					-11   XML Parsing Error; XML parser libraries not found or XML not well formed
					-12   XML Template does not exist or does not match the DataWindow
					-13    Unsupported DataWindow style for import
					-14    Error resolving DataWindow nesting
</return> 

<usage> 
	Revision History:
	Version 1.0 (Initial version) Modified Date 13/10/2010 by MiT
</usage> 
***********************************************************/
integer	li_row

if not isvalid( ads_info ) or isnull( ads_info ) then
	ads_info = create n_ds
end if

ads_info.dataobject = as_dwobjname
ads_info.settransobject( itr_sqlca )

if ( as_xmlinfo = "" ) then return 0

li_row = ads_info.importstring( XML!, as_xmlinfo )

return li_row
end function

public function string of_xmlexport (n_ds ads_info);/***********************************************************
<description>
	Export xml เข้าสู่ datastore
</description>

<arguments>  
	ads_info				n_ds		datastore ที่จะ export ข้อมูล
</arguments> 

<return> 
	String		 	xml ที่ export ได้
</return> 

<usage> 
	Revision History:
	Version 1.0 (Initial version) Modified Date 13/10/2010 by MiT
</usage> 
***********************************************************/
string		ls_xml

if ( ads_info.rowcount() > 0 ) then
	ls_xml = string( ads_info.describe( "Datawindow.data.XML" ) )
else
	ls_xml = ""
end if

return ls_xml
end function

public function string of_get_insreceive (string as_period);
string		ls_return

n_ds		lds_recv
lds_recv	= create n_ds
lds_recv.dataobject	= "d_ins_receive_master"
lds_recv.settransobject( itr_sqlca )

long		ll_currentrow , ll_rowcount

ll_rowcount		= lds_recv.retrieve( as_period )

ls_return			= this.of_xmlexport( lds_recv )

return ls_return
end function

public function integer of_init_ins_loan (ref string as_xmldatacri, ref string as_xmdataloan);//ตั้งค่า init หน้าจอ ติดตั้งประกันชีวิต ปปน พคช
string ls_loantypecode ,ls_instypecode, ls_startgroup, ls_endgroup,ls_instype
datetime ldtm_start, ldtm_end
long ll_row, ll_count,li_rowcount
n_ds lds_cri, lds_loandata
lds_cri = create n_ds
lds_cri.dataobject = "d_pk_process_loan_cri"
lds_cri.settransobject( itr_sqlca )
li_rowcount = lds_cri.importstring( XML!, as_xmldatacri )

lds_loandata = create n_ds
lds_loandata.dataobject = "d_pk_ppn_egat_loan_list_process"
lds_loandata.settransobject( itr_sqlca )

ls_instype = lds_cri.getitemstring( 1,"instype_code")
ls_loantypecode = lds_cri.getitemstring( 1,"loantype_code")
ldtm_start = lds_cri.getitemdatetime(1,"start_date")
ldtm_end = lds_cri.getitemdatetime(1,"end_date")

ll_count = lds_loandata.retrieve(ls_loantypecode,ldtm_start, ldtm_end)
as_xmdataloan = this.of_xmlexport( lds_loandata )
return ll_count
end function

public function integer of_ins_processinstallfromloan (string as_xmldatacri, string as_xmlloandata) throws Exception;/*
of_ins_processinstallfromloan  ติดตั้งกองทุนสวัสดิการ
as_xmldatacri  = เงือนไขในการติดตั้ง
s_xmlloandata = ข้อมูลเงินกู้
*/
string ls_memno, ls_contno, ls_insgroupdocno, ls_instypecode,ls_loantypecode, ls_insdocno,ls_cardperson, ls_userid, ls_lastdocno,ls_assistype,ls_lastdeptno
string ls_asstdocno, ls_lastdpetdocno,ls_name
dec{2} ldc_loanapp, ldc_inspayment, ldc_periodpay
dec{4} ldc_percent = 0.075
long ll_row,ll_index, ll_rowcount, ll_insgroupid, ll_asnlastno, ll_lastdeptno, ll_deptlastno
datetime ldtm_startcont, ldtm_endsafe
integer li_membtype, li_period, li_chkins,li_year

string ls_loantype,   ls_receiptno
long  ll_count
integer  li_rowcount
n_ds lds_loandata
n_ds lds_cri


lds_cri = create n_ds
lds_cri.dataobject = "d_assist_sk_process_loan_cri"
lds_cri.settransobject( itr_sqlca )
this.of_setsrvdwxmlie(true)
inv_dwxmliesrv.of_xmlimport( lds_cri , as_xmldatacri )


li_rowcount = lds_cri.rowcount()

ls_instypecode = lds_cri.getitemstring(1,"instype_code")
ls_loantypecode = lds_cri.getitemstring(1,"loantype_code")

//of_xmlimport( lds_prokeeping_ins, "d_ins_process_keeping", as_xmldata )
lds_loandata = create n_ds
lds_loandata.dataobject = "d_assist_sk_install_loanlist_process" //""
lds_loandata.settransobject( itr_sqlca )
inv_progress.istr_progress.progress_text	= "ติดตั้งกองทุนสวัสดิการ"
inv_progress.istr_progress.subprogress_text	= "กำลังดึงข้อมูล"
inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= 0


this.of_setsrvdwxmlie(true)
inv_dwxmliesrv.of_xmlimport( lds_loandata , as_xmlloandata )
ll_count = lds_loandata.rowcount( )
inv_progress.istr_progress.subprogress_max	= ll_count

if  ll_count <= 0 then
	ithw_exception.text = "ประมวลกองทุนสวัสดิการ พบข้อผิดพลาด~n ไม่พบข้อมูลที่ส่งมา กรุณาตรวจสอบ"  + ithw_exception.text
	destroy lds_loandata
	throw ithw_exception
end if
ls_assistype = '07'
select max( assist_docno )
into :ls_lastdocno
from asnreqmaster  where assisttype_code = :ls_assistype using itr_sqlca ;
	
ll_asnlastno = long(mid( ls_lastdocno,2,len( ls_lastdocno )))
select max( deptaccount_no )
into :ls_lastdpetdocno
from dpdeptmaster  where depttype_code = '10' using itr_sqlca ;

ll_deptlastno = long(mid( ls_lastdpetdocno,6,len( ls_lastdpetdocno )))

for  ll_row = 1 to  ll_count
	
	yield()
	if inv_progress.of_is_stop() then
		destroy lds_loandata
		return 1
	end if
	
	ls_memno 	= lds_loandata.getitemstring( ll_row,"member_no")
	ls_name		= trim( lds_loandata.getitemstring( ll_row,"prename_desc")) +  trim( lds_loandata.getitemstring( ll_row,"memb_name"))+ '  '+  trim( lds_loandata.getitemstring( ll_row,"memb_surname"))
	ls_contno	=  lds_loandata.getitemstring( ll_row,"loancontract_no")
	ls_cardperson = lds_loandata.getitemstring( ll_row,"card_person")
	ldc_loanapp = lds_loandata.getitemdecimal(ll_row,"principal_balance")
	ldtm_startcont = lds_loandata.getitemdatetime( ll_row,"startcont_date")
	
	inv_progress.istr_progress.subprogress_index	= ll_row
	inv_progress.istr_progress.subprogress_text	= "เลขที่# " + ls_memno 
	
	li_membtype = 1
	if isnull(ldc_inspayment) then ldc_inspayment = 0

	li_chkins = 0
	
	li_year =  year(date( ldtm_startcont )) + 543 
	ls_lastdocno =  string('00000' + string(ll_asnlastno + 1 )) 
	
	ls_asstdocno = 'AS' + ls_lastdocno
	
	if isnull( ll_insgroupid ) then ll_insgroupid = 0
	ll_insgroupid ++
	insert into asnreqmaster
	(	assist_docno,		capital_year,		member_no,		assisttype_code,		approve_amt,		assist_amt,		req_status,
		req_date,			approve_date,		paytype_code,		pay_status )
	values
	(	:ls_asstdocno,		:li_year,				:ls_memno,		 :ls_assistype,				:ldc_loanapp,		:ldc_loanapp,	1,
		:ldtm_startcont,	:ldtm_startcont,	'CBT',				1   );
	
	if( itr_sqlca.sqlcode <> 0 ) then

		ithw_exception.text = "ประมวลกองทุนสวัสดิการ1 พบข้อผิดพลาด~n" + string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
		destroy lds_loandata
		throw ithw_exception
		return -1
	end if
	
	ls_lastdeptno = '00010' +  right( '00000' + string( ll_deptlastno + 1 ),5)
	insert into dpdeptmaster
	( 	deptaccount_no,		branch_id,		depttype_code,		member_no,		deptopen_date,		deptclose_status,
		deptaccount_name,	prncbal ,		deptmonth_status,		deptmonth_amt )
	values
	(	:ls_lastdeptno,			'000',				'10',						:ls_memno,			:ldtm_startcont,		0,
		:ls_name,				0,				1,								50 
	) using itr_sqlca ;
				  
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text = "ประมวลกองทุนสวัสดิการ1 เงินฝาก พบข้อผิดพลาด~n" + string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
		destroy lds_loandata
		throw ithw_exception
		return -1
	end if

next

commit using itr_sqlca ;
destroy lds_loandata
inv_progress.istr_progress.status = 1

this.of_setsrvdwxmlie(false)
	
destroy lds_loandata
//messagebox('ติดตั้งประกัน ปปน พคช','ติดตั้งประกันชีวิตเรียบร้อยแล้ว')
return 1
end function

public function integer of_setsrvdwxmlie (boolean ab_switch);// Check argument
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

public function integer of_ins_processcancleinstallfromloan (string as_xmldatacri, string as_xmlloandata) throws Exception;/*
of_ins_processinstallfromloan  ยกเลิกติดตั้งกองทุนสวัสดิการ
as_xmldatacri  = เงือนไขในการติดตั้ง
s_xmlloandata = ข้อมูลเงินกู้
*/
string ls_memno, ls_contno, ls_insgroupdocno, ls_instypecode,ls_loantypecode, ls_insdocno,ls_cardperson, ls_userid
dec{2} ldc_loanapp, ldc_inspayment, ldc_periodpay
dec{4} ldc_percent = 0.075
long ll_row,ll_index, ll_rowcount, ll_insgroupid
datetime ldtm_startcont, ldtm_endsafe
integer li_membtype, li_period, li_chkins

string ls_loantype,   ls_receiptno
long  ll_count
integer  li_rowcount
n_ds lds_loandata
n_ds lds_cri

inv_progress.istr_progress.progress_text	= "ยกเลิกการติดตั้งกองทุน"
inv_progress.istr_progress.subprogress_text	= "กำลังดึงข้อมูล"
inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= 0


lds_cri = create n_ds
lds_cri.dataobject = "d_assist_sk_process_loan_cri"
lds_cri.settransobject( itr_sqlca )
li_rowcount = lds_cri.importstring( XML!, as_xmldatacri )

ls_instypecode = lds_cri.getitemstring(1,"instype_code")
ls_loantypecode = lds_cri.getitemstring(1,"loantype_code")

//of_xmlimport( lds_prokeeping_ins, "d_ins_process_keeping", as_xmldata )
lds_loandata = create n_ds
lds_loandata.dataobject = "d_assist_sk_install_loanlist_process" //""
lds_loandata.settransobject( itr_sqlca )

this.of_setsrvdwxmlie(true)
inv_dwxmliesrv.of_xmlimport( lds_loandata , as_xmlloandata )
ll_count = lds_loandata.rowcount( )
inv_progress.istr_progress.subprogress_max	= ll_count

if  ll_count <= 0 then
	ithw_exception.text = "ประมวลกองทุนสวัสดิการ พบข้อผิดพลาด~n ไม่พบข้อมูลที่ส่งมา กรุณาตรวจสอบ"  + ithw_exception.text
	destroy lds_loandata
	throw ithw_exception
end if
for  ll_row = 1 to  ll_count
	
	yield()
	if inv_progress.of_is_stop() then
		destroy lds_loandata
		return 1
	end if
	
	ls_memno 	= lds_loandata.getitemstring( ll_row,"member_no")
	ls_contno	=  lds_loandata.getitemstring( ll_row,"loancontract_no")
	ls_cardperson = lds_loandata.getitemstring( ll_row,"card_person")
	ldc_loanapp = lds_loandata.getitemdecimal(ll_row,"principal_balance")
	ldtm_startcont = lds_loandata.getitemdatetime( ll_row,"startcont_date")
	li_membtype = 1
	
	inv_progress.istr_progress.subprogress_index	= ll_row
	inv_progress.istr_progress.subprogress_text	= "เลขที่# " + ls_memno 
	
	if isnull(ldc_inspayment) then ldc_inspayment = 0
	
	delete from asnreqmaster where assisttype_code = '07' and member_no = :ls_memno 
	using itr_sqlca ;
	delete from dpdeptmaster where  depttype_code = '01' and member_no = :ls_memno 
	using itr_sqlca ;
	if( itr_sqlca.sqlcode <> 0 ) then

		ithw_exception.text = "ประมวลกองทุนสวัสดิการ พบข้อผิดพลาด~n" + string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
		destroy lds_loandata
		throw ithw_exception
		return -1
	end if


next
commit using itr_sqlca;
destroy lds_loandata
inv_progress.istr_progress.status = 1

this.of_setsrvdwxmlie(false)
	
destroy lds_loandata
//messagebox('ติดตั้งประกัน ปปน พคช','ติดตั้งประกันชีวิตเรียบร้อยแล้ว')
return 1
end function

on n_cst_assist_sk_process.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_assist_sk_process.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create Exception
end event

event destructor;if isvalid( ithw_exception ) then destroy ithw_exception
if isvalid( inv_progress ) then destroy inv_progress
end event

