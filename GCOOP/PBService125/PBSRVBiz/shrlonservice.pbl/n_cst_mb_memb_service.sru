$PBExportHeader$n_cst_mb_memb_service.sru
$PBExportComments$ส่วนบริการระบบสมาชิก
forward
global type n_cst_mb_memb_service from nonvisualobject
end type
end forward

global type n_cst_mb_memb_service from nonvisualobject
end type
global n_cst_mb_memb_service n_cst_mb_memb_service

type variables
Public:
// - Common return value constants:
constant integer 		SUCCESS = 1
constant integer 		FAILURE = -1
constant integer 		NO_ACTION = 0

// - Continue/Prevent return value constants:
constant integer 		CONTINUE_ACTION = 1
constant integer 		PREVENT_ACTION = 0
//constant integer 		FAILURE = -1

transaction			itr_sqlca
Exception			ithw_exception

constant int STATUS_NOT			= 0	// สถานะไม่
constant int STATUS_PENDING		= 8	// รออนุมัติ (สารพัด)
constant int STATUS_APPROVE		= 1	// อนุมัติ 
constant int STATUS_CLOSE		= -1 	// สถานะปิด
end variables

forward prototypes
public function datetime of_calretrydate (datetime adtm_birthdate) throws Exception
public function string of_getdistrictname (string as_district, string as_province) throws Exception
public function decimal of_getmbbirthage (string as_memno, datetime adtm_caltodate) throws Exception
public function datetime of_getmbbirthdate (string as_memno) throws Exception
public function string of_getmbgroupcode (string as_memno) throws Exception
public function string of_getmbgroupdesc (string as_membgroup_code) throws Exception
public function string of_getmembername (string as_membno) throws Exception
public function decimal of_getmemberworkage (string as_memno, datetime adtm_caltodate) throws Exception
public function datetime of_getmemberworkdate (string as_memno) throws Exception
public function string of_getpersonid (string as_memno) throws Exception
public function string of_getprovincename (string as_province) throws Exception
public function boolean of_isvalidmember (string as_membno) throws Exception
public function string of_setmembnoformat (string as_membno) throws Exception
public function datetime of_getmemberdate (string as_memno) throws Exception
public function decimal of_getmemberage (string as_memno, datetime adtm_caltodate) throws Exception
public function integer of_applmbreqlistpost (string as_xmlreqlist, string as_userid) throws Exception
public function integer of_initservice (n_cst_dbconnectservice atr_dbtrans)
public function boolean of_isvalididcard (string as_idcard)
public function string of_initlist_mbreqapv () throws Exception
public function string of_initlist_mbreqrsg () throws Exception
public function integer of_initmbreqrsg_dept (string as_memno, ref n_ds ads_dept) throws Exception
public function integer of_initmbreqrsg_grt (string as_memno, ref n_ds ads_grt) throws Exception
public function integer of_initmbreqrsg_loan (string as_memno, ref n_ds ads_loan) throws Exception
public function integer of_initmbreqrsg_share (string as_memno, ref n_ds ads_share) throws Exception
public function integer of_saveapvrsg (string as_xmlreqlist, string as_userid) throws Exception
public function integer of_savembreqapv (string as_xmlreqlist, string as_userid) throws Exception
public function integer of_initmbreqrsg (ref str_mbreqresign astr_resigninfo) throws Exception
public function integer of_posttomembexpense (string as_applno, string as_membno) throws Exception
public function integer of_posttomembgain (string as_applno, string as_membno) throws Exception
public function integer of_posttomembmaster (string as_applno, string as_membno) throws Exception
public function integer of_posttosharemaster (string as_applno, string as_membno) throws Exception
public function integer of_xmlimport (ref n_ds ads_info, string as_dwobjname, string as_xmlinfo)
public function string of_xmlexport (n_ds ads_info)
end prototypes

public function datetime of_calretrydate (datetime adtm_birthdate) throws Exception;integer		li_year, li_month, li_day, li_age, li_monthdue
date		ld_expire
n_cst_datetimeservice lnv_datetime
lnv_datetime = create n_cst_datetimeservice

select	retry_age, retry_month
into	:li_age, :li_monthdue
from	cmcoopconstant using itr_sqlca ;

if isnull( li_age ) then li_age = 60
if isnull( li_monthdue ) then li_monthdue = 9

ld_expire	= lnv_datetime.of_relativeyear( date( adtm_birthdate ), li_age )
li_year	= year( ld_expire )
li_month	= month( ld_expire )
li_day		= day( ld_expire )

if li_month > li_monthdue then
	li_year ++
end if

ld_expire	= date( li_year, 9, 30 )

return datetime( ld_expire )
end function

public function string of_getdistrictname (string as_district, string as_province) throws Exception;string	ls_districtname

select	district_desc
into		:ls_districtname
from	mbucfdistrict
where	( district_code		= :as_district ) and
		( province_code	= :as_province )  using itr_sqlca	;

if isnull(ls_districtname) then ls_districtname = ""

return ls_districtname
end function

public function decimal of_getmbbirthage (string as_memno, datetime adtm_caltodate) throws Exception;dec{2}	ldc_age
integer	li_membtime, li_year, li_month
date		ld_todate
datetime	ldtm_birth
n_cst_datetimeservice		lnv_datetime

