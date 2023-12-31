$PBExportHeader$n_cst_sh_share_service.sru
$PBExportComments$ส่วนบริการระบบหุ้น
forward
global type n_cst_sh_share_service from nonvisualobject
end type
type str_sharestm from structure within n_cst_sh_share_service
end type
end forward

type str_sharestm from structure
	string		member_no
	string		sharetype_code
	string		operate_date
	string		slip_date
	string		seq_no
	string		ref_docno
	string		shritemtype_code
	string		period
	string		share_amount
	string		sharestk_amt
	string		shrarrearbf_amt
	string		shrarrear_amt
	string		moneytype_code
	string		item_status
	string		entry_id
	string		branch_id
	datetime		entry_date
end type

global type n_cst_sh_share_service from nonvisualobject
end type
global n_cst_sh_share_service n_cst_sh_share_service

type variables
protected:
datastore	ids_sharetype
datastore	ids_shrgrtcont, ids_shrgrtreq

integer	success = 1
integer	failure = -1

transaction	itr_sqlca
Exception	ithw_exception

end variables

forward prototypes
public function any of_getattribsharetype (string as_sharetype, string as_attribshare) throws Exception
public function decimal of_getsharebegin (string as_memno) throws Exception
public function decimal of_getsharegrtamount (string as_memno) throws Exception
public function decimal of_getsharegrtreqamt (string as_memno) throws Exception
public function decimal of_getsharegrtreqamt (string as_memno, string as_reqno[]) throws Exception
public function decimal of_getsharegrtuseamt (string as_memno) throws Exception
public function decimal of_getsharegrtuseamt (string as_memno, string as_contno[]) throws Exception
public function decimal of_getsharemonthrate (string as_sharetype, decimal adc_salary) throws Exception
public function decimal of_getsharestock (string as_memno) throws Exception
public function decimal of_getsharestock (string as_memno, string as_sharetype) throws Exception
public function decimal of_getsharestockkeep (string as_memno) throws Exception
public function integer of_getshrstmlastseqno (string as_sharetype, string as_memno) throws Exception
public function integer of_initservice (n_cst_dbconnectservice atr_dbtrans) throws Exception
public function integer of_getsharemonthrate (string as_sharetype, decimal adc_salary, decimal adc_minshare, decimal adc_maxshare) throws Exception
end prototypes

public function any of_getattribsharetype (string as_sharetype, string as_attribshare) throws Exception;integer	li_row
any		la_attrib

// validate parameter
li_row	= ids_sharetype.find("sharetype_code = '" + as_sharetype+"'", 0, ids_sharetype.rowcount())
if li_row > 0 then
	choose case lower ( Left ( ids_sharetype.describe ( as_attribshare + ".ColType" ) , 5 ) )
		case "char(", "char"
			la_attrib	= ids_sharetype.getitemstring( li_row, as_attribshare ) 
			
		case "date"
			la_attrib	= ids_sharetype.getitemdate( li_row, as_attribshare ) 
			
		case "datet"
			la_attrib	= ids_sharetype.getitemdatetime( li_row, as_attribshare ) 
			
		case "decim"
			la_attrib	= ids_sharetype.getitemdecimal( li_row, as_attribshare ) 
			
		case "numbe", "long", "ulong", "real", "int"
			la_attrib	= ids_sharetype.getitemnumber( li_row, as_attribshare ) 
			
		case "time", "times"
			la_attrib	= ids_sharetype.getitemtime( li_row, as_attribshare ) 
			
		case else
			setnull( la_attrib )
	end choose
	
end if

return la_attrib
end function

public function decimal of_getsharebegin (string as_memno) throws Exception;dec	ldc_sumsharebagin

select	sum( shsharemaster.sharebegin_amt * shsharetype.share_value )
into		:ldc_sumsharebagin
from	shsharemaster, shsharetype
where	( shsharetype.sharetype_code = shsharemaster.sharetype_code ) and
		( ( shsharemaster.member_no = :as_memno ) ) using itr_sqlca ;		
		
		
if isnull(ldc_sumsharebagin) then ldc_sumsharebagin = 0

return ldc_sumsharebagin
end function

public function decimal of_getsharegrtamount (string as_memno) throws Exception;dec	ldc_shrgrt

select	sum( shsharemaster.sharestk_amt * shsharetype.share_value )
into		:ldc_shrgrt
from	shsharemaster, shsharetype
where	( shsharemaster.sharetype_code = shsharetype.sharetype_code ) and
		( shsharetype.callonprms_status = 1 ) and
		( shsharemaster.member_no = :as_memno ) using itr_sqlca ;
		
if isnull( ldc_shrgrt ) then ldc_shrgrt = 0

return ldc_shrgrt
end function

public function decimal of_getsharegrtreqamt (string as_memno) throws Exception;string		ls_reqclear[]

