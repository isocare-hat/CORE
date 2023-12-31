$PBExportHeader$n_cst_print_service.sru
forward
global type n_cst_print_service from NonVisualObject
end type
end forward

global type n_cst_print_service from NonVisualObject
end type
global n_cst_print_service n_cst_print_service

type variables
integer		ii_page, ii_line, ii_noupdate, ii_printbook = 1, il_linenofrec_pb, ii_cls_width_split_prnc = 0
integer		ii_prnfront, ii_prnback
string			is_DW_FrontBook, is_DW_BackBook
n_ds			ids_newrateint
n_ds			ids_bookback, ids_bookfront
Exception	ithw_exception

n_cst_printservice inv_print
n_cst_thailibservice	inv_thailib
str_newdppbk_detail			istr_newpb

transaction		itr_sqlca

constant string ITEM_GROUP_DEPT = 'DEP'
constant string ITEM_GROUP_OPEN = 'OPN'
constant string GROUP_FIXED = '01'
constant string BOOK_BASE = 'B'
constant string CERT_BASE = 'C'
constant string CHQ_BASE = 'Q'
end variables

forward prototypes
public function integer of_skip_line (integer ai_skip_from, integer ai_skip_to, ref n_ds ads_passbook, integer ai_totallinepage)
public function integer of_set_page (ref n_ds ads_passbook, integer al_linesperpage, integer al_skipmiddlelineamount, integer al_skipmiddleline)
public function integer of_getpassbookconstant (ref integer ll_pageperbook, ref integer ll_linesperpage, ref integer ll_skipmiddleline, ref integer ll_skipmiddlelineamount) throws Exception
public function integer of_settrans (n_cst_dbconnectservice anv_db)
public function integer of_print (n_ds ads_print, string as_printset) throws Exception
public function integer of_set_moredetail_firstbook (string as_account_no, string as_branch, ref n_ds ads_prnpbkfrt_pb)
private function integer of_set_pn_detail_print (ref n_ds ads_prnpbkfrt_pb, string as_deptaccount_no, string as_coop_id) throws Exception
public function integer of_getintrate_prncno (string as_accno, string as_coop_id, long al_prncno, ref decimal adc_intrate, ref datetime adtm_duedate, datetime adtm_prncdate, string as_type, decimal adc_balance)
public function integer of_genstatement_forprint_bf (ref n_ds ads_passbook, integer ai_seq_no, integer al_linesperpage, integer al_skipmiddlelineamount, string as_deptaccount_no, string as_coop_id, ref n_ds ads_stm_forprint, datetime adtm_date)
public function integer of_set_history (string as_account_no, integer ai_page, integer ai_line, integer ai_pageperbook, integer ai_linperpage, n_ds ads_passbook, string as_type, string as_coop_control, integer ai_count_pass) throws Exception
public function integer of_print_first_page (string as_account_no, string as_coop_control, datetime adtm_date, string as_entryid, string as_bookno, string as_reson, string as_apvid, integer ai_normflag, string as_printset, integer ai_print_status, ref string as_xml_return, string as_coop_id) throws Exception
public function integer of_print_passbook (string as_account_no, string as_coop_control, integer ai_print_from_seq_no, integer ai_page, integer ai_line, boolean ab_bf, string as_printset, ref string as_return, integer ai_print_status, ref string as_xml_return) throws Exception
public function integer of_reprint_first_page (string as_account_no, string as_coop_control, datetime adtm_date, string as_entryid, string as_bookno, string as_reson, string as_apvid, integer ai_normflag, string as_printset, integer ai_print_status, ref string as_xml_return, string as_coop_id) throws Exception
public function integer of_genstatement_forprint_new (ref n_ds ads_passbook, integer ai_seq_no, integer al_linesperpage, integer al_skipmiddlelineamount, string as_deptaccount_no, string as_coop_control, ref long al_count_pass)
public function integer of_genstatement_forprint (ref n_ds ads_passbook, integer ai_seq_no, integer al_linesperpage, integer al_skipmiddlelineamount, string as_deptaccount_no, string as_coop_id, ref long al_count_pass)
end prototypes

public function integer of_skip_line (integer ai_skip_from, integer ai_skip_to, ref n_ds ads_passbook, integer ai_totallinepage);integer li_loop

for li_loop = ai_skip_from to ai_skip_to
	ads_passbook.insertrow(li_loop)
	ads_passbook.setitem(li_loop,'an_linepage',( ai_totallinepage ))
	ads_passbook.setitem(li_loop,'al_rowstatus',0)
next

ads_passbook.accepttext()
return 1
end function

public function integer of_set_page (ref n_ds ads_passbook, integer al_linesperpage, integer al_skipmiddlelineamount, integer al_skipmiddleline);long ll_rowcount,ll_loop
long ll_count,ll_skipundo,ll_line
string ls_bal


ads_passbook.accepttext()
ll_rowcount = ads_passbook.rowcount()
ll_skipundo = al_SkipMiddleLineAmount

if ll_rowcount > 0 then
	ll_count	= 0 
	ll_line	= 0
	for ll_loop = 1 to  ll_rowcount
//		ads_passbook.setitem(ll_loop,'al_seq_no',ll_loop)
		ads_passbook.setitem(ll_loop,'an_linepage',al_LinesPerPage +  al_SkipMiddleLineAmount)
		ll_count ++ 
		ll_line ++
		if ll_line > al_SkipMiddleLine and  ll_skipundo > 0 then
			ll_line --
			ll_skipundo --
		end if
		ls_bal = ads_passbook.getitemstring(ll_loop, 't_cmp_bal' )
		if isnull( ls_bal )  then
			ads_passbook.setitem( ll_loop,'t_line_num', '' )
		else
			ads_passbook.setitem( ll_loop,'t_line_num', string( ll_line ) )
		end if
		ads_passbook.setitem( ll_loop,'line_num', ll_line )
		
		
		if ll_count =  (al_LinesPerPage +  al_SkipMiddleLineAmount) then 
			ll_count		= 0
			ll_line		= 0
			ll_skipundo = al_SkipMiddleLineAmount
		end if
	next
	ads_passbook.setsort('line_num')
	ads_passbook.sort()
	ads_passbook.groupCalc()
end if

return 1
end function

public function integer of_getpassbookconstant (ref integer ll_pageperbook, ref integer ll_linesperpage, ref integer ll_skipmiddleline, ref integer ll_skipmiddlelineamount) throws Exception;
SELECT	pagetotal_pb, lineperpage_pb,linenomidpage_pb,nlinenextmid_pb
INTO 		:ll_PagePerBook, :ll_LinesPerPage, :ll_SkipMiddleLine, :ll_SkipMiddleLineAmount
FROM		dpdeptconstant
using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "ไม่สามารถตรวจสอบค่าคงที่การพิมพ์ได้ " + itr_sqlca.sqlerrtext
	rollback using itr_sqlca;
	throw ithw_exception
end if

return 1
end function

public function integer of_settrans (n_cst_dbconnectservice anv_db);itr_sqlca	= anv_db.itr_dbconnection

inv_thailib	= create n_cst_thailibservice
ithw_exception = create Exception
return 1
end function

public function integer of_print (n_ds ads_print, string as_printset) throws Exception;long 		ll_loop,ll_rowcount
string		ls_xml

ll_rowcount = ads_print.rowcount()

if ll_rowcount > 0 then	
	ads_print.accepttext( )
	ls_xml	= ads_print.Describe( "Datawindow.data.XML" )
	
	if not isvalid( inv_print ) then
		inv_print = create n_cst_printservice
	end if
	
	inv_print.of_reloadsetting( )
	inv_print.of_print( ads_print  , "PRINTBOOK" , as_printset )	
end if

return 1
end function

public function integer of_set_moredetail_firstbook (string as_account_no, string as_branch, ref n_ds ads_prnpbkfrt_pb);//remark_1
integer	li_deptperiod, li_timedue
datetime	ldtm_start_date, ldtm_end_date
dec{5}	ldc_extra_rate
string		ls_depttype, ls_remark1, ls_remark2

SELECT	DPDEPTMASDUE.START_DATE,		DPDEPTMASDUE.END_DATE,   
			DPDEPTTYPE.DEPT_PERIOD ,			DPDEPTTYPE.DEPTTYPE_CODE,
			DPDEPTTYPE.f_monthdue_period
INTO		:ldtm_start_date,							:ldtm_end_date,
			:li_deptperiod,								:ls_depttype,
			:li_timedue
FROM		DPDEPTMASDUE,	DPDEPTTYPE,	DPDEPTMASTER  
WHERE	( DPDEPTMASTER.DEPTTYPE_CODE		= DPDEPTTYPE.DEPTTYPE_CODE ) and  
			( DPDEPTMASDUE.DEPTACCOUNT_NO	= DPDEPTMASTER.DEPTACCOUNT_NO ) and  
			( DPDEPTMASDUE.BRANCH_ID				= DPDEPTMASTER.BRANCH_ID ) and  
			( DPDEPTMASDUE.DEPTACCOUNT_NO	= :as_account_no ) AND  
			( DPDEPTMASDUE.BRANCH_ID				= :as_branch )
using itr_sqlca ;