ldtm_birth = this.of_getmbbirthdate( as_memno )
if isnull( ldtm_birth ) or string( ldtm_birth, "yyyy-mm-dd" ) = "1900-01-01" then
	return 0.0
end if

ld_todate		= date( adtm_caltodate )

li_membtime		= lnv_datetime.of_monthsafter( date( ldtm_birth ), ld_todate )
li_year			= truncate( ( li_membtime / 12 ), 0 )
li_month			= mod( li_membtime, 12 )
ldc_age			= dec( string(li_year) +"." + string(li_month) )

return 	ldc_age
end function

public function datetime of_getmbbirthdate (string as_memno) throws Exception;datetime	ldtm_birth

select birth_date
into	:ldtm_birth
from 	mbmembmaster
where member_no = :as_memno using itr_sqlca ;

return 	ldtm_birth
end function

public function string of_getmbgroupcode (string as_memno) throws Exception;string	ls_groupno

as_memno	= trim( as_memno )

select		membgroup_code
into		:ls_groupno
from	 	mbmembmaster
where	( member_no = :as_memno ) using itr_sqlca ;

return trim(ls_groupno)
end function

public function string of_getmbgroupdesc (string as_membgroup_code) throws Exception;string	ls_groupdesc

as_membgroup_code	=	trim(as_membgroup_code)

select		membgroup_desc
into		:ls_groupdesc
from		mbucfmembgroup
where	membgroup_code = :as_membgroup_code using  itr_sqlca ;

if isnull( ls_groupdesc ) then ls_groupdesc = ""

return	ls_groupdesc
end function

public function string of_getmembername (string as_membno) throws Exception;string	ls_membname

as_membno	= trim(as_membno)

select	mbucfprename.prename_short || mbmembmaster.memb_name ||'  '|| mbmembmaster.memb_surname  
into		:ls_membname
from	mbmembmaster, mbucfprename  
where	( mbmembmaster.prename_code = mbucfprename.prename_code )  and
		( mbmembmaster.member_no	= :as_membno ) using itr_sqlca ;

if isnull( ls_membname ) then ls_membname = ""

return trim( ls_membname )

end function

public function decimal of_getmemberworkage (string as_memno, datetime adtm_caltodate) throws Exception;dec{2}	ldc_age
integer	li_membtime, li_year, li_month
date		ld_todate
datetime	ldtm_work
n_cst_datetimeservice		lnv_datetime

ldtm_work = this.of_getmemberworkdate( as_memno )
if isnull( ldtm_work ) or string( ldtm_work, "yyyy-mm-dd" ) = "1900-01-01" then
	return 0.0
end if

ld_todate		= date( adtm_caltodate )

li_membtime		= lnv_datetime.of_monthsafter( date( ldtm_work ), ld_todate )
li_year			= truncate( ( li_membtime / 12 ), 0 )
li_month			= mod( li_membtime, 12 )
ldc_age			= dec( string(li_year) +"." + string( li_month) )

return 	ldc_age
end function

public function datetime of_getmemberworkdate (string as_memno) throws Exception;datetime	ldtm_workdate

select birth_date
into	:ldtm_workdate
from 	mbmembmaster
where member_no = :as_memno using itr_sqlca;

return 	ldtm_workdate
end function

public function string of_getpersonid (string as_memno) throws Exception;string		ls_cardperson

select card_person
into	:ls_cardperson
from 	mbmembmaster
where member_no = :as_memno using itr_sqlca ;

return 	ls_cardperson
end function

public function string of_getprovincename (string as_province) throws Exception;string	ls_provincename

select	province_desc
into		:ls_provincename
from	mbucfprovince
where	( province_code	= :as_province ) using itr_sqlca ;

if isnull(ls_provincename) then ls_provincename = ""

return ls_provincename

end function

public function boolean of_isvalidmember (string as_membno) throws Exception;string	ls_memno

select	member_no
into		:ls_memno
from	mbmembmaster
where	( member_no = :as_membno ) using itr_sqlca ;

if sqlca.sqlcode <> 0 then return false

return true
end function

public function string of_setmembnoformat (string as_membno) throws Exception;string		ls_membformat
integer		li_len

as_membno	= trim( as_membno )

if trim( as_membno ) = "" or isnull( as_membno ) then return ""

select	membno_format
into	:ls_membformat
from	cmcoopconstant using itr_sqlca ;

if isnull( ls_membformat ) then 	ls_membformat = "000000"

li_len			= len( trim( ls_membformat ) )
as_membno	= ls_membformat + as_membno
as_membno	= right( as_membno, li_len )

return as_membno

end function

public function datetime of_getmemberdate (string as_memno) throws Exception;datetime	ldtm_membdate

select member_date
into	:ldtm_membdate
from 	mbmembmaster
where member_no = :as_memno using itr_sqlca;

return 	ldtm_membdate
end function

public function decimal of_getmemberage (string as_memno, datetime adtm_caltodate) throws Exception;dec{2}	ldc_age
integer	li_membtime, li_year, li_month
date		ld_todate
datetime	ldtm_membdate
n_cst_datetimeservice		lnv_datetime