return this.of_getsharegrtreqamt( as_memno, ls_reqclear[] )
end function

public function decimal of_getsharegrtreqamt (string as_memno, string as_reqno[]) throws Exception;////////////////////////////////////////
//	หาค่าการค้ำประกันที่ใช้ไปแล้วของหุ้น
//	argument
//		as_memno		: เลขที่สมาชิก
//		as_reqno[]		: เลขที่ใบคำขอที่ไม่นับการค้ำประกัน ( ย้ำ ไม่นับ!! )
////////////////////////////////////////

integer		li_index, li_count
long		ll_row, ll_find
dec{2}		ldc_colluse

ll_row		= ids_shrgrtreq.retrieve( as_memno )

if ll_row > 0 then
	// ตัดสัญญาที่ไม่นับออกไป
	li_count	= upperbound( as_reqno )
	for li_index = 1 to li_count
		ll_find	= ids_shrgrtreq.find( "loanrequest_docno = '"+as_reqno[ li_index ]+"'", 1, ids_shrgrtreq.rowcount() )
		if ll_find > 0 then
			ids_shrgrtreq.rowsdiscard( ll_find, ll_find, primary! )
		end if
	next
	
	// หาค่าที่ใช้ค้ำประกัน
	ldc_colluse		= dec( ids_shrgrtreq.describe( "evaluate( 'sum( ( loanrequest_amt * coll_percent ) for all ) ', 1 )" ) )
end if

if isnull( ldc_colluse ) then ldc_colluse = 0

return ldc_colluse
end function

public function decimal of_getsharegrtuseamt (string as_memno) throws Exception;string		ls_contclear[]

return this.of_getsharegrtuseamt( as_memno, ls_contclear[] )
end function

public function decimal of_getsharegrtuseamt (string as_memno, string as_contno[]) throws Exception;////////////////////////////////////////
//	หาค่าการค้ำประกันที่ใช้ไปแล้วของหุ้น
//	argument
//		as_memno		: เลขที่สมาชิก
//		as_contno[]	: เลขที่สัญญาที่ไม่นับการค้ำประกัน ( ย้ำ ไม่นับ!! )
////////////////////////////////////////

string		ls_contno
integer		li_index, li_count
long		ll_row, ll_find
dec{2}		ldc_colluse

ll_row		= ids_shrgrtcont.retrieve( as_memno )

if ll_row > 0 then
	// ตัดสัญญาที่ไม่นับออกไป
	li_count	= upperbound( as_contno )
	for li_index = 1 to li_count
		ll_find	= ids_shrgrtcont.find( "loancontract_no = '"+as_contno[ li_index ]+"'", 1, ids_shrgrtcont.rowcount() )
		if ll_find > 0 then
			ids_shrgrtcont.rowsdiscard( ll_find, ll_find, primary! )
		end if
	next
	
	// หาค่าที่ใช้ค้ำประกัน
	ldc_colluse		= dec( ids_shrgrtcont.describe( "evaluate( 'sum( ( withdrawable_amt + principal_balance ) * coll_percent for all ) ', 1 )" ) )
end if

if isnull( ldc_colluse ) then ldc_colluse = 0

return ldc_colluse
end function

public function decimal of_getsharemonthrate (string as_sharetype, decimal adc_salary) throws Exception;/***********************************************************
<description> 
	หาค่าหุ้นสะสมต่อเดือนตามเกณฑ์เงินเดือน
</description>

<arguments>  
	as_sharetype		String			ประเภทหุ้น
	adc_salary			decimal		เงินเดือน 
</arguments> 

<return> 
	decimal		ค่าหุ้นสะสมต่อเดือนตามเกณฑ์เงินเดือน
</return> 

<usage>  
	จะถูกเรียกใช้ผ่าน n_cst_sh_share_service ไม่สามารถเรียกใช้โดยตรง
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 28/9/2010 by MiT
</usage> 
***********************************************************/


dec	ldc_shrratevalue

select	shsharetypemthrate.sharemonth_amt * shsharetype.share_value
into		:ldc_shrratevalue
from	shsharetypemthrate, shsharetype
where	( shsharetypemthrate.sharetype_code = shsharetype.sharetype_code ) and
		( shsharetypemthrate.sharetype_code = :as_sharetype ) and
		( :adc_salary between shsharetypemthrate.start_salary and shsharetypemthrate.end_salary )
using itr_sqlca ;		

if itr_sqlca.sqlcode <> 0 then
	ldc_shrratevalue	= 0
end if

return ldc_shrratevalue
end function

public function decimal of_getsharestock (string as_memno) throws Exception;dec	ldc_sumsharestk

select	sum( shsharemaster.sharestk_amt * shsharetype.share_value )
into		:ldc_sumsharestk
from	shsharemaster, shsharetype
where	( shsharetype.sharetype_code = shsharemaster.sharetype_code ) and
		( ( shsharemaster.member_no = :as_memno ) ) 