if ( itr_sqlca.sqlcode = 0 ) and  ( li_deptperiod = 1 ) then
	
	ls_remark1	= "กำหนดฝากภายในวันที่ " + string( ldtm_start_date,'DD' ) + " ของเดือน  " 
	ls_remark1	= ls_remark1 + "ครบกำหนดถอนคืนวันที่ " + string( ldtm_end_date, 'DD/MM/' ) + string( year( date( ldtm_end_date ) ) + 543 )
	SELECT	INT_EXTRARATE  
	INTO		:ldc_extra_rate
	FROM		DPDEPTINTEXTRATE  
	WHERE	DEPTTYPE_CODE	= :ls_depttype  AND  
				:li_timedue			>= DEPT_SMONTH and
				:li_timedue			< DEPT_EMONTH
	using itr_sqlca ;
	
	if ( itr_sqlca.sqlcode = 0 ) then
		ls_remark2	= "หากผู้ฝากปฏิบัติตามระเบียบโดยครบถ้วนจะจ่ายเงินรางวัลให้ในอัตราร้อยละ  "  + string( ldc_extra_rate * 100, '0.000' ) + " ของดอกเบี้ย"
	end if
	
end if

if ( ads_prnpbkfrt_pb.rowcount() > 0 ) then
	ads_prnpbkfrt_pb.Setitem( 1, "remark_1", ls_remark1 )
	ads_prnpbkfrt_pb.Setitem( 1, "remark_2", ls_remark2 )
end if

return 1
end function

private function integer of_set_pn_detail_print (ref n_ds ads_prnpbkfrt_pb, string as_deptaccount_no, string as_coop_id) throws Exception;string		ls_bookno
datetime	ldtm_duedate
string		ls_deptaccount_name, ls_nember_text, ls_return, ls_member_no
dec{2}	ldc_prncbal
dec{5}	ldc_pn_int_rate
integer	li_prnc_no, li_row

select		deptpassbook_no, deptaccount_name, prncbal, prnc_no, member_no
into		:ls_bookno, :ls_deptaccount_name, :ldc_prncbal, :li_prnc_no, :ls_member_no
from		dpdeptmaster
where	deptaccount_no	= :as_deptaccount_no and
			coop_id			= :as_coop_id
using itr_sqlca ;


select		prncdue_date, interest_rate
into		:ldtm_duedate, :ldc_pn_int_rate
from		dpdeptprncfixed
where	deptaccount_no	= :as_deptaccount_no and
			coop_id			= :as_coop_id and
			prnc_no				= :li_prnc_no
using itr_sqlca ;

ls_nember_text		= inv_thailib.of_readthaibaht( ldc_prncbal )

ads_prnpbkfrt_pb.reset( )
li_row		= ads_prnpbkfrt_pb.insertrow( 0 )

ads_prnpbkfrt_pb.object.pass_bookno[li_row]			= ls_bookno
ads_prnpbkfrt_pb.object.pn_int_rate[li_row]			= ldc_pn_int_rate
ads_prnpbkfrt_pb.object.pn_recieve_date[li_row]		= ldtm_duedate
ads_prnpbkfrt_pb.object.pn_amount_number[li_row]	= ldc_prncbal
ads_prnpbkfrt_pb.object.pn_amount_terxt[li_row]		= "=="+ls_nember_text+"=="
ads_prnpbkfrt_pb.object.pn_payname[li_row]			= ls_deptaccount_name
ads_prnpbkfrt_pb.object.pn_code[li_row]				= ls_member_no + "-" + as_deptaccount_no

ads_prnpbkfrt_pb.accepttext()

return 1
end function

public function integer of_getintrate_prncno (string as_accno, string as_coop_id, long al_prncno, ref decimal adc_intrate, ref datetime adtm_duedate, datetime adtm_prncdate, string as_type, decimal adc_balance);string		ls_deptgroup
integer		li_intprefer, li_rownewrate

select		interest_rate, 	prncdue_date
into		:adc_intrate, 	:adtm_duedate
from		dpdeptprncfixed
where	deptaccount_no	= :as_accno 
and 		coop_id				= :as_coop_Id 
and		prnc_no				= :al_prncno 
using itr_sqlca ;

return 1
end function

public function integer of_genstatement_forprint_bf (ref n_ds ads_passbook, integer ai_seq_no, integer al_linesperpage, integer al_skipmiddlelineamount, string as_deptaccount_no, string as_coop_id, ref n_ds ads_stm_forprint, datetime adtm_date);string		ls_filter, ls_prntcode, ls_entry, ls_coop_id, ls_initial, ls_groupitem, ls_accno, ls_accbr
string		ls_prncno_duedate, ls_close, ls_group_code, ls_typecode, ls_deptitem_amt, ls_prncbal
long		ll_loop,ll_rowcount, ll_nobook, ll_prncno
datetime	ldtm_duedate, ldtm_date
integer	li_close, li_seq_no, li_flag
boolean	lb_card
dec{5}	ldc_intrate
dec{2}	ldc_item
n_ds		lds_stm_forprint



lds_stm_forprint = create n_ds
lds_stm_forprint.dataobject = "d_dp_prn_statement_service"
lds_stm_forprint.settransobject( itr_sqlca )

lds_stm_forprint.retrieve( as_deptaccount_no, as_coop_id , ai_seq_no  )

li_close		= 0
ls_close		= "=============== CLOSED ==============="
ls_coop_id	= as_coop_id

ads_stm_forprint = lds_stm_forprint

if lds_stm_forprint.rowcount() > 0 then
	li_close		= lds_stm_forprint.object.deptclose_status[1] ; if isnull( li_close ) then li_close = 0
	ll_rowcount	= lds_stm_forprint.rowcount()
	
	ls_accno		= trim( lds_stm_forprint.object.deptaccount_no[1] )
	
	SELECT	DPDEPTTYPE.DEPTGROUP_CODE  , DPDEPTTYPE.DEPTTYPE_CODE	
	INTO		:ls_group_code, :ls_typecode
	FROM		DPDEPTMASTER,	DPDEPTTYPE  
	WHERE	( DPDEPTTYPE.DEPTTYPE_CODE			= DPDEPTMASTER.DEPTTYPE_CODE ) and  
				( ( DPDEPTMASTER.DEPTACCOUNT_NO	= :ls_accno ) AND  
				( DPDEPTMASTER.COOP_ID				= :ls_coop_id ) ) 
	using itr_sqlca ;

	ls_group_code		= trim( ls_group_code )	
	ls_typecode			= trim( ls_typecode )	
	
	for ll_loop = 1 to ll_rowcount
		
		ls_prntcode	= trim( lds_stm_forprint.getitemstring( ll_loop, 'dpucfdeptitemtype_print_code' ) )
		ll_nobook	= lds_stm_forprint.object.no_book_flag[ ll_loop ]
		ldtm_date	= lds_stm_forprint.object.operate_date[ ll_loop ]
		ldc_item		= lds_stm_forprint.object.deptitem_amt[ ll_loop ]
		
		ls_entry		= lds_stm_forprint.object.entry_id[ ll_loop ]

		SELECT	INITIAL_NAME
		INTO		:ls_initial
		FROM		AMSECUSERS
		WHERE	(  USER_NAME			= :ls_entry ) AND  
					(  COOP_ID	= :ls_coop_id )
		using itr_sqlca ;
		
		ls_initial	= trim( ls_initial )
		
		if isnull( ls_initial ) then ls_initial = ls_entry
		
		ls_entry	= left( trim( ls_initial ) , 3 )
		ls_entry	= upper( ls_entry )


		// ระ - ตรวจสอบการ no book adtm_entrydate  
		if isnull( ll_nobook ) then ll_nobook = 0
		if ll_nobook = 1 then		
			ls_prntcode	= trim( lds_stm_forprint.getitemstring( ll_loop, 'print_codenobook' ) )
		end if
		li_seq_no		= lds_stm_forprint.getitemnumber( ll_loop, 'seq_no' )
		
		ads_passbook.insertrow( ll_loop )
		ads_passbook.setitem( ll_loop, 'al_seq_no', li_seq_no )
		ads_passbook.setitem( ll_loop, 'al_rowstatus', 1 )
		ads_passbook.setitem( ll_loop, 'an_linepage', ( al_LinesPerPage  + al_SkipMiddleLineAmount ) )
		ads_passbook.setitem( ll_loop,'adtm_opdare', lds_stm_forprint.getitemdatetime( ll_loop,'operate_date' ) )
		
		ads_passbook.setitem( ll_loop, 't_date', string( adtm_date , 'dd/mm/' ) &
								+  string( year( date( adtm_date ) ) + 543 ) )
		
		li_flag = lds_stm_forprint.getitemnumber( ll_loop, 'sign_flag' )
		
		ads_passbook.setitem( ll_loop, 'sign_flag', lds_stm_forprint.getitemnumber( ll_loop, 'sign_flag' ) )
		
		ads_passbook.setitem( ll_loop, 'deptitemtype_code', "ยอดยกมา" )
		
		ls_deptitem_amt = right( '*****************' + string( lds_stm_forprint.getitemnumber( ll_loop, 'deptitem_amt' ), "#,##0.00" ) ,17 ) 
		