ldtm_membdate = this.of_getmemberdate( as_memno )
if isnull( ldtm_membdate ) or string( ldtm_membdate, "yyyy-mm-dd" ) = "1900-01-01" then
	return 0.0
end if

ld_todate		= date( adtm_caltodate )

li_membtime		= lnv_datetime.of_monthsafter( date( ldtm_membdate ), ld_todate )
li_year			= truncate( ( li_membtime / 12 ), 0 )
li_month			= mod( li_membtime, 12 )
ldc_age			= dec( string(li_year) +"." + string( li_month) )

return 	ldc_age
end function

public function integer of_applmbreqlistpost (string as_xmlreqlist, string as_userid) throws Exception;string			ls_xmlreqloan, ls_reqno, ls_memno
integer		li_status, li_ret
long			ll_count, ll_find
dec{2}		ldc_reqamt, ldc_apvamt
datetime		ldtm_apvdate
n_ds	lds_apvlist

lds_apvlist		= create n_ds
lds_apvlist.dataobject		= "d_sl_approve_member_new_list"
lds_apvlist.settransobject( itr_sqlca )
lds_apvlist.importstring( XML!, as_xmlreqlist )
ll_count = lds_apvlist.rowcount()

if ( ll_count < 1 ) then
	destroy( lds_apvlist )
	return 0
end if

ll_find	 = lds_apvlist.find( "appl_status <> 8", 1, ll_count )
do while ( ll_find > 0 )
	ls_reqno		= lds_apvlist.getitemstring( ll_find, "appl_docno" )
	ls_memno	= lds_apvlist.getitemstring( ll_find, "member_no" )
	li_status		= lds_apvlist.getitemnumber( ll_find, "appl_status" )
	ldtm_apvdate	= lds_apvlist.getitemdatetime( ll_find, "approve_date" )
	
	if ( li_status = 1 ) then
			
		if isnull( ls_memno ) or trim( ls_memno ) = "" then
			ll_find ++
			if ( ll_find > ll_count ) then exit

			ll_find = lds_apvlist.find( "loanrequest_status <> 8", ll_find, ll_count )
			continue
		end if
		
		// ผ่านรายการไปทะเบียนสมาชิก
		if this.of_posttomembmaster( ls_reqno, ls_memno ) <> 1 then
			throw ithw_exception
		end if
		// ผ่านรายการไปทะเบียนหุ้น
		if this.of_posttosharemaster( ls_reqno, ls_memno ) <> 1 then
			throw ithw_exception
		end if
					
	end if
	
	update	mbreqappl
	set			appl_status	= :li_status,
				approve_id	= :as_userid,
				approve_date = :ldtm_apvdate
	where	( appl_docno = :ls_reqno )
	using		itr_sqlca ;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	+= "ใบสมัครเลขที่ "+ls_reqno+" ไม่สามารถปรับปรุงสถานะได้ "+sqlca.sqlerrtext
		rollback using itr_sqlca ;
		destroy( lds_apvlist )
		throw ithw_exception
	end if
	
	ll_find ++
	if ll_find > ll_count then
		exit
	end if
	ll_find	 = lds_apvlist.find( "loanrequest_status <> 8", ll_find, ll_count )
loop

destroy( lds_apvlist )

commit using itr_sqlca ;

return 1
end function

public function integer of_initservice (n_cst_dbconnectservice atr_dbtrans);itr_sqlca = atr_dbtrans.itr_dbconnection

return 1
end function

public function boolean of_isvalididcard (string as_idcard);long		ll_length, ll_count=0
long		ll_sumpos, ll_sumall, ll_modchk, ll_lastchk
char		lc_char, lc_lastdigit
integer	li_ascii

//Check parameters
if isnull( as_idcard ) then
	return false
end if

as_idcard	= trim( as_idcard )

//Get the length
ll_length		= len( as_idcard )

//Check for at least one character
if ll_length <> 13 then
	return false
end if

//Perform loop around all characters.
//Quit loop if Non numeric character is found.
do while ll_count < ll_length
	ll_count ++
	
	//เช็คเป็นตัวเลข
	if not isnumber( mid( as_idcard, ll_count, 1 ) ) then  
		return false
	end if	 
loop

// Calculate Chk Digit
for ll_count = 1 to 12
	ll_sumpos	= integer( mid( as_idcard, ll_count, 1 ) ) * ( ( 13 + 1 ) - ll_count )
	ll_sumall		= ll_sumall + ll_sumpos
next
	
ll_modchk	= mod( ll_sumall, 11 )
ll_lastchk		= 11 - ll_modchk

lc_lastdigit	= right( string( ll_lastchk ), 1 )

if lc_lastdigit <> mid( as_idcard, 13, 1 ) then
	return false
end if

return true
end function

public function string of_initlist_mbreqapv () throws Exception;string ls_xmlmblist
long ll_count
n_ds lds_xmlmblist

ls_xmlmblist = ""

lds_xmlmblist = create n_ds
lds_xmlmblist.dataobject = "d_sl_approve_member_new_list"
lds_xmlmblist.settransobject( itr_sqlca )

ll_count = lds_xmlmblist.retrieve()