using itr_sqlca ;		
		
if isnull(ldc_sumsharestk) then ldc_sumsharestk = 0

return ldc_sumsharestk
end function

public function decimal of_getsharestock (string as_memno, string as_sharetype) throws Exception;dec	ldc_sumsharestk

select	shsharemaster.sharestk_amt * shsharetype.share_value
into		:ldc_sumsharestk
from	shsharemaster, shsharetype
where	( shsharetype.sharetype_code		= shsharemaster.sharetype_code ) and
		( shsharemaster.member_no		= :as_memno ) and
		( shsharemaster.sharetype_code	= :as_sharetype ) 		
using itr_sqlca ;

if isnull(ldc_sumsharestk) then ldc_sumsharestk = 0

return ldc_sumsharestk
end function

public function decimal of_getsharestockkeep (string as_memno) throws Exception;dec{2}	ldc_sumsharestk, ldc_sharekeep

select	sum( shsharemaster.sharestk_amt * shsharetype.share_value ), sum( shsharemaster.rkeep_sharevalue )
into		:ldc_sumsharestk, :ldc_sharekeep
from	shsharemaster, shsharetype
where	( shsharetype.sharetype_code = shsharemaster.sharetype_code ) and
		( ( shsharemaster.member_no = :as_memno ) )  		
using itr_sqlca ;
		
if isnull( ldc_sumsharestk ) then ldc_sumsharestk = 0
if isnull( ldc_sharekeep ) then ldc_sharekeep = 0

ldc_sumsharestk	= ldc_sumsharestk + ldc_sharekeep

return ldc_sumsharestk
end function

public function integer of_getshrstmlastseqno (string as_sharetype, string as_memno) throws Exception;integer	li_seqno

select		last_stm_no 
into		:li_seqno
from		shsharemaster
where	( sharetype_code = :as_sharetype ) and 
			( member_no = :as_memno )			
using	itr_sqlca ;

if isnull( li_seqno ) then li_seqno = 0


return li_seqno
end function

public function integer of_initservice (n_cst_dbconnectservice atr_dbtrans) throws Exception;
itr_sqlca = atr_dbtrans.itr_dbconnection

// initial share type
ids_sharetype = create datastore
ids_sharetype.dataobject = "d_sh_share_type_attrib"
ids_sharetype.settransobject( itr_sqlca )
ids_sharetype.retrieve()

// initial share guarantee balance
ids_shrgrtcont = create datastore
ids_shrgrtcont.dataobject = "d_sh_share_grtbalance_cont"
ids_shrgrtcont.settransobject( itr_sqlca )

// initial share guarantee req
ids_shrgrtreq = create datastore
ids_shrgrtreq.dataobject = "d_sh_share_grtbalance_req"
ids_shrgrtreq.settransobject( itr_sqlca )

return 1
end function

public function integer of_getsharemonthrate (string as_sharetype, decimal adc_salary, decimal adc_minshare, decimal adc_maxshare) throws Exception;/***********************************************************
<description> 
	หาค่าหุ้นสะสมต่อเดือนตามเกณฑ์เงินเดือน
</description>

<arguments>  
	as_sharetype			String			ประเภทหุ้น
	adc_salary				decimal		เงินเดือน 
	adc_minshare (ref)	decimal		ค่าหุ้นฐานต่ำสุด
	adc_maxshare (ref)	decimal		ค่าหุ้นฐานสูงสุด	
</arguments> 

<return>
	decimal		ค่าหุ้นสะสมต่อเดือนตามเกณฑ์เงินเดือน
</return>

<usage>  
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 28/9/2010 by MiT
</usage> 
***********************************************************/
 
select		shsharetypemthrate.sharemonth_amt * shsharetype.share_value, 
			shsharetypemthrate.maxsharemonth_amt * shsharetype.share_value
into		:adc_minshare, :adc_maxshare
from		shsharetypemthrate, shsharetype
where	( shsharetypemthrate.sharetype_code = shsharetype.sharetype_code ) and
			( shsharetypemthrate.sharetype_code = :as_sharetype ) and
			( :adc_salary between shsharetypemthrate.start_salary and shsharetypemthrate.end_salary )
using itr_sqlca ;		

if ( itr_sqlca.sqlcode <> 0 ) then
	adc_maxshare  = 0
	adc_maxshare = 0
end if

return 1
end function

on n_cst_sh_share_service.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_sh_share_service.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create Exception



end event

event destructor;
if isvalid( ids_sharetype ) then destroy ids_sharetype
if isvalid( ids_shrgrtcont ) then destroy ids_shrgrtcont
if isvalid( ids_shrgrtreq ) then destroy ids_shrgrtreq


end event