//		if li_flag = 1 then
//			ads_passbook.setitem( ll_loop,'t_cmp_dept', ls_deptitem_amt ) 
//		else
//			ads_passbook.setitem( ll_loop,'t_cmp_withdraw', ls_deptitem_amt ) 
//		end if
		
		ls_prncbal = right( '*****************' + string( lds_stm_forprint.getitemnumber(ll_loop,'prncbal'), "#,##0.00" ) ,17 ) 
		
		ads_passbook.setitem( ll_loop, 't_cmp_bal', ls_prncbal )

		ads_passbook.setitem( ll_loop, 'accuint_amt', lds_stm_forprint.getitemnumber( ll_loop,'accuint_amt' ) )
		ads_passbook.setitem( ll_loop, 'tax_amt', lds_stm_forprint.getitemnumber( ll_loop, 'dpdeptstatement_tax_amt' ) )
		ads_passbook.setitem( ll_loop, 'int_amt', lds_stm_forprint.getitemnumber( ll_loop, 'int_amt' ) )
		ads_passbook.setitem( ll_loop, 'calint_from', lds_stm_forprint.getitemdatetime( ll_loop, 'calint_from' ) )
		ads_passbook.setitem( ll_loop, 'calint_to', lds_stm_forprint.getitemdatetime( ll_loop, 'calint_to' ) )
		ads_passbook.setitem( ll_loop, 'line_num', ll_loop )		
		ads_passbook.setitem( ll_loop, 'entry_id', ls_entry )
		ads_passbook.setitem( ll_loop, 'prnc_no', "" )
		
		// เกี่ยวกับ เงินฝากประจำ ดอกเบี้ย เลขที่ต้นเงิน วันครบกำหนด
		ls_groupitem	= trim( lds_stm_forprint.object.deptitem_group[ ll_loop ] )
		if isnull( ls_groupitem ) then ls_groupitem = ""
		
		ls_groupitem	= upper( ls_groupitem )
		
		if ( ( ls_groupitem = ITEM_GROUP_DEPT ) or ( ls_groupitem = ITEM_GROUP_OPEN ) ) and ( ls_group_code <> '00' ) and ( ls_group_code <> '02' )  then			
			
			ll_prncno	= lds_stm_forprint.object.prnc_no[ ll_loop ]
			
			if isnull( ll_prncno ) then ll_prncno = 0
			
			if ( ( ll_prncno > 1 ) and ( li_seq_no > 1) ) or ( ( ll_prncno = 1 ) and ( li_seq_no = 1 ) ) then
				// หาก ต้นเงินไม่ใช่ 0
				if ll_prncno <> 0 then
					
					ads_passbook.setitem( ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
					
					if this.of_getintrate_prncno( ls_accno, ls_coop_id, ll_prncno, ldc_intrate , ldtm_duedate , ldtm_date , ls_typecode, ldc_item ) = 1 then
					
					if li_flag = 1 then
						ads_passbook.setitem( ll_loop, 't_int_rate', string( ldc_intrate, "#,##0.00%" ) )
					end if 
					end if
				end if
			end if			
		else
			ll_prncno	= lds_stm_forprint.object.prnc_no[ ll_loop ]			
			if isnull( ll_prncno ) then ll_prncno = 0
			
			// หากเป็นประจำ และเป็นรายการ อื่นๆ อ้างอิงยอดเงินด้วย
			
			if ( ls_group_code = GROUP_FIXED ) and ( ii_cls_width_split_prnc = 1 )  then			
				if ll_prncno <> 0 then
					ads_passbook.setitem(ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
				end if
			elseif ll_prncno <> 0 then
				ads_passbook.setitem(ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
			end if
		end if
		// จบ เกี่ยวกับประจำ
		
	next
	
	// กรณีที่ปิดบัญชีแล้ว
	if li_close = 1 then
		ads_passbook.object.t_close.text	= ls_close
	end if	
	
end if

DESTROY lds_stm_forprint


ads_passbook.accepttext( )

return ads_passbook.rowcount( )
end function

public function integer of_set_history (string as_account_no, integer ai_page, integer ai_line, integer ai_pageperbook, integer ai_linperpage, n_ds ads_passbook, string as_type, string as_coop_control, integer ai_count_pass) throws Exception;integer	li_rowcount, li_page, li_rowtotal, li_rowcurrent, li_rowcurrent_temp, li_page_temp, li_line_temp
integer	li_seq_no
dec{2}	ldc_balance

//this.of_getpassbookconstant( ll_PagePerBook, ll_LinesPerPage, ll_SkipMiddleLine, ll_SkipMiddleLineAmount )

li_rowcount		= ads_passbook.rowcount( )

if ai_count_pass > 0 then
	li_rowtotal		=  ai_pageperbook *  ai_linperpage
	li_rowcurrent	= ( ( ai_page - 1 )	 * ai_linperpage ) +  ai_count_pass + ai_line - 1
	
	as_account_no	= trim(as_account_no)
	li_seq_no		= ads_passbook.getitemnumber( li_rowcount ,'al_seq_no')
	ldc_balance		= ads_passbook.getitemDecimal(  li_rowcount , 'prncbal' )	
	
	do while  li_rowcurrent >= li_rowtotal
		li_rowcurrent = li_rowcurrent - li_rowtotal
	loop
	
	if li_rowcurrent = 0 then
		ai_page	= 1
		ai_line	= 1
	else
		ai_page	=  truncate( ( li_rowcurrent / ai_linperpage ), 0 )
		ai_line	= li_rowcurrent - ( ai_page * ai_linperpage ) + 1
		
		ai_page ++
		if ai_line = ( ai_linperpage + 1 ) then
			ai_line = 1
			ai_page ++
		end if
	end if
	

	if trim(as_type) = 'passbook' then
		UPDATE	dpdeptmaster
		SET		lastrec_no_pb		= :li_seq_no,
				lastpage_no_pb		= :ai_page,
				lastline_no_pb		= :ai_line,
				book_balance		= :ldc_balance
		WHERE	deptaccount_no		= :as_account_no 
		and		coop_id			= :as_coop_control
		using itr_sqlca;
		
		UPDATE	dpdeptstatement
		SET		prntopb_status	= 1
		WHERE	deptaccount_no	= :as_account_no 
		and		seq_no			<= :li_seq_no
		and		coop_id			= :as_coop_control
		using itr_sqlca;
	else
		UPDATE	dpdeptmaster
		SET		lastrec_no_card	= :li_seq_no,
					lastpage_no_card	= :ai_page,
					lastline_no_card	= :ai_line
		WHERE	deptaccount_no	= :as_account_no and 
					coop_id				= :as_coop_control
		using itr_sqlca;
		
		UPDATE	dpdeptstatement
		SET		prntocard_status	= 1
		WHERE	( deptaccount_no	= :as_account_no ) and
					( seq_no				<= :li_seq_no ) and 
					coop_id				= :as_coop_control
		using itr_sqlca;
	
	end if
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "ไม่สามารถบันทึกรายการ ค่าการพิมพ์ได้ " + itr_sqlca.sqlerrtext
		rollback using itr_sqlca;
		throw ithw_exception
	end if			
end if

commit using itr_sqlca;

return 1
end function

public function integer of_print_first_page (string as_account_no, string as_coop_control, datetime adtm_date, string as_entryid, string as_bookno, string as_reson, string as_apvid, integer ai_normflag, string as_printset, integer ai_print_status, ref string as_xml_return, string as_coop_id) throws Exception;//ใช่สำหรับ การออกสมุดใหม่ แบบไม่มีสมุดแทนหรือ เปิดบัญชีใหม่

// 1 : success, else -1
datetime	ldtm_date, ldtm_work
integer	li_lastrec_no_pb, li_rc, li_index, li_normflag, li_found, li_MonIntPayMeth
string		ls_booktype, ls_depttype, ls_group
string		ls_format, ls_passbook_no, ls_acctype, ls_accname, ls_temp, ls_bookgroup
string		ls_dw_prnfirstpage_pb  //หา datawindow obj
string		ls_message,ls_acc_no, ls_accgrp, ls_DeptTypeDesc
string		ls_newbook_reson, ls_name, ls_tempname, ls_lastname, ls_TranAccNo, ls_open
long		ll_pos, ll_len

// ดึงข้อมูลเล่มที่ใช้อยู่ปัจจุบัน
SELECT	a.lastrec_no_pb,			a.depttype_code,		a.ACCCONT_TYPE,		a.DEPTACCOUNT_NAME,
			a.DEPTPASSBOOK_NO,	b.book_group, 			b.book_stmbase,			c.dw_first_page,
			b.depttype_accgrp,		a.monthintpay_meth,	a.tran_deptacc_no,		b.depttype_desc
INTO		:li_lastrec_no_pb,			:ls_depttype,			:ls_acctype,					:ls_accname,
			:ls_passbook_no,			:ls_bookgroup, 			:ls_booktype,				:ls_dw_prnfirstpage_pb,
			:ls_accgrp,					:li_MonIntPayMeth,	:ls_TranAccNo,				:ls_DeptTypeDesc
FROM		dpdeptmaster a, dpdepttype b, dpucftofdept c
WHERE	( c.depttype_group	= b.depttype_group) and
			( b.depttype_code		= a.depttype_code ) and
			( a.deptaccount_no	= :as_account_no ) and
			( a.coop_id				= :as_coop_control )
using itr_sqlca ;
			
ls_depttype		= trim( ls_depttype )
ls_acctype		= trim( ls_acctype )
ls_accname		= trim( ls_accname )
ls_accgrp		= trim( ls_accgrp )
ls_TranAccNo	= trim( ls_TranAccNo )
ls_DeptTypeDesc	= trim( ls_DeptTypeDesc )

if isnull(li_lastrec_no_pb)   then li_lastrec_no_pb = 0
if isnull(ls_dw_prnfirstpage_pb)   then ls_dw_prnfirstpage_pb = ""
if isnull(ls_accgrp)   then ls_accgrp = ""
if isnull(li_MonIntPayMeth)   then li_MonIntPayMeth = 0
if isnull(ls_TranAccNo)   then ls_TranAccNo = ""


if itr_sqlca.SQLCODE = 100 then
	ithw_exception.text	= "ไม่สามารถตรวจสอบค่าคงที่การพิมพ์ได้ จากแฟ้มข้อมูลเงินฝากหลัก" + itr_sqlca.sqlerrtext
	rollback using itr_sqlca;
	throw ithw_exception
end if

if isnull( li_lastrec_no_pb ) then li_lastrec_no_pb = 0
if isnull( ls_bookgroup ) then ls_bookgroup = ""

n_ds lds_prnpbkfrt_pb
lds_prnpbkfrt_pb = create n_ds

if ( trim( ls_dw_prnfirstpage_pb ) = "" ) then
	select		dw_prnfirstpage_pb
	INTO		:ls_dw_prnfirstpage_pb
	FROM		dpdeptconstant
	where	coop_id		= :as_coop_control 
	using		itr_sqlca ;
end if

ls_dw_prnfirstpage_pb	= trim( ls_dw_prnfirstpage_pb )
lds_prnpbkfrt_pb.dataobject = ls_dw_prnfirstpage_pb

if isnull( ls_format ) then ls_format = "X-XX-XXXXXXX"

ls_acc_no	= string( as_account_no ,ls_format )

// ข้อมูลใหม่
li_normflag	= ai_normflag

if isnull( li_normflag ) then li_normflag = 1
if isnull( as_apvid ) then as_apvid = as_entryid
if isnull( li_normflag ) then li_normflag = 1


//===================================
choose case ls_booktype
	case BOOK_BASE
		
		select workdate
		into	:ldtm_work
		from amappstatus
		where application = 'ap_deposit'
		using	 itr_sqlca ;	
		
		lds_prnpbkfrt_pb.settransobject( itr_sqlca );
		li_rc	= lds_prnpbkfrt_pb.retrieve( as_account_no , as_coop_control )
		
		this.of_set_moredetail_firstbook( as_account_no , as_coop_control, lds_prnpbkfrt_pb )
		
		//if (  lds_prnpbkfrt_pb.rowcount( ) > 0 ) then
			lds_prnpbkfrt_pb.setitem( 1, "coop_id", as_coop_id )
			lds_prnpbkfrt_pb.Setitem( 1, "issue_date", ldtm_work )
			ls_open = string( ldtm_work , 'dd/mm/') + string( Year( date( ldtm_work ) ) + 543 )
			lds_prnpbkfrt_pb.Setitem( 1, "open_thaidate", ls_open )
			lds_prnpbkfrt_pb.setitem( 1, "sbook_no", mid( trim( ls_passbook_no  ), 3 ) )
			lds_prnpbkfrt_pb.setitem( 1, "remark_1" , ls_DeptTypeDesc ) 
			//lds_prnpbkfrt_pb.setitem( 1, "ebook_no",mid( trim( ls_passbook_no  ), 3 ) )
		//end if
		
		//ls_group		= "00"
		if as_coop_control = '001001' then
			ls_tempname 	= trim( lds_prnpbkfrt_pb.getitemstring( 1, "deptaccount_name" ) )
			ll_len				= len( ls_tempname )		
			ll_pos			= pos( ls_tempname, 'เพื่อ' )
			
			if ll_pos = 0 then
				ll_pos	= pos( ls_tempname , 'และ' )
				if ll_pos = 0 then 
					ll_pos	= pos( ls_tempname , 'หรือ' )
					if ll_pos = 0 then
						ls_name			= ls_tempname
					else
						ls_name			= mid( ls_tempname, 1,  ll_pos - 1 )
						ls_lastname	= mid( ls_tempname, ll_pos, ll_len )
					end if
				else
					ls_name			= mid( ls_tempname, 1,  ll_pos - 1 )
					ls_lastname	= mid( ls_tempname, ll_pos, ll_len )
				end if
			else
				ls_name			= mid( ls_tempname, 1,  ll_pos - 1 )
				ls_lastname	= mid( ls_tempname, ll_pos, ll_len )
			end if
			
			lds_prnpbkfrt_pb.setitem( 1, "deptaccount_name" , ls_name )
			lds_prnpbkfrt_pb.setitem( 1, "name_cut", ls_lastname )
			
			if ls_depttype = '50' then
				lds_prnpbkfrt_pb.setitem( 1, "remark_1" , "ต้องฝากติดต่อกันทุกเดือน เดือนละเท่ากันและเท่ากับที่เปิดบัญชีครั้งแรก" ) 
				lds_prnpbkfrt_pb.setitem( 1, "remark_2" , "ผิดนัดได้ไม่เกิน 2 เดือนในรอบฝาก 24 เดือน " )
				lds_prnpbkfrt_pb.setitem( 1, "remark_3" , "คำเตือน" )
			end if
			
			if ls_accgrp = "01" then
				lds_prnpbkfrt_pb.setitem( 1, "remark_1" , ls_DeptTypeDesc ) 
				if ( li_MonIntPayMeth = 1 ) then					
					lds_prnpbkfrt_pb.setitem( 1, "remark_2" , "โอนเข้าบัญชีเลขที่ " + string( ls_TranAccNo ,ls_format ) )
					lds_prnpbkfrt_pb.setitem( 1, "remark_3" , "" )
				end if
			end if
		end if
		
		
		
	case CERT_BASE
//		lds_prnpbkfrt_pb.dataobject	= "d_dp_promissory_note_print"
		ls_group		= "01"
		this.of_set_pn_detail_print(lds_prnpbkfrt_pb, as_account_no, as_coop_control  )
		lds_prnpbkfrt_pb.setitem( 1, "date_issue",adtm_date  )
		
	case CHQ_BASE
		
end choose

if lds_prnpbkfrt_pb.rowcount( ) < 1 then
	
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "Error on prepare to print firstpage of passbook "
	rollback using itr_sqlca;
	throw ithw_exception
	
end if

if ai_print_status = 0 then// by num ถ้า เปลี่ยนแบบ การพิมพ์ 0 = winprint 1 แบบใหม่
	this.of_print( lds_prnpbkfrt_pb , as_printset )
else
	as_xml_return	= lds_prnpbkfrt_pb.Describe( "Datawindow.data.XML" )
end if

destroy( lds_prnpbkfrt_pb )

commit using itr_sqlca ;

return 1
end function

public function integer of_print_passbook (string as_account_no, string as_coop_control, integer ai_print_from_seq_no, integer ai_page, integer ai_line, boolean ab_bf, string as_printset, ref string as_return, integer ai_print_status, ref string as_xml_return) throws Exception;// Load pass item from database 
n_ds		lds_passbook_print
integer		ll_PagePerBook, ll_LinesPerPage, ll_SkipMiddleLine, ll_MaxLinePerBook, ll_SkipMiddleLineAmount
integer		ll_printed_line, ll_printing_line
integer		ll_linemidlepage,ll_seq_no_next
integer		ll_rowindex, ll_rowcount, li_chack
int			li_line_count ,li_newpage,li_page, li_closestatus, li_rc, li_line
string		ls_dw_print_passbook_item
string		ls_printer_type, ls_depttype, ls_deptgroup
string		ls_return, ls_coop_control, ls_work
long		ll_count_pass
datetime	ldtm_work

li_line		= ai_line
li_page	= ai_page

ls_return		= "0@0" // 0 คือไม่พิมพ์แล้ว พิมพ์หมดแล้ว

ls_coop_control			= trim( as_coop_control )
lds_passbook_print	= create n_ds

if isnull( ai_print_status ) then ai_print_status = 0

select		a.deptclose_status, a.depttype_code, b.deptgroup_code, c.dw_movement
into		:li_closestatus, :ls_depttype, :ls_deptgroup, :ls_dw_print_passbook_item
from		dpdeptmaster a, 
			dpdepttype b, 
			 dpdeptmidgroup c
where		c.deptgroup_code	= b.deptgroup_code
and			b.depttype_code		= a.depttype_code
and			a.deptaccount_no	= :as_account_no
and			a.coop_id			= :ls_coop_control
using itr_sqlca ;

if isnull( ls_dw_print_passbook_item ) then ls_dw_print_passbook_item = "" 

if ( trim( ls_dw_print_passbook_item ) = "" ) then
	select		dw_prnstatement_pb
	INTO		:ls_dw_print_passbook_item
	FROM		dpdeptconstant
	where	coop_id		= :ls_coop_control
	using itr_sqlca ;
end if

ls_dw_print_passbook_item	= trim( ls_dw_print_passbook_item )

if ai_print_status = 0 then
	lds_passbook_print.dataobject = ls_dw_print_passbook_item
else
	lds_passbook_print.dataobject = "d_dppbkstm_book_new"
end if

lds_passbook_print.settransobject( itr_sqlca )

this.of_getpassbookconstant( ll_PagePerBook, ll_LinesPerPage, ll_SkipMiddleLine, ll_SkipMiddleLineAmount )

// ตรวจสอบหากไม่ใช่บรรทัดที่ 1 ไม่ว่าหน้าไหน ต้องไม่ทำยอดยกมา
if ( li_line > 1 or li_page > 1 ) or ai_print_from_seq_no = 1  then
	ab_bf	= false
else
	ab_bf	= true
end if

if ab_bf = true then
	select		max( seq_no )
	into		:ai_print_from_seq_no
	from		dpdeptstatement
	where	( deptaccount_no	= :as_account_no ) and
				( coop_id				= :ls_coop_control ) and
				( forprnbk_flag		= 1 ) and
				( seq_no				< :ai_print_from_seq_no )
	using itr_sqlca ;	
	
	if ( ai_print_from_seq_no < 1 ) or isnull( ai_print_from_seq_no ) then ai_print_from_seq_no = 1
end if


if ai_print_status = 0 then
	li_chack = this.of_genstatement_forprint( lds_passbook_print ,ai_print_from_seq_no, ll_LinesPerPage,ll_SkipMiddleLineAmount, as_account_no, ls_coop_control, ll_count_pass  )
else
	li_chack = this.of_genstatement_forprint_new( lds_passbook_print ,ai_print_from_seq_no, ll_LinesPerPage,ll_SkipMiddleLineAmount, as_account_no, ls_coop_control, ll_count_pass  )
end if

if ( li_chack >  0  ) then
	
	ll_linemidlepage	= ll_SkipMiddleLine
	li_page 			= ai_page
	
	if  ai_line > 1 then
		this.of_skip_line( 1, ( ai_line - 1  ), lds_passbook_print, ( ll_LinesPerPage + ll_SkipMiddleLineAmount ) )
		
		if ai_line > ll_SkipMiddleLine then
			if  ll_SkipMiddleLineAmount > 0 then
				this.of_skip_line( ai_line , ( ai_line + ll_SkipMiddleLineAmount - 1 ), lds_passbook_print, ( ll_LinesPerPage + ll_SkipMiddleLineAmount ) )
				ai_line 				+=  ll_SkipMiddleLineAmount
				ll_linemidlepage 	= ll_LinesPerPage + ll_SkipMiddleLineAmount + ll_SkipMiddleLine + 1
			end if
		end if
	end if
	
	ai_print_from_seq_no		= 0
	
	ll_rowindex		= ai_line
	li_line_count		= ai_line
	ll_rowcount		= lds_passbook_print.rowcount( )
	
	do while  ll_rowindex <= ll_rowcount
		if  ll_rowindex  >  ll_linemidlepage then
			if  ll_SkipMiddleLineAmount > 0 then
				this.of_skip_line( ll_rowindex , ( ll_rowindex + ll_SkipMiddleLineAmount - 1 ), lds_passbook_print, ( ll_LinesPerPage + ll_SkipMiddleLineAmount ) )
				ll_linemidlepage	= ll_linemidlepage + ll_LinesPerPage + ll_SkipMiddleLineAmount 
				ll_rowcount			= ll_rowcount + ll_SkipMiddleLineAmount
				ll_rowindex			= ll_rowindex +  ll_SkipMiddleLineAmount
				li_line_count			= li_line_count +  ll_SkipMiddleLineAmount
			end if
		end if
		
		// หากหมดหน้าแล้ว ก็ไม่ทำแล้ว จะพิมพ์ครั้งละ 1 หน้า
		if  li_line_count = ( ll_LinesPerPage + ll_SkipMiddleLineAmount ) then
			li_line_count = 0
			if  ll_rowindex < ll_rowcount then
				ai_print_from_seq_no =  lds_passbook_print.getitemnumber(ll_rowindex + 1,'al_seq_no')
				
				// ตรวจสอบว่าต้องขึ้นเล่มใหม่หรือไม่
				if ( ( ai_page + 1 ) > ll_PagePerBook ) then
					ls_return		= "1@" + string( ai_print_from_seq_no ) // 1 คือขึ้นเล่มใหม่
				else
					ls_return		=  string( ai_page + 1 )+"@" + string( ai_print_from_seq_no ) // ai_page+1  คือ พิมพ์หน้าถัดไป
				end if
			end if
			
			lds_passbook_print.rowsdiscard( ll_rowindex + 1, ll_rowcount, primary! )
			exit
		end if
		
		li_line_count ++
		ll_rowindex ++
	loop 
	
	if ab_bf = true then	
		select workdate
		into	:ldtm_work
		from amappstatus
		where application = 'ap_deposit'
		using itr_sqlca ;	
			
		ls_work	= string( ldtm_work, 'dd/mm/yyyy' )
			
		lds_passbook_print.setitem( 1, "t_date", ''  ) //ls_work )
		lds_passbook_print.setitem( 1, "deptitemtype_code", "ยอดยกมา" )
		lds_passbook_print.setitem( 1, "t_cmp_withdraw", "")
		lds_passbook_print.setitem( 1, "t_cmp_dept", "")
		lds_passbook_print.setitem( 1, 't_int_rate', "" )
	end if
	
	this.of_set_page( lds_passbook_print, ll_LinesPerPage,ll_SkipMiddleLineAmount, ll_SkipMiddleLine )	
	this.of_set_history( as_account_no, ai_page, li_line, ll_PagePerBook, ll_LinesPerPage, lds_passbook_print , 'passbook', ls_coop_control, ll_count_pass ) // บันทึกประวัติการพิมพ์
	
	if ai_print_status = 0 then// by num ถ้า เปลี่ยนแบบ การพิมพ์ 0 = winprint 1 แบบใหม่
		this.of_print(lds_passbook_print, as_printset) 
	else 
		as_xml_return	= lds_passbook_print.Describe( "Datawindow.data.XML" )
	end if 
	
	// ปรับปรุงสถานะการออกสมุดกรณีที่บรรทัด และ หน้าสุดท้ายพอดี
	if ( ii_page = ( ai_page - 1 ) ) and ( ii_line = ( ll_rowcount - ll_SkipMiddleLineAmount ) ) and ( li_closestatus = 0 ) then		
		update	dpdeptmaster
		set			prnbook_status		= 0
		where	( deptaccount_no	= :as_account_no ) and
					( coop_id				= :ls_coop_control )
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "ไม่สามารถบันทึกรายการ สถานะออกสมุดใหม่ได้ " + itr_sqlca.sqlerrtext
			rollback using itr_sqlca;
			destroy( lds_passbook_print )
			throw ithw_exception
		else
			commit using itr_sqlca ;
		end if
		
	end if	
	
else
	ai_print_from_seq_no = 0
end if

as_return	= ls_return

destroy( lds_passbook_print )

return 1
end function

public function integer of_reprint_first_page (string as_account_no, string as_coop_control, datetime adtm_date, string as_entryid, string as_bookno, string as_reson, string as_apvid, integer ai_normflag, string as_printset, integer ai_print_status, ref string as_xml_return, string as_coop_id) throws Exception;//ใช่สำหรับ การออกสมุดใหม่แบบแทนสมุดเก่า

// 1 : success, else -1

datetime	ldtm_date, ldtm_work
integer	li_lastrec_no_pb, li_rc, li_index, li_normflag, li_found, li_chack, li_MonIntPayMeth
string		ls_booktype, ls_depttype, ls_reason, ls_group
string		ls_format, ls_passbook_no, ls_acctype, ls_accname, ls_temp, ls_bookgroup
string		ls_dw_prnfirstpage_pb  //หา datawindow obj
string		ls_message,ls_acc_no, ls_bookno,ls_accgrp, ls_TranAccNo, ls_DeptTypeDesc
string		ls_newbook_reson, ls_dw_print_passbook_item, ls_tempname, ls_name, ls_lastname, ls_open
long		ll_pos, ll_len
//integer	li_PagePerBook, li_LinesPerPage, li_SkipMiddleLine, li_SkipMiddleLineAmount, li_print_from_seq_no

ls_bookno		= ""

// ดึงข้อมูลเล่มที่ใช้อยู่ปัจจุบัน
SELECT	a.lastrec_no_pb,			a.depttype_code,		a.ACCCONT_TYPE,		a.DEPTACCOUNT_NAME,
			a.DEPTPASSBOOK_NO,	b.book_group, 			b.book_stmbase,			c.dw_first_page,
			b.depttype_accgrp,		a.monthintpay_meth,	a.tran_deptacc_no,		b.depttype_desc
INTO		:li_lastrec_no_pb,			:ls_depttype,			:ls_acctype,					:ls_accname,
			:ls_passbook_no,			:ls_bookgroup, 			:ls_booktype,				:ls_dw_prnfirstpage_pb,
			:ls_accgrp,					:li_MonIntPayMeth,	:ls_TranAccNo,				:ls_DeptTypeDesc
FROM		dpdeptmaster a, dpdepttype b, dpucftofdept c
WHERE	( c.depttype_group	= b.depttype_group) and
			( b.depttype_code		= a.depttype_code ) and
			( a.deptaccount_no	= :as_account_no ) and
			( a.coop_id				= :as_coop_control )
using itr_sqlca ;

			
ls_depttype		= trim( ls_depttype )
ls_acctype		= trim( ls_acctype )
ls_accname		= trim( ls_accname )
ls_accgrp		= trim( ls_accgrp )
ls_TranAccNo	= trim( ls_TranAccNo )
ls_DeptTypeDesc	= trim( ls_DeptTypeDesc )

if isnull(li_lastrec_no_pb)   then li_lastrec_no_pb = 0
if isnull(ls_dw_prnfirstpage_pb)   then ls_dw_prnfirstpage_pb = ""
if isnull(ls_accgrp)   then ls_accgrp = ""
if isnull(li_MonIntPayMeth)   then li_MonIntPayMeth = 0
if isnull(ls_TranAccNo)   then ls_TranAccNo = ""

if itr_sqlca.SQLCODE <> 0 then
	ithw_exception.text	= "ไม่สามารถตรวจสอบค่าคงที่การพิมพ์ได้ จากแฟ้มข้อมูลเงินฝากหลัก" + itr_sqlca.sqlerrtext
	rollback using itr_sqlca;
	throw ithw_exception
end if

if isnull( li_lastrec_no_pb ) then li_lastrec_no_pb = 0
if isnull( ls_bookgroup ) then ls_bookgroup = ""
if isnull( ls_dw_prnfirstpage_pb ) then ls_dw_prnfirstpage_pb = ""


n_ds lds_prnpbkfrt_pb
lds_prnpbkfrt_pb = create n_ds

if ( trim( ls_dw_prnfirstpage_pb ) = "" ) then
	select		dw_prnfirstpage_pb
	INTO		:ls_dw_prnfirstpage_pb
	FROM		dpdeptconstant
	where	coop_id		= :as_coop_control 
	using		itr_sqlca ;
end if

ls_dw_prnfirstpage_pb	= trim( ls_dw_prnfirstpage_pb )
lds_prnpbkfrt_pb.dataobject = ls_dw_prnfirstpage_pb

if isnull( ls_format ) then ls_format = "X-XX-XXXXXXX"

ls_acc_no	= string( as_account_no ,ls_format )

// ข้อมูลใหม่
ls_bookno	= trim( as_bookno )
ls_reason	= trim( as_reson )
li_normflag	= ai_normflag

if isnull( li_normflag ) then li_normflag = 1
if isnull( ls_bookno ) then ls_bookno = ""
if isnull( li_normflag ) then li_normflag = 1

if ( ls_bookno = "" ) then
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "ไม่สามารถออกสมุดเล่มใหม่ได้ ไม่มีการระบุเลขที่สมุดเล่มใหม่" 
	rollback using itr_sqlca;
	throw ithw_exception
end if

ls_bookno	= right( "0000000000" + ls_bookno , 10 )

// ตรวจสอบว่ามีเลขที่สมุดนี้หรือยัง
li_found	= 0
select	count( 1 )
into	:li_found
from	DPDEPTBOOKHIS
WHERE	BOOK_NO 		= :as_bookno
AND		BOOK_TYPE		= :ls_booktype
AND		book_grp		= :ls_bookgroup
and		coop_id			= :as_coop_id
and		book_status		= 8
using		itr_sqlca ;

if isnull( li_found ) then li_found = 0
if li_found < 1 then
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "ไม่สามารถออกสมุดเล่มใหม่ได้ เนื่องจากไม่มีเลขดังกล่าวหรือ ได้มีการใช้งานเลขนี้ไปแล้ว"
	rollback using itr_sqlca;
	throw ithw_exception
end if


update	dpdeptmaster
set			deptpassbook_no	= :as_bookno,			
			booknorm_flag		= :li_normflag,
			prnbook_status		= 1,
			lastline_no_pb		= 1,
			lastpage_no_pb 	= 1
where	deptaccount_no	= :as_account_no 
and		coop_id				= :as_coop_control
using		itr_sqlca ;

if itr_sqlca.sqlcode = -1 then
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "ไม่สามารถปรับปรุงข้อมูลของเล่มที่สมุดที่ master ได้ " + itr_sqlca.sqlerrtext
	rollback using itr_sqlca;
	throw ithw_exception
end if

// เล่มที่ใช้ไป
UPDATE	DPDEPTBOOKHIS
SET		BOOK_STATUS			= 1,   
			RESON_OFNEW		= :as_reson,   
			NEW_DATE		= :adtm_date ,   
			NEW_ID			= :as_entryid ,   
			DEPTACCOUNT_NO 	= :as_account_no ,   
			APV_NEWID		= :as_apvid,
			SUB_BOOK		= :ls_passbook_no
WHERE		BOOK_NO 		= :as_bookno
AND			BOOK_TYPE		= :ls_booktype
AND			COOP_ID			= :as_coop_id
and			book_grp		= :ls_bookgroup
using		itr_sqlca ;			

if itr_sqlca.sqlcode = -1 then
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "1. ไม่สามารถปรับปรุงข้อมูลของเล่มที่สมุดที่ DPDEPTBOOKHIS ได้ " + itr_sqlca.sqlerrtext
	rollback using itr_sqlca;
	throw ithw_exception
end if

// เล่มที่ถูกแทนที่
UPDATE	DPDEPTBOOKHIS
SET		SUB_BOOK		= :as_bookno,
		BOOK_STATUS		= 0
WHERE	BOOK_NO 		= :ls_passbook_no
AND		BOOK_TYPE		= :ls_booktype
AND		COOP_ID			= :as_coop_id
and		book_grp		= :ls_bookgroup
using		itr_sqlca ;			

if itr_sqlca.sqlcode = -1 then
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "2. ไม่สามารถปรับปรุงข้อมูลของเล่มที่สมุดที่ DPDEPTBOOKHIS ได้ " + itr_sqlca.sqlerrtext
	rollback using itr_sqlca;
	throw ithw_exception
end if


commit using itr_sqlca ;

//===================================
choose case ls_booktype
	case BOOK_BASE
		
		select workdate
		into	:ldtm_work
		from amappstatus
		where application = 'ap_deposit'
		using	 itr_sqlca ;	
		
		lds_prnpbkfrt_pb.settransobject( itr_sqlca );
		li_rc	= lds_prnpbkfrt_pb.retrieve( as_account_no , as_coop_control )
		
		this.of_set_moredetail_firstbook( as_account_no , as_coop_control, lds_prnpbkfrt_pb )
		
		//if (  lds_prnpbkfrt_pb.rowcount( ) > 0 ) then
			lds_prnpbkfrt_pb.setitem( 1, "coop_id", as_coop_id )
			lds_prnpbkfrt_pb.Setitem( 1, "issue_date", ldtm_work )
			ls_open = string( ldtm_work , 'dd/mm/') + string( Year( date( ldtm_work ) ) + 543 )
			lds_prnpbkfrt_pb.Setitem( 1, "open_thaidate", ls_open )
			lds_prnpbkfrt_pb.setitem( 1, "sbook_no", mid( trim( as_bookno  ), 3 ) )
			lds_prnpbkfrt_pb.setitem( 1, "remark_1" , ls_DeptTypeDesc ) 
			if ( trim( ls_passbook_no ) <> trim( as_bookno ) ) then
				lds_prnpbkfrt_pb.setitem( 1, "ebook_no",mid( trim( ls_passbook_no  ), 3 ) )
			end if
			
		//	
		//end if
		
		//ls_group		= "00"
		if as_coop_control = '001001' then
			ls_tempname 	= trim( lds_prnpbkfrt_pb.getitemstring( 1, "deptaccount_name" ) )
			ll_len				= len( ls_tempname )		
			ll_pos			= pos( ls_tempname, 'เพื่อ' )
			
			if ll_pos = 0 then
				ll_pos	= pos( ls_tempname , 'และ' )
				if ll_pos = 0 then 
					ll_pos	= pos( ls_tempname , 'หรือ' )
					if ll_pos = 0 then
						ls_name			= ls_tempname
					else
						ls_name			= mid( ls_tempname, 1,  ll_pos - 1 )
						ls_lastname	= mid( ls_tempname, ll_pos, ll_len )
					end if
				else
					ls_name			= mid( ls_tempname, 1,  ll_pos - 1 )
					ls_lastname	= mid( ls_tempname, ll_pos, ll_len )
				end if
			else
				ls_name			= mid( ls_tempname, 1,  ll_pos - 1 )
				ls_lastname	= mid( ls_tempname, ll_pos, ll_len )
			end if
			
			lds_prnpbkfrt_pb.setitem( 1, "deptaccount_name" , ls_name )
			lds_prnpbkfrt_pb.setitem( 1, "name_cut", ls_lastname )
			
			if ls_depttype = '50' then
				lds_prnpbkfrt_pb.setitem( 1, "remark_1" , "ต้องฝากติดต่อกันทุกเดือน เดือนละเท่ากันและเท่ากับที่เปิดบัญชีครั้งแรก" ) 
				lds_prnpbkfrt_pb.setitem( 1, "remark_2" , "ผิดนัดได้ไม่เกิน 2 เดือนในรอบฝาก 24 เดือน " )
				lds_prnpbkfrt_pb.setitem( 1, "remark_3" , "คำเตือน" )
			end if 
			
			if ls_accgrp = "01" then
				lds_prnpbkfrt_pb.setitem( 1, "remark_1" , ls_DeptTypeDesc ) 
				if ( li_MonIntPayMeth = 1 ) then					
					lds_prnpbkfrt_pb.setitem( 1, "remark_2" , "โอนเข้าบัญชีเลขที่ " + string( ls_TranAccNo ,ls_format ) )
					lds_prnpbkfrt_pb.setitem( 1, "remark_3" , "" )
				end if
			end if
			
		end if
		
	case CERT_BASE
//		lds_prnpbkfrt_pb.dataobject	= "d_dp_promissory_note_print"
		ls_group		= "01"
		this.of_set_pn_detail_print( lds_prnpbkfrt_pb, as_account_no, as_coop_id   )
		
		lds_prnpbkfrt_pb.setitem( 1, "date_issue",adtm_date  )
	case CHQ_BASE
		
end choose

if lds_prnpbkfrt_pb.rowcount( ) < 1 then
	destroy( lds_prnpbkfrt_pb )
	ithw_exception.text	= "Error on prepare to print firstpage of passbook "
	rollback using itr_sqlca;
	throw ithw_exception
end if

if ai_print_status = 0 then// by num ถ้า เปลี่ยนแบบ การพิมพ์ 0 = winprint 1 แบบใหม่
	this.of_print( lds_prnpbkfrt_pb , as_printset )
else
	as_xml_return	= lds_prnpbkfrt_pb.Describe( "Datawindow.data.XML" )
end if


destroy( lds_prnpbkfrt_pb )

commit using itr_sqlca ;

return 1
end function

public function integer of_genstatement_forprint_new (ref n_ds ads_passbook, integer ai_seq_no, integer al_linesperpage, integer al_skipmiddlelineamount, string as_deptaccount_no, string as_coop_control, ref long al_count_pass);string		ls_filter, ls_prntcode, ls_entry, ls_initial, ls_groupitem, ls_accno, ls_accbr
string		ls_prncno_duedate, ls_close, ls_group_code, ls_typecode, ls_deptitem_amt, ls_prncbal, ls_coop_control
string		ls_seq_no, ls_temp, ls_year
long		ll_loop,ll_rowcount, ll_nobook, ll_prncno, ll_temp_count
datetime	ldtm_duedate, ldtm_date, ldtm_entry_date
integer	li_close, li_seq_no, li_flag, li_rowinsert
boolean	lb_card
dec{5}	ldc_intrate
dec{2}	ldc_item
n_ds		lds_stm_forprint

ls_coop_control = as_coop_control

lds_stm_forprint = create n_ds
lds_stm_forprint.dataobject = "d_dp_prn_statement_service"
lds_stm_forprint.settransobject( itr_sqlca )

ll_temp_count = lds_stm_forprint.retrieve( as_deptaccount_no, ls_coop_control , ai_seq_no  )

li_close		= 0
ls_close		= "=============== CLOSED ==============="


al_count_pass =  lds_stm_forprint.rowcount()

if lds_stm_forprint.rowcount() > 0 then
	li_close		= lds_stm_forprint.object.deptclose_status[1] ; if isnull( li_close ) then li_close = 0
	ll_rowcount	= lds_stm_forprint.rowcount()
	
	ls_accno		= trim( lds_stm_forprint.object.deptaccount_no[1] )
	
	SELECT	DPDEPTTYPE.DEPTGROUP_CODE  , DPDEPTTYPE.DEPTTYPE_CODE	
	INTO		:ls_group_code, :ls_typecode
	FROM		DPDEPTMASTER,	DPDEPTTYPE  
	WHERE	( DPDEPTTYPE.DEPTTYPE_CODE			= DPDEPTMASTER.DEPTTYPE_CODE ) and  
				( ( DPDEPTMASTER.DEPTACCOUNT_NO	= :ls_accno ) AND  
				( DPDEPTMASTER.COOP_ID					= :ls_coop_control ) ) 
	using itr_sqlca ;

	ls_group_code		= trim( ls_group_code )	
	ls_typecode			= trim( ls_typecode )	
	
	for ll_loop = 1 to ll_rowcount
		
		ls_prntcode		= trim( lds_stm_forprint.getitemstring( ll_loop, 'dpucfdeptitemtype_print_code' ) )
		ll_nobook		= lds_stm_forprint.object.no_book_flag[ ll_loop ]
		ldtm_date		= lds_stm_forprint.object.operate_date[ ll_loop ]
		ldtm_entry_date	= lds_stm_forprint.Object.entry_date[ ll_loop ]
		ldc_item		= lds_stm_forprint.object.deptitem_amt[ ll_loop ]
		
		ls_entry		= lds_stm_forprint.object.entry_id[ ll_loop ]

		SELECT	INITIAL_NAME
		INTO		:ls_initial
		FROM		AMSECUSERS
		WHERE	(  USER_NAME			= :ls_entry ) 
		AND		(  coop_control			= :ls_coop_control )
		using itr_sqlca ;
		
		ls_initial	= trim( ls_initial )
		
		if isnull( ls_initial ) then ls_initial = ls_entry
		
		ls_entry	= trim( ls_initial )
		ls_entry	= upper( ls_entry )


		// ระ - ตรวจสอบการ no book adtm_entrydate  
		if isnull( ll_nobook ) then ll_nobook = 0
		if ll_nobook = 1 then		
			ls_prntcode	= trim( lds_stm_forprint.getitemstring( ll_loop, 'print_codenobook' ) )
		end if
		li_seq_no		= lds_stm_forprint.getitemnumber( ll_loop, 'seq_no' )
		
		if li_seq_no = 0 then 
			ls_seq_no = ''
		else
			ls_seq_no = string( li_seq_no )
		end if
		
		ads_passbook.insertrow( ll_loop )
		ads_passbook.setitem( ll_loop, 'al_seq_no', li_seq_no )
		ads_passbook.setitem( ll_loop, 't_seq_no', ls_seq_no )
		ads_passbook.setitem( ll_loop, 'al_rowstatus', 1 )
		ads_passbook.setitem( ll_loop, 'an_linepage', ( al_LinesPerPage  + al_SkipMiddleLineAmount ) )
		ads_passbook.setitem( ll_loop,'adtm_opdare', lds_stm_forprint.getitemdatetime( ll_loop,'operate_date' ) )
		
		if ldtm_date <> ldtm_entry_date then 
			
			ads_passbook.setitem( ll_loop, 't_date', string( lds_stm_forprint.getitemdatetime( ll_loop,'operate_date'), 'dd/mm/' ) &
								+  string( year( date( lds_stm_forprint.getitemdatetime( ll_loop,'operate_date') ) ) + 543 ) )
			ls_year				= right( string( year( date( lds_stm_forprint.getitemdatetime( ll_loop,'operate_date') ) ) + 543 ), 2 )		
			
			ads_passbook.setitem( ll_loop, 't_date_cut', string( lds_stm_forprint.getitemdatetime( ll_loop,'operate_date'), 'dd/mm/' ) + ls_year )
		
		else
			
			ads_passbook.setitem( ll_loop, 't_date', string( lds_stm_forprint.getitemdatetime( ll_loop,'entry_date'), 'dd/mm/' ) &
								+  string( year( date( lds_stm_forprint.getitemdatetime( ll_loop,'entry_date') ) ) + 543 ) )
								
			ls_year				= right( string( year( date( lds_stm_forprint.getitemdatetime( ll_loop,'entry_date') ) ) + 543 ), 2 )	
			ads_passbook.setitem( ll_loop, 't_date_cut', string( lds_stm_forprint.getitemdatetime( ll_loop,'entry_date'), 'dd/mm/' ) + ls_year )
			
		end if
		
		ads_passbook.setitem( ll_loop,'deptitemtype_code1', trim( lds_stm_forprint.getitemstring( ll_loop, 'dpdeptstatement_deptitemtype_code' ) ) )
		
		li_flag = lds_stm_forprint.getitemnumber( ll_loop, 'sign_flag' )
		
		ads_passbook.setitem( ll_loop, 'sign_flag', lds_stm_forprint.getitemnumber( ll_loop, 'sign_flag' ) )
		
		ads_passbook.setitem( ll_loop, 'deptitemtype_code', ls_prntcode )
		
		ls_deptitem_amt = string( lds_stm_forprint.getitemnumber( ll_loop, 'deptitem_amt' ) )
		
		if li_flag = 1 then
			ads_passbook.setitem( ll_loop,'t_cmp_dept', ls_deptitem_amt ) 
		else
			ads_passbook.setitem( ll_loop,'t_cmp_withdraw', ls_deptitem_amt ) 
		end if
		
		ls_prncbal = string( lds_stm_forprint.getitemnumber(ll_loop,'prncbal') ) 
		
		ads_passbook.setitem( ll_loop, 't_cmp_bal', ls_prncbal )

		ads_passbook.setitem( ll_loop, 'accuint_amt', lds_stm_forprint.getitemnumber( ll_loop,'accuint_amt' ) )
		ads_passbook.setitem( ll_loop, 'tax_amt', lds_stm_forprint.getitemnumber( ll_loop, 'dpdeptstatement_tax_amt' ) )
		ads_passbook.setitem( ll_loop, 'int_amt', lds_stm_forprint.getitemnumber( ll_loop, 'int_amt' ) )
		ads_passbook.setitem( ll_loop, 'calint_from', lds_stm_forprint.getitemdatetime( ll_loop, 'calint_from' ) )
		ads_passbook.setitem( ll_loop, 'calint_to', lds_stm_forprint.getitemdatetime( ll_loop, 'calint_to' ) )
		
		ls_temp=  string( ads_passbook.getitemnumber( ll_loop, 'line_num' ) ) 
		if ls_prncbal <> '' then
			ads_passbook.setitem( ll_loop, 't_line_num',  string( ads_passbook.getitemnumber( ll_loop, 'line_num' ) ) )
		end if
		
		ads_passbook.setitem( ll_loop, 'entry_id', ls_entry )
		ads_passbook.setitem( ll_loop, 'prnc_no', "" )
		
		// กรณีที่ปิดบัญชีแล้ว
	if li_close = 1 then
		if long( ls_prncbal ) = 0 then
			ads_passbook.setitem( ll_loop, 't_close', ls_close )
		end if
	end if	
		
		// เกี่ยวกับ เงินฝากประจำ ดอกเบี้ย เลขที่ต้นเงิน วันครบกำหนด
		ls_groupitem	= trim( lds_stm_forprint.object.deptitem_group[ ll_loop ] )
		if isnull( ls_groupitem ) then ls_groupitem = ""
		
		ls_groupitem	= upper( ls_groupitem )
		
		if ( ( ls_groupitem = ITEM_GROUP_DEPT ) or ( ls_groupitem = ITEM_GROUP_OPEN ) ) and ( ls_group_code <> '00' ) and ( ls_group_code <> '02' )  then			
			
			ll_prncno	= lds_stm_forprint.object.prnc_no[ ll_loop ]
			
			if isnull( ll_prncno ) then ll_prncno = 0
			
			if ( ( ll_prncno > 1 ) and ( li_seq_no > 1) ) or ( ( ll_prncno = 1 ) and ( li_seq_no = 1 ) ) then
				// หาก ต้นเงินไม่ใช่ 0
				if ll_prncno <> 0 then
					
					ads_passbook.setitem( ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
					
					if this.of_getintrate_prncno( ls_accno, ls_coop_control, ll_prncno, ldc_intrate , ldtm_duedate , ldtm_date , ls_typecode, ldc_item ) = 1 then
					
						if li_flag = 1 then
							ads_passbook.setitem( ll_loop, 't_int_rate', string( ldc_intrate, "#,##0.00%" ) )
						end if 
					end if
				end if
			end if			
		else
			ll_prncno	= lds_stm_forprint.object.prnc_no[ ll_loop ]			
			if isnull( ll_prncno ) then ll_prncno = 0
			
			// หากเป็นประจำ และเป็นรายการ อื่นๆ อ้างอิงยอดเงินด้วย
			
			if ( ls_group_code = GROUP_FIXED ) and ( ii_cls_width_split_prnc = 1 )  then			
				if ll_prncno <> 0 then
					ads_passbook.setitem( ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
				end if
			elseif ll_prncno <> 0 then
				ads_passbook.setitem( ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
			end if
		end if
		// จบ เกี่ยวกับประจำ
		
	next
	
end if

DESTROY lds_stm_forprint

ads_passbook.accepttext( )

return ads_passbook.rowcount( )
end function

public function integer of_genstatement_forprint (ref n_ds ads_passbook, integer ai_seq_no, integer al_linesperpage, integer al_skipmiddlelineamount, string as_deptaccount_no, string as_coop_id, ref long al_count_pass);string		ls_filter, ls_prntcode, ls_entry, ls_coop_id, ls_initial, ls_groupitem, ls_accno, ls_accbr
string		ls_prncno_duedate, ls_close, ls_group_code, ls_typecode
long		ll_loop,ll_rowcount, ll_nobook, ll_prncno
datetime	ldtm_duedate, ldtm_date
integer	li_close, li_seq_no
boolean	lb_card
dec{5}	ldc_intrate
dec{2}	ldc_item
n_ds		lds_stm_forprint



lds_stm_forprint = create n_ds
lds_stm_forprint.dataobject = "d_dp_prn_statement_service"
lds_stm_forprint.settransobject( itr_sqlca )

lds_stm_forprint.retrieve( as_deptaccount_no, as_coop_id , ai_seq_no  )

li_close		= 0
ls_close		= "=============== CLOSED ==============="
ls_coop_id	= as_coop_id

al_count_pass = lds_stm_forprint.rowcount()

if lds_stm_forprint.rowcount() > 0 then
	li_close		= lds_stm_forprint.object.deptclose_status[1] ; if isnull( li_close ) then li_close = 0
	ll_rowcount	= lds_stm_forprint.rowcount()
	
	ls_accno		= trim( lds_stm_forprint.object.deptaccount_no[1] )
//	ls_accbr		= trim( lds_stm_forprint.object.coop_id[1] )
	
	SELECT	DPDEPTTYPE.DEPTGROUP_CODE  , DPDEPTTYPE.DEPTTYPE_CODE	
	INTO		:ls_group_code, :ls_typecode
	FROM		DPDEPTMASTER,	DPDEPTTYPE  
	WHERE	( DPDEPTTYPE.DEPTTYPE_CODE			= DPDEPTMASTER.DEPTTYPE_CODE ) and  
				( ( DPDEPTMASTER.DEPTACCOUNT_NO	= :ls_accno ) AND  
				( DPDEPTMASTER.COOP_ID				= :ls_coop_id ) ) 
	using itr_sqlca ;

	ls_group_code		= trim( ls_group_code )	
	ls_typecode			= trim( ls_typecode )	
	
	for ll_loop = 1 to ll_rowcount
		
		ls_prntcode	= trim( lds_stm_forprint.getitemstring( ll_loop, 'dpucfdeptitemtype_print_code' ) )
		ll_nobook	= lds_stm_forprint.object.no_book_flag[ll_loop]
		ldtm_date	= lds_stm_forprint.object.operate_date[ll_loop]
		ldc_item		= lds_stm_forprint.object.deptitem_amt[ll_loop]
		
		ls_entry		= lds_stm_forprint.object.entry_id[ll_loop]

		SELECT	INITIAL_NAME
		INTO		:ls_initial
		FROM		AMSECUSERS
		WHERE	(  USER_NAME			= :ls_entry ) AND  
					(  COOP_ID	= :ls_coop_id )
		using itr_sqlca ;
		
		ls_initial	= trim( ls_initial )
		
		if isnull( ls_initial ) then ls_initial = ls_entry
		
		ls_entry	= left( trim( ls_initial ) , 3 )
		ls_entry	= upper( ls_entry )


		// ระ - ตรวจสอบการ no book
		if isnull( ll_nobook ) then ll_nobook = 0
		if ll_nobook = 1 then		
			ls_prntcode	= trim( lds_stm_forprint.getitemstring( ll_loop, 'print_codenobook' ) )
		end if
		li_seq_no		= lds_stm_forprint.getitemnumber(ll_loop,'seq_no')
		
		ads_passbook.insertrow(ll_loop)
		ads_passbook.setitem(ll_loop,'al_seq_no', li_seq_no )
		ads_passbook.setitem(ll_loop,'al_rowstatus',1)
		ads_passbook.setitem(ll_loop,'an_linepage', ( al_LinesPerPage  + al_SkipMiddleLineAmount) )
		ads_passbook.setitem(ll_loop,'adtm_opdare',lds_stm_forprint.getitemdatetime(ll_loop,'operate_date'))
		ads_passbook.setitem(ll_loop,'adtm_entrydate',lds_stm_forprint.getitemdatetime(ll_loop,'dpdeptstatement_entry_date'))
		ads_passbook.setitem(ll_loop,'deptitemtype_code1', trim( lds_stm_forprint.getitemstring( ll_loop, 'dpdeptstatement_deptitemtype_code' ) ) )
		ads_passbook.setitem(ll_loop,'deptitemtype_code', ls_prntcode )
		ads_passbook.setitem(ll_loop,'deptitem_amt',lds_stm_forprint.getitemnumber(ll_loop,'deptitem_amt'))
		ads_passbook.setitem(ll_loop,'prncbal',lds_stm_forprint.getitemnumber(ll_loop,'prncbal'))
		ads_passbook.setitem(ll_loop,'sign_flag',lds_stm_forprint.getitemnumber(ll_loop,'sign_flag'))
		ads_passbook.setitem(ll_loop,'accuint_amt',lds_stm_forprint.getitemnumber(ll_loop,'accuint_amt'))
		ads_passbook.setitem(ll_loop,'tax_amt',lds_stm_forprint.getitemnumber(ll_loop,'dpdeptstatement_tax_amt'))
		ads_passbook.setitem(ll_loop,'int_amt',lds_stm_forprint.getitemnumber(ll_loop,'int_amt'))
		ads_passbook.setitem(ll_loop,'calint_from',lds_stm_forprint.getitemdatetime(ll_loop,'calint_from'))
		ads_passbook.setitem(ll_loop,'calint_to',lds_stm_forprint.getitemdatetime(ll_loop,'calint_to'))
		ads_passbook.setitem(ll_loop,'line_num',ll_loop)		
		ads_passbook.setitem(ll_loop,'entry_id', ls_entry )
		ads_passbook.setitem(ll_loop,'prnc_no', "" )
		ads_passbook.setitem(ll_loop,'int_rate', 0.00 )
		
		// เกี่ยวกับ เงินฝากประจำ ดอกเบี้ย เลขที่ต้นเงิน วันครบกำหนด
		ls_groupitem	= trim( lds_stm_forprint.object.deptitem_group[ll_loop] )
		if isnull( ls_groupitem ) then ls_groupitem = ""
		
		ls_groupitem	= upper( ls_groupitem )
		
		if ( ( ls_groupitem = ITEM_GROUP_DEPT ) or ( ls_groupitem = ITEM_GROUP_OPEN ) ) and ( ls_group_code <> '00' ) and ( ls_group_code <> '02' )  then			
			
			ll_prncno	= lds_stm_forprint.object.prnc_no[ll_loop]
			
			if isnull( ll_prncno ) then ll_prncno = 0
			
			if ( ( ll_prncno > 1 ) and ( li_seq_no > 1) ) or ( ( ll_prncno = 1 ) and ( li_seq_no = 1 ) ) then
				// หาก ต้นเงินไม่ใช่ 0
				if ll_prncno <> 0 then
					
					ads_passbook.setitem(ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
					
					if this.of_getintrate_prncno( ls_accno, ls_coop_id, ll_prncno, ldc_intrate , ldtm_duedate , ldtm_date , ls_typecode, ldc_item ) = 1 then
						
						ads_passbook.setitem( ll_loop, 't_int_rate', string( ldc_intrate, "#,##0.00%" ) )
						
					end if
				end if
			end if			
		else
			ll_prncno	= lds_stm_forprint.object.prnc_no[ll_loop]			
			if isnull( ll_prncno ) then ll_prncno = 0
			// หากเป็นประจำ และเป็นรายการ อื่นๆ อ้างอิงยอดเงินด้วย
			if ( ls_group_code = GROUP_FIXED ) and ( ii_cls_width_split_prnc = 1 )  then			
				if ll_prncno <> 0 then
					ads_passbook.setitem(ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
				end if
			elseif ll_prncno <> 0 then
				ads_passbook.setitem(ll_loop,'prnc_no', string( ll_prncno,'#,##0' ) )
			end if
		end if
		// จบ เกี่ยวกับประจำ
		
	next
	
	// กรณีที่ปิดบัญชีแล้ว
	if li_close = 1 then
		ads_passbook.setitem( ll_rowcount, 't_close', ls_close )
		//ads_passbook.object.t_close.text	= ls_close
	end if	
	
end if

DESTROY lds_stm_forprint

ads_passbook.accepttext( )

return ads_passbook.rowcount( )
end function

on n_cst_print_service.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_print_service.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on