if ll_count > 0 then
ls_xmlmblist = string( lds_xmlmblist.describe( "Datawindow.data.XML" ) )
end if

destroy( lds_xmlmblist )

return ls_xmlmblist
end function

public function string of_initlist_mbreqrsg () throws Exception;string ls_xmlmblist
long ll_count
n_ds lds_xmlmblist

ls_xmlmblist = ""

lds_xmlmblist = create n_ds
lds_xmlmblist.dataobject = "+++++++++++++++++++++"
lds_xmlmblist.settransobject( itr_sqlca )

ll_count = lds_xmlmblist.retrieve()

if ll_count > 0 then
ls_xmlmblist = string( lds_xmlmblist.describe( "Datawindow.data.XML" ) )
end if

destroy( lds_xmlmblist )

return ls_xmlmblist
end function

public function integer of_initmbreqrsg_dept (string as_memno, ref n_ds ads_dept) throws Exception;long 		ll_count, ll_row
n_ds 		lds_deptinfo

lds_deptinfo = create n_ds
lds_deptinfo.dataobject = "d_mb_mbrsg_info_dept"
lds_deptinfo.settransobject( itr_sqlca )
ll_count = lds_deptinfo.retrieve( as_memno )

if ( ll_count < 1 ) then
	return -1
end if


for ll_row =  1 to ll_count
	ads_dept.setitem( ll_row, "seq_no", ll_row )
	ads_dept.object.deposit_no[ ll_row ]				= lds_deptinfo.object.dept_accountno[ ll_row ]
	ads_dept.object.deposittype_code[ ll_row ]	= lds_deptinfo.object.depttype_code[ ll_row ]	
	ads_dept.object.deposit_name[ ll_row ]			= lds_deptinfo.object.deptaccount_name[ ll_row ]		
	ads_dept.object.deposit_balance[ ll_row ]		= lds_deptinfo.object.prncbal[ ll_row ]
next

destroy( lds_deptinfo )

return 1
end function

public function integer of_initmbreqrsg_grt (string as_memno, ref n_ds ads_grt) throws Exception;long 		ll_count, ll_row
n_ds 		lds_grtinfo

lds_grtinfo = create n_ds
lds_grtinfo.dataobject = "d_mb_mbrsg_info_grt"
lds_grtinfo.settransobject( itr_sqlca )
ll_count = lds_grtinfo.retrieve( as_memno )

if ( ll_count < 1 ) then
	return -1
end if

for ll_row =  1 to ll_count
	ads_grt.setitem( ll_row, "seq_no", ll_row )
	ads_grt.object.loancontrat_no[ ll_row ]			= lds_grtinfo.object.loancontract_no[ ll_row ]
	ads_grt.object.member_no[ ll_row ]				= lds_grtinfo.object.member_no[ ll_row ]
	ads_grt.object.member_name [ ll_row ]			= lds_grtinfo.object.c_name[ ll_row ]	
	ads_grt.object.withdrawable_amt[ ll_row ]		= lds_grtinfo.object.withdrawable_amt[ ll_row ]	
	ads_grt.object.principal_balance[ ll_row ]		= lds_grtinfo.object.principal_balance[ ll_row ]		
	ads_grt.object.coll_percent[ ll_row ]				= lds_grtinfo.object.coll_percent[ ll_row ]			
	ads_grt.object.guarantee_amount[ ll_row ]		= lds_grtinfo.object.deptaccount_name[ ll_row ]			
	ads_grt.object.coll_status[ ll_row ]				= lds_grtinfo.object.coll_status[ ll_row ]	
next

destroy( lds_grtinfo )

return 1


end function

public function integer of_initmbreqrsg_loan (string as_memno, ref n_ds ads_loan) throws Exception;long 		ll_count, ll_row
n_ds 		lds_loaninfo
dec{2}	ldc_intreturn, ldc_rkeepint, ldc_rkeepprnc, ldc_balance

lds_loaninfo = create n_ds
lds_loaninfo.dataobject = "d_mb_mbrsg_info_loan"
lds_loaninfo.settransobject( itr_sqlca )
ll_count = lds_loaninfo.retrieve( as_memno )

if ( ll_count < 1 ) then
	return -1
end if

for ll_row =  1 to ll_count
	ads_loan.setitem( ll_row, "seq_no", ll_row )
	ads_loan.object.loancontract_no[ ll_row ]		= lds_loaninfo.object.loancontract_no[ ll_row ]
	ads_loan.object.principal_balance[ ll_row ]		= lds_loaninfo.object.principal_balance[ ll_row ]
	ads_loan.object.loantype_code[ ll_row ]			= lds_loaninfo.object.loantype_code[ ll_row ]	
	ads_loan.object.interest_arrear[ ll_row ]		= lds_loaninfo.object.interest_arrear[ ll_row ]
	ads_loan.object.calint_from[ ll_row ]				= lds_loaninfo.object.lastcalint_date[ ll_row ]	
	ads_loan.object.calint_to[ ll_row ]					= lds_loaninfo.object.lastaccess_date[ ll_row ]		
	ads_loan.object.loancont_status[ ll_row ]		= lds_loaninfo.object.contract_status[ ll_row ]	
	ads_loan.object.return_interest[ ll_row ]		= lds_loaninfo.object.return_interest[ ll_row ]		
	ads_loan.object.rkeep_interest[ ll_row ]			= lds_loaninfo.object.rkeep_interest[ ll_row ]			
	ads_loan.object.rkeep_principal[ ll_row ]		= lds_loaninfo.object.rkeep_principal[ ll_row ]				
//	ads_loan.object.interest[ ll_row ]		= //lds_loaninfo.object.loantype_code[ ll_row ]	
//	ads_loan.object.interest_amount[ ll_row ]		= //lds_loaninfo.object.loantype_code[ ll_row ]	

next

destroy( lds_loaninfo )

return 1
end function

public function integer of_initmbreqrsg_share (string as_memno, ref n_ds ads_share) throws Exception;long 		ll_count, ll_row
string		ls_sharetype
dec		ldc_sharestk, ldc_unitshare, ldc_shrmonth, ldc_rkeepshare
integer	li_shrstatus


select shsharemaster.sharetype_code,
		 shsharemaster.sharestk_amt,
		 shsharetype.share_value,
		 shsharemaster.sharemaster_status,
		 shsharemaster.periodshare_amt
into	:ls_sharetype, :ldc_sharestk, :ldc_unitshare, 
		:li_shrstatus, :ldc_shrmonth
from	 shsharemaster , shsharetype
where  member_no = :as_memno and
       	 shsharetype.sharetype_code = shsharemaster.sharetype_code			  
using itr_sqlca ;


ll_row = ads_share.insertrow( 0 )

ads_share.object.seq_no[ ll_row ] 		= 1
ads_share.object.sharetype_code[ ll_row ] 	= ls_sharetype
ads_share.object.sharestk_amount[ ll_row ]	= ldc_sharestk
ads_share.object.sharestk_value[ ll_row ]		= ldc_sharestk * ldc_unitshare
ads_share.object.share_status[ ll_row ]			= li_shrstatus
ads_share.object.share_value[ ll_row ] 			= ldc_unitshare
ads_share.object.shrper_month[ ll_row ] 		= ldc_shrmonth * ldc_unitshare
ads_share.object.rkeep_sharestk[ ll_row ] 		= ldc_rkeepshare

return 1





end function

public function integer of_saveapvrsg (string as_xmlreqlist, string as_userid) throws Exception;string			ls_xmlreqloan, ls_reqno, ls_memno, ls_resigncause
integer		li_status, li_ret, li_shrstatus, li_mbstatus
long			ll_count, ll_find
dec{2}		ldc_reqamt, ldc_apvamt, ldc_sharestk
datetime		ldtm_resigndate


n_ds	lds_apvlist

lds_apvlist		= create n_ds
lds_apvlist.dataobject		= "++++++++++++++++++++"
lds_apvlist.settransobject( itr_sqlca )

lds_apvlist.importstring( XML!, as_xmlreqlist )

ll_count		= lds_apvlist.rowcount()

if ll_count <= 0 then
	destroy( lds_apvlist )
	return 0
end if

ll_find	 =  lds_apvlist.find( "resignreq_status = " + string( STATUS_APPROVE )  + " or  resignreq_status = " + string( STATUS_NOT)  , 1, ll_count )

do while ( ll_find > 0 )
	ls_memno		= lds_apvlist.getitemstring( ll_find, "member_no" )
	ls_resigncause	= lds_apvlist.getitemstring( ll_find, "resigncause_code" )
	ls_reqno			= lds_apvlist.getitemstring( ll_find, "resignreq_docno" )
	ldtm_resigndate = lds_apvlist.getitemdatetime( ll_find, "approve_date" )
		
	update	mbreqresign
	set		resignreq_status	= :li_status, 
				approve_id			= :as_userid, 
				approve_date 		= :ldtm_resigndate,
				resigncause_code = :ls_resigncause
	where	( resignreq_docno = :ls_reqno )
	using		itr_sqlca ;
	
	if ( itr_sqlca.sqlcode <> 0 ) then
		ithw_exception.text	+= "ใบคำขอลาออกเลขที่ "+ls_reqno+" ไม่สามารถปรับปรุงสถานะได้ "+sqlca.sqlerrtext
		rollback using itr_sqlca ;
		destroy( lds_apvlist )
		return -1
	end if
	
	ldc_sharestk = lds_apvlist.getitemdecimal( ll_find, "sharestk_amt" )
	if ( ldc_sharestk = 0 ) then
		li_shrstatus = STATUS_CLOSE
		li_mbstatus = -1
	else
		li_shrstatus = STATUS_PENDING
		li_mbstatus = 1
	end if
	
	update	shsharemaster
	set		sharemaster_status = :li_shrstatus
	where	member_no = :ls_memno ;
	
	if ( itr_sqlca.sqlcode <> 0 ) then
		ithw_exception.text	+= "ไม่สามารถเปลี่ยนสถานะทะเบียนหุ้น " + ls_memno +  " ให้เป็นหุ้นค้างได้ "+sqlca.sqlerrtext
		rollback using itr_sqlca ;
		destroy( lds_apvlist )
		return -1
	end if
		
	update	mbmembmaster
	set	resign_status			=	1,
			resign_date 			= :ldtm_resigndate , 
			resigncause_code 		= :ls_resigncause,
			droploanall_flag		= 1,
			dropguarantee_flag	= 1, 
			pausekeep_flag	=	1,
			pausekeep_date	=	:ldtm_resigndate,
//			average_flag	=	:li_average_flag, 
//			dividend_flag	=	:li_dividend_flag,
			member_status = :li_mbstatus
	where	member_no = :ls_memno ;
	
	if ( itr_sqlca.sqlcode <> 0  ) then
		ithw_exception.text	+= "ไม่สามารถปรับปรุงข้อมูลทะเบียนสมาชิก " + ls_memno +  " ให้เป็นหุ้นค้างได้ "+sqlca.sqlerrtext
		rollback using itr_sqlca ;
		destroy( lds_apvlist )
		return -1
	end if

	ll_find ++
	if ll_find > ll_count then
		exit
	end if
	ll_find	 =  lds_apvlist.find( "resignreq_status = " + string( STATUS_APPROVE )  + " or  resignreq_status = " + string( STATUS_NOT)  , 1, ll_count )
loop

destroy( lds_apvlist )

commit using itr_sqlca ;

return 1
end function

public function integer of_savembreqapv (string as_xmlreqlist, string as_userid) throws Exception;string			ls_xmlreqloan, ls_reqno, ls_memno
integer		li_status, li_ret
long			ll_count, ll_find
dec{2}		ldc_reqamt, ldc_apvamt
datetime		ldtm_apvdate
n_ds	lds_apvlist

lds_apvlist		= create n_ds
lds_apvlist.dataobject		= "d_sl_approve_member_new_list"
lds_apvlist.settransobject( itr_sqlca )

lds_apvlist.importstring( XML!, as_xmlreqlist )

ll_count		= lds_apvlist.rowcount()

if ll_count <= 0 then
	destroy( lds_apvlist )
	return 0
end if

ll_find	 = lds_apvlist.find( "appl_status <> 8", 1, ll_count )
do while ( ll_find > 0 )
	ls_reqno		= lds_apvlist.getitemstring( ll_find, "appl_docno" )
	ls_memno	= lds_apvlist.getitemstring( ll_find, "member_no" )
	li_status		= lds_apvlist.getitemnumber( ll_find, "appl_status" )
	ldtm_apvdate	= lds_apvlist.getitemdatetime( ll_find, "approve_date" )
	
	if ( li_status = 1 ) then
			
		if isnull( ls_memno ) or trim( ls_memno ) = "" then
			ll_find ++
			if ( ll_find > ll_count ) then exit

			ll_find = lds_apvlist.find( "loanrequest_status <> 8", ll_find, ll_count )
			continue
		end if
		
		// ผ่านรายการไปทะเบียนสมาชิก
		if this.of_posttomembmaster( ls_reqno, ls_memno ) <> 1 then
			throw ithw_exception
		end if
		// ผ่านรายการไปทะเบียนหุ้น
		if this.of_posttosharemaster( ls_reqno, ls_memno ) <> 1 then
			throw ithw_exception
		end if
					
	end if
		
	update	mbreqappl
	set		appl_status	= :li_status,
				approve_id	= :as_userid,
				approve_date = :ldtm_apvdate
	where	( appl_docno = :ls_reqno )
	using		itr_sqlca ;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	+= "ใบสมัครเลขที่ "+ls_reqno+" ไม่สามารถปรับปรุงสถานะได้ "+sqlca.sqlerrtext
		rollback using itr_sqlca ;
		destroy( lds_apvlist )
		throw ithw_exception
	end if
	
	ll_find ++
	if ll_find > ll_count then
		exit
	end if
	ll_find	 = lds_apvlist.find( "loanrequest_status <> 8", ll_find, ll_count )
loop

destroy( lds_apvlist )

commit using itr_sqlca ;

return 1
end function

public function integer of_initmbreqrsg (ref str_mbreqresign astr_resigninfo) throws Exception;string 	ls_xmlshare, ls_xmlloan, ls_xmlgrt, ls_xmldept, ls_xmlhead, ls_xmlsum
string 	ls_memno, ls_membname
long 		ll_count
dec		ldc_balance
integer	li_ret
n_ds 		lds_loan, lds_share, lds_dept, lds_grt, lds_head, lds_sum

lds_head = create n_ds
lds_head.dataobject = "d_sl_reqresign_head"
lds_head.settransobject( itr_sqlca )

lds_share = create n_ds
lds_share.dataobject = "d_sl_reqresign_share"
lds_share.settransobject( itr_sqlca )

lds_loan = create n_ds
lds_loan.dataobject = "d_sl_reqresign_loan"
lds_loan.settransobject( itr_sqlca )

lds_dept = create n_ds
lds_dept.dataobject = "d_sl_reqresign_deposit"
lds_dept.settransobject( itr_sqlca )

lds_grt = create n_ds
lds_grt.dataobject = "d_sl_reqresign_grt"
lds_grt.settransobject( itr_sqlca )

lds_sum = create n_ds
lds_sum.dataobject = "d_sl_reqresign_sum"
lds_sum.settransobject( itr_sqlca )
lds_sum.insertrow( 0 )

ls_xmlhead	= ""
ls_xmlshare	= ""
ls_xmlloan	= ""
ls_xmlgrt		= ""
ls_xmldept	= ""

ls_memno = astr_resigninfo.member_no


string		ls_prename, ls_name, ls_surname, ls_grpcode, ls_grpdesc




  SELECT "MBUCFPRENAME"."PRENAME_DESC",   
         "MBMEMBMASTER"."MEMB_NAME",   
         "MBMEMBMASTER"."MEMB_SURNAME",   
         "MBMEMBMASTER"."MEMBGROUP_CODE",   
         "MBUCFMEMBGROUP"."MEMBGROUP_DESC"  
	into	:ls_prename, :ls_name, :ls_surname, :ls_grpcode, :ls_grpdesc
    FROM "MBMEMBMASTER",   
         "MBUCFMEMBGROUP",   
         "MBUCFPRENAME"  
   WHERE ( "MBUCFMEMBGROUP"."MEMBGROUP_CODE" = "MBMEMBMASTER"."MEMBGROUP_CODE" ) and  
         ( "MBUCFPRENAME"."PRENAME_CODE" = "MBMEMBMASTER"."PRENAME_CODE" ) and  
         ( ( "MBMEMBMASTER"."MEMBER_NO" = :ls_memno ) )   ;

if ( itr_sqlca.sqlcode <> 0 ) then
	ithw_exception.text = "ไม่พบเลขสมาชิกที่ป้อน"
	return -1
end if

lds_head.insertrow( 0 )
lds_head.setitem( 1, "member_no", ls_memno )
lds_head.setitem( 1, "prename_desc", ls_prename )
lds_head.setitem( 1, "memb_name", ls_name )
lds_head.setitem( 1, "memb_surname", ls_surname )
lds_head.setitem( 1, "membgroup_code", ls_grpcode )
lds_head.setitem( 1, "membgroup_desc", ls_grpdesc )


// หารายละเอียดหุ้น
if of_initmbreqrsg_share( ls_memno, lds_share ) = 1 then
	ls_xmlshare = string( lds_share.describe( "Datawindow.data.XML" ) )

	lds_sum.object.shrper_month[ 1 ] = lds_share.object.shrper_month[ 1 ]
	lds_sum.object.share[ 1 ] = lds_dept.object.sharestk_value[ 1 ]	
end if

// หารายละเอียดหนี้
if of_initmbreqrsg_loan( ls_memno, lds_loan ) = 1 then
	ls_xmlloan = string( lds_loan.describe( "Datawindow.data.XML" ) )

	lds_sum.object.loan_count[ 1 ]	 = lds_loan.rowcount()
	lds_sum.object.loan[ 1 ] 	= lds_loan.object.c_principal[ 1 ]	
end if

// หารายละเอียดการค้ำประกัน
if of_initmbreqrsg_grt( ls_memno, lds_grt ) = 1 then
	ls_xmlgrt = string( lds_grt.describe( "Datawindow.data.XML" ) )
	
	lds_sum.object.coll_count[ 1 ]	= lds_grt.rowcount()
	lds_sum.object.coll_amt[ 1 ] = lds_grt.object.c_collamt[ 1 ]	
end if

// หารายละเอียดเงินฝาก
if of_initmbreqrsg_dept( ls_memno, lds_dept ) = 1 then
	ls_xmldept = string( lds_dept.describe( "Datawindow.data.XML" ) )
	
	lds_sum.object.dep_count[ 1 ] = lds_dept.rowcount()
	lds_sum.object.deposit[ 1 ] 	= lds_dept.object.c_dep_balance[ 1 ]
end if

// ส่งคืนค่ากลับ
astr_resigninfo.xml_request = ls_xmlhead
astr_resigninfo.xml_share	= ls_xmlshare
astr_resigninfo.xml_loan		= ls_xmlloan
astr_resigninfo.xml_grt		= ls_xmlgrt
astr_resigninfo.xml_dept	= ls_xmldept
astr_resigninfo.xml_sum		= ls_xmlsum

destroy lds_loan 
destroy lds_share
destroy lds_dept
destroy lds_grt 
destroy lds_head
destroy lds_sum

return 1


end function

public function integer of_posttomembexpense (string as_applno, string as_membno) throws Exception;string	ls_sqltext

ls_sqltext	= "insert into mbmembexpense " + &
			   "  ( member_no,		expense_code,		expense_bank,	expense_branch,		expense_accid, " + &
			   "  dividend_code,		dividend_bank,	dividend_branch,	dividend_accid ) " + &
			   "select  '"+as_membno+"', expense_code,	expense_bank,	expense_branch,	expense_accid, " + &
			   "  dividend_code,		dividend_bank,	dividend_branch,	dividend_accid " + &
			   "from mbreqapplexpense " + &
			   "where ( appl_docno = '"+as_applno+"' )"
				
execute immediate :ls_sqltext using itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	
	ithw_exception.text = "พบข้อผิดพลาด ในการบันทึก Memb Expense ( บันทึกการรับจ่าย of_posttomembexpense )~n" + &
								string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
	rollback ;
	throw ithw_exception

end if

return 1

end function

public function integer of_posttomembgain (string as_applno, string as_membno) throws Exception;string	ls_sqltext

ls_sqltext	= "insert into mbmembrecvgain " + &
			   "  ( member_no,		seq_no,		gain_name,	gain_address,	gain_concern ) " + &
			   "select  '"+as_membno+"', seq_no,	gain_name,	gain_address,	gain_concern " + &
			   "from mbreqapplrecvgain " + &
			   "where ( appl_docno = '"+as_applno+"' )"
				
execute immediate :ls_sqltext using itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	
	ithw_exception.text = "พบข้อผิดพลาด ในการบันทึก Memb receive gain ( บันทึกการรับจ่าย of_posttomembgain )~n" + &
								string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
	rollback ;
	throw ithw_exception

end if

return 1

end function

public function integer of_posttomembmaster (string as_applno, string as_membno) throws Exception;string	ls_sqltext

ls_sqltext	= "insert into mbmembmaster " + &
			   "( member_no,				memref_flag,			member_type,			appl_docno,			appltype_code,		" + &
				"	prename_code,		memb_name,			memb_surname,		sex,					" + &
				"	mariage,				mate_name,			memb_addr,			mooban,				soi,		addr_group,	" + &
				"	road,		 			tambol,					district_code, 			province_code,		" + &
				"	postcode,				mem_tel,				department_code,		membgroup_code,		subgroup_code,		" + &
				"	position_desc,			level_code,			step_code,				salary_amount,			" + &
				"	salary_id,				birth_date,				member_date,			work_date,				" + &
				"	retry_date,				card_tax,				card_person,			card_office,   emp_type, 		mem_telwork,  mem_telmobile, email_address				)" + &				
			   "select '" + as_membno + "', memref_flag,			member_type,			appl_docno,			appltype_code,		" + &
				"	prename_code,		memb_name,			memb_surname,		sex,					" + &			
				"	mariage,				mate_name,			memb_addr,			mooban,				soi,		addr_group,	" + &
				"	road,					tambol,					district_code, 			province_code,		" + &
				"	postcode,				mem_tel,				department_code,		membgroup_code, 	subgroup_code,		" + &
				"	position_desc,			level_code,			step_code,				salary_amount,			" + &
				"	salary_id,				birth_date,				approve_date,			work_date,				" + &
				"	retry_date,				card_tax,				card_person,			card_office,  	emp_type, 	mem_telwork, mem_telmobile, email_address		" + &
			   "from	mbreqappl " + &
			   "where ( appl_docno = '" + as_applno + "' )"
				
execute immediate :ls_sqltext using itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	
	ithw_exception.text = "พบข้อผิดพลาด ในการบันทึก MembMaster ( of_posttomembmaster ) ~n" + &
								string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
	rollback using itr_sqlca ;
	
	return -1

end if

return 1

end function

public function integer of_posttosharemaster (string as_applno, string as_membno) throws Exception;string		ls_sqltext


ls_sqltext = "insert into shsharemaster " + &
				"( member_no,					sharetype_code,		sharestk_amt,				last_period, " + &
				"  periodshare_amt,			periodbase_amt,		sharemaster_status,		payment_status ) " + & 				
			   "select '" + as_membno + "', sharetype_code,		0, 								recv_period, " + &
			  "    periodshare_amt,  			periodbase_amt, 		1, 								1" + &
			  " from mbreqapplshare " + &
			  "where ( appl_docno = '" + as_applno + "' )"
				
execute immediate :ls_sqltext using itr_sqlca ;

if itr_sqlca.sqlcode <> 0 then
	
	ithw_exception.text = "พบข้อผิดพลาด ในการบันทึก Shsharemaster ( of_posttosharemaster ) ~n" + &
								string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext + "~n" + ithw_exception.text
	rollback ;
	return -1

end if

return 1
end function

public function integer of_xmlimport (ref n_ds ads_info, string as_dwobjname, string as_xmlinfo);/***********************************************************
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
	Version 1.0 (Initial version) Modified Date 11/10/2010 by MiT
</usage> 
***********************************************************/
integer	li_row

if not isvalid( ads_info ) or isnull( ads_info ) then
	ads_info = create n_ds
end if

ads_info.dataobject = as_dwobjname
li_row = ads_info.importstring( XML!, as_xmlinfo )

return li_row
end function

public function string of_xmlexport (n_ds ads_info);/***********************************************************
<description>
	Export xml เข้าสู่ datastore
</description>

<arguments>  
	ads_info				n_ds		datastore ที่จะ import ข้อมูลเข้า
	as_dwobjname		String		ชื่อ dw object
	as_xmlinfo			String		ข้อมูลในรูปแบบ xml ที่ต้องการ import
</arguments> 

<return> 
	String		 	xml ที่ export ได้
</return> 

<usage> 
	Revision History:
	Version 1.0 (Initial version) Modified Date 11/10/2010 by MiT
</usage> 
***********************************************************/
string		ls_xml

ls_xml = string( ads_info.describe( "Datawindow.data.XML" ) )

return ls_xml
end function

on n_cst_mb_memb_service.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_mb_memb_service.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;
ithw_exception = create Exception
end event

