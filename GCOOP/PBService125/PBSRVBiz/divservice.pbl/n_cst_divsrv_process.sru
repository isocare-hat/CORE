$PBExportHeader$n_cst_divsrv_process.sru
$PBExportComments$ประมวลผลเกี่ยวกับปันผลเฉลี่ยคืน
forward
global type n_cst_divsrv_process from nonvisualobject
end type
end forward

global type n_cst_divsrv_process from nonvisualobject
end type
global n_cst_divsrv_process n_cst_divsrv_process

type prototypes

end prototypes

type variables
Public:

string is_coopcontrol , is_coopid

transaction						itr_sqlca
Exception						ithw_exception
datastore						ids_cutorder

n_cst_dbconnectservice		inv_transection
n_cst_divsrv_proc_service	inv_procsrv
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_progresscontrol		inv_progress
n_cst_datetimeservice		inv_datesrv
n_cst_datawindowsservice	inv_dwsrv
n_cst_roundmoneyservice	inv_rdmoneysrv
end variables
forward prototypes
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans) throws Exception
public function integer of_prc_divavg_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception
public function integer of_prc_estdivavg_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception
public function integer of_prc_memb_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception
public function integer of_setprogress (ref n_cst_progresscontrol anv_progress) throws Exception
public function integer of_prc_estdiv (n_ds ads_constant, n_ds ads_proc_est, ref n_ds ads_rpt_est) throws Exception
public function integer of_prc_estavg (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception
public function integer of_prc_estavg_con (n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception
public function integer of_prc_div (n_ds ads_constant, n_ds ads_proc) throws Exception
public function integer of_prc_avg (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception
public function integer of_init_detcal (str_divsrv_proc astr_divsrv_proc) throws Exception
public function integer of_cal_methpay (string as_paytype, decimal adc_paypercent, decimal adc_payamt, ref decimal adc_divamt, ref decimal adc_divbal, ref decimal adc_avgamt, ref decimal adc_avgbal, ref decimal adc_etcamt, ref decimal adc_etcbal, ref decimal adc_proc, ref decimal adc_itembal)
public function integer of_prc_methpay_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception
protected function integer of_clr_divavg (n_ds ads_constant, n_ds ads_proc) throws Exception
protected function integer of_gen_period (date ad_startdate, date ad_datadate)
protected function string of_get_sql (string as_fnname)
protected function integer of_post_divavg_rate (n_ds ads_proc) throws Exception
protected function integer of_post_divavg_stm (n_ds ads_proc) throws Exception
protected function integer of_post_divavg_stm_old (n_ds ads_proc) throws Exception
protected function integer of_post_methpay (n_ds ads_proc) throws Exception
protected function integer of_prc_avg_con (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception
protected function integer of_prc_avg_mem (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception
protected function integer of_prc_avg_stm (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception
protected function integer of_prc_avg_typ (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception
protected function integer of_prc_chk_lock (n_ds ads_proc) throws Exception
protected function integer of_prc_div_day (n_ds ads_constant, n_ds ads_proc) throws Exception
protected function integer of_prc_div_mth (n_ds ads_constant, n_ds ads_proc) throws Exception
protected function integer of_prc_divavg_clr (n_ds ads_proc) throws Exception
protected function integer of_prc_est_create_rate (n_ds ads_rpt_est, string as_esttype, decimal adc_startrate, decimal adc_endrate, decimal adc_step) throws Exception
protected function string of_prc_estavg_gen_rate (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype) throws Exception
protected function integer of_prc_estavg_mem (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception
protected function integer of_prc_estavg_stm (n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception
protected function integer of_prc_estavg_typ (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception
protected function integer of_prc_estdiv_day (n_ds ads_constant, n_ds ads_proc_est, ref n_ds ads_rpt_est) throws Exception
protected function integer of_prc_estdiv_mth (n_ds ads_constant, n_ds ads_proc_est, ref n_ds ads_rpt_est) throws Exception
protected function integer of_prc_estdiv_mth_mod_swd (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_shr_mth, ref n_ds ads_shr_div) throws Exception
protected function integer of_prc_memb_clr (n_ds ads_constant, n_ds ads_memb) throws Exception
protected function integer of_prc_memb_lon (n_ds ads_memb) throws Exception
protected function integer of_prc_memb_master (n_ds ads_constant, n_ds ads_memb) throws Exception
protected function integer of_prc_memb_methpayold (n_ds ads_memb) throws Exception
protected function integer of_prc_memb_shr (n_ds ads_constant, n_ds ads_memb) throws Exception
protected function integer of_prc_memb_shr_day (n_ds ads_constant, n_ds ads_memb) throws Exception
protected function integer of_prc_memb_shr_mas (n_ds ads_constant, n_ds ads_memb) throws Exception
protected function integer of_prc_memb_shr_mth (n_ds ads_constant, n_ds ads_memb) throws Exception
protected function integer of_prc_memb_shr_mth_mod (n_ds ads_constant, n_ds ads_memb, n_ds ads_shr_mth, ref n_ds ads_shr_div) throws Exception
protected function integer of_prc_methpay_chk (n_ds ads_proc) throws Exception
protected function integer of_prc_methpay_clr (n_ds ads_proc) throws Exception
protected function integer of_prc_methpay_gen_default (n_ds ads_proc) throws Exception
protected function integer of_prc_methpay_type (n_ds ads_constant, n_ds ads_proc) throws Exception
protected function integer of_prc_methpay_type_mem (n_ds ads_proc) throws Exception
protected function integer of_prc_methpay_type_req (n_ds ads_proc) throws Exception
protected function integer of_setsrvdate (boolean ab_switch)
protected function integer of_setsrvdw (boolean ab_switch) throws Exception
protected function integer of_setsrvdwxmlie (boolean ab_switch)
protected function integer of_setsrvproc (boolean ab_switch)
protected function integer of_setsrvrdmoney (boolean ab_switch)
protected function integer of_prc_mthpay_update_mem (n_ds ads_proc) throws Exception
public function integer of_cal_methpay_order (string as_methpay, string as_paytype, decimal adc_paypercent, decimal adc_payamt, ref decimal adc_divamt, ref decimal adc_divbal, ref decimal adc_avgamt, ref decimal adc_avgbal, ref decimal adc_etcamt, ref decimal adc_etcbal, ref decimal adc_proc, ref decimal adc_itembal)
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

inv_progress = create n_cst_progresscontrol

is_coopcontrol 	= anv_dbtrans.is_coopcontrol
is_coopid			= anv_dbtrans.is_coopid

return 1
end function

public function integer of_prc_divavg_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception;string ls_xmloption , ls_xmloption_lntype
string ls_coopid
string ls_proctext
integer li_div , li_avg
integer li_proctype , li_prgmax , li_prgindex
boolean lb_err
n_ds lds_proc , lds_cal_lntype
n_ds lds_constant

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true)
this.of_setsrvrdmoney( true )

inv_progress.istr_progress.progress_text = "ประมวลผลปันผล - เฉลี่ยคืน"
inv_progress.istr_progress.progress_index = 0
inv_progress.istr_progress.progress_max = 1
inv_progress.istr_progress.subprogress_text = "เตรียมข้อมูล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1
inv_progress.istr_progress.status = 8

// สร้าง n_ds ที่เกี่ยวข้อง
lds_constant = create n_ds
lds_constant.dataobject = "d_divsrv_constant"
lds_constant.settransobject( itr_sqlca )

lds_proc = create n_ds
lds_proc.dataobject = "d_divsrv_prc_divavg_option"
lds_proc.settransobject( itr_sqlca )

lds_cal_lntype = create n_ds
lds_cal_lntype.dataobject = "d_divsrv_prc_divavg_lntype_option"
lds_cal_lntype.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_divsrv_proc.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_proc , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมาณปันผล - เฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_xmloption_lntype		= astr_divsrv_proc.xml_option_lntype
if inv_dwxmliesrv.of_xmlimport( lds_cal_lntype , ls_xmloption_lntype ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมาณปันผล - เฉลี่ยคืน(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_coopid		= lds_proc.object.coop_id[1]
ls_proctext	= lds_proc.object.proc_text[1]
li_proctype	= lds_proc.object.proc_type[1]
li_div			= lds_proc.object.div_flag[1]
li_avg			= lds_proc.object.avg_flag[1]

if li_div = 0 and li_avg = 0 then
	ithw_exception.text = "~r~nพบขอผิดพลาด(20.1)"
	ithw_exception.text += "~r~nกรุณาเลือกทำรายการปันผล-เฉลี่ยคืน"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ดึงข้อมูลค่าคงที่
if lds_constant.retrieve( ls_coopid ) < 1 then
	ithw_exception.text = "~r~nไม่พบเงื่อนไขการกำหนดค่าคงที่ปันผลเฉลี่ยคืน(0.3)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ตรวจสอบการประมวลผล
try
	this.of_prc_chk_lock( lds_proc )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (40.01)" + lthw_setdwsql.text
	lb_err = true
end try
if lb_err then Goto objdestroy

li_prgmax	= 5 + li_div + li_avg
inv_progress.istr_progress.progress_max = li_prgmax

// กำหนดค่าที่เตรียมประมวล
try
	inv_procsrv.of_initservice()
	inv_procsrv.of_set_proctype( li_proctype ) // กำหนดวิธีดึงข้อมูล 60 ดึงข้อมูลตามทะเบียนสมาชิก
	inv_procsrv.of_set_txtproc( ls_proctext ) // ใส่ค่าที่ดึงข้อมูล
	inv_procsrv.of_set_analyze() // gen ข้อมูลในการดึง
	inv_procsrv.of_set_sqlselect( "yrbgmaster") // set ค่าที่ gen ลงในตารางที่เลือก
//	inv_procsrv.of_set_sqldw( lds_info_mem ) // ใส่ค่าที่กำหนดลง n_ds
catch( Exception lthw_chklock )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (0.4)"
	ithw_exception.text	+= lthw_chklock.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*Clr Data*/
try
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_prc_divavg_clr( lds_proc )
catch( Exception lthw_clr )
	ithw_exception.text	= lthw_clr.text
	lb_err		= true
end try
if lb_err then Goto objdestroy

try	
	/*ปันผล*/
	if li_div = 1 then 
		li_prgindex++
		inv_progress.istr_progress.progress_index = li_prgindex
		this.of_prc_div( lds_constant , lds_proc )
	end if
catch( Exception lthw_prcdiv )
	ithw_exception.text	= lthw_prcdiv.text
	lb_err = true
end try
if lb_err then Goto objdestroy

try
	/*เฉลี่ยคืน*/
	if li_avg = 1 then 
		li_prgindex++
		inv_progress.istr_progress.progress_index = li_prgindex
		this.of_prc_avg( lds_constant , lds_proc , lds_cal_lntype )
	end if
catch( Exception lthw_prcavg )
	ithw_exception.text	= lthw_prcavg.text
	lb_err = true
end try
if lb_err then Goto objdestroy

try
	//ผ่านรายการลงรายการเคลื่อนไหว
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_post_divavg_stm( lds_proc )
catch( Exception lthw_post_divavg )
	lb_err = true
end try
if lb_err then Goto objdestroy

try
	//ผ่านรายการอัตราปันผลเฉลี่ยคืน
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_post_divavg_rate( lds_proc )
	//เคลียร์ข้อมูลที่ไม่ได้ใช้
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_clr_divavg( lds_constant , lds_proc )
catch( Exception lthw_divavg_rate )
	lb_err = true
end try

objdestroy:
if isvalid(lds_constant) then destroy lds_constant
if isvalid(lds_proc) then destroy lds_proc
if isvalid(lds_cal_lntype) then destroy lds_cal_lntype

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)
this.of_setsrvrdmoney( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_process.of_prc_divavg_opt()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca;
end if

inv_progress.istr_progress.status = 1

return 1
end function

public function integer of_prc_estdivavg_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception;string ls_xmloption , ls_xmloption_lntype
string ls_coopid , ls_divyear
string ls_proctext
integer li_proctype , li_chk
integer li_div , li_avg
boolean lb_err
n_ds lds_proc_est , lds_rpt_est , lds_cal_lntype
n_ds lds_constant

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true)

inv_progress.istr_progress.progress_text = "ประมาณผลปันผล - เฉลี่ยคืน"
inv_progress.istr_progress.progress_index = 0
inv_progress.istr_progress.progress_max = 1
inv_progress.istr_progress.subprogress_text = "เตรียมข้อมูล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1
inv_progress.istr_progress.status = 8

// สร้าง n_ds ที่เกี่ยวข้อง
lds_constant = create n_ds
lds_constant.dataobject = "d_divsrv_constant"
lds_constant.settransobject( itr_sqlca )

lds_proc_est = create n_ds
lds_proc_est.dataobject = "d_divsrv_prc_estdivavg_option"
lds_proc_est.settransobject( itr_sqlca )

lds_rpt_est = create n_ds
lds_rpt_est.dataobject = "d_divsrv_prc_estdivavg_rate"
lds_rpt_est.settransobject( itr_sqlca )

lds_cal_lntype = create n_ds
lds_cal_lntype.dataobject = "d_divsrv_prc_divavg_lntype_option"
lds_cal_lntype.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_divsrv_proc.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_proc_est , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมาณปันผล - เฉลี่ยคืน(0.1)" + ithw_exception.text
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_xmloption_lntype		= astr_divsrv_proc.xml_option_lntype
if inv_dwxmliesrv.of_xmlimport( lds_cal_lntype , ls_xmloption_lntype ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมาณปันผล - เฉลี่ยคืน(0.2)" + ithw_exception.text
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_coopid		= lds_proc_est.object.coop_id[1]
ls_divyear	= lds_proc_est.object.div_year[1]
li_div			= lds_proc_est.object.div_flag[1]
li_avg			= lds_proc_est.object.avg_flag[1]
ls_proctext	= lds_proc_est.object.proc_text[1]
li_proctype	= lds_proc_est.object.proc_type[1]

// ดึงข้อมูลค่าคงที่
li_chk	= lds_constant.retrieve( ls_coopid )
if li_chk < 1 then
	ithw_exception.text = "~r~nไม่พบเงื่อนไขการกำหนดค่าคงที่ปันผลเฉลี่ยคืน(0.3)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// กำหนดค่าที่เตรียมประมวล
try
	inv_procsrv.of_initservice()
	inv_procsrv.of_set_proctype( li_proctype ) // กำหนดวิธีดึงข้อมูล 60 ดึงข้อมูลตามทะเบียนสมาชิก
	inv_procsrv.of_set_txtproc( ls_proctext ) // ใส่ค่าที่ดึงข้อมูล
	inv_procsrv.of_set_analyze() // gen ข้อมูลในการดึง
	inv_procsrv.of_set_sqlselect( "mbmembmaster") // set ค่าที่ gen ลงในตารางที่เลือก
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (0.3)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

if li_div = 1 and li_avg = 1 then
	// clear table yrrptestdivavg
	delete from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear using itr_sqlca;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVG 70.0)"
		ithw_exception.text	+= "~r~nเคลียร์ข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		if lb_err then Goto objdestroy
	end if
end if

try
	if li_div = 1 then this.of_prc_estdiv(lds_constant , lds_proc_est , lds_rpt_est )
	commit using itr_sqlca ;
catch( Exception lthw_estdiv )
	ithw_exception.text	= lthw_estdiv.text
	lb_err = true
end try
if lb_err then Goto objdestroy

try
	if li_avg = 1 then this.of_prc_estavg( lds_constant , lds_proc_est , lds_cal_lntype , lds_rpt_est )
	commit using itr_sqlca ;
catch( Exception lthw_estavg )
	ithw_exception.text	= lthw_estavg.text
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_rpt_est.setfilter( "" )
lds_rpt_est.filter( )
lds_rpt_est.setsort( " est_type asc , est_order asc " )
lds_rpt_est.sort( )
astr_divsrv_proc.xml_report	= inv_dwxmliesrv.of_xmlexport( lds_rpt_est )

objdestroy:
if isvalid(lds_proc_est) then destroy lds_proc_est
if isvalid(lds_rpt_est) then destroy lds_rpt_est
if isvalid(lds_cal_lntype) then destroy lds_cal_lntype

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)

if lb_err then
	astr_divsrv_proc.xml_option	= ""
	astr_divsrv_proc.xml_report	= ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_process.of_prc_estdivavg_opt()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca;
end if

inv_progress.istr_progress.status = 1

return 1
end function

public function integer of_prc_memb_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception;string ls_xmloption , ls_coopid
string ls_proctext
integer li_proctype , li_metholdflg
boolean lb_err
n_ds lds_memb , lds_constant

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true)
this.of_setsrvrdmoney( true )
this.of_setsrvdate( true )

inv_progress.istr_progress.progress_text = "ประมวลสมาชิกที่ได้รับเงินปันผล"
inv_progress.istr_progress.progress_index = 0
inv_progress.istr_progress.progress_max = 3
inv_progress.istr_progress.subprogress_text = "เตรียมข้อมูล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1
inv_progress.istr_progress.status = 8

// สร้าง n_ds ที่เกี่ยวข้อง
lds_constant = create n_ds
lds_constant.dataobject = "d_divsrv_constant"
lds_constant.settransobject( itr_sqlca )

// สร้าง n_ds ที่เกี่ยวข้อง
lds_memb = create n_ds
lds_memb.dataobject = "d_divsrv_prc_memb_option"
lds_memb.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_divsrv_proc.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_memb , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมวลสมาชิกที่ได้รับเงินปันผล(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_coopid		= lds_memb.object.coop_id[1]
ls_proctext		= lds_memb.object.proc_text[1]
li_proctype		= lds_memb.object.proc_type[1]
li_metholdflg	= lds_memb.object.methold_flag[1]

// ดึงข้อมูลค่าคงที่
if lds_constant.retrieve( ls_coopid ) < 1 then
	ithw_exception.text = "~r~nไม่พบเงื่อนไขการกำหนดค่าคงที่ปันผลเฉลี่ยคืน(0.2)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// กำหนดค่าที่เตรียมประมวล
try
	inv_procsrv.of_initservice()
	inv_procsrv.of_set_proctype( li_proctype ) // กำหนดวิธีดึงข้อมูล 60 ดึงข้อมูลตามทะเบียนสมาชิก
	inv_procsrv.of_set_txtproc( ls_proctext ) // ใส่ค่าที่ดึงข้อมูล
	inv_procsrv.of_set_analyze() // gen ข้อมูลในการดึง
	inv_procsrv.of_set_sqlselect( "mbmembmaster") // set ค่าที่ gen ลงในตารางที่เลือก
//	inv_procsrv.of_set_sqldw( lds_info_mem ) // ใส่ค่าที่กำหนดลง n_ds
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (0.3)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

inv_progress.istr_progress.progress_max = 4 + li_metholdflg

try
	inv_progress.istr_progress.progress_text = "เคลียร์สมาชิกที่ได้รับเงินปันผล-เฉลี่ยคืน"
	this.of_prc_memb_clr(lds_constant,lds_memb) // สมาชิกที่ได้รับปันผล
	inv_progress.istr_progress.progress_index = 1
	
	inv_progress.istr_progress.progress_text = "สร้างสมาชิกที่ได้รับเงินปันผล-เฉลี่ยคืน"
	this.of_prc_memb_master(lds_constant,lds_memb) // สมาชิกที่ได้รับปันผล
	inv_progress.istr_progress.progress_index = 2
	
	inv_progress.istr_progress.progress_text = "สร้างทะเบียนหุ้น"
	this.of_prc_memb_shr(lds_constant,lds_memb)	 // ทะเบียนหุ้น
	inv_progress.istr_progress.progress_index = 3
	
	inv_progress.istr_progress.progress_text = "สร้างทะเบียนหนี้"
	this.of_prc_memb_lon(lds_memb) // ทะเบียนหนี้
	inv_progress.istr_progress.progress_index = 4
	
	if li_metholdflg = 1 then
		inv_progress.istr_progress.progress_text = "ตั้งข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่า"
		this.of_prc_memb_methpayold(lds_memb) // ประมวลตั้งข้อมูลจากปีเก่า
		inv_progress.istr_progress.progress_index = 4 + li_metholdflg
	end if
	
	commit using itr_sqlca ;
catch( Exception lthw_memb )
	ithw_exception.text	= lthw_memb.text
	lb_err = true
end try

objdestroy:
if isvalid(lds_memb) then destroy lds_memb
if isvalid(lds_constant) then destroy lds_constant

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)
this.of_setsrvrdmoney( false )
this.of_setsrvdate( false )

if lb_err then
	astr_divsrv_proc.xml_option	= ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_process.of_prc_memb_opt()" + ithw_exception.text
	throw ithw_exception
end if

inv_progress.istr_progress.status = 1

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

public function integer of_prc_estdiv (n_ds ads_constant, n_ds ads_proc_est, ref n_ds ads_rpt_est) throws Exception;//** รอทำเพิ่มแยกแบบเดือนกับแบบวัน ตอนนี้ fix แบบวัน
string ls_coopid , ls_divyear
string ls_divtyp
dec ldc_startrate , ldc_endrate , ldc_step
// สร้างตารางอัตราสำหรับการประมาณการ

ls_divtyp			= ads_constant.object.divtype_code[1]

ls_coopid				= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldc_startrate	= ads_proc_est.getitemdecimal( 1, "sdiv_rate" )
ldc_endrate		= ads_proc_est.getitemdecimal( 1, "ediv_rate" )
ldc_step		 	= ads_proc_est.getitemdecimal( 1, "divstep_rate" )

// clear table yrrptestdivavg
delete from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear and est_type = 'DIV' using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVG 70.0)"
	ithw_exception.text	+= "~r~nเคลียร์ข้อมูลประมาณเฉลี่ยคืน"
	ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
	ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

// สร้าง rate การคำนวณประมาณปันผล
this.of_prc_est_create_rate( ads_rpt_est , "DIV", ldc_startrate, ldc_endrate, ldc_step )

try
	if ls_divtyp = "DAY" then this.of_prc_estdiv_day( ads_constant , ads_proc_est , ads_rpt_est )
	if ls_divtyp = "MTH" then this.of_prc_estdiv_mth( ads_constant , ads_proc_est , ads_rpt_est )
catch( Exception lthw_estdiv )
	ithw_exception.text	= lthw_estdiv.text
	throw ithw_exception
end try

return 1
end function

public function integer of_prc_estavg (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception;//** รอทำเพิ่มแยกแบบเดือนกับแบบวัน ตอนนี้ fix แบบรายการเคลื่อนไหว
string ls_coopid , ls_divyear
string ls_avgtyp
dec ldc_startrate , ldc_endrate , ldc_step
// สร้างตารางอัตราสำหรับการประมาณการ
ls_avgtyp			= ads_constant.object.avgtype_code[1]

ls_coopid			= ads_proc_est.object.coop_id[1]
ls_divyear		= ads_proc_est.object.div_year[1]
ldc_startrate	= ads_proc_est.getitemdecimal( 1, "savg_rate" )
ldc_endrate		= ads_proc_est.getitemdecimal( 1, "eavg_rate" )
ldc_step		 	= ads_proc_est.getitemdecimal( 1, "avgstep_rate" )

// clear table yrrptestdivavg
delete from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear and est_type = 'AVG' using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVG 70.0)"
	ithw_exception.text	+= "~r~nเคลียร์ข้อมูลประมาณเฉลี่ยคืน"
	ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
	ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

// สร้าง rate การคำนวณประมาณปันผล
this.of_prc_est_create_rate( ads_rpt_est , "AVG", ldc_startrate, ldc_endrate, ldc_step )

try
	choose case ls_avgtyp
		case "STM"
			this.of_prc_estavg_stm( ads_proc_est , ads_cal_lntype , ads_rpt_est )
		case "CON"
			this.of_prc_estavg_con( ads_proc_est , ads_cal_lntype , ads_rpt_est )
		case "MEM"
			this.of_prc_estavg_mem( ads_constant , ads_proc_est , ads_cal_lntype , ads_rpt_est )
		case "TYP"
			this.of_prc_estavg_typ( ads_constant , ads_proc_est , ads_cal_lntype , ads_rpt_est )
	end choose
catch( Exception lthw_estavg )
	ithw_exception.text	= lthw_estavg.text
	throw ithw_exception
end try

return 1
end function

public function integer of_prc_estavg_con (n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception;string ls_loantype , ls_loantypeall
string ls_coopid , ls_divyear , ls_memno
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend
string ls_rdtyp , ls_satangtyp
integer li_flag
integer li_index , li_row , li_count
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count , ll_estorder
dec ldc_intacc , ldc_estrate
dec ldc_sumavg , ldc_sumvalue
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_con

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_con = create n_ds
lds_int_con.dataobject = "d_divsrv_prc_info_int_con"
lds_int_con.settransobject( itr_sqlca )

ls_coopid				= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
try
	inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "roundavg" )
	ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
	ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
	li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
	li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )
catch( Exception lthw_rdmn )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGCON 0.0)"
	ithw_exception.text	+= lthw_rdmn.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

li_count	= ads_cal_lntype.rowcount()

for li_row = 1 to li_count
	li_flag = ads_cal_lntype.object.cal_flag[ li_row ]
	if ( li_flag = 1 ) then
		ls_loantype		= ads_cal_lntype.object.loantype_code[ li_row ]
		ls_loantypeall	+= "'" + ls_loantype + "',"
	end if
next

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
//	inv_procsrv.of_set_sqldw_column( lds_int_con, " and lncontmaster.coop_id = '" + ls_coopid + "' " )	// ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_int_con, " and lncontstatement.intaccum_date between to_date('" + string( ldtm_accstart , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') and to_date('" + string( ldtm_accend , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_int_con, " and exists ( select 1 from mbmembmaster where mbmembmaster.coop_id = '" + ls_coopid + "' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGCON 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ls_sql		= " SELECT lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO, " 
ls_sql		+= " lncontmaster.loancontract_no, "
ls_sql		+= " -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay "
ls_sql		+= " FROM lncontmaster, "
ls_sql		+= " lncontstatement, "
ls_sql		+= " lnucfloanitemtype "
ls_sql		+= " WHERE ( lncontstatement.LOANCONTRACT_NO = lncontmaster.LOANCONTRACT_NO ) "
ls_sql		+= " and ( lnucfloanitemtype.LOANITEMTYPE_CODE = lncontstatement.LOANITEMTYPE_CODE ) "
ls_sql		+= " and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
ls_sql		+= " and lncontmaster.loantype_code in (" + ls_loantypeall + ")"
ls_sql		+= " and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) "
ls_sql		+= " GROUP BY lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO , lncontmaster.loancontract_no "
ls_sql		+= " union "
ls_sql		+= " SELECT lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO, "
ls_sql		+= " lncontmaster.loancontract_no, "
ls_sql		+= " -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay "
ls_sql		+= " FROM lncontmaster, "
ls_sql		+= " lncontstatement, "
ls_sql		+= " lnucfloanitemtype  "
ls_sql		+= " WHERE ( lncontstatement.LOANCONTRACT_NO = lncontmaster.LOANCONTRACT_NO ) "
ls_sql		+= " and ( lnucfloanitemtype.LOANITEMTYPE_CODE = lncontstatement.LOANITEMTYPE_CODE ) "
ls_sql		+= " and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
ls_sql		+= " and lncontmaster.loantype_code in (" + ls_loantypeall + ")"
ls_sql		+= " and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) "
ls_sql		+= " GROUP BY lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO , lncontmaster.loancontract_no "

lds_int_con.setsqlselect(ls_sql)

ll_count	= lds_int_con.retrieve()

lds_int_con.setsort( " lncontmaster.coop_id, lncontmaster.MEMBER_NO , lncontmaster.coop_id , lncontmaster.loancontract_no " )
lds_int_con.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGCON 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

// กรองเอาเฉพาะ rate เฉลี่ยคืน
ads_rpt_est.setfilter( "est_type = 'AVG'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= li_ratecount

// ปรับ computefield ก่อนทำรายการ
// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//if ls_rdtyp = "1" then ls_syntax = "cp_avg.expression=' sum_intpay ' "
//if ls_rdtyp = "2" then ls_syntax = "cp_avg.expression=' F_RoundMoney( sum_intpay , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
ls_syntax = "cp_avg.expression=' sum_intpay ' "
lds_int_con.Modify( ls_syntax )
ls_syntax = "cp_intall.expression=' sum( sum_intpay for all ) ' "
lds_int_con.Modify( ls_syntax )
ls_syntax = "cp_avgall.expression=' sum( cp_avgmem for all distinct member_no ) ' "
lds_int_con.Modify( ls_syntax )

// คำนวณลงแต่ละ rate ที่ต้องการ
for li_avgrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGCON 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_avgrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_avgrate]
	
	// คำนวณตาม rate ที่เปลี่ยนไป
	// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
	ls_syntax = "cp_avg.expression=' " + string( ldc_estrate ) + " * sum_intpay ' "
	lds_int_con.Modify( ls_syntax )
	ls_syntax = " cp_avgall.expression=' sum( cp_avg for all ) ' "
	lds_int_con.Modify( ls_syntax )
	ls_syntax = " cp_intall.expression=' sum( sum_intpay for all ) ' "
	lds_int_con.Modify( ls_syntax )
	lds_int_con.groupcalc()
	
	ldc_sumavg			= lds_int_con.object.cp_avgall[1]
	ldc_sumvalue		= lds_int_con.object.cp_intall[1]

	ads_rpt_est.object.est_amt[li_avgrate]		= ldc_sumavg
	ads_rpt_est.object.est_value[li_avgrate]		= ldc_sumvalue
	
	insert into yrrptestdivavg
	( 	coop_id , div_year , seq_no , 
		est_type , est_rate , est_order , est_value , est_amt )
	values
	( 	:ls_coopid , :ls_divyear , nvl( ( select max( seq_no ) from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear ) , 0) + 1 , 
		'AVG' , :ldc_estrate , :ll_estorder , :ldc_sumvalue , :ldc_sumavg )
	using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= li_avgrate
	inv_progress.istr_progress.subprogress_text	= string( li_avgrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการเฉลี่ยคืน Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "
	
next

//for ll_index = 1 to ll_count
//	
//	yield()
//	if inv_progress.of_is_stop() then
//		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGSTM 50.1)"
//		lb_err		= true ; Goto objdestroy
//	end if
//	
//	ls_memno 			= lds_int_con.object.member_no[ ll_index ]
//	ldc_intacc			= lds_int_con.object.interest_accum[ ll_index ]
//	
//	inv_progress.istr_progress.subprogress_index	= ll_index
//	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมาณการเฉลี่ยคืนทะเบียน : " + ls_memno	
//	
//next

objdestroy:
this.of_setsrvrdmoney( false )
if isvalid(lds_int_con) then destroy lds_int_con

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estavg_con()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

public function integer of_prc_div (n_ds ads_constant, n_ds ads_proc) throws Exception;//** รอทำเพิ่มแยกแบบเดือนกับแบบวัน ตอนนี้ fix แบบวัน
string ls_divtyp

ls_divtyp			= ads_constant.object.divtype_code[1]

try
	if ls_divtyp = "DAY" then this.of_prc_div_day( ads_constant , ads_proc )
	if ls_divtyp = "MTH" then this.of_prc_div_mth( ads_constant , ads_proc )
	
	/*Clr refraindiv_flag = 1*/
	
catch( Exception lthw_estdiv )
	throw ithw_exception
end try

return 1
end function

public function integer of_prc_avg (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception;//** รอทำเพิ่มแยกแบบเดือนกับแบบวัน ตอนนี้ fix แบบรายการเคลื่อนไหว
string ls_avgtyp

ls_avgtyp			= ads_constant.object.avgtype_code[1]

try
	choose case ls_avgtyp
		case "STM"
			this.of_prc_avg_stm( ads_constant , ads_proc , ads_cal_lntype )
		case "CON"
			this.of_prc_avg_con( ads_constant , ads_proc , ads_cal_lntype )
		case "MEM"
			this.of_prc_avg_mem( ads_constant , ads_proc , ads_cal_lntype )
		case "TYP"
			this.of_prc_avg_typ( ads_constant , ads_proc , ads_cal_lntype )
	end choose
catch( Exception lthw_estavg ) 
	ithw_exception.text	= lthw_estavg.text
	throw ithw_exception
end try

return 1
end function

public function integer of_init_detcal (str_divsrv_proc astr_divsrv_proc) throws Exception;string ls_xmlmain
boolean lb_err
n_ds lds_constant , lds_proc , lds_cal_lntype
n_ds lds_mem

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true )

lds_constant = create n_ds
lds_constant.dataobject = "d_divsrv_constant"
lds_constant.settransobject( itr_sqlca )

lds_proc = create n_ds
lds_proc.dataobject = "d_divsrv_prc_divavg_option"
lds_proc.settransobject( itr_sqlca )

lds_cal_lntype = create n_ds
lds_cal_lntype.dataobject = "d_divsrv_prc_divavg_lntype_option"
lds_cal_lntype.settransobject( itr_sqlca )

lds_mem = create n_ds
lds_mem.dataobject = "d_divsrv_detcal_main"
lds_mem.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmlmain	= astr_divsrv_proc.xml_main
if inv_dwxmliesrv.of_xmlimport( lds_mem , ls_xmlmain ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลสมาชิกที่คำนวณปันผล - เฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if



objdestroy:
if isvalid(lds_constant) then destroy lds_constant
if isvalid(lds_proc) then destroy lds_proc
if isvalid(lds_cal_lntype) then destroy lds_cal_lntype
if isvalid(lds_mem) then destroy lds_mem

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)

if lb_err then
	astr_divsrv_proc.xml_main	= ""
	astr_divsrv_proc.xml_shr = ""
	astr_divsrv_proc.xml_lon = ""
	astr_divsrv_proc.xml_shr_stm = ""
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_process.of_init_detcal()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca;
end if

return 1
end function

public function integer of_cal_methpay (string as_paytype, decimal adc_paypercent, decimal adc_payamt, ref decimal adc_divamt, ref decimal adc_divbal, ref decimal adc_avgamt, ref decimal adc_avgbal, ref decimal adc_etcamt, ref decimal adc_etcbal, ref decimal adc_proc, ref decimal adc_itembal);choose case as_paytype
	case "PEC"
		adc_proc				= adc_itembal * adc_paypercent
	case "VAL"
		adc_proc				= adc_payamt
	case "ALL"
		adc_proc				= adc_itembal
end choose

//ตัดปันผลค้างจ่าย
if adc_etcbal > 0 and adc_itembal > 0 and adc_proc > 0 then
	if adc_proc > adc_etcbal then
		adc_itembal		-= adc_etcbal
		adc_proc			-= adc_etcbal
		adc_etcamt		= adc_etcbal
		adc_etcbal		= 0
	else
		adc_itembal 		-= adc_proc
		adc_etcbal		-= adc_proc
		adc_etcamt		= adc_proc
		adc_proc			= 0
	end if
end if
//ตัดเฉลี่ยคืน
if adc_avgbal > 0 and adc_itembal > 0 and adc_proc > 0 then
	if adc_proc > adc_avgbal then
		adc_itembal		-= adc_avgbal
		adc_proc			-= adc_avgbal
		adc_avgamt		= adc_avgbal
		adc_avgbal		= 0
	else
		adc_itembal 		-= adc_proc
		adc_avgbal		-= adc_proc
		adc_avgamt		= adc_proc
		adc_proc			= 0
	end if
end if
//ตัดปันผล
if adc_divbal > 0 and adc_itembal > 0 and adc_proc > 0 then
	if adc_proc > adc_divbal then
		adc_itembal		-= adc_divbal
		adc_proc			-= adc_divbal
		adc_divamt		= adc_divbal
		adc_divbal		= 0
	else
		adc_itembal		-= adc_proc
		adc_divbal		-= adc_proc
		adc_divamt		= adc_proc
		adc_proc			= 0
	end if
end if

adc_proc		= adc_divamt + adc_avgamt + adc_etcamt

return 1
end function

public function integer of_prc_methpay_opt (ref str_divsrv_proc astr_divsrv_proc) throws Exception;string ls_xmloption , ls_xmloption_lntype
string ls_coopid
string ls_proctext
integer li_div , li_avg , li_upmem
integer li_proctype , li_prgmax , li_prgindex
boolean lb_err
n_ds lds_proc
n_ds lds_constant

this.of_setsrvdwxmlie( true )
this.of_setsrvproc( true)
this.of_setsrvrdmoney( true )

inv_progress.istr_progress.progress_text = "ประมวลวิธีจ่ายปันผล - เฉลี่ยคืน"
inv_progress.istr_progress.progress_index = 0
inv_progress.istr_progress.progress_max = 1
inv_progress.istr_progress.subprogress_text = "เตรียมข้อมูล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1
inv_progress.istr_progress.status = 8

// สร้าง n_ds ที่เกี่ยวข้อง
lds_constant = create n_ds
lds_constant.dataobject = "d_divsrv_constant"
lds_constant.settransobject( itr_sqlca )

lds_proc = create n_ds
lds_proc.dataobject = "d_divsrv_prc_methpay_option"
lds_proc.settransobject( itr_sqlca )

// นำเข้าข้อมูล
ls_xmloption		= astr_divsrv_proc.xml_option
if inv_dwxmliesrv.of_xmlimport( lds_proc , ls_xmloption ) < 1 then
	ithw_exception.text = "~r~nพบขอผิดพลาดในการนำเข้าข้อมูลเงื่อนไขการประมวลวิธีจ่ายปันผล - เฉลี่ยคืน(0.1)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

ls_coopid			= lds_proc.object.coop_id[1]
ls_proctext		= lds_proc.object.proc_text[1]
li_proctype		= lds_proc.object.proc_type[1]
li_upmem		= lds_proc.object.upmem_flag[1]

// ดึงข้อมูลค่าคงที่
if lds_constant.retrieve( is_coopcontrol ) < 1 then
	ithw_exception.text = "~r~nไม่พบเงื่อนไขการกำหนดค่าคงที่ปันผลเฉลี่ยคืน(0.3)"
	ithw_exception.text += "~r~nกรุณาตรวจสอบ"
	lb_err = true ; Goto objdestroy
end if

// ตรวจสอบการประมวลผล
try
	this.of_prc_methpay_chk( lds_proc )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (40.01)" + lthw_setdwsql.text
	lb_err = true
end try
if lb_err then Goto objdestroy

li_prgmax	= 4 + li_upmem
inv_progress.istr_progress.progress_max = li_prgmax

// กำหนดค่าที่เตรียมประมวล
try
	inv_procsrv.of_initservice()
	inv_procsrv.of_set_proctype( li_proctype ) // กำหนดวิธีดึงข้อมูล 60 ดึงข้อมูลตามทะเบียนสมาชิก
	inv_procsrv.of_set_txtproc( ls_proctext ) // ใส่ค่าที่ดึงข้อมูล
	inv_procsrv.of_set_analyze() // gen ข้อมูลในการดึง
	inv_procsrv.of_set_sqlselect( "yrbgmaster") // set ค่าที่ gen ลงในตารางที่เลือก
catch( Exception lthw_chklock )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (0.1)"
	ithw_exception.text	+= lthw_chklock.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*Clr Data*/
try
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_prc_methpay_clr( lds_proc )
catch( Exception lthw_clr )
	ithw_exception.text	= lthw_clr.text
	lb_err		= true
end try
if lb_err then Goto objdestroy

try
	/*อัพเดทสังกัดใหม่*/
	if li_upmem = 1 then
		li_prgindex++
		inv_progress.istr_progress.progress_index = li_prgindex
		this.of_prc_mthpay_update_mem( lds_proc )
	end if
	
	/*สร้างข้อมูลวิธีจ่ายปันผลเฉลี่ยคืน*/
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_prc_methpay_type( lds_constant , lds_proc )
	/*ผ่านรายการวิธีจ่ายปันผลเฉลี่ยคืน*/
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_post_methpay( lds_proc )
	
	/*กำหนดขั้นต่ำหรือว่าสมาชิกไม่มีวิธีการชำระ*/
	li_prgindex++
	inv_progress.istr_progress.progress_index = li_prgindex
	this.of_prc_methpay_gen_default( lds_proc )
catch( Exception lthw_methpay )
	ithw_exception.text	= lthw_methpay.text
	lb_err = true
end try
if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_constant) then destroy lds_constant
if isvalid(lds_proc) then destroy lds_proc

this.of_setsrvdwxmlie( false )
this.of_setsrvproc( false)
this.of_setsrvrdmoney( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "n_cst_divsrv_process.of_prc_methpay_opt()" + ithw_exception.text
	throw ithw_exception
else
	commit using itr_sqlca;
end if

inv_progress.istr_progress.status = 1

return 1
end function

protected function integer of_clr_divavg (n_ds ads_constant, n_ds ads_proc) throws Exception;string ls_sql , ls_sqlselectshr , ls_sqlselectdiv
string ls_sqldelmeth , ls_sqldeldivstm , ls_sqldeldivmas , ls_sqldellon , ls_sqldelshrday , ls_sqldelshrdaybf
string ls_sqldelshrmth , ls_sqldelshrmas
string ls_divyear
integer li_divclrzeroflg
boolean lb_err

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 8

ls_divyear			= ads_proc.object.div_year[1]

li_divclrzeroflg		= ads_constant.object.divclrzero_flag[1]

try
	inv_procsrv.of_set_sqlselect( "yrbgshrmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselectshr )		// ใช้กรณีหุ้นคงเหลือสิ้นปีเป็น 0
	inv_procsrv.of_set_sqlselect( "yrdivmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselectdiv )		// ใช้กรณีปันผลและเฉลี่ยคืนเป็น 0
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

choose case li_divclrzeroflg
	case 1 // clr ยอดปันผลเฉลี่ยคืนเป็น 0 ทั้งหมดไม่ว่าเฉลี่ยคืนจะมียอด( หุ้นคงเหลือสิ้นปีไม่มี )
		
		ls_sqldelmeth 		= " delete from yrdivmethpay "
		ls_sqldelmeth 		+= " where yrdivmethpay.coop_id = '" + is_coopcontrol + "' and yrdivmethpay.div_year = '" + ls_divyear + "' "
		ls_sqldelmeth 		+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelmeth 		+= " and yrdivmethpay.coop_id = yrbgshrmaster.coop_id and yrdivmethpay.member_no = yrbgshrmaster.member_no "
		ls_sqldelmeth 		+= " and yrdivmethpay.div_year = yrbgshrmaster.div_year "
		ls_sqldelmeth 		+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldelmeth 		+= ls_sqlselectshr + " ) "

		ls_sqldeldivstm 	= " delete from yrdivstatement "
		ls_sqldeldivstm		+= " where yrdivstatement.coop_id = '" + is_coopcontrol + "' and yrdivstatement.div_year = '" + ls_divyear + "' "
		ls_sqldeldivstm 	+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldeldivstm 	+= " and yrdivstatement.coop_id = yrbgshrmaster.coop_id and yrdivstatement.member_no = yrbgshrmaster.member_no "
		ls_sqldeldivstm 	+= " and yrdivstatement.div_year = yrbgshrmaster.div_year "
		ls_sqldeldivstm 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldeldivstm		+= ls_sqlselectshr + " ) "
		
		ls_sqldeldivmas 	= " delete from yrdivmaster " 
		ls_sqldeldivmas		+= " where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' "
		ls_sqldeldivmas 	+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldeldivmas 	+= " and yrdivmaster.coop_id = yrbgshrmaster.coop_id and yrdivmaster.member_no = yrbgshrmaster.member_no "
		ls_sqldeldivmas 	+= " and yrdivmaster.div_year = yrbgshrmaster.div_year "
		ls_sqldeldivmas 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldeldivmas		+= ls_sqlselectshr + " ) "
		
		ls_sqldellon			= " delete from yrbglonmaster " 
		ls_sqldellon			+= " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' and yrbglonmaster.div_year = '" + ls_divyear + "' "
		ls_sqldellon 			+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldellon 			+= " and yrbglonmaster.coop_id = yrbgshrmaster.coop_id and yrbglonmaster.member_no = yrbgshrmaster.member_no "
		ls_sqldellon 			+= " and yrbglonmaster.div_year = yrbgshrmaster.div_year "
		ls_sqldellon		 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldellon			+= ls_sqlselectshr + " ) "		
		
		ls_sqldelshrday 	= " delete from yrbgshrstatement " 
		ls_sqldelshrday		+= " where yrbgshrstatement.coop_id = '" + is_coopcontrol + "' and yrbgshrstatement.div_year = '" + ls_divyear + "' "
		ls_sqldelshrday 	+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrday 	+= " and yrbgshrstatement.coop_id = yrbgshrmaster.coop_id and yrbgshrstatement.member_no = yrbgshrmaster.member_no "
		ls_sqldelshrday 	+= " and yrbgshrstatement.div_year = yrbgshrmaster.div_year "
		ls_sqldelshrday 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldelshrday		+= ls_sqlselectshr + " ) "
		
		ls_sqldelshrdaybf 	= " delete from yrbgshrstatementbf " 
		ls_sqldelshrdaybf	+= " where yrbgshrstatementbf.coop_id = '" + is_coopcontrol + "' and yrbgshrstatementbf.div_year = '" + ls_divyear + "' "
		ls_sqldelshrdaybf 	+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrdaybf 	+= " and yrbgshrstatementbf.coop_id = yrbgshrmaster.coop_id and yrbgshrstatementbf.member_no = yrbgshrmaster.member_no "
		ls_sqldelshrdaybf 	+= " and yrbgshrstatementbf.div_year = yrbgshrmaster.div_year "
		ls_sqldelshrdaybf 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldelshrdaybf	+= ls_sqlselectshr + " ) "
		
		ls_sqldelshrmth 	= " delete from yrbgshrmth " 
		ls_sqldelshrmth		+= " where yrbgshrmth.coop_id = '" + is_coopcontrol + "' and yrbgshrmth.div_year = '" + ls_divyear + "' "
		ls_sqldelshrmth 	+= " and exists ( select 1 from yrbgshrmaster where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrmth 	+= " and yrbgshrmth.coop_id = yrbgshrmaster.coop_id and yrbgshrmth.member_no = yrbgshrmaster.member_no "
		ls_sqldelshrmth 	+= " and yrbgshrmth.div_year = yrbgshrmaster.div_year "
		ls_sqldelshrmth 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldelshrmth		+= ls_sqlselectshr + " ) "
		
		ls_sqldelshrmas	= " delete from yrbgshrmaster " 
		ls_sqldelshrmas	+= " where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' "
		ls_sqldelshrmas 	+= " and yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrmas 	+= " and yrbgshrmaster.sharestk_amt <= 0 "
		ls_sqldelshrmas	+= ls_sqlselectshr

	case 0 // clr ยอดปันผลเฉลี่ยคืนเป็น 0 เฉพาะปันผลเฉลี่ยคืนรวมกันเป็น 0
		
		ls_sqldelmeth 		= " delete from yrdivmethpay "
		ls_sqldelmeth 		+= " where yrdivmethpay.coop_id = '" + is_coopcontrol + "' and yrdivmethpay.div_year = '" + ls_divyear + "' "
		ls_sqldelmeth 		+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelmeth 		+= " and yrdivmethpay.coop_id = yrdivmaster.coop_id and yrdivmethpay.member_no = yrdivmaster.member_no "
		ls_sqldelmeth 		+= " and yrdivmethpay.div_year = yrdivmaster.div_year "
		ls_sqldelmeth 		+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldelmeth 		+= ls_sqlselectdiv + " ) "

		ls_sqldeldivstm 	= " delete from yrdivstatement "
		ls_sqldeldivstm		+= " where yrdivstatement.coop_id = '" + is_coopcontrol + "' and yrdivstatement.div_year = '" + ls_divyear + "' "
		ls_sqldeldivstm 	+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldeldivstm 	+= " and yrdivstatement.coop_id = yrdivmaster.coop_id and yrdivstatement.member_no = yrdivmaster.member_no "
		ls_sqldeldivstm 	+= " and yrdivstatement.div_year = yrdivmaster.div_year "
		ls_sqldeldivstm 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldeldivstm		+= ls_sqlselectdiv + " ) "
		
		ls_sqldellon			= " delete from yrbglonmaster " 
		ls_sqldellon			+= " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' and yrbglonmaster.div_year = '" + ls_divyear + "' "
		ls_sqldellon 			+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldellon 			+= " and yrbglonmaster.coop_id = yrdivmaster.coop_id and yrbglonmaster.member_no = yrdivmaster.member_no "
		ls_sqldellon 			+= " and yrbglonmaster.div_year = yrdivmaster.div_year "
		ls_sqldellon		 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldellon			+= ls_sqlselectdiv + " ) "		
		
		ls_sqldelshrday 	= " delete from yrbgshrstatement " 
		ls_sqldelshrday		+= " where yrbgshrstatement.coop_id = '" + is_coopcontrol + "' and yrbgshrstatement.div_year = '" + ls_divyear + "' "
		ls_sqldelshrday 	+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrday 	+= " and yrbgshrstatement.coop_id = yrdivmaster.coop_id and yrbgshrstatement.member_no = yrdivmaster.member_no "
		ls_sqldelshrday 	+= " and yrbgshrstatement.div_year = yrdivmaster.div_year "
		ls_sqldelshrday 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldelshrday		+= ls_sqlselectdiv + " ) "
		
		ls_sqldelshrdaybf 	= " delete from yrbgshrstatementbf " 
		ls_sqldelshrdaybf	+= " where yrbgshrstatementbf.coop_id = '" + is_coopcontrol + "' and yrbgshrstatementbf.div_year = '" + ls_divyear + "' "
		ls_sqldelshrdaybf 	+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrdaybf 	+= " and yrbgshrstatementbf.coop_id = yrdivmaster.coop_id and yrbgshrstatementbf.member_no = yrdivmaster.member_no "
		ls_sqldelshrdaybf 	+= " and yrbgshrstatementbf.div_year = yrdivmaster.div_year "
		ls_sqldelshrdaybf 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldelshrdaybf	+= ls_sqlselectdiv + " ) "
		
		ls_sqldelshrmth 	= " delete from yrbgshrmth " 
		ls_sqldelshrmth		+= " where yrbgshrmth.coop_id = '" + is_coopcontrol + "' and yrbgshrmth.div_year = '" + ls_divyear + "' "
		ls_sqldelshrmth 	+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrmth 	+= " and yrbgshrmth.coop_id = yrdivmaster.coop_id and yrbgshrmth.member_no = yrdivmaster.member_no "
		ls_sqldelshrmth 	+= " and yrbgshrmth.div_year = yrdivmaster.div_year "
		ls_sqldelshrmth 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldelshrmth		+= ls_sqlselectdiv + " ) "
		
		ls_sqldelshrmas	= " delete from yrbgshrmaster " 
		ls_sqldelshrmas	+= " where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '" + ls_divyear + "' "
		ls_sqldelshrmas 	+= " and exists ( select 1 from yrdivmaster where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' " 
		ls_sqldelshrmas 	+= " and yrbgshrmaster.coop_id = yrdivmaster.coop_id and yrbgshrmaster.member_no = yrdivmaster.member_no "
		ls_sqldelshrmas 	+= " and yrbgshrmaster.div_year = yrdivmaster.div_year "
		ls_sqldelshrmas 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldelshrmas	+= ls_sqlselectdiv + " ) "
		
		ls_sqldeldivmas 	= " delete from yrdivmaster " 
		ls_sqldeldivmas		+= " where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '" + ls_divyear + "' "
		ls_sqldeldivmas 	+= " and ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) = 0 "
		ls_sqldeldivmas		+= ls_sqlselectdiv 
		
	case else
		ithw_exception.text	= "~r~nพบขอผิดพลาด (CLRDIVAVG 0.1)"
		ithw_exception.text	+= "~r~nไม่พบข้อมูลการเคลียร์สมาชิกที่ไม่ได้ปันผลเฉลี่ยคืน"
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		throw ithw_exception
end choose

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (CLRDIVAVG 50.1)"
	lb_err		= true 
end if
if lb_err then Goto objdestroy

try
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (1)"
	inv_progress.istr_progress.subprogress_index = 1
	execute immediate :ls_sqldelmeth using itr_sqlca;
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (2)"
	inv_progress.istr_progress.subprogress_index = 2
	execute immediate :ls_sqldeldivstm using itr_sqlca;
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (3)"
	inv_progress.istr_progress.subprogress_index = 3
	execute immediate :ls_sqldellon using itr_sqlca;
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (4)"
	inv_progress.istr_progress.subprogress_index = 4
	execute immediate :ls_sqldelshrday using itr_sqlca;
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (5)"
	inv_progress.istr_progress.subprogress_index = 5
	execute immediate :ls_sqldelshrdaybf using itr_sqlca;
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (6)"
	inv_progress.istr_progress.subprogress_index = 6
	execute immediate :ls_sqldelshrmth using itr_sqlca;
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (7)"
	inv_progress.istr_progress.subprogress_index = 7
	if li_divclrzeroflg = 0 then ; execute immediate :ls_sqldelshrmas using itr_sqlca; else ; execute immediate :ls_sqldeldivmas using itr_sqlca; end if
	
	yield()
	inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน (8)"
	inv_progress.istr_progress.subprogress_index = 8
	if li_divclrzeroflg = 1 then ; execute immediate :ls_sqldelshrmas using itr_sqlca; else ; execute immediate :ls_sqldeldivmas using itr_sqlca; end if
	
catch( Exception lthw_sqlerr )
	if itr_sqlca.sqlcode <> 0 then
		lthw_sqlerr.text 	= "~r~nพบข้อผิดพลาด CLRDIVAVG (0.01) "
		lthw_sqlerr.text 	+= "~r~nไม่สามารถลบข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้"
		lthw_sqlerr.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		lthw_sqlerr.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true 
	end if
end try

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (CLRDIVAVG 50.2)"
	lb_err		= true 
end if

objdestroy:

if lb_err then
	ithw_exception.text = "n_cst_divsr_process.of_clr_divavg() " + lthw_sqlerr.text 
	throw ithw_exception
end if

return 1
end function

protected function integer of_gen_period (date ad_startdate, date ad_datadate);integer		li_accmonth, li_month, li_monthdif, li_monthstart

li_monthstart	= month( ad_startdate)
li_month		= month( ad_datadate )

li_monthdif	 	= li_monthstart - 1

if li_month < li_monthstart then
	li_accmonth = ( li_month+12 ) - li_monthdif
else
	li_accmonth = li_month - li_monthdif
end if

return li_accmonth
end function

protected function string of_get_sql (string as_fnname);string ls_sql

choose case trim( as_fnname )
	case "est_avg_typ"
	case else
		ls_sql = ""
//		select sum( estavg.sum_intpay ) as sum_intpay , sum( estavg.sum_avg ) as sum_avg
//		from(
//			select eavg.coop_id , eavg.member_no , sum( eavg.sum_intpay ) as sum_intpay , 
//			sum( eavg.sum_avg ) as sum_avg ,
//			ftcm_RoundMoney ( sum( eavg.sum_avg ) , '00' , '2' , 3 , 2 ) as sum_avg2
//			from(
//				select lncontmaster.coop_id, 
//				lncontmaster.member_no,  
//				lnloantype.loantype_code, 
//				yrcfrateln.avgpercent_rate,
//				-1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay ,
//			//	( yrcfrateln.avgpercent_rate * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) ) as sum_avg
//				ftcm_RoundMoney ( yrcfrateln.avgpercent_rate * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) , '00' , '2' , 3 , 2 ) as sum_avg
//				from lnloantype ,
//				lncontmaster, 
//				lncontstatement, 
//				lnucfloanitemtype ,
//				yrcfrateln
//				where ( lnloantype.coop_id = lncontmaster.coop_id ) 
//				and ( lnloantype.loantype_code = lncontmaster.loantype_code )
//				and ( lncontmaster.coop_id = lncontstatement.coop_id ) 
//				and ( lncontmaster.loancontract_no = lncontstatement.loancontract_no ) 
//				and ( lnucfloanitemtype.loanitemtype_code = lncontstatement.loanitemtype_code ) 
//				and ( lnloantype.coop_id = yrcfrateln.coop_id )
//				and ( lnloantype.loantype_code = yrcfrateln.loantype_code )
//				//and lncontmaster.loantype_code in ( + ls_loantypeall + )
//				and lncontmaster.coop_id = '010001' 
//				and yrcfrateln.div_year = '2556'
//				and lncontstatement.intaccum_date between to_date('01/01/2013','dd/mm/yyyy') and to_date('31/12/2013','dd/mm/yyyy') 
//				and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '010001' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  /*+ ls_sqlselect +*/  ) 
//			//	and exists ( select 1 from mbmembmaster , shsharemaster where mbmembmaster.coop_id = shsharemaster.coop_id and mbmembmaster.member_no = shsharemaster.member_no and mbmembmaster.member_status = 1 and shsharemaster.sharestk_amt > 0 and mbmembmaster.coop_id = '010001' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  /*+ ls_sqlselect +*/  ) 
//				group by lncontmaster.coop_id, 
//				lncontmaster.member_no , lnloantype.loantype_code , yrcfrateln.avgpercent_rate
//				union 
//				select lncontmaster.coop_id, 
//				lncontmaster.member_no,  
//				lnloantype.loantype_code, 
//				yrcfrateln.avgpercent_rate,
//				-1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay ,
//			//	( yrcfrateln.avgpercent_rate * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) ) as sum_avg
//				ftcm_RoundMoney ( yrcfrateln.avgpercent_rate * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) , '00' , '2' , 3 , 2 ) as sum_avg
//				from lnloantype ,
//				lncontmaster, 
//				lncontstatement, 
//				lnucfloanitemtype ,
//				yrcfrateln
//				where ( lnloantype.coop_id = lncontmaster.coop_id ) 
//				and ( lnloantype.loantype_code = lncontmaster.loantype_code )
//				and ( lncontmaster.coop_id = lncontstatement.coop_id ) 
//				and ( lncontmaster.loancontract_no = lncontstatement.loancontract_no ) 
//				and ( lnucfloanitemtype.loanitemtype_code = lncontstatement.loanitemtype_code ) 
//				and ( lnloantype.coop_id = yrcfrateln.coop_id )
//				and ( lnloantype.loantype_code = yrcfrateln.loantype_code )
//				//and lncontmaster.loantype_code in ( + ls_loantypeall + )
//				and lncontmaster.coop_id = '010001' 
//				and yrcfrateln.div_year = '2556'
//				and lncontstatement.intaccum_date between to_date('01/01/2013','dd/mm/yyyy') and to_date('31/12/2013','dd/mm/yyyy') 
//				and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '31/12/2013' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '31/12/2013' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '010001' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  /*+ ls_sqlselect + */ ) 
//				group by lncontmaster.coop_id, 
//				lncontmaster.member_no , lnloantype.loantype_code , yrcfrateln.avgpercent_rate 
//			) eavg
//			group by eavg.coop_id , eavg.member_no 
//		) estavg
end choose

return ls_sql
end function

protected function integer of_post_divavg_rate (n_ds ads_proc) throws Exception;string ls_divyear , ls_coopid
string ls_sql
integer li_chkrow , li_divflg , li_avgflg
dec ldc_divrate , ldc_avgrate

ls_coopid	= ads_proc.object.coop_id[1]
ls_divyear	= ads_proc.object.div_year[1]
li_divflg		= ads_proc.object.div_flag[1]
li_avgflg		= ads_proc.object.avg_flag[1]
ldc_divrate	= ads_proc.object.div_rate[1]
ldc_avgrate	= ads_proc.object.avg_rate[1]

select count( coop_id )
into :li_chkrow
from yrcfrate
where coop_id = :ls_coopid
and div_year = :ls_divyear
using itr_sqlca ;

if isnull( li_chkrow ) or li_chkrow = 0 then
	
	if li_divflg = 1 and li_avgflg = 1 then ls_sql = " insert into yrcfrate ( coop_id , div_year , divpercent_rate , avgpercent_rate , lockproc_flag ) values ( '" + ls_coopid + "' , '" + ls_divyear + "' , '" + string( ldc_divrate ) + "' , '" + string( ldc_avgrate ) + "' , 1 ) "
	if li_divflg = 0 and li_avgflg = 1 then ls_sql = " insert into yrcfrate ( coop_id , div_year , avgpercent_rate , lockproc_flag ) values ( '" + ls_coopid + "' , '" + ls_divyear + "' , '" + string( ldc_avgrate ) + "' , 1 ) "
	if li_divflg = 1 and li_avgflg = 0 then ls_sql = " insert into yrcfrate ( coop_id , div_year , divpercent_rate , lockproc_flag ) values ( '" + ls_coopid + "' , '" + ls_divyear + "' , '" + string( ldc_divrate ) + "' , 1 ) "

	execute immediate :ls_sql using itr_sqlca;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_rate (0.01) "
		ithw_exception.text 	+= "~r~nไม่สามารถนำเข้าข้อมูลอัตราปันผล-เฉลี่ยคืนได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		throw ithw_exception
	end if

else
	
	if li_divflg = 1 and li_avgflg = 1 then ls_sql = " update yrcfrate set divpercent_rate = '" + string( ldc_divrate ) + "' , avgpercent_rate = '" + string( ldc_avgrate ) + "' , lockproc_flag = 1 where coop_id = '" + ls_coopid + "' and div_year = '" + ls_divyear + "' "
	if li_divflg = 0 and li_avgflg = 1 then ls_sql = " update yrcfrate set avgpercent_rate = '" + string( ldc_avgrate ) + "' , lockproc_flag = 1 where coop_id = '" + ls_coopid + "' and div_year = '" + ls_divyear + "' "
	if li_divflg = 1 and li_avgflg = 0 then ls_sql = " update yrcfrate set divpercent_rate = '" + string( ldc_divrate ) + "' , lockproc_flag = 1 where coop_id = '" + ls_coopid + "' and div_year = '" + ls_divyear + "' "
	
	execute immediate :ls_sql using itr_sqlca;
		if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_rate (0.02) "
		ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทข้อมูลอัตราปันผล-เฉลี่ยคืนได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		throw ithw_exception
	end if
end if

return 1
end function

protected function integer of_post_divavg_stm (n_ds ads_proc) throws Exception;string ls_sql , ls_sqlselect
string ls_coopctrl , ls_coopid
string ls_divyear , ls_divyearls
string ls_operatedate , ls_slipdate
string ls_entryid
datetime ldtm_oper , ldtm_slip

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลรายการเคลื่อนไหวปันผล-เฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 6

ls_coopid			= ads_proc.object.coop_id[1]
ls_divyear		= ads_proc.object.div_year[1]
ls_entryid		= ads_proc.object.entry_id[1]
ldtm_oper		= ads_proc.object.operate_date[1]
ldtm_slip			= ads_proc.object.slip_date[1]

ls_divyearls		= string( integer( left( trim( ls_divyear ) , 4 ) ) - 1 )

ls_operatedate	= string( ldtm_oper , 'dd/mm/yyyy' )
ls_slipdate		= string( ldtm_slip , 'dd/mm/yyyy' )

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end try

/*
ls_sql	= " delete from yrdivstatement " 
ls_sql += " where exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrdivstatement.coop_id = yrbgmaster.coop_id and yrdivstatement.member_no = yrbgmaster.member_no "
ls_sql += " and yrdivstatement.div_year = yrbgmaster.div_year " 
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm (0.01) "
	ithw_exception.text 	+= "~r~nไม่สามารถลบข้อมูลรายการเคลือนไหวปันผล-เฉลี่ยคืนได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if
*/

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTM 50.1)"
	throw ithw_exception
end if
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลรายการเคลื่อนไหวปันผล รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 1

//insert into yrdivstatement
//( coop_id , divslip_no , seq_no , operate_date , slip_date , divitemtype_code , div_payment , div_balamt , avg_payment , avg_balamt , etc_payment , etc_balamt , item_status , entry_id , entry_date )
//select dm.coop_id , dm.divslip_no , ( select max( ds.seq_no ) from yrdivstatement ds where ds.coop_id = dm.coop_id and ds.divslip_no = dm.divslip_no ) ,
//to_date( '"+ ls_operatedate +"' , 'dd/mm/yyyy' ) , to_date( '"+ ls_slipdate +"' , 'dd/mm/yyyy' ) ,
//'IDV' , dm.div_amt , dm.div_amt , 0 , 0 , 0 , 0 , 1 , '"+ ls_entryid + "' , sysdate
//from yrdivmaster dm
//where dm.coop_id = ''
//and dm.div_year = ''
//and dm.div_amt > 0

ls_sql = " insert into yrdivstatement "
ls_sql += " ( coop_id , member_no , div_year , seq_no , operate_date , slip_date , divitemtype_code , "
ls_sql += "  div_payment , avg_payment , etc_payment , item_payment , item_balamt , "
ls_sql += " item_status , entry_id , entry_date ) "
ls_sql += " select dm.coop_id , dm.member_no , dm.div_year , nvl( ( select max( ds.seq_no ) from yrdivstatement ds where ds.coop_id = dm.coop_id and ds.member_no = dm.member_no and ds.div_year = dm.div_year ) , 0 ) + 1 as seq_no , "
ls_sql += " to_date( '"+ ls_operatedate +"' , 'dd/mm/yyyy' ) , to_date( '"+ ls_slipdate +"' , 'dd/mm/yyyy' ) , "
ls_sql += " 'IDV' , dm.div_amt , 0 , 0 , dm.div_amt , dm.div_amt , 1 , '"+ ls_entryid + "' , sysdate "
ls_sql += " from yrdivmaster dm "
ls_sql += " where dm.div_amt > 0 "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrbgmaster.coop_id = dm.coop_id and yrbgmaster.member_no = dm.member_no and yrbgmaster.div_year = dm.div_year " 
ls_sql += ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลรายการเคลื่อนไหวปันผลได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTM 50.2)"
	throw ithw_exception
end if
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลรายการเคลื่อนไหวเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 2

ls_sql = " insert into yrdivstatement "
ls_sql += " ( coop_id , member_no , div_year , seq_no , operate_date , slip_date , divitemtype_code , "
ls_sql += "  div_payment , avg_payment , etc_payment , item_payment , item_balamt , "
ls_sql += " item_status , entry_id , entry_date ) "
ls_sql += " select dm.coop_id , dm.member_no , dm.div_year , nvl( ( select max( ds.seq_no ) from yrdivstatement ds where ds.coop_id = dm.coop_id and ds.member_no = dm.member_no and ds.div_year = dm.div_year ) , 0 ) + 1 as seq_no , "
ls_sql += " to_date( '"+ ls_operatedate +"' , 'dd/mm/yyyy' ) , to_date( '"+ ls_slipdate +"' , 'dd/mm/yyyy' ) , "
ls_sql += " 'IAV' , 0 , dm.avg_amt , 0 , dm.avg_amt , nvl( dm.div_amt , 0 ) + nvl( dm.avg_amt , 0 ) , 1 , '"+ ls_entryid + "' , sysdate "
ls_sql += " from yrdivmaster dm "
ls_sql += " where dm.avg_amt > 0 "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrbgmaster.coop_id = dm.coop_id and yrbgmaster.member_no = dm.member_no and yrbgmaster.div_year = dm.div_year " 
ls_sql += ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลรายการเคลื่อนไหวเฉลี่ยคืนได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTM 50.3)"
	throw ithw_exception
end if
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลรายการเคลื่อนไหวรายการอื่นๆ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 3

ls_sql = " insert into yrdivstatement "
ls_sql += " ( coop_id , member_no , div_year , seq_no , operate_date , slip_date , divitemtype_code , "
ls_sql += "  div_payment , avg_payment , etc_payment , item_payment , item_balamt ,  "
ls_sql += " item_status , entry_id , entry_date ) "
ls_sql += " select dm.coop_id , dm.member_no , dm.div_year , nvl( ( select max( ds.seq_no ) from yrdivstatement ds where ds.coop_id = dm.coop_id and ds.member_no = dm.member_no and ds.div_year = dm.div_year ) , 0 ) + 1 as seq_no , "
ls_sql += " to_date( '"+ ls_operatedate +"' , 'dd/mm/yyyy' ) , to_date( '"+ ls_slipdate +"' , 'dd/mm/yyyy' ) , "
ls_sql += " 'IET' , 0 , 0 , dm.etc_amt , dm.etc_amt , nvl( dm.div_amt , 0 ) + nvl( dm.avg_amt , 0 ) + nvl( dm.etc_amt , 0 ) , 1 , '"+ ls_entryid + "' , sysdate "
ls_sql += " from yrdivmaster dm "
ls_sql += " where dm.etc_amt > 0 "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrbgmaster.coop_id = dm.coop_id and yrbgmaster.member_no = dm.member_no and yrbgmaster.div_year = dm.div_year " 
ls_sql += ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm (70.3)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลรายการเคลื่อนไหวรายการอื่นๆได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTM 50.4)"
	throw ithw_exception
end if
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลรายการเคลื่อนไหวปันผลค้างจ่าย รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 4

try
	this.of_post_divavg_stm_old( ads_proc )
catch( Exception lthw_divavg_old )
	ithw_exception.text	= lthw_divavg_old.text
	throw ithw_exception
end try

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTM 50.5)"
	throw ithw_exception
end if
inv_progress.istr_progress.subprogress_text = "อัพเดทยอดคงเหลือปันผล-เฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 5

ls_sql = " update yrdivmaster dm "
ls_sql += " set dm.item_balamt = nvl( dm.div_amt , 0 ) + nvl( dm.avg_amt , 0 ) + nvl( dm.etc_amt , 0 ) , "
ls_sql += " dm.div_balamt = nvl( dm.div_amt , 0 ) , dm.avg_balamt = nvl( dm.avg_amt , 0 ) , dm.etc_balamt = nvl( dm.etc_amt , 0 ) "
ls_sql += " where exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrbgmaster.coop_id = dm.coop_id and yrbgmaster.member_no = dm.member_no and yrbgmaster.div_year = dm.div_year " 
ls_sql += ls_sqlselect + " ) "
ls_sql	+= " and coop_id = '" + is_coopcontrol + "' "
ls_sql += " and div_year = '" + ls_divyear + "' "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm (70.5)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลรายการเคลื่อนไหวปันผลค้างจ่ายได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

return 1
end function

protected function integer of_post_divavg_stm_old (n_ds ads_proc) throws Exception;/*
Gen ปันผลปีเก่า มาตั้งปีใหม่
*/
string ls_sql , ls_sqlselect
string ls_divyear , ls_divyearls
string ls_operatedate , ls_slipdate
string ls_entryid
datetime ldtm_oper , ldtm_slip

ls_divyear		= ads_proc.object.div_year[1]
ls_entryid		= ads_proc.object.entry_id[1]
ldtm_oper		= ads_proc.object.operate_date[1]
ldtm_slip			= ads_proc.object.slip_date[1]

ls_divyearls		= string( integer( left( trim( ls_divyear ) , 4 ) ) - 1 )

ls_operatedate	= string( ldtm_oper , 'dd/mm/yyyy' )
ls_slipdate		= string( ldtm_slip , 'dd/mm/yyyy' )

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end try

/*
นำเข้าสมาชิกที่ได้รับปันผล
(ไม่ได้ปันผลปีปัจจุบัน)
*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTMOLD 50.4.1)"
	throw ithw_exception
end if

ls_sql = " insert into yrbgmaster "
ls_sql += " ( coop_id , member_no , div_year , membgroup_code , membtype_code , proccoop_id ) "
ls_sql += " 	select yo.coop_id , yo.member_no , '" + ls_divyear + "' as div_year , m.membgroup_code , m.membtype_code , '" + is_coopid + "' as coop_id "
ls_sql += " 	from yrslippayout yo , yrslippayoutdet yod , yrucfmethpay yum  , mbmembmaster m , "
ls_sql	+= "  ( select ybm.coop_id , ybm.member_no , ybm.div_year from yrbgmaster ybm where ybm.coop_id = '" + is_coopid + "' and ybm.div_year = '" + ls_divyearls + "' ) yrbgmaster "
ls_sql += " 	where yo.coop_id = yod.coop_id "
ls_sql += " 	and yo.payoutslip_no = yod.payoutslip_no "
ls_sql += " 	and yod.coop_id = yum.coop_id "
ls_sql += " 	and yod.methpaytype_code = yum.methpaytype_code "
ls_sql += " 	and yo.coop_id = m.coop_id "
ls_sql += " 	and yo.member_no = m.member_no "
ls_sql += " 	and yo.coop_id = yrbgmaster.coop_id "
ls_sql += " 	and yo.member_no = yrbgmaster.member_no "
ls_sql += " 	and yo.div_year = yrbgmaster.div_year "
ls_sql += " 	and yo.coop_id = '" + is_coopid + "' "
ls_sql += " 	and substr( yo.div_year , 1 , 4 ) = '" + ls_divyearls + "' "
ls_sql += " 	and yum.paynxtdiv_flag = 1 "
ls_sql += " 	and yo.slip_status = 1 "
ls_sql += " 	and not exists ( 	select 1 from yrbgmaster yb "
ls_sql += " 							where yb.coop_id = yo.coop_id "
ls_sql += " 							and yb.member_no = yo.member_no "
ls_sql += " 							and yb.coop_id = '" + is_coopid + "' "
ls_sql += " 							and yb.div_year = '" + ls_divyear + "' "
ls_sql += " 						) "
ls_sql += ls_sqlselect

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm_old (70.4.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถทำรายการปันผลค้างจ่ายได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

/*
นำเข้าทะเบียนปันผลเฉลี่ยคืน
(ไม่ได้ปันผลปีปัจจุบัน)
*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTMOLD 50.4.2)"
	throw ithw_exception
end if

ls_sql = " insert into yrdivmaster "
ls_sql += " 		(	coop_id  , member_no , div_year ) "
ls_sql += " 	select	yo.coop_id , yo.member_no ,	'" + ls_divyear + "' "
ls_sql += " 	from yrslippayout yo , yrslippayoutdet yod , yrucfmethpay yum , "
ls_sql	+= "  ( select ybm.coop_id , ybm.member_no , '" + ls_divyearls + "' as div_year from yrbgmaster ybm where ybm.coop_id = '" + is_coopid + "' and ybm.div_year = '" + ls_divyearls + "' ) yrbgmaster "
ls_sql += " 	where yo.coop_id = yod.coop_id "
ls_sql += " 	and yo.payoutslip_no = yod.payoutslip_no "
ls_sql += " 	and yod.coop_id = yum.coop_id "
ls_sql += " 	and yod.methpaytype_code = yum.methpaytype_code "
ls_sql += " 	and yo.coop_id = yrbgmaster.coop_id "
ls_sql += " 	and yo.member_no = yrbgmaster.member_no "
ls_sql += " 	and yo.div_year = yrbgmaster.div_year "
ls_sql += " 	and yo.coop_id = '" + is_coopid + "' "
ls_sql += " 	and substr( yo.div_year , 1 , 4 ) = '" + ls_divyearls + "' "
ls_sql += " 	and yum.paynxtdiv_flag = 1 "
ls_sql += " 	and yo.slip_status = 1 "
ls_sql += " 	and not exists ( 	select 1 from yrdivmaster ym "
ls_sql += " 							where ym.coop_id = yo.coop_id "
ls_sql += " 							and ym.member_no = yo.member_no "
ls_sql += " 							and ym.coop_id = '" + is_coopid + "' "
ls_sql += " 							and ym.div_year = '" + ls_divyear + "' "
ls_sql += " 						) "
ls_sql += ls_sqlselect

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm_old (70.4.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถทำรายการปันผลค้างจ่ายได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

/*
นำเข้ารายการเคลื่อนไหวปันผลเฉลี่ยคืน
(ได้ปันผลปีปัจจุบัน)
*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTMOLD 50.4.3)"
	throw ithw_exception
end if

ls_sql = " insert into yrdivstatement "
ls_sql += " ( coop_id , member_no , div_year , seq_no , operate_date , slip_date , divitemtype_code , "
ls_sql += " div_payment , avg_payment , etc_payment , item_payment , item_balamt , "
ls_sql += " item_status , entry_id , entry_date ) "
ls_sql += " 	select	yo.coop_id , yo.member_no ,	'" + ls_divyear + "' , "
ls_sql += " 			nvl( ( select max( ds.seq_no ) from yrdivstatement ds where ds.coop_id = yo.coop_id and ds.member_no = yo.member_no and ds.div_year = '" + ls_divyear + "' ) , 0 ) + 1 as seq_no , "
ls_sql += " 			to_date( '"+ ls_operatedate +"' , 'dd/mm/yyyy' ) as opreate_date , to_date( '"+ ls_slipdate +"' , 'dd/mm/yyyy' ) as slip_date , 'IAR' , "
ls_sql += " 			yod.div_payment , yod.avg_payment , yod.etc_payment , ( yod.div_payment + yod.avg_payment + yod.etc_payment ) as item_payment , ( ( yod.div_payment + yod.avg_payment + yod.etc_payment ) + ( yrdivmaster.div_amt + yrdivmaster.avg_amt + yrdivmaster.etc_amt ) ) as item_bal , "
ls_sql += " 			1 , '"+ ls_entryid + "' , sysdate "
ls_sql += " 	from yrslippayout yo , yrslippayoutdet yod , yrucfmethpay yum , "
ls_sql	+= "  ( select ybm.coop_id , ybm.member_no , '" + ls_divyearls + "' as div_year from yrbgmaster ybm where ybm.coop_id = '" + is_coopid + "' and ybm.div_year = '" + ls_divyear + "' ) yrbgmaster , "
ls_sql	+= "  ( select ydm.coop_id , ydm.member_no , '" + ls_divyearls + "' as div_year , ydm.div_amt , ydm.avg_amt , ydm.etc_amt from yrdivmaster ydm where ydm.coop_id = '" + is_coopid + "' and ydm.div_year = '" + ls_divyear + "' ) yrdivmaster "
ls_sql += " 	where yo.coop_id = yod.coop_id "
ls_sql += " 	and yo.payoutslip_no = yod.payoutslip_no "
ls_sql += " 	and yod.coop_id = yum.coop_id "
ls_sql += " 	and yod.methpaytype_code = yum.methpaytype_code  "
ls_sql += " 	and yo.coop_id = yrbgmaster.coop_id "
ls_sql += " 	and yo.member_no = yrbgmaster.member_no "
ls_sql += " 	and yo.div_year = yrbgmaster.div_year "
ls_sql += " 	and yo.coop_id = yrdivmaster.coop_id "
ls_sql	+= "	and yo.member_no = yrdivmaster.member_no "
ls_sql	+= "	and yo.div_year = yrdivmaster.div_year "
ls_sql += " 	and yo.coop_id = '" + is_coopid + "' "
ls_sql += " 	and substr( yo.div_year , 1 , 4 ) = '" + ls_divyearls + "' "
ls_sql += " 	and yum.paynxtdiv_flag = 1 "
ls_sql += ls_sqlselect

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm_old (70.4.3)" 
	ithw_exception.text 	+= "~r~nไม่สามารถทำรายการปันผลค้างจ่ายได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

/*
อัพเดทยอดปันผลเฉลี่ยคืน
(ได้ปันผลปีปัจจุบัน)
*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGPOSTSTMOLD 50.4.4)"
	throw ithw_exception
end if

ls_sql = " update yrdivmaster "
ls_sql += " set ( yrdivmaster.div_amt , yrdivmaster.avg_amt , yrdivmaster.etc_amt ) = "
ls_sql += " ( "
ls_sql += " 	select ( nvl( yrdivmaster.div_amt , 0 ) + nvl( yds.div_payment , 0 ) ) as div_amt , ( nvl( yrdivmaster.avg_amt , 0 ) + nvl( yds.avg_payment , 0 ) ) as avg_amt , ( nvl( yrdivmaster.etc_amt , 0 ) + nvl( yds.etc_payment , 0 ) ) as etc_amt "
ls_sql += " 	from yrdivstatement yds "
ls_sql += " 	where yds.coop_id = yrdivmaster.coop_id "
ls_sql += " 	and yds.member_no = yrdivmaster.member_no "
ls_sql += " 	and yds.div_year = yrdivmaster.div_year "
ls_sql += " 	and yds.coop_id = '" + is_coopcontrol + "' "
ls_sql += " 	and yds.div_year = '" + ls_divyear + "' "
ls_sql += " 	and yds.divitemtype_code = 'IAR' "
ls_sql += " 	) "
ls_sql += " where yrdivmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and yrdivmaster.div_year = '" + ls_divyear + "' "
ls_sql	+= " and exists ( select 1 "
ls_sql	+= " 				from yrdivstatement ys , yrbgmaster "
ls_sql	+= " 				where ys.coop_id = yrbgmaster.coop_id "
ls_sql	+= " 				and ys.member_no = yrbgmaster.member_no "
ls_sql	+= " 				and ys.div_year = yrbgmaster.div_year "
ls_sql	+= " 				and yrbgmaster.coop_id = yrdivmaster.coop_id "
ls_sql	+= " 				and yrbgmaster.member_no = yrdivmaster.member_no "
ls_sql	+= " 				and yrbgmaster.div_year = yrdivmaster.div_year "
ls_sql	+= " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql	+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql	+= " 				and ys.divitemtype_code = 'IAR' "
ls_sql	+= ls_sqlselect
ls_sql	+= " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_divavg_stm_old (70.4.4)" 
	ithw_exception.text 	+= "~r~nไม่สามารถทำรายการปันผลค้างจ่ายได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

return 1
end function

protected function integer of_post_methpay (n_ds ads_proc) throws Exception;string ls_sql , ls_sqlselect
string ls_divyear
string ls_memcoop , ls_memno , ls_prvmemno , ls_paytype, ls_methpay
integer li_seqno , li_prgindex
long ll_index , ll_count, ll_find
dec{2} ldc_divamt , ldc_avgamt , ldc_etcamt
dec{2} ldc_divbal , ldc_avgbal , ldc_etcbal , ldc_itembal , ldc_proc
dec{7} ldc_paypercent , ldc_payamt
boolean lb_err = false
n_ds lds_methpay

li_prgindex		= 0

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_max = 6

lds_methpay = create n_ds
lds_methpay.dataobject = "d_divsrv_prc_info_yrmeth"
lds_methpay.settransobject( itr_sqlca )

ids_cutorder = create n_ds
ids_cutorder.dataobject = "d_divsrv_prc_info_methorder_cut"
ids_cutorder.settransobject( itr_sqlca )
ids_cutorder.retrieve( is_coopcontrol )

ls_divyear		= ads_proc.object.div_year[1]

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_methpay , " and yrbgmaster.coop_id = '" + is_coopcontrol + "' " )
	inv_procsrv.of_set_sqldw_column( lds_methpay , " and yrbgmaster.div_year = '" + ls_divyear + "' " )
	inv_procsrv.of_set_sqldw( lds_methpay )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*1Start สร้างใบคำหักปันผล-เฉลี่ยคืน ชำระหนี้*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETH 50.1)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลวิธีจ่ายปันผล(สมาชิกที่หักชำระหนี้) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex

ls_sql = " insert into yrdivmethpay "
ls_sql += " ( coop_id , member_no , div_year , seq_no , "
ls_sql += " methpaytype_code , "
ls_sql += " moneytype_code , "
ls_sql += " expense_bank , div_amt , avg_amt , etc_amt , prin_amt , int_amt , "
ls_sql	+= " expense_amt , "
ls_sql	+= " bizzcoop_id , bizztype_code , bizzaccount_no , "
ls_sql += " methpay_status , paytype_code , pay_amt , pay_percent , payseq_no ) "
ls_sql += " select lp.memcoop_id , lp.member_no , '" + ls_divyear + "' , 0 as seq_no , "
ls_sql += " 'LON' as methpaytype_code , "
ls_sql += " 'TRN' as moneytype_code , "
ls_sql += " '' as expense_bank , 0 , 0 , 0 , lp.prin_payment as prin_amt , lp.int_payment as in_amt , "
ls_sql	+= " ( lp.item_payment ) as expense_amt , "
ls_sql += " lp.coop_id , lp.loantype_code , lp.loancontract_no , "
ls_sql += " 0 as methpay_status, 'VAL' as paytype_code , ( lp.item_payment ) as pay_amt , 0 as pay_percent , 0 as payseq_no "
ls_sql += " from lnpreparepay lp , yrbgmaster "
ls_sql += " where lp.memcoop_id = yrbgmaster.coop_id "
ls_sql += " and lp.member_No = yrbgmaster.member_no "
ls_sql += " and lp.bizz_period = yrbgmaster.div_year "
ls_sql	+= " and lp.preparetype_code = 'DIV' "
ls_sql += " and lp.prepare_status = 8 "
ls_sql += " and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and yrbgmaster.div_year = '" + ls_divyear + "' "
//ls_sql	+= " and lp.bizz_period = '" + ls_divyear + "' "
ls_sql	+= ls_sqlselect

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_methpay (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้ (สมาชิกที่หักชำระหนี้)"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*1End สร้างใบคำหักปันผล-เฉลี่ยคืน ชำระหนี้*/


ll_count	= lds_methpay.retrieve()
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = ll_count
inv_progress.istr_progress.subprogress_text = "อัพเดทรายการหักวิธีจ่ายปันผล-เฉลี่ยคืน รอสักครู่..."

for ll_index = 1 to ll_count

	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (POSTMETH 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	ls_memcoop		= lds_methpay.object.coop_id[ll_index]
	ls_memno			= lds_methpay.object.member_no[ll_index]
	ls_methpay			= lds_methpay.object.methpaytype_code[ll_index]
	ls_paytype			= lds_methpay.object.paytype_code[ll_index]
	li_seqno				= lds_methpay.object.seq_no[ll_index]
	
	if ll_index = 1 or ls_memno <> ls_prvmemno then
		ls_prvmemno		= ls_memno
		ldc_divbal			= lds_methpay.object.div_balamt[ll_index]
		ldc_avgbal			= lds_methpay.object.avg_balamt[ll_index]
		ldc_etcbal			= lds_methpay.object.etc_balamt[ll_index]
		ldc_itembal			= lds_methpay.object.item_balamt[ll_index]
	end if
	
	ldc_paypercent 	= lds_methpay.object.pay_percent[ll_index]
	ldc_payamt			= lds_methpay.object.pay_amt[ll_index]
	
	ll_find			= ids_cutorder.find( "methpaytype_code = '"+ls_methpay+"'", 1, ids_cutorder.rowcount() )
	
	if ll_find > 0 then
		this.of_cal_methpay_order( ls_methpay, ls_paytype , ldc_paypercent , ldc_payamt , ldc_divamt , ldc_divbal , ldc_avgamt , ldc_avgbal , ldc_etcamt , ldc_etcbal , ldc_proc , ldc_itembal )
	else
		this.of_cal_methpay( ls_paytype , ldc_paypercent , ldc_payamt , ldc_divamt , ldc_divbal , ldc_avgamt , ldc_avgbal , ldc_etcamt , ldc_etcbal , ldc_proc , ldc_itembal )
	end if
	
	update yrdivmethpay
	set div_amt = :ldc_divamt,
	avg_amt = :ldc_avgamt,
	etc_amt = :ldc_etcamt,
	expense_amt = :ldc_proc
	where coop_id = :is_coopcontrol
	and member_no = :ls_memno
	and div_year = :ls_divyear
	and seq_no = :li_seqno
	using itr_sqlca;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_methpay (70.5)" 
		ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทรายการหักวิธีจ่ายปันผล-เฉลี่ยคืนได้"
		ithw_exception.text 	+= "~r~nเลขที่สมาชิก : " + ls_memno
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		if lb_err then Goto objdestroy
	end if
	
	ldc_divamt	= 0
	ldc_avgamt	= 0
	ldc_etcamt	= 0
	
	inv_progress.istr_progress.subprogress_index	= ll_index
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " เลขที่สมาชิก : " + ls_memno

next

///*ปรับประเภทการชำระกรณีไม่ถึงตามที่กำหนดให้เปลี่ยนเป็นอีกประเภท*/
//yield()
//if inv_progress.of_is_stop() then
//	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETH 50.2)"
//	throw ithw_exception
//end if
//
//ls_sql = " update yrdivmethpay ydm "
//ls_sql += " set ( methpaytype_code , moneytype_code ) = "
//ls_sql += " 	( 	select yudmp.methpaytype_code , yudm.join_moneytype_code "
//ls_sql += " 		from yrucfdfmethpay yudmp , yrucfmethpay yudm "
//ls_sql += " 		where yudmp.coop_id = yudm.coop_id "
//ls_sql += " 		and yudmp.methpaytype_code = yudm.methpaytype_code "
//ls_sql += " 		and yudmp.coop_id = '" + is_coopcontrol + "' "
//ls_sql += " 		and yudmp.payreplace_flag = 1 "
//ls_sql += " 		and ydm.expense_amt between yudmp.start_value and yudmp.end_value "
//ls_sql += " 	) "
//ls_sql += " where ydm.coop_id = '" + is_coopcontrol + "' "
//ls_sql += " and ydm.div_year = '"+ ls_divyear +"' "
//ls_sql	+= " and ydm.methpaytype_code <> 'LON' "
//ls_sql += " and exists( 	select 1 from yrucfdfmethpay yudm "
//ls_sql += " 				where ydm.coop_id = '" + is_coopcontrol + "' "
//ls_sql += " 				and ydm.methpaytype_code <> yudm.methpaytype_code "
//ls_sql += " 				and ydm.expense_amt between yudm.start_value and yudm.end_value "
//ls_sql += " 				and yudm.payreplace_flag = 1 "
//ls_sql += " 				) "
//ls_sql += " and exists( select 1 from yrbgmaster "
//ls_sql += " 				where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
//ls_sql += " 				and yrbgmaster.div_year = '"+ ls_divyear +"' "
//ls_sql += " 				and yrbgmaster.coop_id = ydm.coop_id "
//ls_sql += " 				and yrbgmaster.member_no = ydm.member_no "
//ls_sql += " 				and yrbgmaster.div_year = ydm.div_year "
//ls_sql += ls_sqlselect
//ls_sql += " 			) "
//
//execute immediate :ls_sql using itr_sqlca;
//
//if itr_sqlca.sqlcode <> 0 then
//	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_post_methpay (70.4)" 
//	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทใบคำขอข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้"
//	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
//	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
//	if lb_err then Goto objdestroy
//end if

objdestroy:
if isvalid(lds_methpay) then destroy lds_methpay
if isvalid(ids_cutorder) then destroy ids_cutorder

if lb_err then
	ithw_exception.text = "n_cst_divsr_process.of_post_methpay() " + ithw_exception.text 
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_avg_con (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception;string ls_loantype , ls_loantypeall
string ls_coopid , ls_divyear , ls_memno , ls_prvmemno
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend
string ls_rdtyp , ls_satangtyp
string ls_nxtmemno
integer li_flag
integer li_index , li_row , li_count
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count, ll_estorder
dec ldc_intacc , ldc_avgamt , ldc_avgrate
dec ldc_sumavg , ldc_sumvalue
dec ldc_intaccum
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_mem

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_mem = create n_ds
lds_int_mem.dataobject = "d_divsrv_prc_info_yrlon_con"
lds_int_mem.settransobject( itr_sqlca )

ls_coopid			= ads_proc.object.coop_id[1]
ls_divyear			= ads_proc.object.div_year[1]
ldc_avgrate			= ads_proc.object.avg_rate[1]
ldtm_accstart 		= ads_proc.object.sacc_date[1]
ldtm_accend		= ads_proc.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
try
	inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "roundavg" )
	ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
catch( Exception lthw_rdmn )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGCON 0.0)"
	ithw_exception.text	+= lthw_rdmn.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

li_count	= ads_cal_lntype.rowcount()

for li_row = 1 to li_count
	li_flag = ads_cal_lntype.object.calavg_flag[ li_row ]
	if ( li_flag = 1 ) then
		li_index ++
		ls_loantype 		= ads_cal_lntype.object.loantype_code[ li_row ]
		ls_loantypeall	+= "'" + ls_loantype + "',"
	end if
next

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' " )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and yrbglonmaster.refrainavg_flag = 0 " )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' and yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year and yrbgmaster.refrainavg_flag = 0 " + ls_sqlselect + " ) " )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and exists ( select 1 from lncontmaster where lncontmaster.coop_id = yrbglonmaster.coop_id and lncontmaster.loancontract_no = yrbglonmaster.loancontract_no and lncontmaster.loantype_code in (" + ls_loantypeall + ") ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGCON 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ll_count	= lds_int_mem.retrieve()

lds_int_mem.setsort( " yrbglonmaster.coop_id , yrbglonmaster.member_no , yrbglonmaster.concoop_id , yrbglonmaster.loancontract_no " )
lds_int_mem.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGCON 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

for ll_index = 1 to ll_count
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGCON 50.2)"
		lb_err		= true ; Goto objdestroy
	end if
	
	ls_coopid		= lds_int_mem.object.coop_id[ ll_index ]
	ls_memno		= lds_int_mem.object.member_no[ ll_index ]
	ldc_intaccum	= lds_int_mem.object.interest_accum[ ll_index ]
	
	ldc_avgamt		= ldc_intaccum * ldc_avgrate
	
	if ls_rdtyp = "1" then ldc_avgamt = inv_rdmoneysrv.of_round_money( ldc_avgamt )
	ldc_sumavg		= ldc_sumavg + ldc_avgamt
	
	if ll_index = ll_count then 
		ls_nxtmemno	= "End"
	else
		ls_nxtmemno	= lds_int_mem.object.member_no[ ll_index+1 ]
	end if
	
	if ( ls_nxtmemno <> ls_memno ) then
		
		if ls_rdtyp = "1" then ldc_avgamt = inv_rdmoneysrv.of_round_money( ldc_sumavg )
		
		update yrdivmaster
		set avg_amt 		= :ldc_sumavg , 
		avg_balamt			= :ldc_sumavg
		where coop_id= :ls_coopid
		and member_no	= :ls_memno
		and div_year		= :ls_divyear
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGCON 70.1)"
			ithw_exception.text	+= "~r~nนำเข้าข้อมูลเฉลี่ยคืน"
			ithw_exception.text	+= "~r~nเลขสมาชิก : " + ls_memno
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
			lb_err = true ; if lb_err then Goto objdestroy
		end if
		
		inv_progress.istr_progress.subprogress_index	= ll_index
		inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมวลเฉลี่ยคืน : " + ls_memno + " ยอดเฉลี่ยคืน --> " + string( ldc_avgamt , '#,##0.00' ) + " บาท"
		
		ldc_sumavg		= 0
	end if
	
next

objdestroy:
if isvalid(lds_int_mem) then destroy lds_int_mem

this.of_setsrvrdmoney( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_avg_con()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_avg_mem (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception;string ls_loantype , ls_loantypeall
string ls_coopid , ls_divyear , ls_memno , ls_prvmemno
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend
string ls_rdtyp , ls_satangtyp
string ls_nxtmemno
integer li_flag
integer li_index , li_row , li_count
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count, ll_estorder
dec ldc_intacc , ldc_avgamt , ldc_avgrate
dec ldc_sumavg , ldc_sumvalue
dec ldc_intaccum
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_mem

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_mem = create n_ds
lds_int_mem.dataobject = "d_divsrv_prc_info_yrlon_mem"
lds_int_mem.settransobject( itr_sqlca )

ls_coopid				= ads_proc.object.coop_id[1]
ls_divyear			= ads_proc.object.div_year[1]
ldc_avgrate			= ads_proc.object.avg_rate[1]
ldtm_accstart 		= ads_proc.object.sacc_date[1]
ldtm_accend		= ads_proc.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
try
	inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "roundavg" )
	ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
catch( Exception lthw_rdmn )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGMEM 0.0)"
	ithw_exception.text	+= lthw_rdmn.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

li_count	= ads_cal_lntype.rowcount()

for li_row = 1 to li_count
	li_flag = ads_cal_lntype.object.calavg_flag[ li_row ]
	if ( li_flag = 1 ) then
		li_index ++
		ls_loantype 		= ads_cal_lntype.object.loantype_code[ li_row ]
		ls_loantypeall	+= "'" + ls_loantype + "',"
	end if
next

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' " )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' and yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year and yrbgmaster.refrainavg_flag = 0 " + ls_sqlselect + " ) " )
	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and exists ( select 1 from lncontmaster where lncontmaster.coop_id = yrbglonmaster.coop_id and lncontmaster.loancontract_no = yrbglonmaster.loancontract_no and lncontmaster.loantype_code in (" + ls_loantypeall + ") ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGMEM 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ll_count	= lds_int_mem.retrieve()

lds_int_mem.setsort( " yrbglonmaster.coop_id , yrbglonmaster.member_no " )
lds_int_mem.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGMEM 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

for ll_index = 1 to ll_count
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGMEM 50.2)"
		lb_err		= true ; Goto objdestroy
	end if
	
	ls_coopid			= lds_int_mem.object.coop_id[ ll_index ]
	ls_memno		= lds_int_mem.object.member_no[ ll_index ]
	ldc_intaccum	= lds_int_mem.object.interest_accum[ ll_index ]
	
	ldc_avgamt		= ldc_intaccum * ldc_avgrate
	
	ldc_avgamt		= inv_rdmoneysrv.of_round_money( ldc_avgamt )
	if ll_index = ll_count then 
		ls_nxtmemno	= "End"
	else
		ls_nxtmemno	= lds_int_mem.object.member_no[ ll_index+1 ]
	end if
	
	if ( ls_nxtmemno <> ls_memno ) then

		update yrdivmaster
		set avg_amt 		= :ldc_avgamt , 
		avg_balamt			= :ldc_avgamt
		where coop_id	= :ls_coopid
		and member_no	= :ls_memno
		and div_year		= :ls_divyear
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGMEM 70.1)"
			ithw_exception.text	+= "~r~nนำเข้าข้อมูลเฉลี่ยคืน"
			ithw_exception.text	+= "~r~nเลขสมาชิก : " + ls_memno
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
			lb_err = true ; if lb_err then Goto objdestroy
		end if
		
		inv_progress.istr_progress.subprogress_index	= ll_index
		inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมวลเฉลี่ยคืน : " + ls_memno + " ยอดเฉลี่ยคืน --> " + string( ldc_avgamt , '#,##0.00' ) + " บาท"
		
		ldc_avgamt		= 0
	end if
	
next

objdestroy:
if isvalid(lds_int_mem) then destroy lds_int_mem

this.of_setsrvrdmoney( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_avg_mem()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_avg_stm (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception;

return 1
end function

protected function integer of_prc_avg_typ (n_ds ads_constant, n_ds ads_proc, n_ds ads_cal_lntype) throws Exception;string ls_loantype , ls_loantypeall
string ls_divyear , ls_memno , ls_prvmemno
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend , ls_avgtyp , ls_memset
string ls_rdtyp , ls_satangtyp
string ls_nxtmemno
integer li_flag
integer li_index , li_row , li_count
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count, ll_estorder
dec ldc_intacc , ldc_avgamt , ldc_avgrate
dec ldc_sumavg , ldc_sumvalue
dec ldc_intaccum
datetime ldtm_accstart , ldtm_accend
boolean lb_err

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"
inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max = 4

ls_memset			= ads_constant.object.memset_code[1]
ls_avgtyp				= ads_constant.object.avgtype_code[1]

ls_divyear			= ads_proc.object.div_year[1]
ldc_avgrate			= ads_proc.object.avg_rate[1]
ldtm_accstart 		= ads_proc.object.sacc_date[1]
ldtm_accend		= ads_proc.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
try
	inv_rdmoneysrv.of_set_constant( is_coopcontrol , "DIV" , "roundavg" )
	ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
	ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
	li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
	li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )
catch( Exception lthw_rdmn )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGTYP 0.0)"
	ithw_exception.text	+= lthw_rdmn.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

li_count	= ads_cal_lntype.rowcount()

delete from yrcfrateln where coop_id = :is_coopcontrol and div_year = :ls_divyear and procavg_type = 'R' using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGTYP 0.01)"
	ithw_exception.text 	+= "~r~n<br>ไม่สามารถลบข้อมูลอัตราเฉลี่ยคืนประมาณการได้"
	ithw_exception.text	+= "~r~n<br>" + string( itr_sqlca.sqlcode )
	ithw_exception.text	+= "~r~n<br>" + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

for li_row = 1 to li_count
	ls_loantype 	= ads_cal_lntype.object.loantype_code[ li_row ]
	li_flag 		= ads_cal_lntype.object.calavg_flag[ li_row ]
	ldc_avgrate	= ads_cal_lntype.object.avgpercent_rate[ li_row ]
	
	if ( li_flag = 1 ) then
		ls_loantypeall	+= "'" + ls_loantype + "',"
	end if
	
	if ls_avgtyp = "TYP" then
		
		insert into yrcfrateln
		( coop_id , 				div_year , 		procavg_type , 	loantype_code , 	calavg_flag , 	avgpercent_rate )
		values
		( :is_coopcontrol , 	:ls_divyear , 	'R' , 				:ls_loantype , 		:li_flag , 			:ldc_avgrate )
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGTYP 0.02)"
			ithw_exception.text 	+= "~r~n<br>ไม่สามารถนำเข้าข้อมูลอัตราเฉลี่ยคืนได้"
			ithw_exception.text 	+= "~r~n<br>ประเภทหนี้ : " + ls_loantype
			ithw_exception.text	+= "~r~n<br>" + string( itr_sqlca.sqlcode )
			ithw_exception.text	+= "~r~n<br>" + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
			lb_err = true ; if lb_err then Goto objdestroy
		end if
		
	end if
	
next

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
//	inv_procsrv.of_set_sqldw_column( lds_int_mem, " where exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '"+ ls_divyear +"' and yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year " + ls_sqlselect + " ) " )
//	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and exists ( select 1 from lncontmaster where lncontmaster.coop_id = yrbglonmaster.coop_id and lncontmaster.loancontract_no = yrbglonmaster.loancontract_no and lncontmaster.loantype_code in (" + ls_loantypeall + ") ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGTYP 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*คำนวณเฉลี่ยคืน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGTYP 50.1)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "คำนวณ( เฉลี่ยคืนตามประเภทหนี้ ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " update yrbglonmaster ybl "
ls_sql	+= " set ybl.avg_amt = "
ls_sql	+= " 	( ybl.interest_accum * "
ls_sql	+= " 		(	select yrcfrateln.avgpercent_rate "
ls_sql	+= " 			from lncontmaster, "
ls_sql	+= " 			yrcfrateln "
ls_sql	+= " 			where ( ybl.coop_id = lncontmaster.coop_id ) "
ls_sql	+= " 			and ( ybl.loancontract_no = lncontmaster.loancontract_no ) "
ls_sql	+= " 			and lncontmaster.coop_id = yrcfrateln.coop_id "
ls_sql	+= " 			and lncontmaster.loantype_code = yrcfrateln.loantype_code "
ls_sql	+= " 			and yrcfrateln.coop_id = '" + is_coopcontrol + "' "
ls_sql	+= " 			and yrcfrateln.div_year = '" + ls_divyear + "' "
ls_sql	+= " 			and yrcfrateln.procavg_type = 'R' "
ls_sql	+= " 			and yrcfrateln.calavg_flag = 1 "
ls_sql	+= " 		) ) "
ls_sql	+= " where ybl.coop_id = '" + is_coopcontrol + "' "
ls_sql	+= " and ybl.div_year = '" + ls_divyear + "' "
ls_sql	+= " and ybl.refrain_flag = 0 "
ls_sql	+= " and exists( 	select 1 from yrbgmaster "
ls_sql	+= " 				where yrbgmaster.coop_id = ybl.coop_id "
ls_sql	+= " 				and yrbgmaster.member_no = ybl.member_no "
ls_sql	+= " 				and yrbgmaster.div_year = ybl.div_year "
ls_sql += "				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += "				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += "				and yrbgmaster.refrainavg_flag = 0 "
ls_sql	+= ls_sqlselect
ls_sql	+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด AVGTYP (70.1) "
	ithw_exception.text 	+= "~r~nไม่สามารถคำนวณ( เฉลี่ยคืนตามประเภทหนี้ ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*ปัดเศษเฉลีย่คืน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGTYP 50.2)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "ปัดเศษ( เฉลี่ยคืนตามประเภทหนี้ ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " update yrbglonmaster ybl "
if ls_rdtyp = "1" then
	/*1 : ปัดแล้วรวม*/
	ls_sql		+= " set ybl.ravg_amt = ftcm_RoundMoney( ybl.avg_amt , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " set ybl.ravg_amt = ybl.avg_amt "
end if
ls_sql		+= " where ybl.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and ybl.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = ybl.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = ybl.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = ybl.div_year "
ls_sql		+= " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql 		+= "				and yrbgmaster.refrainavg_flag = 0 "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด AVGTYP (70.2) "
	ithw_exception.text 	+= "~r~nไม่สามารถปัดเศษ( เฉลี่ยคืนตามประเภทหนี้ ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy


/*อัพเดทลง Yrdivmaster กรณีมีใน Yrdivmaster*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGTYP 50.3)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "อัพเดทลงทะเบียนเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " update yrdivmaster "
ls_sql		+= " set avg_amt = nvl( ( select "
if ls_rdtyp = "1" then
	/*1 : ปัดแล้วรวม*/
	ls_sql		+= " sum( ybl.ravg_amt  ) as div_amt "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " ftcm_RoundMoney( sum( ybl.ravg_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as div_amt "
end if
ls_sql		+= " from yrbglonmaster ybl "
ls_sql		+= " where ybl.coop_id = yrdivmaster.coop_id "
ls_sql		+= " and ybl.member_no = yrdivmaster.member_no "
ls_sql		+= " and ybl.div_year = yrdivmaster.div_year "
ls_sql		+= " group by ybl.coop_id , ybl.member_no , ybl.div_year ) , 0 ) "
ls_sql		+= " where yrdivmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrdivmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = yrdivmaster.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = yrdivmaster.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = yrdivmaster.div_year "
ls_sql		+= " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql 		+= "				and yrbgmaster.refrainavg_flag = 0 "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด AVGTYP (70.3) "
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทลงทะเบียนเฉลี่ยคืน ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*นำเข้า Yrdivmaster กรณียังไม่มีใน Yrdivmaster*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGTYP 50.4)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "นำเข้าลงทะเบียนเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " insert into yrdivmaster "
ls_sql		+= " ( coop_id , member_no , div_year , avg_amt ) "
ls_sql		+= " select yrbglonmaster.coop_id , yrbglonmaster.member_no , yrbglonmaster.div_year , "
if ls_rdtyp = "1" then
	/*1 : ปัดแล้วรวม*/
	ls_sql		+= " sum( yrbglonmaster.ravg_amt  ) as div_amt "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " ftcm_RoundMoney( sum( yrbglonmaster.ravg_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as div_amt "
end if
ls_sql		+= " from yrbglonmaster "
ls_sql		+= " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrbglonmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = yrbglonmaster.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = yrbglonmaster.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = yrbglonmaster.div_year "
ls_sql		+= " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql 		+= "				and yrbgmaster.refrainavg_flag = 0 "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "
ls_sql		+= " and not exists(	select 1 from yrdivmaster "
ls_sql		+= " 					where yrdivmaster.coop_id = yrbglonmaster.coop_id "
ls_sql		+= " 					and yrdivmaster.member_no = yrbglonmaster.member_no "
ls_sql		+= " 					and yrdivmaster.div_year = yrbglonmaster.div_year "
ls_sql		+= " 					and yrdivmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 					and yrdivmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 				) "
ls_sql		+= " group by yrbglonmaster.coop_id , yrbglonmaster.member_no , yrbglonmaster.div_year "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด AVGTYP (70.4) "
	ithw_exception.text 	+= "~r~nไม่สามารถนำเข้าลงทะเบียนเฉลี่ยคืน ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (AVGTYP 50.1)"
	lb_err		= true ; Goto objdestroy
end if

ls_sql		= " update yrdivmaster "
ls_sql		+= " set ( yrdivmaster.avg_amt , yrdivmaster.avg_balamt ) = "
ls_sql		+= " ( select nvl( sum( estavg.sum_avg ) , 0 ) as sum_avg , nvl( sum( estavg.sum_avg ) , 0 ) as sum_balavg "
ls_sql		+= " from( "
ls_sql		+= " 	select eavg.coop_id , eavg.member_no , "
if ls_rdtyp = "1" then
	ls_sql		+= " 	sum( eavg.sum_avg ) as sum_avg "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " 	ftcm_RoundMoney ( sum( eavg.sum_avg ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
end if
ls_sql		+= " 	from( "
ls_sql		+= " 		select yrbglonmaster.coop_id, "
ls_sql		+= " 		yrbglonmaster.member_no, "
ls_sql		+= " 		lnloantype.loantype_code, "
ls_sql		+= " 		yrbglonmaster.loancontract_no, "
ls_sql		+= " 		yrcfrateln.avgpercent_rate, "
if ls_rdtyp = "1" then
	ls_sql		+= " 		ftcm_RoundMoney ( yrcfrateln.avgpercent_rate * ( sum( yrbglonmaster.interest_accum ) ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " 		( yrcfrateln.avgpercent_rate * ( sum( yrbglonmaster.interest_accum ) ) ) as sum_avg "
end if
ls_sql		+= " 		from lnloantype , "
ls_sql		+= " 		lncontmaster, "
ls_sql		+= " 		yrbglonmaster , "
ls_sql		+= " 		yrcfrateln "
ls_sql		+= " 		where ( lnloantype.coop_id = lncontmaster.coop_id ) "
ls_sql		+= " 		and ( lnloantype.loantype_code = lncontmaster.loantype_code ) "
ls_sql		+= " 		and ( lnloantype.coop_id = yrcfrateln.coop_id ) "
ls_sql		+= " 		and ( lnloantype.loantype_code = yrcfrateln.loantype_code ) "
ls_sql		+= " 		and ( yrbglonmaster.coop_id = lncontmaster.coop_id ) "
ls_sql		+= " 		and ( yrbglonmaster.loancontract_no = lncontmaster.loancontract_no ) "
ls_sql		+= " 		and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " 		and yrbglonmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 		and yrcfrateln.div_year = '" + ls_divyear + "' "
ls_sql		+= " 		and yrcfrateln.procavg_type = 'R' "
ls_sql		+= " 		and yrcfrateln.calavg_flag = 1 "
ls_sql		+= "		and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '"+ ls_divyear +"' and yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year " + ls_sqlselect + " ) "
ls_sql		+= " 		group by yrbglonmaster.coop_id, "
ls_sql		+= " 		yrbglonmaster.member_no , lnloantype.loantype_code , yrbglonmaster.loancontract_no , yrcfrateln.avgpercent_rate "
ls_sql		+= " 	) eavg "
ls_sql		+= " 	group by eavg.coop_id , eavg.member_no "
ls_sql		+= " ) estavg "
ls_sql		+= " where yrdivmaster.coop_id = estavg.coop_id "
ls_sql		+= " and yrdivmaster.member_no = estavg.member_no "
ls_sql		+= " ) "
ls_sql		+= " where exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '"+ ls_divyear +"' and yrbgmaster.coop_id = yrdivmaster.coop_id and yrbgmaster.member_no = yrdivmaster.member_no and yrbgmaster.div_year = yrdivmaster.div_year " + ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (AVGTYP 70.1)"
	ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
	ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
	ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
	ithw_exception.text	+= "~r~n" + ls_sql
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
*/

objdestroy:

this.of_setsrvrdmoney( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_avg_typ()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_chk_lock (n_ds ads_proc) throws Exception;string ls_coopid , ls_divyear
integer li_lockflag

ls_coopid	= ads_proc.object.coop_id[1]
ls_divyear 	= ads_proc.object.div_year[1]

select lockproc_flag
into :li_lockflag
from yrcfrate
where coop_id = :ls_coopid
and div_year = :ls_divyear
using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then li_lockflag = 0

if li_lockflag = 1 then
	ithw_exception.text	= "~r~nห้ามประมวลปันผล-เฉลี่ยคืน"
	ithw_exception.text	+= "~r~nปีปันผล-เฉลี่ยคืน : " + ls_divyear
	ithw_exception.text	+= "~r~nถ้าต้องการประมวลกรุณาปลดล็อคการคำนวณปันผล-เฉลี่ยคืน"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_div_day (n_ds ads_constant, n_ds ads_proc) throws Exception;string ls_coopid , ls_prvbranchid , ls_rdtyp , ls_satangtyp
string ls_divyear , ls_memno , ls_prvmemno , ls_nxtmemno , ls_shritemtypecode
string ls_syntax , ls_sql , ls_sqlselect , ls_rdtype , ls_divdaycal , ls_divbfcaltyp
integer li_sumaccday , li_calday , li_seqno
integer li_trnposamt , li_rdposamt , li_divdayflg
long ll_index , ll_count , ll_shrrow
dec ldc_divrate
dec ldc_divbfamt , ldc_divamt , ldc_sumdiv , ldc_rdivamt
dec ldc_sharestkamt , ldc_unitshare
datetime ldtm_accstart , ldtm_accend 
datetime ldtm_share , ldtm_nextshare
boolean lb_err
n_ds lds_yrshr_div

inv_progress.istr_progress.subprogress_text = "กำลังลบข้อมูลปันผล"

lds_yrshr_div = create n_ds
lds_yrshr_div.dataobject = "d_divsrv_prc_info_yrshr_day"
lds_yrshr_div.settransobject( itr_sqlca )

ls_divbfcaltyp		= ads_constant.object.div_bfcaltype_code[1]
ls_divdaycal			= ads_constant.object.div_daycaltype_code[1]
li_divdayflg			= ads_constant.object.div_dayfix_flag[1]

ls_divyear			= ads_proc.object.div_year[1]
ls_coopid			= ads_proc.object.coop_id[1]
ldc_divrate			= ads_proc.object.div_rate[1]
ldtm_accstart 		= ads_proc.object.sacc_date[1]
ldtm_accend		= ads_proc.object.eacc_date[1]

// set ค่าการปัดเศษ
inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "rounddiv" )
ls_rdtyp				= inv_rdmoneysrv.of_get_roundtype(  )
li_rdposamt			= inv_rdmoneysrv.of_get_round_pos(  )
ls_satangtyp			= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt			= inv_rdmoneysrv.of_get_truncate_pos(  )

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_yrshr_div, " and yrbgshrstatement.coop_id = '" + is_coopcontrol + "' " )
	inv_procsrv.of_set_sqldw_column( lds_yrshr_div, " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbgshrstatement.coop_id and yrbgmaster.member_no = yrbgshrstatement.member_no and yrbgmaster.div_year = yrbgshrstatement.div_year " )
	inv_procsrv.of_set_sqldw_column( lds_yrshr_div, " and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '" + ls_divyear + "' and yrbgmaster.refraindiv_flag = 0 " + ls_sqlselect + " ) " )
//	inv_procsrv.of_set_sqldw_column( lds_yrshr_div, " and yrbgmaster.coop_id = '" + ls_coopid + "' " )	// ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_yrshr_div, " and yrbgshrstatement.share_date between to_date('" + string( ldtm_accstart , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') and to_date('" + string( ldtm_accend , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVSTM 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*
//ลบข้อมูล
ls_sql	= " delete from yrdivmaster " 
ls_sql += " where exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrbgmaster.coop_id = yrdivmaster.coop_id and yrdivmaster.member_no = yrbgmaster.member_no "
ls_sql += " and yrbgmaster.div_year = yrdivmaster.div_year " + ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_div_stm (0.01) "
	ithw_exception.text 	+= "~r~nไม่สามารถลบข้อมูลปันผล-เฉลี่ยคืนได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
*/

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลการทำรายการหุ้น"
ll_count	= lds_yrshr_div.retrieve()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVSTM 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

inv_progress.istr_progress.subprogress_text = "ทำรายการปันผล"
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max	= ll_count

// จำนวนวันในรอบปีบัญชี
if li_divdayflg = 1 then
	li_sumaccday		= ads_constant.object.div_day_amt[1]
	if isnull( li_sumaccday ) or li_sumaccday < 1 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVSTM 30.0)"
		ithw_exception.text	+= "~r~nไม่พบจำนวนวันในปีบัญชี"
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ ค่าคงที่ระบบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
else
	li_sumaccday		= daysafter( date(ldtm_accstart) , date(ldtm_accend) )
	li_sumaccday++ // ต้องรวมวันแรกของปีบัญชีด้วย
end if

//// จัดข้อมูลแล้วคำนวณยอดสรุป
//lds_yrshr_div.groupcalc()
lds_yrshr_div.setsort( " coop_id , member_no , share_date , seq_no " )
lds_yrshr_div.sort()

//************* รอทำเป็น sql query อย่างเดียว
// จัดทำข้อมูลลงฐานข้อมูล
ll_count	= lds_yrshr_div.rowcount()

for ll_index = 1 to ll_count

	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTDIVSTM 50.2)"
		lb_err		= true ; Goto objdestroy
	end if

	ls_coopid			= lds_yrshr_div.object.coop_id[ ll_index ]
	ls_memno			= lds_yrshr_div.object.member_no[ ll_index ]
//	ldc_divamt		= lds_yrshr_div.object.cp_divgrp01[ ll_index ]
	li_seqno				= lds_yrshr_div.object.seq_no[ ll_index ]
	li_calday				= lds_yrshr_div.object.day[ll_index]
	ldc_sharestkamt	= lds_yrshr_div.object.sharecal_value[ll_index]
//	ldc_unitshare		= lds_yrshr_div.object.unitshare_value[ll_index]

//	ldc_divamt		= ( ldc_sharestkamt * ldc_unitshare ) * li_calday* ldc_divrate / li_sumaccday
	
	if li_seqno = 0 then	
		/*ยกมา*/
		choose case ls_divbfcaltyp
			
			case "RND"
				/*คำนวณแยกพร้อมปัดเศษ*/
				ldc_divamt	= ( ldc_sharestkamt * li_calday* ldc_divrate ) / li_sumaccday
				ldc_rdivamt		= ldc_divamt
				ldc_rdivamt 		= inv_rdmoneysrv.of_round_money( ldc_rdivamt )
				ldc_divbfamt	= ldc_rdivamt
				
			case "CAL"
				/*คำนวณไม่ปัดเศษ*/
				ldc_divamt	= ( ldc_sharestkamt * li_calday* ldc_divrate ) / li_sumaccday
				
				ldc_divbfamt	= ldc_divamt
				ldc_rdivamt		= ldc_divamt
				
			case else
				/*รายการเคลื่อนไหว*/
				/*"NOT"คำนวณเหมือนรายการเคลื่อนไหว*/
				choose case ls_divdaycal
					case "AMT" , "SEQ"
						ldc_divamt		= ( ldc_sharestkamt * li_calday* ldc_divrate ) / li_sumaccday
					case "AMS" , "SES"
						ldc_divamt		= ( ldc_sharestkamt * li_calday ) / li_sumaccday
				end choose
				
				ldc_rdivamt		= ldc_divamt
			
				if ls_rdtyp = "1" then ldc_rdivamt = inv_rdmoneysrv.of_round_money( ldc_rdivamt )
				
				ldc_sumdiv		+= ldc_rdivamt
		end choose
	else
		/*รายการเคลื่อนไหว*/
		choose case ls_divdaycal
			case "AMT" , "SEQ"
				ldc_divamt		= ( ldc_sharestkamt * li_calday* ldc_divrate ) / li_sumaccday
			case "AMS" , "SES"
				ldc_divamt		= ( ldc_sharestkamt * li_calday ) / li_sumaccday
		end choose
		
		ldc_rdivamt		= ldc_divamt
	
		if ls_rdtyp = "1" then ldc_rdivamt = inv_rdmoneysrv.of_round_money( ldc_rdivamt )
		
		ldc_sumdiv		+= ldc_rdivamt
		
	end if
	
	if ll_index = ll_count then 
		ls_nxtmemno	= "End"
	else
		ls_nxtmemno	= lds_yrshr_div.object.member_no[ ll_index+1 ]
	end if
	
	update yrbgshrstatement
	set div_amt 			= :ldc_divamt ,
	rdiv_amt				= :ldc_rdivamt
	where coop_id 	= :ls_coopid
	and member_no 	= :ls_memno
	and div_year 		= :ls_divyear
	and seq_no 			= :li_seqno
	using itr_sqlca ;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVSTM 70.0)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลปันผล"
		ithw_exception.text	+= "~r~nเลขสมาชิก : " + ls_memno
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
	//** ต้องมีวิธีหา divslip_no ขอปีนั้นก่อนยิงรายการ
	
//	if ( ls_prvmemno <> ls_memno ) then
	if ( ls_nxtmemno <> ls_memno ) then
		
		choose case ls_divdaycal
			case "AMS" , "SES"
				ldc_sumdiv		= ldc_divbfamt + ( ldc_sumdiv * ldc_divrate )
		end choose
		
		if ls_rdtyp = "2" then ldc_sumdiv = inv_rdmoneysrv.of_round_money( ldc_sumdiv )
		
		insert into yrdivmaster
		(	coop_id  , 	member_no ,		div_year , 		div_amt , 		div_balamt	)
		values
		(	:ls_coopid , 	:ls_memno , 		:ls_divyear , 	:ldc_sumdiv , 	:ldc_sumdiv )
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVSTM 70.1)"
			ithw_exception.text	+= "~r~nนำเข้าข้อมูลปันผล"
			ithw_exception.text	+= "~r~nเลขสมาชิก : " + ls_memno
			ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
			ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
			lb_err = true ; if lb_err then Goto objdestroy
		end if
		
		inv_progress.istr_progress.subprogress_index	= ll_index
		inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมวลปันผล : " + ls_memno + " ยอดปันผล --> " + string( ldc_divamt , '#,##0.00' ) + " บาท"
		
//		ls_prvmemno	= ls_memno
		ldc_sumdiv		= 0
		ldc_divbfamt	= 0
	end if
	
next

ls_rdtyp				= inv_rdmoneysrv.of_get_roundtype(  )
li_rdposamt			= inv_rdmoneysrv.of_get_round_pos(  )
ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt			= inv_rdmoneysrv.of_get_truncate_pos(  )

// นำเข้าข้อมูลปันผลปีเก่า
ls_sql	= " update yrdivmaster ym "
if ls_rdtyp = "1" /*ปัดแล้วรวม*/ then ls_sql	+= " set ym.div_amt = ym.div_amt + ( select sum( nvl( ys.rdiv_amt , 0 )) "
if ls_rdtyp = "2" /*รวมแล้วปัด*/then ls_sql	+= " set ym.div_amt = ym.div_amt + ( select ftcm_roundmoney( sum( nvl( ys.div_amt , 0 ) ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) "
ls_sql	+= " 											from yrbgshrstatementbf ys "
ls_sql	+= " 											where ys.coop_id = ym.coop_id "
ls_sql	+= " 											and ys.member_no = ym.member_no "
ls_sql	+= " 											and ys.div_year = ym.div_year "
ls_sql	+= " 											) "
ls_sql	+= " where ym.coop_id = '" + ls_coopid + "' "
ls_sql	+= " and ym.div_year = '" + ls_divyear + "' "
ls_sql	+= " and exists ( 	select 1 from yrbgmaster , yrbgshrstatementbf "
ls_sql	+= " 					where yrbgmaster.coop_id = yrbgshrstatementbf.coop_id and yrbgmaster.member_no = yrbgshrstatementbf.member_no and yrbgmaster.div_year = yrbgshrstatementbf.div_year and yrbgmaster.coop_id = ym.coop_id and yrbgmaster.member_no = ym.member_no "
ls_sql	+= " 					and yrbgmaster.coop_id = '" + ls_coopid + "' and yrbgmaster.div_year = '" + ls_divyear + "' and yrbgmaster.refraindiv_flag = 0 " + ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVSTM 70.2)"
	ithw_exception.text	+= "~r~nนำเข้าข้อมูลปันผล"
	ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
	ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

objdestroy:
if isvalid(lds_yrshr_div) then destroy lds_yrshr_div

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_div_stm()" + ithw_exception.text
	throw ithw_exception
end if

return 1

end function

protected function integer of_prc_div_mth (n_ds ads_constant, n_ds ads_proc) throws Exception;string ls_rdtyp , ls_satangtyp
string ls_divyear 
string ls_syntax , ls_sql , ls_sqlselect
integer li_sumaccmth , li_index
integer li_trnposamt , li_rdposamt
long ll_index , ll_count , ll_shrrow
dec ldc_divrate
dec ldc_divamt , ldc_sumdiv
datetime ldtm_accstart , ldtm_accend 
boolean lb_err

this.of_setsrvrdmoney( true )
this.of_setsrvdate( true )

inv_progress.istr_progress.subprogress_text = "คำนวณปันผลรายเดือน"
inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= 4

ls_divyear			= ads_proc.object.div_year[1]
ldc_divrate			= ads_proc.object.div_rate[1]
ldtm_accstart 		= ads_proc.object.sacc_date[1]
ldtm_accend		= ads_proc.object.eacc_date[1]

// set ค่าการปัดเศษ
inv_rdmoneysrv.of_set_constant( is_coopcontrol , "DIV" , "rounddiv" )
ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )

// จำนวนเดือนในรอบปีบัญชี
li_sumaccmth			= inv_datesrv.of_monthsafter( date(ldtm_accstart) , date(ldtm_accend) , false )
li_sumaccmth++ 

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (DIVMTH 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*คำนวณปันผลลง Yrbgshrmth*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVMTH 50.1)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "คำนวณ( ปันผลรายเดือน ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " update yrbgshrmth ybm "
ls_sql		+= " set ybm.div_amt = ( ybm.sharecal_value * " + string( ldc_divrate ) + " * ( ( " + string( li_sumaccmth ) + " - to_number( ybm.mth_code ) ) / " + string( li_sumaccmth ) + " ) ) "
ls_sql		+= " where ybm.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and ybm.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = ybm.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = ybm.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = ybm.div_year "
ls_sql		+= " 				and ( yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 				and yrbgmaster.refraindiv_flag = 0 ) "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด DIVMTH (70.1) "
	ithw_exception.text 	+= "~r~nไม่สามารถคำนวณ( ปันผลรายเดือน ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*ปัดเศษปันผลลง Yrbgshrmth*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVMTH 50.2)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "คำนวณ( ปันผลรายเดือน(ปัดเศษ) ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " update yrbgshrmth ybm "
if ls_rdtyp = "1" then
	/*1 : ปัดแล้วรวม*/
	ls_sql		+= " set ybm.rdiv_amt = ftcm_RoundMoney( ybm.div_amt , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) "
else
	/*2 : รวมแล้วปัด*/
	if is_coopcontrol = '010001' or is_coopcontrol = '012001' then
		ls_sql		+= " set ybm.rdiv_amt = round( ybm.div_amt , 2 ) "
	else
		ls_sql		+= " set ybm.rdiv_amt = ybm.div_amt "
	end if
end if
ls_sql		+= " where ybm.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and ybm.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = ybm.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = ybm.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = ybm.div_year "
ls_sql		+= " 				and ( yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 				and yrbgmaster.refraindiv_flag = 0 ) "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด DIVMTH (70.2) "
	ithw_exception.text 	+= "~r~nไม่สามารถคำนวณ( ปันผลรายเดือน(ปัดเศษ) ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*อัพเดทลง Yrdivmaster กรณีมีใน Yrdivmaster*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVMTH 50.3)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "อัพเดทลงทะเบียนปันผล ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " update yrdivmaster "
ls_sql		+= " set div_amt = ( select "
if ls_rdtyp = "1" then
	/*1 : ปัดแล้วรวม*/
	ls_sql		+= " sum( ybm.rdiv_amt  ) as div_amt "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " ftcm_RoundMoney( sum( ybm.rdiv_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as div_amt "
end if
ls_sql		+= " from yrbgshrmth ybm "
ls_sql		+= " where ybm.coop_id = yrdivmaster.coop_id "
ls_sql		+= " and ybm.member_no = yrdivmaster.member_no "
ls_sql		+= " and ybm.div_year = yrdivmaster.div_year "
ls_sql		+= " group by ybm.coop_id , ybm.member_no , ybm.div_year ) "
ls_sql		+= " where yrdivmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrdivmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = yrdivmaster.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = yrdivmaster.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = yrdivmaster.div_year "
ls_sql		+= " 				and ( yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 				and yrbgmaster.refraindiv_flag = 0 ) "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด DIVMTH (70.3) "
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทลงทะเบียนปันผล ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*นำเข้า Yrdivmaster กรณียังไม่มีใน Yrdivmaster*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVMTH 50.4)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "นำเข้าทะเบียนปันผล รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql		= " insert into yrdivmaster "
ls_sql		+= " ( coop_id , member_no , div_year , div_amt ) "
ls_sql		+= " select yrbgshrmth.coop_id , yrbgshrmth.member_no , yrbgshrmth.div_year , "
if ls_rdtyp = "1" then
	/*1 : ปัดแล้วรวม*/
	ls_sql		+= " sum( yrbgshrmth.rdiv_amt  ) as div_amt "
else
	/*2 : รวมแล้วปัด*/
	ls_sql		+= " ftcm_RoundMoney( sum( yrbgshrmth.rdiv_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as div_amt "
end if
ls_sql		+= " from yrbgshrmth "
ls_sql		+= " where yrbgshrmth.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrbgshrmth.div_year = '" + ls_divyear + "' "
ls_sql		+= " and exists( 	select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = yrbgshrmth.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = yrbgshrmth.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = yrbgmaster.div_year "
ls_sql		+= " 				and ( yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 				and yrbgmaster.refraindiv_flag = 0 ) "
ls_sql		+= ls_sqlselect
ls_sql		+= " 				) "
ls_sql		+= " and not exists(	select 1 from yrdivmaster "
ls_sql		+= " 					where yrdivmaster.coop_id = yrbgshrmth.coop_id "
ls_sql		+= " 					and yrdivmaster.member_no = yrbgshrmth.member_no "
ls_sql		+= " 					and yrdivmaster.div_year = yrbgshrmth.div_year "
ls_sql		+= " 					and yrdivmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 					and yrdivmaster.div_year = '" + ls_divyear + "' "
ls_sql		+= " 				) "
ls_sql		+= " group by yrbgshrmth.coop_id , yrbgshrmth.member_no , yrbgshrmth.div_year "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด DIVMTH (70.4) "
	ithw_exception.text 	+= "~r~nไม่สามารถนำเข้าลงทะเบียนปันผล ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

objdestroy:

this.of_setsrvrdmoney( false )
this.of_setsrvdate( false )

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_div_mth()" + ithw_exception.text
	throw ithw_exception
end if

return 1

end function

protected function integer of_prc_divavg_clr (n_ds ads_proc) throws Exception;string ls_sql , ls_sqlselect
string ls_divyear , ls_year , ls_startacc , ls_endacc
integer li_index , li_div , li_avg , li_subpro
long ll_index , ll_count , ll_seqno
datetime ldtm_startacc , ldtm_endacc
boolean lb_err

ls_divyear		= ads_proc.object.div_year[1]
li_div				= ads_proc.object.div_flag[1]
li_avg				= ads_proc.object.avg_flag[1]

li_subpro			= li_div
if li_avg > 0 then li_subpro += 2

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ได้รับปันผลเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = li_subpro + 2

ls_year		= left( ls_divyear , 4 )
ls_startacc	= string( ldtm_startacc , 'yyyy/mm/dd' )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

li_index		= 0

/*ดึงรายละเอียดที่จะประมวล*/
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

if li_div = 1 or li_avg = 1 then
	/*Clr ข้อมูลรายการเคลื่อนไหวปันผล - เฉลื่ยคืน*/
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGCLR 50.1)"
		throw ithw_exception
	end if
	
	li_index++
	inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( รายการเคลื่อนไหวปันผล-เฉลี่ยคืน ) รอสักครู่..."
	inv_progress.istr_progress.subprogress_index = li_index
	
	ls_sql	= " delete from yrdivstatement " 
	ls_sql += " where yrdivstatement.coop_id = '" + is_coopcontrol + "' and yrdivstatement.div_year = '"+ ls_divyear +"' "
	ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrdivstatement.coop_id and yrbgmaster.member_no = yrdivstatement.member_no and yrbgmaster.div_year = yrdivstatement.div_year " 
	ls_sql += " and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += ls_sqlselect + " ) "
	execute immediate :ls_sql using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "พบข้อผิดพลาด DIVAVGCLR (70.1) "
		ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( รายการเคลื่อนไหวปันผล-เฉลี่ยคืน ) ได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end if
	if lb_err then Goto objdestroy
	
end if

if li_div = 1 then
	/*Clr ข้อมูลปันผล*/
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGCLR 50.2)"
		throw ithw_exception
	end if
	
	li_index++
	inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ปันผล ) รอสักครู่..."
	inv_progress.istr_progress.subprogress_index = li_index
	
	ls_sql	= " update yrdivmaster " 
	ls_sql += " set yrdivmaster.div_amt = 0 , yrdivmaster.div_balamt = 0 , "
	ls_sql	+= " yrdivmaster.item_balamt = ( 0 + yrdivmaster.avg_balamt ) "
	ls_sql += " where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrdivmaster.coop_id and yrbgmaster.member_no = yrdivmaster.member_no and yrbgmaster.div_year = yrdivmaster.div_year " 
	ls_sql += " and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += ls_sqlselect + " ) "
	execute immediate :ls_sql using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "พบข้อผิดพลาด DIVAVGCLR (70.2) "
		ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ปันผล ) ได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end if
	if lb_err then Goto objdestroy
	
end if

if li_avg = 1 then
	/*Clr ข้อมูลเฉลี่ยคืน*/
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGCLR 50.3)"
		throw ithw_exception
	end if
	
	li_index++
	inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( เฉลี่ยคืน 1 ) รอสักครู่..."
	inv_progress.istr_progress.subprogress_index = li_index
	
	ls_sql	= " update yrdivmaster " 
	ls_sql += " set yrdivmaster.avg_amt = 0 , yrdivmaster.avg_balamt = 0 , "
	ls_sql	+= " yrdivmaster.item_balamt = ( 0 + yrdivmaster.div_balamt ) "
	ls_sql += " where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrdivmaster.coop_id and yrbgmaster.member_no = yrdivmaster.member_no and yrbgmaster.div_year = yrdivmaster.div_year " 
	ls_sql += " and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += ls_sqlselect + " ) "
	execute immediate :ls_sql using itr_sqlca;

	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "พบข้อผิดพลาด DIVAVGCLR (70.3) "
		ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( เฉลี่ยคืน ) ได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end if
	if lb_err then Goto objdestroy
	
	li_index++
	inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( เฉลี่ยคืน 2 ) รอสักครู่..."
	inv_progress.istr_progress.subprogress_index = li_index
	
	ls_sql = " update yrbglonmaster "
	ls_sql += " set avg_amt = 0 , "
	ls_sql += " ravg_amt = 0 "
	ls_sql += " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' and yrbglonmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year " 
	ls_sql += " and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
	ls_sql += ls_sqlselect + " ) "
	execute immediate :ls_sql using itr_sqlca;

	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "พบข้อผิดพลาด DIVAVGCLR (70.3) "
		ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( เฉลี่ยคืน ) ได้"
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end if
	if lb_err then Goto objdestroy
	
end if

/*เคลียร์ข้อมูลปันผลเฉลี่ยคืน ทิ้งถ้าไม่มียอดคงเหลือ*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGCLR 50.4)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ปันผล-เฉลี่ยคืน ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrdivmaster " 
ls_sql += " where yrdivmaster.coop_id = '" + is_coopcontrol + "' and yrdivmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and yrdivmaster.item_balamt = 0 "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrdivmaster.coop_id and yrbgmaster.member_no = yrdivmaster.member_no and yrbgmaster.div_year = yrdivmaster.div_year " 
ls_sql += " and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด DIVAVGCLR (70.4) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ปันผล-เฉลี่ยคืน ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

objdestroy:

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_divavg_clr()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_est_create_rate (n_ds ads_rpt_est, string as_esttype, decimal adc_startrate, decimal adc_endrate, decimal adc_step) throws Exception;/***********************************************************
<description>
	สร้างตารางการประมาณการ
</description>

<arguments>  
	as_esttype			String			ประเภทปันผล(D) หรือเฉลี่ยคืน(A)
	adc_startrate		Decimal		อัตราปันผลเริ่มต้น
	adc_endrate			Decimal		อัตราปันผลสุดท้าย
	adc_step				Decimal		step การเคลื่อนอัตราปันผลหรือเฉลี่ยคืน
</arguments> 

<return> 
	Integer			1 = success, Exception = failure
</return> 

<usage> 

	Revision History:
	Version 1.0 (Initial version) Modified Date 23/10/2012 by Godji
</usage> 
***********************************************************/
dec		ldc_estrate
integer	li_coutrate, li_row , li_order

ldc_estrate	= adc_startrate

// สร้างแถวของอัตราประมาณการไว้ก่อน
DO
	li_row	= ads_rpt_est.insertrow( 0 )
	ads_rpt_est.object.est_rate[ li_row ] 		= ldc_estrate
	ads_rpt_est.object.est_order[ li_row ] 	= li_order
	ads_rpt_est.object.est_type[ li_row ] 		= as_esttype	// AVG= average, DIV = dividend
	
	ldc_estrate += adc_step
	li_coutrate++
	li_order++
LOOP UNTIL ( ldc_estrate > adc_endrate )

li_order++
// ถ้าแถวสุดท้าย ไม่มีค่าของ Rate สุดท้ายต้องใส่เข้าไปด้วย
li_row = ads_rpt_est.rowcount()
if ads_rpt_est.object.est_rate[ li_row ] <> adc_endrate then
	li_row = ads_rpt_est.insertrow( 0 )
	ads_rpt_est.object.est_rate[ li_row ] 		= adc_endrate
	ads_rpt_est.object.est_order[ li_row ]	= li_order
	ads_rpt_est.object.est_type[ li_row ] 		= as_esttype	// AVG= average, DIV = dividend
end if

return 1
end function

protected function string of_prc_estavg_gen_rate (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype) throws Exception;string ls_divyear , ls_avgtyp
string ls_loantype , ls_loantypeall
integer li_count , li_row , li_flag
dec ldc_estrate
boolean lb_err

ls_avgtyp		= ads_constant.object.avgtype_code[1]

ls_divyear	= ads_proc_est.object.div_year[1]

li_count	= ads_cal_lntype.rowcount()

delete from yrcfrateln where coop_id = :is_coopcontrol and div_year = :ls_divyear and procavg_type = 'E' using itr_sqlca;
if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGTYP 0.01)"
	ithw_exception.text 	+= "~r~n<br>ไม่สามารถลบข้อมูลอัตราเฉลี่ยคืนประมาณการได้"
	ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

for li_row = 1 to li_count
	li_flag 		= ads_cal_lntype.object.calavg_flag[ li_row ]
	ldc_estrate	= ads_cal_lntype.object.avgpercent_rate[ li_row ]
	if ( li_flag = 1 ) then
		ls_loantype		= ads_cal_lntype.object.loantype_code[ li_row ]
		ls_loantypeall	+= "'" + ls_loantype + "',"
	else
		continue;
	end if

	if ls_avgtyp = "TYP" then
		
		insert into yrcfrateln
		( coop_id , 				div_year , 		procavg_type , 	loantype_code , 	calavg_flag , 	avgpercent_rate )
		values
		( :is_coopcontrol , 	:ls_divyear , 	'E' , 				:ls_loantype , 		:li_flag , 			:ldc_estrate )
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGTYP 0.02)"
			ithw_exception.text 	+= "~r~n<br>ไม่สามารถนำเข้าข้อมูลอัตราเฉลี่ยคืนประมาณการได้"
			ithw_exception.text 	+= "~r~n<br>" + string( itr_sqlca ) + "/" + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
			lb_err = true ; if lb_err then Goto objdestroy
		end if
		
	end if
next

objdestroy:

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estavg_gen_rate()" + ithw_exception.text
	throw ithw_exception
end if

return ls_loantypeall
end function

protected function integer of_prc_estavg_mem (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception;string ls_loantype , ls_loantypeall , ls_memset
string ls_coopid , ls_divyear , ls_memno
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend 
string ls_rdtyp , ls_satangtyp
integer li_flag
integer li_index , li_row , li_count , li_seqno
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count , ll_estorder
dec ldc_intacc , ldc_estrate , ldc_step , ldc_rstep
dec ldc_sumavg , ldc_sumvalue
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_con

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_con = create n_ds
lds_int_con.dataobject = "d_divsrv_prc_info_int_con"
lds_int_con.settransobject( itr_sqlca )

ls_memset			= ads_constant.object.memset_code[1]

ls_coopid				= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldc_rstep				= ads_proc_est.object.avgstep_rate[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
try
	inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "roundavg" )
	ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
	ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
	li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
	li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )
catch( Exception lthw_rdmn )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 0.0)"
	ithw_exception.text	+= lthw_rdmn.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ls_loantypeall		= this.of_prc_estavg_gen_rate( ads_constant , ads_proc_est , ads_cal_lntype )

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

// กรองเอาเฉพาะ rate เฉลี่ยคืน
ads_rpt_est.setfilter( "est_type = 'AVG'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= li_ratecount

select max( seq_no ) into :li_seqno from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear using itr_sqlca ;
if itr_sqlca.sqlcode <> 0 or isnull( li_seqno ) then li_seqno = 0

for li_avgrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGMEM 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_avgrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_avgrate]
	
	ldc_step		= ldc_rstep * ( li_avgrate - 1 )
	li_seqno++
	
	/*SUM*/
	ls_sql		= " insert into yrrptestdivavg "
	ls_sql		+= " ( coop_id , div_year , seq_no , est_type , est_rate , est_order , est_value , est_amt ) "
	ls_sql		+= " select '" + ls_coopid + "' as coop_id , '" + ls_divyear + "' as div_year , "
	ls_sql		+= string( li_seqno ) + " as seq_no , "
	ls_sql		+= " 'AVG' as est_type , " + string( ldc_estrate ) + " as est_rate , " + string( ll_estorder ) + " as est_order , "
	ls_sql		+= " sum( estavg.sum_intpay ) as sum_intpay , sum( estavg.sum_avg ) as sum_avg "
	ls_sql		+= " from( "
	ls_sql		+= " 	select eavg.coop_id , eavg.member_no , sum( eavg.sum_intpay ) as sum_intpay , "
	if ls_rdtyp = "1" then
		ls_sql		+= " 	sum( eavg.sum_avg ) as sum_avg "
	else
		/*2 : รวมแล้วปัด*/
		ls_sql		+= " 	ftcm_RoundMoney ( sum( eavg.sum_avg ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
	end if
	ls_sql		+= " 	from( "
	ls_sql		+= " 		select lncontmaster.coop_id, "
	ls_sql		+= " 		lncontmaster.member_no, "
	ls_sql		+= " 		-1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay , "
	if ls_rdtyp = "1" then
		ls_sql		+= " 		ftcm_RoundMoney ( " + string( ldc_estrate ) + " * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
	else
		/*2 : รวมแล้วปัด*/
		ls_sql		+= " 		( " + string( ldc_estrate ) + " * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) ) as sum_avg "
	end if
	ls_sql		+= " 		from lnloantype , "
	ls_sql		+= " 		lncontmaster, "
	ls_sql		+= " 		lncontstatement, "
	ls_sql		+= " 		lnucfloanitemtype "
	ls_sql		+= " 		where ( lnloantype.coop_id = lncontmaster.coop_id ) "
	ls_sql		+= " 		and ( lnloantype.loantype_code = lncontmaster.loantype_code ) "
	ls_sql		+= " 		and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
	ls_sql		+= " 		and ( lncontmaster.loancontract_no = lncontstatement.loancontract_no ) "
	ls_sql		+= " 		and ( lnucfloanitemtype.loanitemtype_code = lncontstatement.loanitemtype_code ) "
	ls_sql		+= " 		and lncontmaster.loantype_code in (" + ls_loantypeall + ") "
	ls_sql		+= " 		and lncontmaster.coop_id = '"+ls_coopid+"' "
	ls_sql		+= " 		and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
	if ls_memset = "REG" then
		ls_sql		+= " 		and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + "  ) "
	else
		ls_sql		+= " 		and exists ( select 1 from mbmembmaster , shsharemaster where mbmembmaster.coop_id = shsharemaster.coop_id and mbmembmaster.member_no = shsharemaster.member_no and mbmembmaster.member_status = 1 and shsharemaster.sharestk_amt > 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  "+ ls_sqlselect + "  ) "
	end if
	ls_sql		+= " 		group by lncontmaster.coop_id, "
	ls_sql		+= " 		lncontmaster.member_no "
	if ls_memset = "REG" then
		ls_sql		+= " 		union "
		ls_sql		+= " 		select lncontmaster.coop_id, "
		ls_sql		+= " 		lncontmaster.member_no, "
		ls_sql		+= " 		-1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay , "
		if ls_rdtyp = "1" then
			ls_sql		+= " 		ftcm_RoundMoney ( " + string( ldc_estrate ) + " * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
		else
			/*2 : รวมแล้วปัด*/
			ls_sql		+= " 		( " + string( ldc_estrate ) + " * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) ) as sum_avg "
		end if
		ls_sql		+= " 		from lnloantype , "
		ls_sql		+= " 		lncontmaster, "
		ls_sql		+= " 		lncontstatement, "
		ls_sql		+= " 		lnucfloanitemtype "
		ls_sql		+= " 		where ( lnloantype.coop_id = lncontmaster.coop_id ) "
		ls_sql		+= " 		and ( lnloantype.loantype_code = lncontmaster.loantype_code ) "
		ls_sql		+= " 		and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
		ls_sql		+= " 		and ( lncontmaster.loancontract_no = lncontstatement.loancontract_no ) "
		ls_sql		+= " 		and ( lnucfloanitemtype.loanitemtype_code = lncontstatement.loanitemtype_code ) "
		ls_sql		+= " 		and lncontmaster.loantype_code in (" + ls_loantypeall + ") "
		ls_sql		+= " 		and lncontmaster.coop_id = '"+ls_coopid+"' "
		ls_sql		+= " 		and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
		ls_sql		+= " 		and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  "+ ls_sqlselect + " ) "
		ls_sql		+= " 		group by lncontmaster.coop_id, "
		ls_sql		+= " 		lncontmaster.member_no "
	end if
	ls_sql		+= " 	) eavg "
	ls_sql		+= " 	group by eavg.coop_id , eavg.member_no "
	ls_sql		+= " ) estavg "


	execute immediate :ls_sql using itr_sqlca;

	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text	+= "~r~n" + ls_sql
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if

	inv_progress.istr_progress.subprogress_index	= li_avgrate
	inv_progress.istr_progress.subprogress_text	= string( li_avgrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการเฉลี่ยคืน Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "	
		
next
/*
string ls_loantype , ls_loantypeall
string ls_coopid , ls_divyear , ls_memno 
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend
string ls_rdtyp , ls_satangtyp
string ls_errsyntax
integer li_flag
integer li_index , li_row , li_count
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count, ll_estorder
dec ldc_intacc , ldc_estrate
dec ldc_sumavg , ldc_sumvalue
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_mem

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_mem = create n_ds
lds_int_mem.dataobject = "d_divsrv_prc_info_int_mem"
lds_int_mem.settransobject( itr_sqlca )

ls_coopid				= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "roundavg" )
ls_rdtyp				= inv_rdmoneysrv.of_get_roundtype(  )
ls_satangtyp			= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt			= inv_rdmoneysrv.of_get_truncate_pos(  )
li_rdposamt			= inv_rdmoneysrv.of_get_round_pos(  )

li_count	= ads_cal_lntype.rowcount()

for li_row = 1 to li_count
	li_flag = ads_cal_lntype.object.cal_flag[ li_row ]
	if ( li_flag = 1 ) then
		ls_loantype		= ads_cal_lntype.object.loantype_code[ li_row ]
		ls_loantypeall	+= "'" + ls_loantype + "',"
	end if
next

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
//	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and lncontmaster.coop_id = '" + ls_coopid + "' " )	// ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and lncontstatement.intaccum_date between to_date('" + string( ldtm_accstart , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') and to_date('" + string( ldtm_accend , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_int_mem, " and exists ( select 1 from mbmembmaster where mbmembmaster.coop_id = '" + ls_coopid + "' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ls_sql		= " SELECT lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO, "
ls_sql		+= " -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay "
ls_sql		+= " FROM lncontmaster, "
ls_sql		+= " lncontstatement, "
ls_sql		+= " lnucfloanitemtype "
ls_sql		+= " WHERE ( lncontstatement.LOANCONTRACT_NO = lncontmaster.LOANCONTRACT_NO ) "
ls_sql		+= " and ( lnucfloanitemtype.LOANITEMTYPE_CODE = lncontstatement.LOANITEMTYPE_CODE ) "
ls_sql		+= " and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
ls_sql		+= " and lncontmaster.loantype_code in (" + ls_loantypeall + ")"
ls_sql		+= " and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and lncontstatement.operate_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) "
ls_sql		+= " GROUP BY lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO "
ls_sql		+= " union "
ls_sql		+= " SELECT lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO, "
ls_sql		+= " -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay "
ls_sql		+= " FROM lncontmaster, "
ls_sql		+= " lncontstatement, "
ls_sql		+= " lnucfloanitemtype  "
ls_sql		+= " WHERE ( lncontstatement.LOANCONTRACT_NO = lncontmaster.LOANCONTRACT_NO ) "
ls_sql		+= " and ( lnucfloanitemtype.LOANITEMTYPE_CODE = lncontstatement.LOANITEMTYPE_CODE ) "
ls_sql		+= " and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
ls_sql		+= " and lncontmaster.loantype_code in (" + ls_loantypeall + ")"
ls_sql		+= " and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and lncontstatement.operate_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) "
ls_sql		+= " GROUP BY lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO "

lds_int_mem.setsqlselect(ls_sql)

ll_count	= lds_int_mem.retrieve()

lds_int_mem.setsort( " lncontmaster.coop_id, lncontmaster.member_no " )
lds_int_mem.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

// กรองเอาเฉพาะ rate เฉลี่ยคืน
ads_rpt_est.setfilter( "est_type = 'AVG'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= li_ratecount

// ปรับ computefield ก่อนทำรายการ
// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//if ls_rdtyp = "1" then ls_syntax = "cp_avg.expression=' sum_intpay ' "
//if ls_rdtyp = "2" then ls_syntax = "cp_avg.expression=' F_RoundMoney( sum_intpay , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
ls_syntax = "cp_avg.expression=' sum_intpay ' "
ls_errsyntax = lds_int_mem.Modify( ls_syntax )
ls_syntax = "cp_intall.expression=' sum( sum_intpay for all ) ' "
ls_errsyntax = lds_int_mem.Modify( ls_syntax )
ls_syntax = "cp_avgall.expression=' sum( cp_avg for all distinct member_no ) ' "
ls_errsyntax = lds_int_mem.Modify( ls_syntax )

// คำนวณลงแต่ละ rate ที่ต้องการ
for li_avgrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGMEM 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_avgrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_avgrate]
	
	// คำนวณตาม rate ที่เปลี่ยนไป
	// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//	if ls_rdtyp = "1" then ls_syntax = "cp_avg.expression=' F_RoundMoney( ( " + string( ldc_estrate ) + " * sum_intpay ) , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
//	if ls_rdtyp = "2" then ls_syntax = "cp_avg.expression=' " + string( ldc_estrate ) + " * sum_intpay ' "
	ls_syntax = "cp_avg.expression=' " + string( ldc_estrate ) + " * sum_intpay ' "
	ls_errsyntax = lds_int_mem.Modify( ls_syntax )
	lds_int_mem.groupcalc()
	
	ldc_sumavg			= lds_int_mem.object.cp_avgall[1]
	ldc_sumvalue		= lds_int_mem.object.cp_intall[1]

	ads_rpt_est.object.est_amt[li_avgrate]		= ldc_sumavg
	ads_rpt_est.object.est_value[li_avgrate]		= ldc_sumvalue
	
	insert into yrrptestdivavg
	( 	coop_id , div_year , seq_no , 
		est_type , est_rate , est_order , est_value , est_amt )
	values
	( 	:ls_coopid , :ls_divyear , nvl( ( select max( seq_no ) from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear ) , 0) + 1 , 
		'AVG' , :ldc_estrate , :ll_estorder , :ldc_sumvalue , :ldc_sumavg )
	using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= li_avgrate
	inv_progress.istr_progress.subprogress_text	= string( li_avgrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการเฉลี่ยคืน Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "
	
next

//for ll_index = 1 to ll_count
//	
//	yield()
//	if inv_progress.of_is_stop() then
//		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGMEM 50.1)"
//		lb_err		= true ; Goto objdestroy
//	end if
//	
//	ls_memno 			= lds_int_mem.object.member_no[ ll_index ]
//	ldc_intacc			= lds_int_mem.object.interest_accum[ ll_index ]
//	
//	inv_progress.istr_progress.subprogress_index	= ll_index
//	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมาณการเฉลี่ยคืนทะเบียน : " + ls_memno	
//	
//next
*/

objdestroy:
this.of_setsrvrdmoney( false )
//if isvalid(lds_int_mem) then destroy lds_int_mem

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estavg_mem()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_estavg_stm (n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception;string ls_loantype[]
string ls_coopid , ls_divyear , ls_memno
string ls_syntax , ls_sqlselect
integer li_flag
integer li_index , li_row , li_count
integer li_avgrate , li_ratecount
long ll_index , ll_count, ll_estorder
dec ldc_intacc , ldc_estrate
dec ldc_sumavg , ldc_sumvalue
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_stm

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_stm = create n_ds
lds_int_stm.dataobject = "d_divsrv_prc_info_int_stm"
lds_int_stm.settransobject( itr_sqlca )

li_count	= ads_cal_lntype.rowcount()

for li_row = 1 to li_count
	li_flag = ads_cal_lntype.object.cal_flag[ li_row ]
	if ( li_flag = 1 ) then
		li_index ++
		ls_loantype[ li_index ] = ads_cal_lntype.object.loantype_code[ li_row ]
	end if
next

ls_coopid			= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_int_stm, " and lncontmaster.coop_id = '" + ls_coopid + "' " )	// ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_int_stm, " and lncontstatement.intaccum_date between to_date('" + string( ldtm_accstart , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') and to_date('" + string( ldtm_accend , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
	inv_procsrv.of_set_sqldw_column( lds_int_stm, " and exists ( select 1 from mbmembmaster where mbmembmaster.coop_id = '" + ls_coopid + "' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGSTM 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ll_count	= lds_int_stm.retrieve()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGSTM 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= ll_count

// กรองเอาเฉพาะ rate เฉลี่ยคืน
ads_rpt_est.setfilter( "est_type = 'AVG'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

// คำนวณลงแต่ละ rate ที่ต้องการ
for li_avgrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGSTM 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_avgrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_avgrate]
	
	// คำนวณตาม rate ที่เปลี่ยนไป
	ls_syntax = "cp_avg.expression=' " + string( ldc_estrate ) + " * sum_intpay ' "
	lds_int_stm.Modify( ls_syntax )
	ls_syntax = " cp_avgall.expression=' sum( cp_avg for all ) ' "
	lds_int_stm.Modify( ls_syntax )
	ls_syntax = " cp_intall.expression=' sum( sum_intpay for all ) ' "
	lds_int_stm.Modify( ls_syntax )
	lds_int_stm.groupcalc()
	
	ldc_sumavg			= lds_int_stm.object.cp_avgall[1]
	ldc_sumvalue		= lds_int_stm.object.cp_intall[1]

	ads_rpt_est.object.est_amt[li_avgrate]		= ldc_sumavg
	ads_rpt_est.object.est_value[li_avgrate]		= ldc_sumvalue
	
	insert into yrrptestdivavg
	( 	coop_id , div_year , seq_no , 
		est_type , est_rate , est_order , est_value , est_amt )
	values
	( 	:ls_coopid , :ls_divyear , nvl( ( select max( seq_no ) from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear ) , 0) + 1 , 
		'AVG' , :ldc_estrate , :ll_estorder , :ldc_sumvalue , :ldc_sumavg )
	using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGSTM 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= li_avgrate
	inv_progress.istr_progress.subprogress_text	= string( li_avgrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการเฉลี่ยคืน Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "
	
next

//for ll_index = 1 to ll_count
//	
//	yield()
//	if inv_progress.of_is_stop() then
//		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGSTM 50.1)"
//		lb_err		= true ; Goto objdestroy
//	end if
//	
//	ls_memno 			= lds_int_stm.object.member_no[ ll_index ]
//	ldc_intacc			= lds_int_stm.object.interest_accum[ ll_index ]
//	
//	inv_progress.istr_progress.subprogress_index	= ll_index
//	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมาณการเฉลี่ยคืนทะเบียน : " + ls_memno	
//	
//next

objdestroy:
if isvalid(lds_int_stm) then destroy lds_int_stm

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estavg_stm()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_estavg_typ (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_cal_lntype, ref n_ds ads_rpt_est) throws Exception;string ls_loantype , ls_loantypeall , ls_memset
string ls_coopid , ls_divyear , ls_memno
string ls_syntax , ls_sqlselect , ls_sql
string ls_accstart , ls_accend 
string ls_rdtyp , ls_satangtyp
integer li_flag
integer li_index , li_row , li_count , li_seqno
integer li_avgrate , li_ratecount
integer li_trnposamt , li_rdposamt
long ll_index , ll_count , ll_estorder
dec ldc_intacc , ldc_estrate , ldc_step , ldc_rstep
dec ldc_sumavg , ldc_sumvalue
datetime ldtm_accstart , ldtm_accend
boolean lb_err
n_ds lds_int_con

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลดอกเบี้ยสะสม"

lds_int_con = create n_ds
lds_int_con.dataobject = "d_divsrv_prc_info_int_con"
lds_int_con.settransobject( itr_sqlca )

ls_memset			= ads_constant.object.memset_code[1]

ls_coopid				= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldc_rstep				= ads_proc_est.object.avgstep_rate[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
try
	inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "roundavg" )
	ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
	ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
	li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
	li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )
catch( Exception lthw_rdmn )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGTYP 0.0)"
	ithw_exception.text	+= lthw_rdmn.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ls_loantypeall		= this.of_prc_estavg_gen_rate( ads_constant , ads_proc_est , ads_cal_lntype )

if len( trim( ls_loantypeall ) ) > 0 then
	ls_loantypeall	= left( ls_loantypeall , len( ls_loantypeall ) - 1 )
else
	// ไม่ได้เลือกก็ไม่ต้องทำรายการ
	return 1
end if

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGTYP 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

// กรองเอาเฉพาะ rate เฉลี่ยคืน
ads_rpt_est.setfilter( "est_type = 'AVG'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= li_ratecount

select max( seq_no ) into :li_seqno from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear using itr_sqlca ;
if itr_sqlca.sqlcode <> 0 or isnull( li_seqno ) then li_seqno = 0

for li_avgrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGTYP 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_avgrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_avgrate]
	
	ldc_step		= ldc_rstep * ( li_avgrate - 1 )
	li_seqno++
	
	/*
	old
	ls_sql		= " insert into yrrptestdivavg "
	ls_sql		+= " ( coop_id , div_year , seq_no , est_type , est_rate , est_order , est_value , est_amt ) "
	ls_sql		+= " select '" + ls_coopid + "' as coop_id , '" + ls_divyear + "' as div_year , "
	ls_sql		+= string( li_seqno ) + " as seq_no , "
	ls_sql		+= " 'AVG' as est_type , " + string( ldc_estrate ) + " as est_rate , " + string( ll_estorder ) + " as est_order , "
	ls_sql		+= " sum( estavg.sum_intpay ) as sum_intpay , sum( estavg.sum_avg ) as sum_avg "
	ls_sql		+= " from( "
	ls_sql		+= " 	select eavg.coop_id , eavg.member_no , sum( eavg.sum_intpay ) as sum_intpay , "
	if ls_rdtyp = "1" then
		ls_sql		+= " 	sum( eavg.sum_avg ) as sum_avg "
	else
		/*2 : รวมแล้วปัด*/
		ls_sql		+= " 	ftcm_RoundMoney ( sum( eavg.sum_avg ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
	end if
	ls_sql		+= " 	from( "
	ls_sql		+= " 		select lncontmaster.coop_id, "
	ls_sql		+= " 		lncontmaster.member_no, "
	ls_sql		+= " 		lnloantype.loantype_code, "
	ls_sql		+= " 		lncontmaster.loancontract_no, "
	ls_sql		+= " 		yrcfrateln.avgpercent_rate, "
	ls_sql		+= " 		-1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay , "
	if ls_rdtyp = "1" then
		ls_sql		+= " 		ftcm_RoundMoney ( ( yrcfrateln.avgpercent_rate + " + string( ldc_step ) + " ) * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
	else
		/*2 : รวมแล้วปัด*/
		ls_sql		+= " 		( ( yrcfrateln.avgpercent_rate + " + string( ldc_step ) + " ) * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) ) as sum_avg "
	end if
	ls_sql		+= " 		from lnloantype , "
	ls_sql		+= " 		lncontmaster, "
	ls_sql		+= " 		lncontstatement, "
	ls_sql		+= " 		lnucfloanitemtype , "
	ls_sql		+= " 		yrcfrateln "
	ls_sql		+= " 		where ( lnloantype.coop_id = lncontmaster.coop_id ) "
	ls_sql		+= " 		and ( lnloantype.loantype_code = lncontmaster.loantype_code ) "
	ls_sql		+= " 		and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
	ls_sql		+= " 		and ( lncontmaster.loancontract_no = lncontstatement.loancontract_no ) "
	ls_sql		+= " 		and ( lnucfloanitemtype.loanitemtype_code = lncontstatement.loanitemtype_code ) "
	ls_sql		+= " 		and ( lnloantype.coop_id = yrcfrateln.coop_id ) "
	ls_sql		+= " 		and ( lnloantype.loantype_code = yrcfrateln.loantype_code ) "
	ls_sql		+= " 		and lncontmaster.coop_id = '"+ls_coopid+"' "
	ls_sql		+= " 		and yrcfrateln.div_year = '" + ls_divyear + "' "
	ls_sql		+= " 		and yrcfrateln.procavg_type = 'E' "
	ls_sql		+= " 		and yrcfrateln.calavg_flag = 1 "
	ls_sql		+= " 		and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
	if ls_memset = "REG" then
		ls_sql		+= " 		and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + "  ) "
	else
		ls_sql		+= " 		and exists ( select 1 from mbmembmaster , shsharemaster where mbmembmaster.coop_id = shsharemaster.coop_id and mbmembmaster.member_no = shsharemaster.member_no and mbmembmaster.member_status = 1 and shsharemaster.sharestk_amt > 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  "+ ls_sqlselect + "  ) "
	end if
	ls_sql		+= " 		group by lncontmaster.coop_id, "
	ls_sql		+= " 		lncontmaster.member_no , lnloantype.loantype_code , lncontmaster.loancontract_no , yrcfrateln.avgpercent_rate "
	if ls_memset = "REG" then
		ls_sql		+= " 		union "
		ls_sql		+= " 		select lncontmaster.coop_id, "
		ls_sql		+= " 		lncontmaster.member_no, "
		ls_sql		+= " 		lnloantype.loantype_code, "
		ls_sql		+= " 		yrcfrateln.avgpercent_rate, "
		ls_sql		+= " 		-1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay , "
		if ls_rdtyp = "1" then
			ls_sql		+= " 		ftcm_RoundMoney ( ( yrcfrateln.avgpercent_rate + " + string( ldc_step ) + " ) * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) as sum_avg "
		else
			/*2 : รวมแล้วปัด*/
			ls_sql		+= " 		( ( yrcfrateln.avgpercent_rate + " + string( ldc_step ) + " ) * ( -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) ) ) as sum_avg "
		end if
		ls_sql		+= " 		from lnloantype , "
		ls_sql		+= " 		lncontmaster, "
		ls_sql		+= " 		lncontstatement, "
		ls_sql		+= " 		lnucfloanitemtype , "
		ls_sql		+= " 		yrcfrateln "
		ls_sql		+= " 		where ( lnloantype.coop_id = lncontmaster.coop_id ) "
		ls_sql		+= " 		and ( lnloantype.loantype_code = lncontmaster.loantype_code ) "
		ls_sql		+= " 		and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
		ls_sql		+= " 		and ( lncontmaster.loancontract_no = lncontstatement.loancontract_no ) "
		ls_sql		+= " 		and ( lnucfloanitemtype.loanitemtype_code = lncontstatement.loanitemtype_code ) "
		ls_sql		+= " 		and ( lnloantype.coop_id = yrcfrateln.coop_id ) "
		ls_sql		+= " 		and ( lnloantype.loantype_code = yrcfrateln.loantype_code ) "
		ls_sql		+= " 		and lncontmaster.coop_id = '"+ls_coopid+"' "
		ls_sql		+= " 		and yrcfrateln.div_year = '" + ls_divyear + "' "
		ls_sql		+= " 		and yrcfrateln.procavg_type = 'E' "
		ls_sql		+= " 		and yrcfrateln.calavg_flag = 1 "
		ls_sql		+= " 		and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
		ls_sql		+= " 		and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no  "+ ls_sqlselect + " ) "
		ls_sql		+= " 		group by lncontmaster.coop_id, "
		ls_sql		+= " 		lncontmaster.member_no , lnloantype.loantype_code , yrcfrateln.avgpercent_rate "
	end if
	ls_sql		+= " 	) eavg "
	ls_sql		+= " 	group by eavg.coop_id , eavg.member_no "
	ls_sql		+= " ) estavg "
	*/
	
	ls_sql		= " insert into yrrptestdivavg "
	ls_sql		+= " ( coop_id , div_year , seq_no , est_type , est_rate , est_order , est_value , est_amt ) "
	
	if ls_rdtyp = "1" then
		/*1 : ปัดแล้วรวม*/
		ls_sql		+= " select '" + is_coopcontrol + "' , '"+ ls_divyear +"' , "
		ls_sql		+= string( li_seqno ) + " as seq_no , "
		ls_sql		+= " 'AVG' as est_type , " + string( ldc_estrate ) + " as est_rate , " + string( ll_estorder ) + " as est_order , "
		ls_sql		+= " sum( av.sumint_amt ) as sumint_amt , "
		ls_sql		+= " sum( avg_amt ) as avg_amt "
		ls_sql		+= " from( "
		ls_sql		+= " 	select ybl.coop_id , ybl.member_no , "
		ls_sql		+= " 	sum( ybl.interest_accum ) as sumint_amt , "
		ls_sql		+= " 	ftcm_roundmoney( nvl( sum( ybl.interest_accum ) * ( ycr.avgpercent_rate + " + string( ldc_step ) + " ) , 0 ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string(li_trnposamt) + " , " + string(li_rdposamt) + " ) as avg_amt "
		ls_sql		+= " 	from yrbgmaster , yrbglonmaster ybl , lncontmaster lm , yrcfrateln ycr "
		ls_sql		+= " 	where yrbgmaster.coop_id = ybl.coop_id "
		ls_sql		+= " 	and yrbgmaster.member_no = ybl.member_no "
		ls_sql		+= " 	and yrbgmaster.div_year = ybl.div_year "
		ls_sql		+= " 	and ( ybl.coop_id = lm.coop_id ) "
		ls_sql		+= " 	and ( ybl.loancontract_no = lm.loancontract_no ) "
		ls_sql		+= " 	and lm.coop_id = ycr.coop_id "
		ls_sql		+= " 	and lm.loantype_code = ycr.loantype_code "
		ls_sql		+= " 	and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
		ls_sql		+= " 	and yrbgmaster.div_year = '"+ ls_divyear +"' "
		ls_sql		+= " 	and yrbgmaster.refrainavg_flag = 0 "
		ls_sql		+= " 	and ycr.coop_id = '" + is_coopcontrol + "' "
		ls_sql		+= " 	and ycr.div_year = '"+ ls_divyear +"' "
		ls_sql		+= " 	and ycr.procavg_type = 'E' "
		ls_sql		+= " 	and ycr.calavg_flag = 1 "
		ls_sql		+= " 	and ybl.refrain_flag = 0 "
		ls_sql		+= ls_sqlselect
		ls_sql		+= " 	group by ybl.coop_id , ybl.member_no , lm.loantype_code , lm.loancontract_no , ycr.avgpercent_rate "
		ls_sql		+= " ) av , mbmembmaster m , mbucfprename mp , mbucfmembgroup mup "
		ls_sql		+= " where av.coop_id = m.coop_id "
		ls_sql		+= " and av.member_no = m.member_no "
		ls_sql		+= " and m.prename_code = mp.prename_code(+) "
		ls_sql		+= " and m.coop_id = mup.coop_id(+) "
		ls_sql		+= " and m.membgroup_code = mup.membgroup_code(+) "
	else
		/*2 : รวมแล้วปัด*/
		ls_sql		+= " select '" + is_coopcontrol + "' , '"+ ls_divyear +"' , "
		ls_sql		+= string( li_seqno ) + " as seq_no , "
		ls_sql		+= " 'AVG' as est_type , " + string( ldc_estrate ) + " as est_rate , " + string( ll_estorder ) + " as est_order , "
		ls_sql		+= " sum( sumint_amt ) as sumint_amt , "
		ls_sql		+= " sum( avg_amt ) as avg_amt "
		ls_sql		+= " from( "
		ls_sql		+= " 	select mup.membgroup_code , mup.membgroup_desc , av.member_no , "
		ls_sql		+= " 	sum( av.sumint_amt ) as sumint_amt , "
		ls_sql		+= " 	ftcm_roundmoney( sum( avg_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string(li_trnposamt) + " , " + string(li_rdposamt) + " ) as avg_amt "
		ls_sql		+= " 	from( "
		ls_sql		+= " 		select ybl.coop_id , ybl.member_no , "
		ls_sql		+= " 		sum( ybl.interest_accum ) as sumint_amt , "
		ls_sql		+= " 		nvl( sum( ybl.interest_accum ) * ( ycr.avgpercent_rate + " + string( ldc_step ) + " ) , 0 ) as avg_amt "
		ls_sql		+= " 		from yrbgmaster , yrbglonmaster ybl , lncontmaster lm , yrcfrateln ycr "
		ls_sql		+= " 		where yrbgmaster.coop_id = ybl.coop_id "
		ls_sql		+= " 		and yrbgmaster.member_no = ybl.member_no "
		ls_sql		+= " 		and yrbgmaster.div_year = ybl.div_year "
		ls_sql		+= " 		and ( ybl.coop_id = lm.coop_id ) "
		ls_sql		+= " 		and ( ybl.loancontract_no = lm.loancontract_no ) "
		ls_sql		+= " 		and lm.coop_id = ycr.coop_id "
		ls_sql		+= " 		and lm.loantype_code = ycr.loantype_code "
		ls_sql		+= " 		and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
		ls_sql		+= " 		and yrbgmaster.div_year = '"+ ls_divyear +"' "
		ls_sql		+= " 		and yrbgmaster.refrainavg_flag = 0 "
		ls_sql		+= " 		and ycr.coop_id = '" + is_coopcontrol + "' "
		ls_sql		+= " 		and ycr.div_year = '"+ ls_divyear +"' "
		ls_sql		+= " 		and ycr.procavg_type = 'E' "
		ls_sql		+= " 		and ycr.calavg_flag = 1 "
		ls_sql		+= " 		and ybl.refrain_flag = 0 "
		ls_sql		+= ls_sqlselect
		ls_sql		+= " 		group by ybl.coop_id , ybl.member_no , lm.loantype_code , lm.loancontract_no , ycr.avgpercent_rate "
		ls_sql		+= " 	) av , mbmembmaster m , mbucfprename mp , mbucfmembgroup mup "
		ls_sql		+= " 	where av.coop_id = m.coop_id "
		ls_sql		+= " 	and av.member_no = m.member_no "
		ls_sql		+= " 	and m.prename_code = mp.prename_code(+) "
		ls_sql		+= " 	and m.coop_id = mup.coop_id(+) "
		ls_sql		+= " 	and m.membgroup_code = mup.membgroup_code(+) "
		ls_sql		+= " 	group by mup.membgroup_code , mup.membgroup_desc , av.member_no "
		ls_sql		+= " ) mav "
	end if
	
	execute immediate :ls_sql using itr_sqlca;

	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text	+= "~r~n" + ls_sql
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if

	inv_progress.istr_progress.subprogress_index	= li_avgrate
	inv_progress.istr_progress.subprogress_text	= string( li_avgrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการเฉลี่ยคืน Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "	
		
next
/*
ls_sql		= " SELECT lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO, " 
ls_sql		+= " lncontmaster.loancontract_no, "
ls_sql		+= " -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay "
ls_sql		+= " FROM lncontmaster, "
ls_sql		+= " lncontstatement, "
ls_sql		+= " lnucfloanitemtype "
ls_sql		+= " WHERE ( lncontstatement.LOANCONTRACT_NO = lncontmaster.LOANCONTRACT_NO ) "
ls_sql		+= " and ( lnucfloanitemtype.LOANITEMTYPE_CODE = lncontstatement.LOANITEMTYPE_CODE ) "
ls_sql		+= " and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
ls_sql		+= " and lncontmaster.loantype_code in (" + ls_loantypeall + ")"
ls_sql		+= " and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) "
ls_sql		+= " GROUP BY lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO , lncontmaster.loancontract_no "
ls_sql		+= " union "
ls_sql		+= " SELECT lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO, "
ls_sql		+= " lncontmaster.loancontract_no, "
ls_sql		+= " -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay "
ls_sql		+= " FROM lncontmaster, "
ls_sql		+= " lncontstatement, "
ls_sql		+= " lnucfloanitemtype  "
ls_sql		+= " WHERE ( lncontstatement.LOANCONTRACT_NO = lncontmaster.LOANCONTRACT_NO ) "
ls_sql		+= " and ( lnucfloanitemtype.LOANITEMTYPE_CODE = lncontstatement.LOANITEMTYPE_CODE ) "
ls_sql		+= " and ( lncontmaster.coop_id = lncontstatement.coop_id ) "
ls_sql		+= " and lncontmaster.loantype_code in (" + ls_loantypeall + ")"
ls_sql		+= " and lncontmaster.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and lncontstatement.intaccum_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = lncontmaster.coop_id and mbmembmaster.member_no = lncontmaster.member_no " + ls_sqlselect + " ) "
ls_sql		+= " GROUP BY lncontmaster.coop_id, "
ls_sql		+= " lncontmaster.MEMBER_NO , lncontmaster.loancontract_no "

lds_int_con.setsqlselect(ls_sql)

ll_count	= lds_int_con.retrieve()

lds_int_con.setsort( " lncontmaster.coop_id, lncontmaster.member_no , lncontmaster.coop_id , lncontmaster.loancontract_no " )
lds_int_con.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGTYP 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
if lb_err then Goto objdestroy

// กรองเอาเฉพาะ rate เฉลี่ยคืน
ads_rpt_est.setfilter( "est_type = 'AVG'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= li_ratecount

// ปรับ computefield ก่อนทำรายการ
// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//if ls_rdtyp = "1" then ls_syntax = "cp_avg.expression=' sum_intpay ' "
//if ls_rdtyp = "2" then ls_syntax = "cp_avg.expression=' F_RoundMoney( sum_intpay , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
ls_syntax = "cp_avg.expression=' sum_intpay ' "
lds_int_con.Modify( ls_syntax )
ls_syntax = "cp_intall.expression=' sum( sum_intpay for all ) ' "
lds_int_con.Modify( ls_syntax )
ls_syntax = "cp_avgall.expression=' sum( cp_avgmem for all distinct member_no ) ' "
lds_int_con.Modify( ls_syntax )

// คำนวณลงแต่ละ rate ที่ต้องการ
for li_avgrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTAVGTYP 50.1)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_avgrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_avgrate]
	
	// คำนวณตาม rate ที่เปลี่ยนไป
	// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
	ls_syntax = "cp_avg.expression=' " + string( ldc_estrate ) + " * sum_intpay ' "
	lds_int_con.Modify( ls_syntax )
	ls_syntax = " cp_avgall.expression=' sum( cp_avg for all ) ' "
	lds_int_con.Modify( ls_syntax )
	ls_syntax = " cp_intall.expression=' sum( sum_intpay for all ) ' "
	lds_int_con.Modify( ls_syntax )
	lds_int_con.groupcalc()
	
	ldc_sumavg			= lds_int_con.object.cp_avgall[1]
	ldc_sumvalue		= lds_int_con.object.cp_intall[1]

	ads_rpt_est.object.est_amt[li_avgrate]		= ldc_sumavg
	ads_rpt_est.object.est_value[li_avgrate]		= ldc_sumvalue
	
	insert into yrrptestdivavg
	( 	coop_id , div_year , seq_no , 
		est_type , est_rate , est_order , est_value , est_amt )
	values
	( 	:ls_coopid , :ls_divyear , nvl( ( select max( seq_no ) from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear ) , 0) + 1 , 
		'AVG' , :ldc_estrate , :ll_estorder , :ldc_sumvalue , :ldc_sumavg )
	using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTAVGMEM 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณเฉลี่ยคืน"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= li_avgrate
	inv_progress.istr_progress.subprogress_text	= string( li_avgrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการเฉลี่ยคืน Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "
	
next
*/

objdestroy:
this.of_setsrvrdmoney( false )
if isvalid(lds_int_con) then destroy lds_int_con

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estavg_typ()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_estdiv_day (n_ds ads_constant, n_ds ads_proc_est, ref n_ds ads_rpt_est) throws Exception;string ls_coopid , ls_rdtyp , ls_satangtyp , ls_divyear , ls_procest
string ls_memno , ls_nextmem , ls_shritemtypecode
string ls_accstart , ls_accend
string ls_syntax , ls_sqlselect , ls_sql
integer li_sumaccday , li_calday , li_seq
integer li_divrate , li_ratecount
integer li_dayfixflag , li_dayamt
integer li_trnposamt , li_rdposamt
long ll_index , ll_count , ll_shrrow , ll_estorder
dec ldc_estrate , ldc_sumdiv , ldc_sumvalue
dec ldc_sharestkamt , ldc_unitshare
datetime ldtm_accstart , ldtm_accend 
datetime ldtm_share , ldtm_nextshare
boolean lb_err
n_ds lds_shr_day , lds_shr_div

this.of_setsrvrdmoney( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลการทำรายการหุ้น"

lds_shr_day = create n_ds
lds_shr_day.dataobject = "d_divsrv_prc_info_shr_day"
lds_shr_day.settransobject( itr_sqlca )

lds_shr_div = create n_ds
lds_shr_div.dataobject = "d_divsrv_prc_info_shr_day_div_data"
lds_shr_div.settransobject( itr_sqlca )

li_dayfixflag			= ads_constant.object.div_dayfix_flag[1]
li_dayamt			= ads_constant.object.div_day_amt[1]

ls_coopid			= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ls_procest			= ads_proc_est.object.procest_code[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// set ค่าการปัดเศษ
inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "rounddiv" )
ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
//	inv_procsrv.of_set_sqldw_column( lds_shr_day, " and shsharestatement.coop_id = '" + ls_coopid + "' " )	// ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_shr_day, " and shsharestatement.share_date between to_date('" + string( ldtm_accstart , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') and to_date('" + string( ldtm_accend , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_shr_day, " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '" + ls_coopid + "' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " ) " )
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTDIVDAY 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/* การคำนวณแบบเก่า
// set ค่าในการดึงข้อมูลสมาชิก
// ยกมาสมาชิกปกติ
ls_sql		= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) as share_date , "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.seq_no in ( select max( stm.seq_no ) from shsharestatement stm where stm.coop_id = shsharestatement.coop_id and stm.sharetype_code = shsharestatement.sharetype_code and stm.member_no = shsharestatement.member_no and stm.share_date < to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "
ls_sql		+= " union "
// ระหว่างปีสมาชิกปกติ
ls_sql		+= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , SHSHARESTATEMENT.SHARE_DATE , "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.shritemtype_code <> 'B/F' "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.share_date between to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) and to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '001001' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "
// ยกมาสมาชิกลาออก
ls_sql		+= " union "
ls_sql		+= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) as share_date, "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.seq_no in ( select max( stm.seq_no ) from shsharestatement stm where stm.coop_id = shsharestatement.coop_id and stm.sharetype_code = shsharestatement.sharetype_code and stm.member_no = shsharestatement.member_no and stm.share_date < to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "
// ระหว่างปีสมาชิกลาออก
ls_sql		+= " union "
ls_sql		+= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , SHSHARESTATEMENT.SHARE_DATE , "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.shritemtype_code <> 'B/F' "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.share_date between to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) and to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "


lds_shr_day.setsqlselect(ls_sql)

ll_count	= lds_shr_day.retrieve()

lds_shr_day.setsort( " SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SHARE_DATE , SHSHARESTATEMENT.SEQ_NO " )
lds_shr_day.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTDIVDAY 10.1)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= ll_count

// จำนวนวันในรอบปีบัญชี
if li_dayfixflag = 1 then
	li_sumaccday			= li_dayamt
else
	li_sumaccday			= daysafter( date(ldtm_accstart) , date(ldtm_accend) )
	li_sumaccday++ // ต้องรวมวันแรกของปีบัญชีด้วย
end if

// คำนวณพวกวันที่ลง dw เก็บไว้ก่อน
for ll_index = 1 to ll_count
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTDIVDAY 50.1)"
		lb_err		= true ; Goto objdestroy
	end if
	
	ls_memno					= lds_shr_day.object.member_no[ll_index]
	ls_shritemtypecode		= lds_shr_day.object.shritemtype_code[ll_index]
	ldc_sharestkamt			= lds_shr_day.object.sharestk_amt[ll_index]
	ldc_unitshare				= lds_shr_day.object.unitshare_value[ll_index]
	ldtm_share					= lds_shr_day.object.share_date[ll_index]
	
	// หาวันที่ของลำดับถัดไป
	if ll_index = ll_count then
		ls_nextmem 		= ls_memno
	else
		ls_nextmem 		= lds_shr_day.object.member_no[ll_index + 1]
		ldtm_nextshare 	= lds_shr_day.object.share_date[ll_index + 1]
	end if
	
	// กรณีคนข้างหน้าเปลี่ยนทะเบียนให้วันที่คิดไปถึงวันสุดท้ายปีบัญชี
	if ls_memno <> ls_nextmem or ll_index = ll_count then
		ldtm_nextshare = ldtm_accend
		ldtm_nextshare = datetime(RelativeDate( date( ldtm_nextshare ), 1 ))		// วันสิ้นสุดบัญชีเพิ่มอีก 1 เนื่องจากวันเริ่มปีบัญชีไม่ได้นับ
	end if
	
	// หาช่วงวันที่คิดปันผล
	li_calday		= daysafter( date( ldtm_share ) , date( ldtm_nextshare ))
	
	if li_calday > 0 then
		ll_shrrow		= lds_shr_div.insertrow(0)
		lds_shr_div.object.coop_id[ll_shrrow]					= lds_shr_day.object.coop_id[ll_index]
		lds_shr_div.object.member_no[ll_shrrow]				= lds_shr_day.object.member_no[ll_index]
		lds_shr_div.object.shritemtype_code[ll_shrrow]		= ls_shritemtypecode
		lds_shr_div.object.sign_flag[ll_shrrow]					= lds_shr_day.object.sign_flag[ll_index]
		lds_shr_div.object.day[ll_shrrow]							= li_calday
		lds_shr_div.object.unitshare_value[ll_shrrow]			= ldc_unitshare
		lds_shr_div.object.share_amount[ll_shrrow]			= lds_shr_day.object.share_amount[ll_index]
		lds_shr_div.object.sharestk_amt[ll_shrrow]				= ldc_sharestkamt
	//	lds_shr_div.object.div_amt[ll_shrrow]						= ldc_divamt
	//	lds_shr_div.object.sumdiv_amt[ll_shrrow]				= ldc_sumdivamt
		lds_shr_div.object.share_date[ll_shrrow]				= ldtm_share
	end if
	
	inv_progress.istr_progress.subprogress_index	= ll_index
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " ประมาณการปันผลทะเบียน : " + ls_memno
	
next

// จัดข้อมูลแล้วคำนวณยอดสรุป
lds_shr_div.groupcalc()
*/

// กรองเอาเฉพาะ rate ปันผล
ads_rpt_est.setfilter( "est_type = 'DIV'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

/*	การคำนวณแบบเก่า
// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//if ls_rdtyp = "1" then ls_syntax = " cp_divgrp01.expression=' sum( cp_div for all ) ' "
//if ls_rdtyp = "2" then ls_syntax = " cp_divgrp01.expression=' F_RoundMoney( sum( cp_div for all ) , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
ls_syntax = " cp_divgrp01.expression=' sum( cp_div for all ) ' "
lds_shr_div.Modify( ls_syntax )
ls_syntax = "cp_stkall.expression=' sum( (share_amount * unitshare_value ) for all ) ' "
lds_shr_div.Modify( ls_syntax )
ls_syntax = "cp_divall.expression=' sum( cp_divgrp01 for all distinct member_no ) ' "
lds_shr_div.Modify( ls_syntax )
*/

// คำนวณลงแต่ละ rate ที่ต้องการ
for li_divrate = 1 to li_ratecount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTDIVDAY 50.2)"
		lb_err		= true ; Goto objdestroy
	end if
	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_divrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_divrate]

/*	การคำนวณแบบเก่า
	// ********** ยังทำไม่เสร็จ
	// คำนวณตาม rate ที่เปลี่ยนไป
	// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//	if ls_rdtyp = "1" then ls_syntax = "cp_div.expression=' F_RoundMoney( day * " + string( ldc_estrate ) + " * ( unitshare_value * sharestk_amt )  / " + string( li_sumaccday ) + " , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
//	if ls_rdtyp = "2" then ls_syntax = "cp_div.expression=' day * " + string( ldc_estrate ) + " * ( unitshare_value * sharestk_amt )  / " + string( li_sumaccday ) + " ' "
	ls_syntax = "cp_div.expression=' day * " + string( ldc_estrate ) + " * ( unitshare_value * sharestk_amt )  / " + string( li_sumaccday ) + " ' "
	lds_shr_div.Modify( ls_syntax )
//	li_err2	= lds_shr_div.groupcalc()

	ldc_sumdiv			= lds_shr_div.object.cp_divall[1]
	ldc_sumvalue		= lds_shr_div.object.cp_stkall[1]

	ads_rpt_est.object.est_amt[li_divrate]		= ldc_sumdiv
	ads_rpt_est.object.est_value[li_divrate]		= ldc_sumvalue

	insert into yrrptestdivavg
	( 	coop_id , div_year , seq_no , 
		est_type , est_rate , est_order , est_value , est_amt )
	values
	( 	:ls_coopid , :ls_divyear , nvl( ( select max( seq_no ) from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear ) , 0) + 1 , 
		'DIV' , :ldc_estrate , :ll_estorder , :ldc_sumvalue , :ldc_sumdiv )
	using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTDIVDAY 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณปันผล"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if

	inv_progress.istr_progress.subprogress_index	= li_divrate
	inv_progress.istr_progress.subprogress_text	= string( li_divrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการปันผล Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "
*/

	choose case ls_procest
		case "NOW"
			// ใช้ข้อมูลจาก shsharestatement หุ้น
			
		case "OLD"
			// ใช้ข้อมูลจาก yrbgshrstatement หุ้นสิ้นปี
			
			select max( seq_no ) 
			into :li_seq
			from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear 
			using itr_sqlca;
			
			if isnull( li_seq ) then li_seq = 0
			li_seq++
			
			if ls_rdtyp = '1' then
				// แบบ rountype = 1 ปัดแล้วรวม
				ls_sql		= " insert into yrrptestdivavg "
				ls_sql		+= " ( coop_id , div_year , seq_no , "
				ls_sql		+= " 	est_type , est_rate , est_order , est_value , est_amt ) "
				ls_sql		+= " select '"+ls_coopid+"' , '"+ls_divyear+"' , " + string( li_seq ) + " as seq , "
				ls_sql		+= " 'DIV' , "+string( ldc_estrate )+" , "+string( ll_estorder )+" , sum( div.shrvalue ) as shrvalue , sum( div.div_amt ) as div_amt "
				ls_sql		+= " from( "
				ls_sql		+= " 	select dv.branch , dv.memno , dv.shrvalue , dv.div_amt "
				ls_sql		+= " 	from( "
				ls_sql		+= " 		select ys.coop_id as branch , ys.member_no as memno , ys.seq_no as seqno , "
				ls_sql		+= " 		ys.share_date as shrdate , ys.sharecal_value as shrvalue , ys.rdiv_amt as a , "
				ls_sql		+= " 		nvl( ys.rdiv_amt , 0 ) as div_amt "
				ls_sql		+= " 		from yrbgshrstatementbf ys , yrcfconstant yc "
				ls_sql		+= " 		where ys.coop_id = yc.coop_id "
				ls_sql		+= " 		and ys.coop_id = '"+ls_coopid+"' "
				ls_sql		+= " 		and ys.div_year = '"+ls_divyear+"' "
				ls_sql		+= " 		and exists( select 1 from mbmembmaster where mbmembmaster.coop_id = ys.coop_id and mbmembmaster.member_no = ys.member_no and mbmembmaster.coop_id = '"+ls_coopid+"' " + ls_sqlselect + " ) "
				ls_sql		+= " 		union all "
				ls_sql		+= " 		select ys.coop_id , ys.member_no , ys.seq_no , "
				ls_sql		+= " 		ys.share_date , ys.sharecal_value , ys.rdiv_amt as a , "
				ls_sql		+= " 		ftcm_roundmoney( nvl( ( ys.sharecal_value * '"+string( ldc_estrate )+"' * ys.day ) / ( case when yc.div_dayfix_flag = 0 then ( ( trunc( to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) ) - trunc( to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) ) + 1 ) else yc.div_day_amt end ) , 0 ) , '"+ls_satangtyp+"' , '"+ls_rdtyp+"' , '"+string( li_trnposamt )+"' , '"+string( li_rdposamt )+"' ) as div_amt "
				ls_sql		+= " 		from yrbgshrstatement ys , yrcfconstant yc "
				ls_sql		+= " 		where ys.coop_id = yc.coop_id "
				ls_sql		+= " 		and ys.coop_id = '"+ls_coopid+"' "
				ls_sql		+= " 		and ys.div_year = '"+ls_divyear+"' "
				ls_sql		+= " 		and exists( select 1 from mbmembmaster where mbmembmaster.coop_id = ys.coop_id and mbmembmaster.member_no = ys.member_no and mbmembmaster.coop_id = '"+ls_coopid+"' " + ls_sqlselect + " ) "
				ls_sql		+= " 	) dv "
				ls_sql		+= " ) div "

			else
				// แบบ rountype = 2 รวมทั้งหมดแล้วปัด
				ls_sql		= " insert into yrrptestdivavg "
				ls_sql		+= " ( coop_id , div_year , seq_no , "
				ls_sql		+= " 	est_type , est_rate , est_order , est_value , est_amt ) "
				ls_sql		+= " select '"+ls_coopid+"' , '"+ls_divyear+"' , " + string( li_seq ) + " as seq , "
				ls_sql		+= " 'DIV' , "+string( ldc_estrate )+" , "+string( ll_estorder )+" , sum( div.shrvalue ) as shrvalue , sum( div.div_amt ) as div_amt "
				ls_sql		+= " from( "
				ls_sql		+= " 	select dv.branch , dv.memno , dv.shrvalue , dv.div_amt "
				ls_sql		+= " 	from( "
				ls_sql		+= " 		select ys.coop_id as branch , ys.member_no as memno , ys.sharecal_value as shrvalue , "
				ls_sql		+= " 		nvl( ys.rdiv_amt , 0 ) as div_amt "
				ls_sql		+= " 		from yrbgshrstatementbf ys , yrcfconstant yc "
				ls_sql		+= " 		where ys.coop_id = yc.coop_id "
				ls_sql		+= " 		and ys.coop_id =  '"+ls_coopid+"' "
				ls_sql		+= " 		and ys.div_year = '"+ls_divyear+"' "
				ls_sql		+= " 		and exists( select 1 from mbmembmaster where mbmembmaster.coop_id = ys.coop_id and mbmembmaster.member_no = ys.member_no and mbmembmaster.coop_id = '"+ls_coopid+"' " + ls_sqlselect + " ) "
				ls_sql		+= " 		union all "
				ls_sql		+= " 		select yss.coop_id , yss.member_no , sum( yss.sharecal_value ) as sharecal_value , "
				ls_sql		+= " 		ftcm_roundmoney( nvl( sum( yss.div_amt ) , 0 ) , '"+ls_satangtyp+"' , '"+ls_rdtyp+"' , '"+string( li_trnposamt )+"' , '"+string( li_rdposamt )+"' ) as div_amt "
				ls_sql		+= " 		from( "
				ls_sql		+= " 		select ys.coop_id , ys.member_no , "
				ls_sql		+= " 		ys.share_date , ys.sharecal_value , "
				ls_sql		+= " 		nvl( ( ys.sharecal_value * '"+string( ldc_estrate )+"' * ys.day ) / ( case when yc.div_dayfix_flag = 0 then ( ( trunc( to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) ) - trunc( to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) ) + 1 ) else yc.div_day_amt end ) , 0 ) as div_amt "
				ls_sql		+= " 		from yrbgshrstatement ys , yrcfconstant yc "
				ls_sql		+= " 		where ys.coop_id = yc.coop_id "
				ls_sql		+= " 		and ys.coop_id =  '"+ls_coopid+"' "
				ls_sql		+= " 		and ys.div_year = '"+ls_divyear+"' "
				ls_sql		+= " 		and exists( select 1 from mbmembmaster where mbmembmaster.coop_id = ys.coop_id and mbmembmaster.member_no = ys.member_no and mbmembmaster.coop_id = '"+ls_coopid+"' " + ls_sqlselect + " ) "
				ls_sql		+= " 		) yss "
				ls_sql		+= " 		group by yss.coop_id , yss.member_no "
				ls_sql		+= " 	) dv "
				ls_sql		+= " ) div "
			
			end if
			
			execute immediate :ls_sql using itr_sqlca;

			if itr_sqlca.sqlcode <> 0 then
				ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTDIVDAY 70.1)"
				ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณปันผล"
				ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
				ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
				ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
				lb_err = true ; if lb_err then Goto objdestroy
			end if
		
			inv_progress.istr_progress.subprogress_index	= li_divrate
			inv_progress.istr_progress.subprogress_text	= string( li_divrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการปันผล Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "

	end choose

next

objdestroy:
this.of_setsrvrdmoney( false )

if isvalid(lds_shr_day) then destroy lds_shr_day
if isvalid(lds_shr_div) then destroy lds_shr_div

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estdiv_day()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_estdiv_mth (n_ds ads_constant, n_ds ads_proc_est, ref n_ds ads_rpt_est) throws Exception;string ls_coopid , ls_divyear , ls_rdtyp , ls_satangtyp
string ls_memno , ls_nextmem , ls_shritemtypecode
string ls_accstart , ls_accend
string ls_syntax , ls_sqlselect , ls_sql
string ls_errsyntax
integer li_sumaccmth , li_calmth , li_seqno
integer li_divrate , li_ratecount
integer li_dayamt , li_ret
integer li_trnposamt , li_rdposamt
long ll_index , ll_count , ll_shrrow , ll_estorder
dec ldc_estrate , ldc_sumdiv , ldc_sumvalue
dec ldc_sharestkamt , ldc_unitshare
datetime ldtm_accstart , ldtm_accend 
datetime ldtm_share , ldtm_nextshare
boolean lb_err
n_ds lds_shr_mth , lds_shr_div

this.of_setsrvrdmoney( true )
this.of_setsrvdate( true )
this.of_setsrvdw( true )

inv_progress.istr_progress.subprogress_text = "กำลังดึงข้อมูลการทำรายการหุ้น"

lds_shr_mth = create n_ds
lds_shr_mth.dataobject = "d_divsrv_prc_info_shr_day"
lds_shr_mth.settransobject( itr_sqlca )

lds_shr_div = create n_ds
lds_shr_div.dataobject = "d_divsrv_prc_info_shr_mth_div_data"
lds_shr_div.settransobject( itr_sqlca )

li_dayamt			= ads_constant.object.div_day_amt[1]

ls_coopid				= ads_proc_est.object.coop_id[1]
ls_divyear			= ads_proc_est.object.div_year[1]
ldtm_accstart 		= ads_proc_est.object.sacc_date[1]
ldtm_accend		= ads_proc_est.object.eacc_date[1]

ls_accstart 			= string( ldtm_accstart , "dd/mm/yyyy" )
ls_accend			= string( ldtm_accend , "dd/mm/yyyy" )

// จำนวนเดือนในรอบปีบัญชี
li_sumaccmth			= inv_datesrv.of_monthsafter( date(ldtm_accstart) , date(ldtm_accend) , false )
li_sumaccmth++ 

// set ค่าการปัดเศษ
inv_rdmoneysrv.of_set_constant( ls_coopid , "DIV" , "rounddiv" )
ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )
li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_setdwsql )
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (ESTDIVMTH 0.1)"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*
old
// set ค่าในการดึงข้อมูลสมาชิก
// ยกมาสมาชิกปกติ
ls_sql		= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) as share_date , "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.seq_no in ( select max( stm.seq_no ) from shsharestatement stm where stm.coop_id = shsharestatement.coop_id and stm.sharetype_code = shsharestatement.sharetype_code and stm.member_no = shsharestatement.member_no and stm.share_date < to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "
ls_sql		+= " union "
// ระหว่างปีสมาชิกปกติ
ls_sql		+= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , SHSHARESTATEMENT.SHARE_DATE , "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.shritemtype_code <> 'B/F' "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.share_date between to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) and to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '001001' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "
// ยกมาสมาชิกลาออก
ls_sql		+= " union "
ls_sql		+= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) as share_date, "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.seq_no in ( select max( stm.seq_no ) from shsharestatement stm where stm.coop_id = shsharestatement.coop_id and stm.sharetype_code = shsharestatement.sharetype_code and stm.member_no = shsharestatement.member_no and stm.share_date < to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "
// ระหว่างปีสมาชิกลาออก
ls_sql		+= " union "
ls_sql		+= " SELECT  SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SEQ_NO , SHSHARESTATEMENT.SHARE_DATE , "
ls_sql		+= " SHSHARESTATEMENT.SHRITEMTYPE_CODE , SHUCFSHRITEMTYPE.SIGN_FLAG , SHSHARETYPE.UNITSHARE_VALUE , 0.00 as cp_sharesumnet, "
ls_sql		+= " SHSHARESTATEMENT.SHARESTK_AMT , share_amount "
ls_sql		+= " FROM SHSHARESTATEMENT , SHUCFSHRITEMTYPE , SHSHARETYPE     "
ls_sql		+= " WHERE ( SHSHARESTATEMENT.SHRITEMTYPE_CODE = SHUCFSHRITEMTYPE.SHRITEMTYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.SHARETYPE_CODE = SHSHARETYPE.SHARETYPE_CODE ) "
ls_sql		+= " and ( SHSHARESTATEMENT.coop_id = SHSHARETYPE.coop_id ) "
ls_sql		+= " and ( shsharestatement.item_status = 1 ) "
ls_sql		+= " and shsharestatement.shritemtype_code <> 'B/F' "
ls_sql		+= " and shsharestatement.coop_id = '"+ls_coopid+"' "
ls_sql		+= " and shsharestatement.share_date between to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) and to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) "
ls_sql		+= " and exists ( select 1 from mbmembmaster where mbmembmaster.resign_date > to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.member_date <= to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) and mbmembmaster.resign_status = 1 and mbmembmaster.coop_id = '"+ls_coopid+"' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " )  "

//try
//	inv_procsrv.of_get_sqlselect( ls_sqlselect )
//	inv_procsrv.of_set_sqldw_column( lds_shr_mth, " and shsharestatement.coop_id = '" + ls_coopid + "' " )	// ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_shr_mth, " and shsharestatement.share_date between to_date('" + ls_accstart + "','dd/mm/yyyy') and to_date('" + ls_accend + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
//	inv_procsrv.of_set_sqldw_column( lds_shr_mth, " and exists ( select 1 from mbmembmaster where mbmembmaster.member_status = 1 and mbmembmaster.resign_status = 0 and mbmembmaster.coop_id = '" + ls_coopid + "' and mbmembmaster.coop_id = shsharestatement.coop_id and mbmembmaster.member_no = shsharestatement.member_no " + ls_sqlselect + " ) " )
//catch( Exception lthw_setdwsql )
//	ithw_exception.text	+= lthw_setdwsql.text
//	ithw_exception.text	+= "~r~nพบขอผิดพลาด (ESTDIVMTH 0.1)"
//	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
//	lb_err = true
//end try
//if lb_err then Goto objdestroy

lds_shr_mth.setsqlselect(ls_sql)

ll_count		= lds_shr_mth.retrieve()

lds_shr_mth.setsort( " SHSHARESTATEMENT.coop_id , SHSHARESTATEMENT.MEMBER_NO , SHSHARESTATEMENT.SHARE_DATE , SHSHARESTATEMENT.SEQ_NO " )
lds_shr_mth.sort()

if ll_count < 1 then
	ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTDIVMTH 0.2)"
	ithw_exception.text 	+= "~r~nไม่พบข้อมูลรายการเคลื่อนไหว"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

// ปรับแต่ง statement กรณี สอ.ที่มีการถอนหุ้นระหว่างปี
try
	this.of_prc_estdiv_mth_mod_swd( ads_constant , ads_proc_est , lds_shr_mth , lds_shr_div )
catch( Exception lthw_modshr )
	ithw_exception.text	+= lthw_modshr.text
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (ESTDIVMTH 10.1)"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
*/

// กรองเอาเฉพาะ rate ปันผล
ads_rpt_est.setfilter( "est_type = 'DIV'" )
ads_rpt_est.filter()
li_ratecount = ads_rpt_est.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= li_ratecount

/*
old
// ปรับ computefield ก่อนทำรายการ
// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//if ls_rdtyp = "1" then ls_syntax = "cp_divgrp01.expression=' sum( cp_div for group 1 ) ' "
//if ls_rdtyp = "2" then ls_syntax = "cp_divgrp01.expression=' F_RoundMoney(sum( cp_div for group 1 ) , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
ls_syntax = "cp_divgrp01.expression=' sum( cp_div for group 1 ) ' "
ls_errsyntax = lds_shr_div.Modify( ls_syntax )
ls_syntax = "cp_sumshrmthall.expression=' sum( sum_shrmth for all ) ' "
lds_shr_div.Modify( ls_syntax )
ls_syntax = "cp_divall.expression=' sum( cp_divgrp01 for all distinct member_no ) ' "
ls_errsyntax = lds_shr_div.Modify( ls_syntax )
*/

select max( seq_no ) 
into :li_seqno
from yrrptestdivavg 
where coop_id = '" + is_coopcontrol + "' 
and div_year = '"+ ls_divyear +"' 
using itr_sqlca;
if isnull( li_seqno ) then li_seqno = 0

// คำนวณลงแต่ละ rate ที่ต้องการ
for li_divrate = 1 to li_ratecount

	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTDIVMTH 50.2)"
		lb_err		= true ; Goto objdestroy
	end if

	// ดึง rate ที่จะประมาณออกมา
	ldc_estrate	= ads_rpt_est.object.est_rate[li_divrate]
	ll_estorder	= ads_rpt_est.object.est_order[li_divrate]
	
	/*
	old
	// คำนวณตาม rate ที่เปลี่ยนไป
	// comment รอแก้เนื่องจาก web ใช้แล้วใน compute_field ไม่สามารถเรียกใช้ Function F_roundmoney ได้
//	if ls_rdtyp = "1" then ls_syntax = "cp_div.expression=' F_RoundMoney( ( " + string( li_sumaccmth ) + " - period_month ) * sum_shrmth * " + string( ldc_estrate ) + " / " + string( li_sumaccmth ) + " , ~"" + ls_satangtyp + "~" , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ' "
//	if ls_rdtyp = "2" then ls_syntax = "cp_div.expression=' ( " + string( li_sumaccmth ) + " - period_month ) * sum_shrmth * " + string( ldc_estrate ) + " / " + string( li_sumaccmth ) + " ' "
	ls_syntax = "cp_div.expression=' ( " + string( li_sumaccmth ) + " - period_month ) * sum_shrmth * " + string( ldc_estrate ) + " / " + string( li_sumaccmth ) + " ' "
	ls_errsyntax	= lds_shr_div.Modify( ls_syntax )
	lds_shr_div.groupcalc()
	
	
	ldc_sumvalue	= lds_shr_div.object.cp_sumshrmthall[1]
	ldc_sumdiv		= lds_shr_div.object.cp_divall[1]

	ads_rpt_est.object.est_amt[li_divrate]		= ldc_sumdiv
	ads_rpt_est.object.est_value[li_divrate]		= ldc_sumvalue

	old
	insert into yrrptestdivavg
	( 	coop_id , div_year , seq_no , 
		est_type , est_rate , est_order , est_value , est_amt )
	values
	( 	:ls_coopid , :ls_divyear , nvl( ( select max( seq_no ) from yrrptestdivavg where coop_id = :ls_coopid and div_year = :ls_divyear ) , 0) + 1 , 
		'DIV' , :ldc_estrate , :ll_estorder , :ldc_sumvalue , :ldc_sumdiv )
	using itr_sqlca;
	*/
	
	
	li_seqno++
	
	ls_sql		= " insert into yrrptestdivavg "
	ls_sql		+= " ( 	coop_id , div_year , seq_no , "
	ls_sql		+= " 		est_type , est_rate , est_order , est_value , est_amt ) "
	
	if ls_rdtyp = "1" then
		/*ปัดแล้วรวม*/
		ls_sql		+= " select '" + is_coopcontrol + "' , '"+ ls_divyear +"' , "
		ls_sql		+= " " + string( li_seqno ) + " , "
		ls_sql		+= " 'DIV' , " + string( ldc_estrate ) + " , " + string( ll_estorder ) + " , "
		ls_sql		+= " sum( shrvalue ) as shrvalue , sum( div_amt ) as div_amt "
		ls_sql		+= " from( "
		ls_sql		+= " 	select m.membgroup_code , mup.membgroup_desc , dv.memno , "
		ls_sql		+= " 	( dv.sharecal_value ) as shrvalue , "
		ls_sql		+= " 	ftcm_roundmoney( ( dv.div_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string(li_trnposamt) + " , " + string(li_rdposamt) + " ) as div_amt "
		ls_sql		+= " 	from( "
		ls_sql		+= " 		select ys.coop_id as coop , ys.member_no as memno , ys.sharecal_value , ys.mth_code , "
		ls_sql		+= " 		nvl( ( ys.sharecal_value * " + string( ldc_estrate ) + " * ( " + string( li_sumaccmth ) + " - ys.mth_code ) / " + string( li_sumaccmth ) + " ) , 0 ) as div_amt "
		ls_sql		+= " 		from yrbgmaster , yrbgshrmth ys , yrcfconstant yc "
		ls_sql		+= " 		where ys.coop_id = yc.coop_id "
		ls_sql		+= " 		and yrbgmaster.coop_id = ys.coop_id "
		ls_sql		+= " 		and yrbgmaster.member_no = ys.member_no "
		ls_sql		+= " 		and yrbgmaster.div_year = ys.div_year "
		ls_sql		+= " 		and ys.coop_id = '" + is_coopcontrol + "' "
		ls_sql		+= " 		and ys.div_year = '"+ ls_divyear +"' "
		ls_sql		+= " 		and yrbgmaster.refraindiv_flag = 0 "
		ls_sql		+= ls_sqlselect
		ls_sql		+= " 	) dv , mbmembmaster m , mbucfprename mp , mbucfmembgroup mup "
//		ls_sql		+= " 	yrbginfo ybi "
		ls_sql		+= " 	where dv.coop = m.coop_id "
		ls_sql		+= " 	and dv.memno = m.member_no "
		ls_sql		+= " 	and m.coop_id = mup.coop_id(+) "
		ls_sql		+= " 	and m.membgroup_code = mup.membgroup_code(+) "
//		ls_sql		+= " 	and m.coop_id = ybi.coop_id "
//		ls_sql		+= " 	and m.member_no = ybi.member_no "
//		ls_sql		+= " 	and ybi.bgyear = substr( trim( '"+ ls_divyear +"' ) , 1 , 4 ) "
		ls_sql		+= " 	and m.prename_code = mp.prename_code(+) "
		ls_sql		+= " ) mg "
	else
		/*รวมแล้วปัด*/
		ls_sql		+= " select '" + is_coopcontrol + "' , '"+ ls_divyear +"' , "
		ls_sql		+= " " + string( li_seqno ) + " , "
		ls_sql		+= " 'DIV' , " + string( ldc_estrate ) + " , " + string( ll_estorder ) + " , "
		ls_sql		+= " sum( shrvalue ) as shrvalue , sum( div_amt ) as div_amt "
		ls_sql		+= " from( "
		ls_sql		+= " 	select m.membgroup_code , mup.membgroup_desc , dv.memno , "
		ls_sql		+= " 	sum( dv.sharecal_value ) as shrvalue , "
		ls_sql		+= " 	ftcm_roundmoney( sum( dv.div_amt ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string(li_trnposamt) + " , " + string(li_rdposamt) + " ) as div_amt "
		ls_sql		+= " 	from( "
		ls_sql		+= " 		select ys.coop_id as coop , ys.member_no as memno , ys.sharecal_value , ys.mth_code , "
		if is_coopcontrol = '010001' or is_coopcontrol = '012001' then
			ls_sql		+= " 		round( nvl( ( ys.sharecal_value * " + string( ldc_estrate ) + "  * ( " + string( li_sumaccmth ) + " - ys.mth_code ) / " + string( li_sumaccmth ) + " ) , 0 ) , 2 ) as div_amt "
		else
			ls_sql		+= " 		nvl( ( ys.sharecal_value * " + string( ldc_estrate ) + "  * ( " + string( li_sumaccmth ) + " - ys.mth_code ) / " + string( li_sumaccmth ) + " ) , 0 ) as div_amt "
		end if
		ls_sql		+= " 		from yrbgmaster , yrbgshrmth ys , yrcfconstant yc "
		ls_sql		+= " 		where ys.coop_id = yc.coop_id "
		ls_sql		+= " 		and yrbgmaster.coop_id = ys.coop_id "
		ls_sql		+= " 		and yrbgmaster.member_no = ys.member_no "
		ls_sql		+= " 		and yrbgmaster.div_year = ys.div_year "
		ls_sql		+= " 		and ys.coop_id = '" + is_coopcontrol + "' "
		ls_sql		+= " 		and ys.div_year = '"+ ls_divyear +"' "
		ls_sql		+= " 		and yrbgmaster.refraindiv_flag = 0 "
		ls_sql		+= ls_sqlselect
		ls_sql		+= " 	) dv , mbmembmaster m , mbucfprename mp , mbucfmembgroup mup "
//		ls_sql		+= " 	yrbginfo ybi "
		ls_sql		+= " 	where dv.coop = m.coop_id "
		ls_sql		+= " 	and dv.memno = m.member_no "
		ls_sql		+= " 	and m.coop_id = mup.coop_id(+) "
		ls_sql		+= " 	and m.membgroup_code = mup.membgroup_code(+) "
//		ls_sql		+= " 	and m.coop_id = ybi.coop_id "
//		ls_sql		+= " 	and m.member_no = ybi.member_no "
//		ls_sql		+= " 	and ybi.bgyear = substr( trim( '"+ ls_divyear +"' ) , 1 , 4 ) "
		ls_sql		+= " 	and m.prename_code = mp.prename_code(+) "
//		ls_sql		+= " 	group by m.membgroup_code , mup.membgroup_desc , dv.memno , ybi.shrfw_amt "
		ls_sql		+= " 	group by m.membgroup_code , mup.membgroup_desc , dv.memno "
		ls_sql		+= " ) mg "
	end if
	
	execute immediate :ls_sql using itr_sqlca;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (ESTDIVMTH 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลประมาณปันผล"
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if

	inv_progress.istr_progress.subprogress_index	= li_divrate
	inv_progress.istr_progress.subprogress_text	= string( li_divrate , "#,##0" ) + "/" + string( li_ratecount , "#,##0" ) + " ประมาณการปันผล Rate : " + string( ldc_estrate * 100 , "#,##0.0000" ) + " % "

next

this.of_setsrvdate( false )
this.of_setsrvdw( false )
objdestroy:
if isvalid(lds_shr_mth) then destroy lds_shr_mth
if isvalid(lds_shr_div) then destroy lds_shr_div

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estdiv_mth()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_estdiv_mth_mod_swd (n_ds ads_constant, n_ds ads_proc_est, n_ds ads_shr_mth, ref n_ds ads_shr_div) throws Exception;string		ls_memcoop , ls_prvmemcoop , ls_memno, ls_prvmemno , ls_syntax , ls_sql , ls_divyear
string		ls_shradd , ls_shrwtd , ls_shrspec , ls_shrcp
dec		ldc_share, ldc_withdraw , ldc_sumshrmth , ldc_divamt , ldc_divrate , ldc_sharereal , ldc_sumshrmthreal
dec		ldc_shrmth , ldc_shrpx , ldc_shrsw , ldc_sumshrpx , ldc_sumshrsw , ldc_sumshare , ldc_sumshrbf , ldc_shrbf
integer	li_periodmonth , li_prvperiodmonth , li_endaccmonth , li_buysharebfday
boolean	lb_havewithdraw
long		ll_index , ll_row, ll_rowcount , ll_find
datetime	ldtm_share , ldtm_accstart , ldtm_accend
boolean lb_err
ll_rowcount = ads_shr_mth.rowcount()

inv_progress.istr_progress.subprogress_text	= "ปรับแต่งข้อมูลรายการเคลื่อนไหวหุ้น"
inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= ll_rowcount

ls_prvmemno = ""
li_buysharebfday		= ads_constant.object.div_day_amt[1]
ldc_share				= 0
ldc_sumshrmth			= 0
ldtm_accstart 			= ads_proc_est.object.sacc_date[1]
ldtm_accend			= ads_proc_est.object.eacc_date[1]

// จำนวนเดือนในรอบปีบัญชี
li_endaccmonth			= inv_datesrv.of_monthsafter( date(ldtm_accstart) , date(ldtm_accend) , false )
li_endaccmonth++ 


// ยัดยอดเพื่อคำนวณ
for ll_index = 1 to ll_rowcount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTDIVMTH 50.1)"
		lb_err		= true ; Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= ll_index
	
	ls_memcoop			= ads_shr_mth.object.coop_id[ ll_index ]
	ls_memno				= ads_shr_mth.object.member_no[ ll_index ]
	ldc_share				= ads_shr_mth.object.cp_sharesum[ ll_index ]
	//** mark ไว้ก่อนเผื่อนำไปใช้โชว์ตอนคำนวณรายคนว่ามียอดอะไรเท่าไหร่บ้าง
//	ldc_shrmth				= ads_shr_mth.object.cp_shrmth[ ll_index ]
//	ldc_shrpx				= ads_shr_mth.object.cp_shrpx[ ll_index ]
//	ldc_shrsw				= ads_shr_mth.object.cp_shrsw[ ll_index ]
	ldtm_share				= ads_shr_mth.object.share_date[ ll_index ]
	
	// หางวดทางบัญชี
	li_periodmonth		= of_gen_period( date(ldtm_accstart) , date(ldtm_share) )
	
	// ตรวจสอบวันที่น้อยกว่าวันที่กำหนดหรือไม่ถ้าน้อยกว่าให้ถอยไปอีก 1 เดือน
	if day( date(ldtm_share )) <= li_buysharebfday then
		li_periodmonth --
	end if

	// แถวสุดท้ายบังคับให้ยิงข้อมูล โดยเทียบกับ row ก่อนหน้าถ้าไม่ใช่งวดเดียวกันคนเดียวกันให้ยิงไปก่อนแล้วยิง row สุดท้ายตาม
	// ถ้าเป็นงวดเดียวกันคนเดียวกันให้รวมยอดแล้วยิงรวมกับ row สุดท้าย
	if ll_index = ll_rowcount and li_periodmonth = li_prvperiodmonth and ls_prvmemno = ls_memno then li_prvperiodmonth = 99

	// ถ้าเป็นงวดเดิม ทะเบียนเดิม ให้ผ่านไป
	if ( li_periodmonth <> li_prvperiodmonth or ls_prvmemno <> ls_memno ) and ( ll_index <> 1 or ll_index = ll_rowcount ) then 
		
		// กรณีแถวสุดท้าย ให้ลงข้อมูลแถวก่อนหน้าด้วยถ้าเป็นคนละงวดกัน
		if ll_index = ll_rowcount then 
			if li_prvperiodmonth = 99 then li_prvperiodmonth = li_periodmonth
			// แถวรองสุดท้ายไม่เท่ากับแถวสุดท้าย
			if li_periodmonth <> li_prvperiodmonth or ls_prvmemno <> ls_memno and ll_index > 1 then
				ll_row = ads_shr_div.insertrow(0)
				// เก็บค่าลงไปก่อน
				ads_shr_div.object.coop_id[ ll_row ]			= ls_memcoop
				ads_shr_div.object.member_no[ ll_row ]		= ls_prvmemno
				ads_shr_div.object.period_month[ ll_row ]	= li_prvperiodmonth
				ads_shr_div.object.sum_shrmth[ ll_row ]	= ldc_sumshare
//				ads_shr_div.object.shrmth_amt[ ll_row ]		= ldc_sumshrmth
//				ads_shr_div.object.shrpx_amt[ ll_row ]		= ldc_sumshrpx
//				ads_shr_div.object.shrsw_amt[ ll_row ]		= ldc_sumshrsw
				
			//	 ต้องเป็นค่าบรรทัดสุดท้ายเท่านั้น
				ldc_sumshare			= ldc_share
//				ldc_sumshrmth			= ldc_shrmth
//				ldc_sumshrpx			= ldc_shrpx
//				ldc_sumshrsw			= ldc_shrsw
			else
			//	 ต้องรวมยอดก่อนหน้าด้วยเพื่อยิงลงบรรทัดสุดท้าย
				ldc_sumshare += ldc_share
//				ldc_sumshrmth += ldc_shrmth
//				ldc_sumshrpx	+= ldc_shrpx
//				ldc_sumshrsw	+= ldc_shrsw
			end if
			li_prvperiodmonth = li_periodmonth
			ls_prvmemno 		= ls_memno
		end if
		
		ll_row = ads_shr_div.insertrow(0)
		
		ads_shr_div.object.coop_id[ ll_row ]			= ls_memcoop
		ads_shr_div.object.member_no[ ll_row ]		= ls_prvmemno
		ads_shr_div.object.period_month[ ll_row ]	= li_prvperiodmonth
		ads_shr_div.object.sum_shrmth[ ll_row ]	= ldc_sumshare
//		ads_shr_div.object.shrmth_amt[ ll_row ]	= ldc_sumshrmth
//		ads_shr_div.object.shrpx_amt[ ll_row ]		= ldc_sumshrpx
//		ads_shr_div.object.shrsw_amt[ ll_row ]		= ldc_sumshrsw
		
		// clear ค่า
		ldc_sumshare			= 0
//		ldc_sumshrmth			= 0
//		ldc_sumshrpx			= 0
//		ldc_sumshrsw			= 0
		li_prvperiodmonth 		= li_periodmonth
		ls_prvmemno			= ls_memno
	end if
	
	// กรณีแถวแรก
	if ll_index = 1 then li_prvperiodmonth = li_periodmonth
	if ll_index = 1 then ls_prvmemno = ls_memno
	
	// sum ยอดรวม
	ldc_sumshare += ldc_share
//	ldc_sumshrmth += ldc_shrmth
//	ldc_sumshrpx	+= ldc_shrpx
//	ldc_sumshrsw	+= ldc_shrsw
	
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_rowcount , "#,##0" ) + " จัดทำข้อมูลปันผลทะเบียน : " + ls_memno
	
next

ll_rowcount	= ads_shr_div.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
ll_row = 0
// ปรับยอด statement
for ll_index = ll_rowcount to 1 step -1
	
	yield()
	if inv_progress.of_is_stop() then
		destroy ads_shr_div
		return -1
	end if
	
	ll_row++
	inv_progress.istr_progress.subprogress_index	= ll_row
	// หุ้นที่ซื้อแต่ละ statement
	ldc_share			= ads_shr_div.object.sum_shrmth[ ll_index ]
//	ldc_sumshrmth		= ads_shr_div.object.shrmth_amt[ ll_index ]
//	ldc_sumshrpx 		= ads_shr_div.object.shrpx_amt[ ll_index ] 
//	ldc_sumshrsw 		= ads_shr_div.object.shrsw_amt[ ll_index ]
	ls_memno 			= ads_shr_div.getitemstring( ll_index, "member_no" )
	
//	ldc_share	= ( ldc_sumshrmth + ldc_sumshrpx ) + ldc_sumshrsw
	 
	ads_shr_div.setitem( ll_index, "sum_shrmth", ldc_share )
	// ตรวจสอบว่าเป็นรายการของสมาชิกคนเดิมหรือป่าว
	if ( ls_prvmemno <> ls_memno ) then
		ldc_withdraw = 0
		lb_havewithdraw = false
		ls_prvmemno = ls_memno
	end  if		
	
	if ( ldc_share > 0 ) and ( ldc_withdraw > 0 ) then continue
	
	if ldc_withdraw < 0 or ldc_share < 0 then ldc_withdraw += ldc_share

	// ถ้ายอดที่ถอน + ยอดที่ซื้อยังติดลบ ก็ต้องถอนย้อนลงไปเรื่อย ๆ
	if ( ldc_withdraw < 0 ) then
		lb_havewithdraw = true
		ads_shr_div.setitem( ll_index, "sum_shrmth", 0 )

	// กรณียอดที่ถอน + ยอดที่ซื้อ เริ่มติด บวก เช่น  
	// ซื้อ 1500 แต่ถอน แค่ 400 ก็ต้องปรับยอดที่ซื้อให้เท่ากับ 1100
	elseif ( lb_havewithdraw ) then
		lb_havewithdraw = false
		ads_shr_div.setitem( ll_index, "sum_shrmth", ldc_withdraw )
	end if
	
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_rowcount , "#,##0" ) + "คำนวณถอนหุ้นทะเบียน : " + ls_memno 
	
next
 
// จัดข้อมูลแล้วคำนวณยอดสรุป
ads_shr_div.setsort( " coop_id , member_no , period_month " )
ads_shr_div.sort()
//ls_syntax = "c_div.expression = ' round(  ( 12 - period_month ) * sum_shrmth *  " + string( ldc_divrate ) + " /12, 2 )' "
//ads_shr_div.Modify( ls_syntax )
//ls_syntax = "c_sumdiv.expression =  'cumulativeSum( div_amt )' "
//ads_shr_div.Modify( ls_syntax )
//ads_shr_div.groupcalc()

//// ใส่ค่าลงตัวแปล
//for ll_index = 1 to ll_rowcount 
//	yield()
//	if inv_progress.of_is_stop() then
//		destroy ads_shr_div
//		return -1
//	end if
//	
//	inv_progress.istr_progress.subprogress_index	= ll_index
//	
//	ls_memno			= ads_shr_div.object.member_no[ ll_index ]
//	ldc_sumshrmth		= ads_shr_div.object.shrmth_amt[ ll_index ]
//	ldc_sumshrsw		= ads_shr_div.object.shrsw_amt[ ll_index ]
//	ldc_sumshrpx		= ads_shr_div.object.shrpx_amt[ ll_index ]
//	ldc_share			= ads_shr_div.object.sum_shrmth[ ll_index ]
//	ldc_divamt	 		= ads_shr_div.object.c_div[ ll_index ]
//	li_periodmonth   	= ads_shr_div.object.period_month[ ll_index ]
//	
//	if li_periodmonth = 0 then 
//		ldc_divamt = f_divround( ldc_divamt )
//		ads_shr_div.object.divbf_amt[ ll_index ] = ldc_divamt
//	end if
//	
//	ads_shr_div.object.div_amt[ ll_index ]	= ldc_divamt
//	
//	inv_progress.istr_progress.subprogress_text	= "ข้อมูลปันผลทะเบียน : " + ls_memno + " / " + string( ldc_divamt , '#,##0.00' ) + " บาท ( " + is_proccode + " )"
//	
////	if is_proccode = "NOW" then
////		ls_shradd	= "shraddmth_" + string( li_periodmonth )
////		ls_shrwtd	= "shrwtdmth_" + string( li_periodmonth )
////		ls_shrspec	= "shrspecialmth_" + string( li_periodmonth )
////		ls_shrcp		= "shrcompute_" + string( li_periodmonth )
////
////		ls_sql			= "update yrmembdetail set " + ls_shradd + " = " + string(ldc_sumshrmth)
////		ls_sql			+= " , " + ls_shrwtd + " = " + string(ldc_sumshrsw)
////		ls_sql			+= " , " + ls_shrspec + " = " + string(ldc_sumshrpx)
////		ls_sql			+= " , " + ls_shrcp + " = " + string(ldc_share)
////		ls_sql			+= " where member_no = " + ls_memno
////		ls_sql			+= " and acc_year = " + ls_divyear
////		
////		execute immediate :ls_sql using itr_sqlca;
////
////		if itr_sqlca.sqlcode <> 0 then
////			ithw_exception.text += "~nพบข้อผิดพลาด ไม่สามารถอัพเดทยอดคำนวณปันผลได้~n"
////			ithw_exception.text += string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
////			throw ithw_exception
////		end if
////	end if
//	
//	if is_proccode = 'NOW' then
//		
//		ll_find		= lds_yrmem.find( " member_no = '" + ls_memno +"'", 0, lds_yrmem.rowcount())
//		
//		lds_yrmem.setitem( ll_find , "shraddmth_" + string( li_periodmonth ) , ldc_sumshrmth )
//		lds_yrmem.setitem( ll_find , "shrwtdmth_" + string( li_periodmonth ) , ldc_sumshrsw )
//		lds_yrmem.setitem( ll_find , "shrspecialmth_" + string( li_periodmonth ) , ldc_sumshrpx )
//		lds_yrmem.setitem( ll_find , "shrcompute_" + string( li_periodmonth ) , ldc_share )
//		
//	end if
//	
//next
//
//if is_proccode = 'NOW' then
//	
//	if lds_yrmem.update() <> 1 then
//		ithw_exception.text += "~nError Yrmembdetail~n" + lds_yrmem.of_geterrormassage()
//		rollback using itr_sqlca ;
//		throw	ithw_exception
//	else
////		commit using itr_sqlca;
//	end if
//
//end if
//
objdestroy:

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estdiv_mth_mod_swd()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_memb_clr (n_ds ads_constant, n_ds ads_memb) throws Exception;string ls_sql , ls_sqlselect
string ls_divyear , ls_year , ls_startacc , ls_endacc
integer li_index
long ll_index , ll_count , ll_seqno
datetime ldtm_startacc , ldtm_endacc
boolean lb_err

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ได้รับปันผลเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 7

ls_divyear		= ads_memb.object.div_year[1]
ldtm_startacc	= ads_memb.object.sacc_date[1]
ldtm_endacc	= ads_memb.object.eacc_date[1]

ls_year		= left( ls_divyear , 4 )
ls_startacc	= string( ldtm_startacc , 'yyyy/mm/dd' )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

li_index		= 0

/*ดึงรายละเอียดที่จะประมวล*/
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*Clr ข้อมูลหุ้นรายวันค้างจ่ายข้ามปี*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRCLR 50.1)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ทะเบียนหุ้นค้างจ่าย ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrbgshrstatementbf " 
ls_sql += " where yrbgshrstatementbf.coop_id = '" + is_coopcontrol + "' and yrbgshrstatementbf.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbgshrstatementbf.coop_id and yrbgmaster.member_no = yrbgshrstatementbf.member_no and yrbgmaster.div_year = yrbgshrstatementbf.div_year " 
ls_sql	+= " and yrbgmaster.coop_id =  '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.1) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ทะเบียนหุ้นค้างจ่าย ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*Clr ข้อมูลหุ้นรายวัน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.2)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ทะเบียนหุ้นรายวัน ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrbgshrstatement " 
ls_sql += " where yrbgshrstatement.coop_id = '" + is_coopcontrol + "' and yrbgshrstatement.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbgshrstatement.coop_id and yrbgmaster.member_no = yrbgshrstatement.member_no and yrbgmaster.div_year = yrbgshrstatement.div_year " 
ls_sql	+= " and yrbgmaster.coop_id =  '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.2) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ทะเบียนหุ้นรายวัน ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*Clr ข้อมูลหุ้นรายเดือน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.3)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ทะเบียนหุ้นรายเดือน ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrbgshrmth " 
ls_sql += " where yrbgshrmth.coop_id = '" + is_coopcontrol + "' and yrbgshrmth.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbgshrmth.coop_id and yrbgmaster.member_no = yrbgshrmth.member_no and yrbgmaster.div_year = yrbgshrmth.div_year " 
ls_sql	+= " and yrbgmaster.coop_id =  '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.3) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ทะเบียนหุ้นรายเดือน ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*Clr ข้อมูลหุ้น*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.4)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ทะเบียนหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrbgshrmaster " 
ls_sql += " where yrbgshrmaster.coop_id = '" + is_coopcontrol + "' and yrbgshrmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbgshrmaster.coop_id and yrbgmaster.member_no = yrbgshrmaster.member_no and yrbgmaster.div_year = yrbgshrmaster.div_year " 
ls_sql	+= " and yrbgmaster.coop_id =  '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.4) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ทะเบียนหุ้น ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*Clr ข้อมูลหนี้*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.5)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( สัญญาเงินกู้ ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrbglonmaster " 
ls_sql += " where yrbglonmaster.coop_id = '" + is_coopcontrol + "' and yrbglonmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year " 
ls_sql	+= " and yrbgmaster.coop_id =  '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.5) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( สัญญาเงินกู้ ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*Clr ข้อมูลสมาชิกรับปันผล*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.6)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( สมาชิกที่ได้รับปันผล ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrbgmaster " 
ls_sql += " where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = yrbgmaster.coop_id and yrbgmaster.member_no = yrbgmaster.member_no and yrbgmaster.div_year = yrbgmaster.div_year " 
ls_sql	+= " and yrbgmaster.coop_id =  '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.6) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( สมาชิกที่ได้รับปันผล ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*Clr ข้อมูลเดือน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.7)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( ค่าคงที่เดือน ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrucfmth " 
ls_sql += " where yrucfmth.coop_id = '" + is_coopcontrol + "' and yrucfmth.div_year = '"+ ls_divyear +"' "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_clr (70.7) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( ค่าคงที่เดือน ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

objdestroy:

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_memb_clr()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_memb_lon (n_ds ads_memb) throws Exception;string ls_sql , ls_sqlselect
string ls_coopctrl , ls_coopid
string ls_divyear , ls_year , ls_startacc , ls_endacc
datetime ldtm_startacc , ldtm_endacc
boolean lb_err

n_ds lds_yrshr_stm

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลหนี้สำหรับเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 2

ls_coopid		= ads_memb.object.coop_id[1]
ls_divyear		= ads_memb.object.div_year[1]
ldtm_startacc	= ads_memb.object.sacc_date[1]
ldtm_endacc	= ads_memb.object.eacc_date[1]

ls_year		= left( ls_divyear , 4 )
ls_startacc	= string( ldtm_startacc , 'yyyy/mm/dd' )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ls_sql	= " delete from yrbglonmaster " 
ls_sql += " where yrbglonmaster.coop_id = '"+ ls_coopid +"' and yrbglonmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and exists ( select 1 from yrbgmaster where  yrbgmaster.coop_id = yrbglonmaster.coop_id and yrbgmaster.member_no = yrbglonmaster.member_no and yrbgmaster.div_year = yrbglonmaster.div_year " 
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_lon (70.0) "
	ithw_exception.text 	+= "~r~nไม่สามารถลบข้อมูลหุ้นสำหรับปันผล ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลหนี้สำหรับเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 1

/*ยังมีหลุดกรณีโอนเงินชำระหนี้ข้ามปีต้องคิดเฉลี่ยคืนปีเก่าหรือไม่?*/
ls_sql	= " insert into yrbglonmaster "
ls_sql += " ( coop_id , member_no , div_year , seq_no , loancontract_no , interest_accum ) "
ls_sql += " select lncontmaster.coop_id , lncontmaster.member_no , yrbgmaster.div_year , "
ls_sql += " rank() over ( partition by lncontmaster.coop_id , lncontmaster.member_no , lncontmaster.coop_id order by lncontmaster.loancontract_no ) as seq_no , "
ls_sql += " lncontmaster.loancontract_no , -1 * sum( lncontstatement.interest_payment * lnucfloanitemtype.sign_flag ) as sum_intpay   "
ls_sql += " from lncontmaster , lncontstatement , lnucfloanitemtype , yrbgmaster "
ls_sql += " where lncontmaster.coop_id = lncontstatement.coop_id "
ls_sql += " and lncontmaster.loancontract_no = lncontstatement.loancontract_no "
ls_sql += " and lncontstatement.loanitemtype_code = lnucfloanitemtype.loanitemtype_code "
ls_sql += " and lncontmaster.coop_id = yrbgmaster.coop_id "
ls_sql += " and lncontmaster.member_no = yrbgmaster.member_no "
ls_sql += " and yrbgmaster.coop_id = '" + ls_coopid + "' "
ls_sql += " and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and lncontstatement.intaccum_date between to_date('" + ls_startacc + "','yyyy/mm/dd') and to_date('" + ls_endacc + "','yyyy/mm/dd') "
ls_sql += " and lncontstatement.slip_date >= to_date('" + ls_startacc + "','yyyy/mm/dd') "
ls_sql += " and lncontstatement.loanitemtype_code not in ('LRG','LTG','RRG','RTG') "
ls_sql += " and lncontstatement.calavg_status = 8 "
ls_sql += ls_sqlselect
ls_sql += " group by lncontmaster.coop_id , lncontmaster.member_no , yrbgmaster.div_year , lncontmaster.coop_id , lncontmaster.loancontract_no "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_lon (70.1) "
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลหนี้สำหรับเฉลี่ยคืน ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

objdestroy:

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_memb_lon()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_memb_master (n_ds ads_constant, n_ds ads_memb) throws Exception;string ls_sql , ls_sqlselect
string ls_coopctrl , ls_coopid , ls_prefix
string ls_divyear , ls_year, ls_endacc
string ls_memset
string ls_memno , ls_reqchgtype 
integer li_flag
datetime ldtm_endacc

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลสมาชิกที่ได้รับปันผล-เฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 2

ls_memset		= ads_constant.object.memset_code[1]

ls_coopid			= ads_memb.object.coop_id[1]
ls_divyear		= ads_memb.object.div_year[1]
ldtm_endacc	= ads_memb.object.eacc_date[1]

ls_year		= left( ls_divyear , 4 )
ls_prefix		= "DV" + trim( ls_divyear )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

try
	inv_procsrv.of_set_sqlselect( "mbmembmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
end try

//ls_sql	= " delete from yrbgmaster where coop_id = '" + ls_coopid + "' and div_year = '" + ls_divyear + "' " 
//ls_sql += " and exists ( select 1 from mbmembmaster where mbmembmaster.coop_id = yrbgmaster.coop_id "
//ls_sql += " and mbmembmaster.member_no = yrbgmaster.member_no " + ls_sqlselect + " ) "
//execute immediate :ls_sql using itr_sqlca;
//
//if itr_sqlca.sqlcode <> 0 then
//	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_master (1) "
//	ithw_exception.text 	+= "~r~nไม่สามารถลบข้อมูลสมาชิกที่ได้รับปันผล-เฉลี่ยคืนได้"
//	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
//	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
//	throw ithw_exception
//end if

inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลสมาชิกที่ได้รับปันผล-เฉลี่ยคืน รอสักครู่..."

choose case ls_memset
	case "REG"
		ls_sql = " insert into yrbgmaster( coop_id , member_no , div_year , membgroup_code , membtype_code , proccoop_id ) "
		ls_sql += " select coop_id , member_no , div_year , membgroup_code , membtype_code , proccoop_id "
		ls_sql += " from ( "
		ls_sql += "	select mbmembmaster.coop_id as coop_id , mbmembmaster.member_no as member_no , '" + ls_divyear + "' as div_year , mbmembmaster.membgroup_code as membgroup_code , mbmembmaster.membtype_code as membtype_code , '" + ls_coopid + "' as proccoop_id "
		ls_sql += "	from mbmembmaster "
		ls_sql += "	where ( mbmembmaster.coop_id = '" + ls_coopid + "' ) "
		ls_sql += "	and ( mbmembmaster.resign_status = 0 ) "
		ls_sql += ls_sqlselect
		ls_sql += "	union "
		ls_sql += "	select mbmembmaster.coop_id , mbmembmaster.member_no , '" + ls_divyear + "', mbmembmaster.membgroup_code , mbmembmaster.membtype_code , '" + ls_coopid + "' "
		ls_sql += "	from mbmembmaster "
		ls_sql += "	where ( mbmembmaster.coop_id = '" + ls_coopid + "' ) "
		ls_sql += "	and ( mbmembmaster.resign_status = 1 ) "
		ls_sql += "	and ( mbmembmaster.resign_date > to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) ) "
		ls_sql += "	and ( mbmembmaster.member_date <= to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) ) "
		ls_sql += ls_sqlselect
		ls_sql += " ) "
	case "SHR"
		ls_sql = " insert into yrbgmaster( coop_id , member_no , div_year , membgroup_code , membtype_code , proccoop_id ) "
		ls_sql += " select mbmembmaster.coop_id , mbmembmaster.member_no , '" + ls_divyear + "', mbmembmaster.membgroup_code , mbmembmaster.membtype_code , '" + ls_coopid + "' "
		ls_sql += " from mbmembmaster , shsharemaster "
		ls_sql += " where ( mbmembmaster.coop_id = shsharemaster.coop_id ) "
		ls_sql += " and ( mbmembmaster.member_no = shsharemaster.member_no ) "
		ls_sql += " and ( mbmembmaster.coop_id = '" + is_coopcontrol + "' ) "
		ls_sql += " and ( shsharemaster.sharestk_amt > 0 ) "
		ls_sql += " and ( shsharemaster.sharemaster_status in ( 1 , 8 ) ) "
		ls_sql += ls_sqlselect
end choose
// old
//// เอาเฉพาะสมาชิกที่มีหุ้นอยู่ ณ. ขณะนั้น และต้องสมัครก่อนวันสิ้นปี
//ls_sql = " insert into yrbgmaster( coop_id , member_no , div_year , membgroup_code , membtype_code , proccoop_id ) "
//ls_sql += " select mbmembmaster.coop_id , mbmembmaster.member_no , '" + ls_divyear + "', mbmembmaster.membgroup_code , mbmembmaster.membtype_code , '" + ls_coopid + "' "
//ls_sql += " from mbmembmaster,  shsharemaster "
//ls_sql += " where ( mbmembmaster.coop_id = shsharemaster.coop_id ) and "
//ls_sql += " 			( mbmembmaster.member_no = shsharemaster.member_no ) and "
//ls_sql += "			( shsharemaster.sharemaster_status in ( 1, 8 ) ) and  "
////ls_sql += "			exists ( select 1 from cmbranchmaster cb where cb.branch_control = '" + ls_coopctrl + "' and cb.coop_id = mbmembmaster.coop_id ) and "
//ls_sql += "			( mbmembmaster.coop_id = '" + ls_coopid + "' ) and "
//ls_sql += "			( mbmembmaster.member_date <= to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) ) "
//ls_sql += ls_sqlselect
//
//ls_sql += " union "
//
//// สมาชิกที่ถอนหุ้นครั้งแรกในปีบัญชีถัดไป ดังนั้นปีบัญชีนี้ต้องได้ปันผล
//// และต้องเป็นสมาชิกที่สมัครก่อนสิ้นปี
//ls_sql += " select mbmembmaster.coop_id , mbmembmaster.member_no , '" + ls_divyear + "', mbmembmaster.membgroup_code , mbmembmaster.membtype_code , '" + ls_coopid + "'  "
//ls_sql += " from mbmembmaster, "
//ls_sql += "       ( select member_no , coop_id "
//ls_sql += "         from ( select shsharestatement.member_no, shsharestatement.operate_date, shsharestatement.coop_id ,"
//ls_sql += "                              rank() over ( partition by shsharestatement.member_no order by shsharestatement.member_no, shsharestatement.operate_date, shsharestatement.seq_no asc ) as first_row"
//ls_sql += "                    from shsharestatement , mbmembmaster "
//ls_sql += "                    where ( shsharestatement.shritemtype_code in ( 'SWD' ) ) and ( shsharestatement.item_status = 1 ) and "
////ls_sql += "                    exists ( select 1 from cmbranchmaster cb where cb.branch_control = '" + ls_coopctrl + "' and cb.coop_id = shsharestatement.coop_id ) "
//ls_sql += "					( shsharestatement.coop_id = mbmembmaster.coop_id ) and "
//ls_sql += "					( shsharestatement.member_no = mbmembmaster.member_no ) and "
//ls_sql += "					( mbmembmaster.coop_id = '" + ls_coopid + "' )"
//ls_sql += ls_sqlselect
//ls_sql += "                    order by shsharestatement.member_no, shsharestatement.operate_date, shsharestatement.seq_no "
//ls_sql += "                  ) "
//ls_sql += "         where ( first_row = 1 ) and ( share_date > to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) ) "
//ls_sql += "       ) shr"
//ls_sql += " where ( mbmembmaster.coop_id = shr.coop_id ) and "
//ls_sql += "			( mbmembmaster.member_no = shr.member_no ) and "
//ls_sql += "			( mbmembmaster.member_date <= to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_master (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลสำหรับผู้ที่จะได้รับเงินปันผลได้-เฉลี่ยคืนได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลสมาชิกที่ได้รับปันผล-เฉลี่ยคืน เสร็จแล้ว"
inv_progress.istr_progress.subprogress_index = 1
inv_progress.istr_progress.subprogress_text = "ปรับข้อมูลสมาชิกที่อายัดปันผล-เฉลี่ยคืน รอสักครู่..."

declare ldcr_refrain cursor for
select nvl( yc.member_no , '' ) as member_no , nvl( reqchgtype_code , '' ) as reqchgtype_code , nvl( new_flag , -1 ) as new_flag
from yrreqchg yc , yrreqchgrefraindet ycf
where yc.coop_id = ycf.coop_id
and yc.reqchg_docno = ycf.reqchg_docno
and yc.coop_id = :is_coopcontrol
and yc.div_year = :ls_divyear
and ( yc.reqchg_status = 1 )
order by yc.member_no , yc.reqchg_docno
using itr_sqlca;
open ldcr_refrain ;
	fetch ldcr_refrain into :ls_memno , :ls_reqchgtype , :li_flag ;
	do while itr_sqlca.sqlcode = 0
		
		if ls_reqchgtype = "DVS" then
			update yrbgmaster
			set refraindiv_flag = :li_flag
			where coop_id = :is_coopcontrol
			and member_no = :ls_memno
			and div_year = :ls_divyear
			using itr_sqlca ;
		else
			update yrbgmaster
			set refrainavg_flag = :li_flag
			where coop_id = :is_coopcontrol
			and member_no = :ls_memno
			and div_year = :ls_divyear
			using itr_sqlca ;
		end if
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_master (70.2)" 
			ithw_exception.text 	+= "~r~nไม่สามารถปรับข้อมูลสมาชิกที่อายัดปันผล-เฉลี่ยคืนได้"
			ithw_exception.text 	+= "~r~nเลขสมาชิก : " + ls_memno
			ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
			throw ithw_exception
		end if
	fetch ldcr_refrain into :ls_memno , :ls_reqchgtype , :li_flag ;
	loop
close ldcr_refrain ;

inv_progress.istr_progress.subprogress_text = "ปรับข้อมูลสมาชิกที่อายัดปันผล-เฉลี่ยคืน เสร็จแล้ว"
inv_progress.istr_progress.subprogress_index = 2

return 1
end function

protected function integer of_prc_memb_methpayold (n_ds ads_memb) throws Exception;string ls_sql , ls_sqlselect
string ls_coopctrl , ls_coopid , ls_prefix
string ls_divyear , ls_year, ls_oldyear , ls_operate
string ls_entry
datetime ldtm_endacc , ldtm_operate

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่า รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 2

ls_coopid		= ads_memb.object.coop_id[1]
ls_divyear		= ads_memb.object.div_year[1]
ls_entry			= ads_memb.object.entry_id[1]
ldtm_operate	= ads_memb.object.operate_date[1]

if isnull( ldtm_operate ) then ldtm_operate = datetime( now() )
ls_operate		= string( ldtm_operate , 'dd/mm/yyyy' )

ls_year		= left( ls_divyear , 4 )
ls_prefix		= "A" + right( trim( ls_divyear ) , 2 )

ls_oldyear	= string( integer( ls_year ) - 1 )

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
end try

ls_sql	= " insert into yrreqmethpay "
ls_sql += " ( coop_id , methreq_docno , div_year , member_no , methreq_date , methreq_status , entry_id , entry_date ) "
ls_sql += " select '" + ls_coopid + "' as coop_id , "
ls_sql += " '" + ls_prefix + "' || trim( to_char( rank() over ( partition by ymp.coop_id order by ymp.member_no ) , 'FM0000000' ) ) as docno , "
ls_sql += " '" + ls_year + "' as div_year , ymp.member_no , to_date( '" + ls_operate + "' , 'dd/mm/yyyy' ) as methreq_date , 9 as methreq_status , '" + ls_entry + "' as entry_id , "
ls_sql += " sysdate as entry_date "
ls_sql += " from yrdivmethpay ymp "
ls_sql += " where ymp.coop_id = '" + ls_coopid + "' "
ls_sql += " and ymp.div_year = '" + ls_oldyear + "' "
ls_sql += " and ymp.methpay_status = 1 "
ls_sql += " and not exists( 	select 1 from yrreqmethpay rm "
ls_sql += " 						where rm.coop_id = ymp.coop_id  "
ls_sql += " 						and rm.member_no = ymp.member_no and rm.coop_id = '" + ls_coopid + "' "
ls_sql += " 						and rm.div_year = '" + ls_year + "' and rm.methreq_status > 0 ) "
ls_sql += " and exists ( 	select 1 from yrbgmaster ybm where ybm.coop_id = '" + ls_coopid + "' and ybm.div_year = '" + ls_year + "' "
ls_sql += " 					and ybm.coop_id = ymp.coop_id and ybm.member_no = ymp.member_no " + ls_sqlselect + " ) "
ls_sql += " group by ymp.coop_id , ymp.member_no "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_methpayold (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถตั้งข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่าได้( Main )"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "ตั้งข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่า( Main ) เสร็จแล้ว"
inv_progress.istr_progress.subprogress_index = 1


ls_sql	= " insert into yrreqmethpaydet "
ls_sql += " ( coop_id , methreq_docno , seq_no , methpaytype_code , moneytype_code , expense_bank , expense_branch , expense_accid , expense_bank_typ , "
ls_sql += " bizzcoop_id , bizztype_code , bizzaccount_no , paytype_code , pay_amt , pay_percent , payseq_no , sequest_flag , sequest_amt ) "
ls_sql += " select '" + ls_coopid + "' as coop_id , "
ls_sql += " '" + ls_prefix + "' || trim( to_char( dense_rank(  ) over ( partition by ymp.coop_id order by ymp.member_no ) , 'FM0000000' ) ) as docno , ymp.seq_no , "
ls_sql += " ymp.methpaytype_code , ymp.moneytype_code , ymp.expense_bank , ymp.expense_branch , ymp.expense_accid , ymp.expense_bank_typ , "
ls_sql += " ymp.bizzcoop_id , ymp.bizztype_code , ymp.bizzaccount_no , ymp.paytype_code , ymp.pay_amt , ymp.pay_percent , ymp.payseq_no , ymp.sequest_flag , ymp.sequest_amt "
ls_sql += " from yrdivmethpay ymp "
ls_sql += " where ymp.coop_id = '" + ls_coopid + "' "
ls_sql += " and ymp.div_year = '" + ls_oldyear + "' "
ls_sql += " and ymp.methpay_status = 1 "
ls_sql += " and exists( 	select 1 "
ls_sql += " 					from yrreqmethpay rm "
ls_sql += " 					where rm.coop_id = ymp.coop_id "
ls_sql += " 					and rm.member_no = ymp.member_no and rm.coop_id = '" + ls_coopid + "' "
ls_sql += " 					and rm.div_year = '" + ls_year + "' "
ls_sql += " 					and rm.methreq_status = 9 "
ls_sql += " 					 ) "
ls_sql += " and exists ( 	select 1 from yrbgmaster ybm where ybm.coop_id = '" + ls_coopid + "' and ybm.div_year = '" + ls_year + "' "
ls_sql += " 					and ybm.coop_id = ymp.coop_id and ybm.member_no = ymp.member_no " + ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_methpayold (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถตั้งข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่าได้( Detail )"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "ตั้งข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่า( Detail ) เสร็จแล้ว"
inv_progress.istr_progress.subprogress_index = 2

ls_sql	= " update yrreqmethpay yrm "
ls_sql += " set yrm.methreq_status = 8 "
ls_sql += " where yrm.coop_id = '" + ls_coopid + "' "
ls_sql += " and yrm.div_year = '" + ls_year + "' "
ls_sql += " and yrm.methreq_status = 9 "
ls_sql += " and exists ( 	select 1 from yrbgmaster ybm where ybm.coop_id = '" + ls_coopid + "' and ybm.div_year = '" + ls_year + "' "
ls_sql += " 					and ybm.coop_id = yrm.coop_id and ybm.member_no = yrm.member_no " + ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_methpayold (70.3)" 
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทสถานะข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่าได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "อัพเดทสถานะข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนจากปีเก่า เสร็จแล้ว"
inv_progress.istr_progress.subprogress_index = 3

return 1
end function

protected function integer of_prc_memb_shr (n_ds ads_constant, n_ds ads_memb) throws Exception;string ls_divtyp

ls_divtyp			= ads_constant.object.divtype_code[1]

try
	/*สร้างข้อมูลหุ้น*/
	this.of_prc_memb_shr_mas( ads_constant , ads_memb )
	choose case ls_divtyp
		case "DAY"
			/*คำนวณปันผลแบบวัน*/
			this.of_prc_memb_shr_day( ads_constant , ads_memb )
		case "MTH"
			/*คำนวณปันผลแบบเดือน*/
			this.of_prc_memb_shr_mth( ads_constant , ads_memb )
	end choose
catch( Exception lthw_estdiv )
	ithw_exception.text		= lthw_estdiv.text
	throw ithw_exception
end try

return 1
end function

protected function integer of_prc_memb_shr_day (n_ds ads_constant, n_ds ads_memb) throws Exception;string ls_sql , ls_sqlselect
string ls_divdaycaltyp
string ls_divyear , ls_year , ls_startacc , ls_endacc
string ls_memcoop , ls_memno , ls_nxtmemno
integer li_day
long ll_index , ll_count , ll_seqno
dec{2} ldc_shareamt , ldc_sumshareamt , ldc_unitshr , ldc_sumsharevalue , ldc_shrcal
datetime ldtm_startacc , ldtm_endacc
datetime ldtm_share , ldtm_nxtshare
boolean lb_err

n_ds lds_yrshr_stm

lds_yrshr_stm = create n_ds
lds_yrshr_stm.dataobject = "d_divsrv_prc_info_yrshr_day"
lds_yrshr_stm.settransobject( itr_sqlca )

ls_divdaycaltyp	= ads_constant.object.div_daycaltype_code[1]

ls_divyear		= ads_memb.object.div_year[1]
ldtm_startacc	= ads_memb.object.sacc_date[1]
ldtm_endacc	= ads_memb.object.eacc_date[1]

ls_year		= left( ls_divyear , 4 )
ls_startacc	= string( ldtm_startacc , 'yyyy/mm/dd' )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

if ls_divdaycaltyp = "AMT" or ls_divdaycaltyp = "AMS" or isnull( ls_divdaycaltyp ) then ldtm_nxtshare = datetime(RelativeDate( date( ldtm_endacc ), 1 ))		// วันสิ้นสุดบัญชีเพิ่มอีก 1 เนื่องจากวันเริ่มปีบัญชีไม่ได้นับ

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_yrshr_stm, " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '" + ls_divyear + "' and yrbgmaster.coop_id = yrbgshrstatement.coop_id and yrbgmaster.member_no = yrbgshrstatement.member_no and yrbgmaster.div_year = yrbgshrstatement.div_year " + ls_sqlselect + " ) " )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

ll_count = lds_yrshr_stm.retrieve()
lds_yrshr_stm.setsort( " coop_id , member_no , div_year , seq_no " )
lds_yrshr_stm.sort()

inv_progress.istr_progress.subprogress_text = "จัดทำข้อมูล( รายการเคลื่อนไหวหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = ll_count

for ll_index = 1 to ll_count

	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMBSHRDAY 50.1)"
		lb_err		= true ; Goto objdestroy
	end if
	
	ls_memcoop		= lds_yrshr_stm.object.coop_id[ll_index]
	ls_memno			= lds_yrshr_stm.object.member_no[ll_index]
	ll_seqno				= lds_yrshr_stm.object.seq_no[ll_index]
	ldc_shareamt		= lds_yrshr_stm.object.share_amount[ll_index]
	ldc_unitshr			= lds_yrshr_stm.object.unitshare_value[ll_index]
	ldtm_share			= lds_yrshr_stm.object.share_date[ll_index]
	
	if ll_index = ll_count then
		ls_nxtmemno 		= ls_memno
	else
		ls_nxtmemno 		= lds_yrshr_stm.object.member_no[ll_index + 1]
	end if
	
	choose case ls_divdaycaltyp
		case "SEQ" , "SES" // คำนวณตามลำดับการซื้อหุ้นโดยคิดจากยอดรวมทั้งหมด
			ldc_shrcal				= lds_yrshr_stm.object.sharestk_amt[ll_index]
			ldc_sumsharevalue	+= ( ldc_shrcal * ldc_unitshr )
			// หาวันที่ของลำดับถัดไป
			if ll_index <> ll_count then
				ldtm_nxtshare	 	= lds_yrshr_stm.object.share_date[ll_index + 1]
			end if
			
			// กรณีคนข้างหน้าเปลี่ยนทะเบียนให้วันที่คิดไปถึงวันสุดท้ายปีบัญชี
			if ls_memno <> ls_nxtmemno or ll_index = ll_count then
				ldtm_nxtshare	= ldtm_endacc
				ldtm_nxtshare	= datetime(RelativeDate( date( ldtm_nxtshare ), 1 ))		// วันสิ้นสุดบัญชีเพิ่มอีก 1 เนื่องจากวันเริ่มปีบัญชีไม่ได้นับ
			end if
		case "AMT" , "AMS" // คำนวณตามยอดซื้อหุ้นแต่ละยอดจนถึงสิ้นปีบัญชี
			// ไม่ต้องทำอะไรเพราะว่าคิดจากวันที่ซื้อหุ้นจนถึงสิ้นปีอยู่แล้ว
			ldc_shrcal				= lds_yrshr_stm.object.share_amount[ll_index]
			ldc_sumsharevalue	= ( ldc_shrcal * ldc_unitshr )
	end choose
	
	// หาช่วงวันที่คิดปันผล
	
	//Hardcode coopid=014001 ไม่ต้องบวกวันเพิ่ม ยกเว้นยอดยกมา
	if  ls_memcoop = '014001' then
		if  ldtm_share = ldtm_startacc  then
			ldtm_nxtshare = datetime(RelativeDate( date( ldtm_endacc ), 1 ))
		else
			ldtm_nxtshare = ldtm_endacc
		end if
	end if
	
	li_day		= daysafter( date( ldtm_share ) , date( ldtm_nxtshare ))
	
	ldc_sumshareamt		+= ldc_shareamt
	
	update yrbgshrstatement
	set day 				= :li_day ,
	sharestk_amt 		= :ldc_sumshareamt ,
	sharecal_value 		= :ldc_sumsharevalue
	where coop_id 		= :is_coopcontrol
	and member_no 	= :ls_memno
	and div_year 		= :ls_divyear
	and seq_no 			= :ll_seqno
	using itr_sqlca;
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_prc_memb_shr_day (70.1)" 
		ithw_exception.text 	+= "~r~nอัพเดทข้อมูล( รายการเคลื่อนไหวหุ้น ) ไม่ได้"
		ithw_exception.text 	+= "~r~nสมาชิก : " + ls_memno
		ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true
	end if
	if lb_err then Goto objdestroy
	
	if ls_memno <> ls_nxtmemno or ll_index = ll_count then 
		ldc_sumshareamt		= 0
		ldc_sumsharevalue	= 0
	end if
	
	inv_progress.istr_progress.subprogress_index	= ll_index
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " จัดทำข้อมูลหุ้นเลขสมาชิก : " + ls_memno
	
next

/*อัพเดทข้อมูลหุ้น ณ สิ้นปี Yrbgshrmaster*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMBSHRDAY 50.1)"
	throw ithw_exception
end if

inv_progress.istr_progress.subprogress_text = "ทำรายการอัพเดทข้อมูลหุ้น ณ สิ้นปี รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0

ls_sql	= " update yrbgshrmaster ysm "
ls_sql += " set ysm.sharestk_amt = ( select yrs.sharestk_amt "
ls_sql += " from yrbgshrstatement yrs "
ls_sql += " where yrs.coop_id = ysm.coop_id "
ls_sql += " and yrs.member_no = ysm.member_no "
ls_sql += " and yrs.div_year = ysm.div_year "
ls_sql += " and	yrs.seq_no = ( select max( ys.seq_no ) "
ls_sql += " from yrbgshrstatement ys "
ls_sql += " where ys.coop_id = yrs.coop_id "
ls_sql += " and ys.member_no = yrs.member_no "
ls_sql += " and ys.div_year = yrs.div_year "
ls_sql += " and share_date <= to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) "
ls_sql += " ) "
ls_sql += " ) "
ls_sql += " where ysm.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and ysm.div_year = '" + ls_divyear + "' "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '"+ is_coopcontrol +"' and yrbgmaster.div_year = '"+ ls_divyear +"' and ysm.coop_id = yrbgmaster.coop_id and ysm.member_no = yrbgmaster.member_no and ysm.div_year = yrbgmaster.div_year " + ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_shr_day (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทข้อมูลหุ้น ณ สิ้นปี ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if

objdestroy:
if isvalid(lds_yrshr_stm) then destroy lds_yrshr_stm

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_memb_shr_day()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_memb_shr_mas (n_ds ads_constant, n_ds ads_memb) throws Exception;string ls_sql , ls_sqlselect
string ls_divyear , ls_year , ls_startacc , ls_endacc
string ls_rdtyp , ls_satangtyp
integer li_index 
integer li_divdaygrpflg
integer li_rdposamt , li_trnposamt
long ll_index , ll_count , ll_seqno
datetime ldtm_startacc , ldtm_endacc
boolean lb_err

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลหุ้นสำหรับปันผล รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 6

li_divdaygrpflg	= ads_constant.object.div_daygrp_flag[1]

ls_divyear		= ads_memb.object.div_year[1]
ldtm_startacc	= ads_memb.object.sacc_date[1]
ldtm_endacc	= ads_memb.object.eacc_date[1]

inv_rdmoneysrv.of_set_constant( is_coopcontrol , "DIV" , "rounddiv" )
ls_rdtyp			= inv_rdmoneysrv.of_get_roundtype(  )
li_rdposamt		= inv_rdmoneysrv.of_get_round_pos(  )
ls_satangtyp		= inv_rdmoneysrv.of_get_satangtype(  )
li_trnposamt		= inv_rdmoneysrv.of_get_truncate_pos(  )

ls_year		= left( ls_divyear , 4 )
ls_startacc	= string( ldtm_startacc , 'yyyy/mm/dd' )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

li_index		= 0

/*ดึงรายละเอียดที่จะประมวล*/
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.1)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "อัพเดทข้อมูลหุ้นยกมาได้( ทะเบียนหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql = " update yrbginfo yb "
ls_sql += " set yb.shrbgremain_amt = "
ls_sql += " 	( 	select sum( st.share_amount * sui.sign_flag ) as shrremain "
ls_sql += " 		from shsharestatement st , shucfshritemtype sui , shsharetype sst "
ls_sql += " 		where st.shritemtype_code = sui.shritemtype_code "
ls_sql += " 		and st.coop_id = sst.coop_id "
ls_sql += " 		and st.sharetype_code = sst.sharetype_code "
ls_sql += " 		and st.coop_id = '" + is_coopcontrol + "' "
ls_sql += " 		and st.slip_date < to_date( '" + ls_startacc + "' , 'yyyy/mm/dd' ) "
ls_sql += " 		and st.operate_date >= to_date( '" + ls_startacc + "' , 'yyyy/mm/dd' ) "
ls_sql += " 		and yb.coop_id = st.coop_id "
ls_sql += " 		and yb.member_no = st.member_no "
ls_sql += " 		group by st.member_no "
ls_sql += " 		) "
ls_sql += " where yb.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and yb.bgyear = " + ls_year
ls_sql += " and exists( select 1 from yrbgmaster "
ls_sql += " 					where yrbgmaster.coop_id = yb.coop_id "
ls_sql += " 					and yrbgmaster.member_no = yb.member_no "
ls_sql += " 					and substr( yrbgmaster.div_year , 1 , 4 ) = to_char( yb.bgyear ) "
ls_sql += ls_sqlselect + " ) "
ls_sql += " and exists( select 1 from shsharestatement stm "
ls_sql += " 				where stm.coop_id = '" + is_coopcontrol + "' "
ls_sql += " 				and stm.slip_date < to_date( '" + ls_startacc + "' , 'yyyy/mm/dd' ) "
ls_sql += " 				and stm.operate_date >= to_date( '" + ls_startacc + "' , 'yyyy/mm/dd' ) "
ls_sql += " 				and stm.coop_id = yb.coop_id "
ls_sql += " 				and stm.member_no = yb.member_no) "
					
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_shr_mas (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทข้อมูลหุ้นยกมาได้( ทะเบียนหุ้น )ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*สร้างข้อมูลหุ้นสำหรับปันผล( ทะเบียนหุ้น ) Yrbgshrmaster*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.2)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลหุ้นสำหรับปันผล( ทะเบียนหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql = " insert into yrbgshrmaster "
ls_sql += " ( coop_id , member_no , div_year , sharetype_code , sharebegin_amt ) "
ls_sql += " select shsharemaster.coop_id , shsharemaster.member_no , '"+ ls_divyear +"' , shsharemaster.sharetype_code , "
ls_sql += " nvl( ( select yrbginfo.shrbg_amt + yrbginfo.shrbgremain_amt from yrbginfo where yrbginfo.coop_id = yrbgmaster.coop_id and yrbginfo.member_no = yrbgmaster.member_no and yrbginfo.bgyear = " + ls_year + " ) , 0 ) as sharebegin_amt "
ls_sql += " from shsharemaster , yrbgmaster "
ls_sql += " where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and shsharemaster.coop_id = yrbgmaster.coop_id "
ls_sql += " and shsharemaster.member_no = yrbgmaster.member_no "
ls_sql += " and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += ls_sqlselect
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_shr_mas (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลหุ้นสำหรับปันผล( ทะเบียนหุ้น )ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*สร้างข้อมูลหุ้นสำหรับปันผล( รายการเคลื่อนไหวหุ้น ) Yrbgshrstatement*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.3)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลหุ้นสำหรับปันผล( รายการเคลื่อนไหวหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql = " insert into yrbgshrstatement "
ls_sql += " ( coop_id , member_no , div_year , seq_no  , share_date , share_in_amount , share_out_amount , share_amount ) "
ls_sql += " select yrbgshrmaster.coop_id , yrbgshrmaster.member_no , yrbgshrmaster.div_year , 0 , to_date( '"+ ls_startacc +"' , 'yyyy/mm/dd' ) , 0 , 0 , yrbgshrmaster.sharebegin_amt "
ls_sql += " from yrbgshrmaster , yrbgmaster "
ls_sql += " where yrbgshrmaster.coop_id = yrbgmaster.coop_id "
ls_sql += " and yrbgshrmaster.member_no = yrbgmaster.member_no "
ls_sql += " and yrbgshrmaster.div_year = yrbgmaster.div_year "
ls_sql	+= " and yrbgshrmaster.sharebegin_amt > 0 "
ls_sql += " and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += ls_sqlselect
ls_sql += " union "
ls_sql += " select shr.coop_id , shr.memno , '" + ls_divyear + "' , "
if li_divdaygrpflg = 1 then 
	ls_sql += " rank() over ( partition by shr.memno order by shr.sharedate ) as f_row , "
else
	ls_sql += " rank() over ( partition by shr.memno order by shr.sharedate , shr.seq_no ) as f_row , "
end if
ls_sql += " sharedate , share_in_amount , share_out_amount , share_in_amount - share_out_amount "
ls_sql += " from ( "
ls_sql += " 	select shsharestatement.coop_id as coop_id , shsharestatement.member_no as memno , "
ls_sql += " 	shsharestatement.share_date as sharedate , " 
if li_divdaygrpflg = 1 then ls_sql += " sum"
ls_sql += " 	( case shucfshritemtype.sign_flag when 1 then shsharestatement.share_amount else 0 end ) as share_in_amount , "
if li_divdaygrpflg = 1 then ls_sql += " sum"
ls_sql += " 	( case shucfshritemtype.sign_flag when -1 then shsharestatement.share_amount else 0 end ) as share_out_amount , "
ls_sql += " 	shsharestatement.seq_no as seq_no "
ls_sql += " 	from shsharestatement , yrbgmaster , shucfshritemtype "
ls_sql += " where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += "	and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " 	and shsharestatement.coop_id = yrbgmaster.coop_id "
ls_sql += " 	and shsharestatement.member_no = yrbgmaster.member_no "
ls_sql += " 	and shsharestatement.shritemtype_code = shucfshritemtype.shritemtype_code "
ls_sql += " 	and shsharestatement.item_status = 1 "
ls_sql	+= "	and shsharestatement.caldiv_status = 8 "
ls_sql += ls_sqlselect
ls_sql += " 	and shsharestatement.share_date between to_date( '"+ ls_startacc +"' , 'yyyy/mm/dd' ) and to_date( '" + ls_endacc + "' , 'yyyy/mm/dd' ) "
if li_divdaygrpflg = 1 then
	ls_sql += " 	group by shsharestatement.coop_id , shsharestatement.member_no , '"+ ls_divyear +"' , "
	ls_sql += " 	shsharestatement.share_date "
end if
ls_sql += " ) shr "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_prc_memb_shr_mas (70.3)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลหุ้นสำหรับปันผล( รายการเคลื่อนไหวหุ้น )ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*สร้างข้อมูลหุ้นสำหรับปันผลยอดหุ้นปีเก่า( รายการเคลื่อนไหวหุ้น ) Yrbgshrstatementbf*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.4)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลหุ้นสำหรับปันผลยอดหุ้นปีเก่า( รายการเคลื่อนไหวหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql = " insert into yrbgshrstatementbf "
ls_sql += " ( coop_id , member_no , div_year , seq_no  , share_date , share_in_amount , share_out_amount , share_amount , sharestk_amt ) "
ls_sql += " select shr.branch , shr.memno , '" + ls_divyear + "' , "
if li_divdaygrpflg = 1 then 
	ls_sql += " rank() over ( partition by shr.memno order by shr.sharedate ) as f_row , "
else
	ls_sql += " rank() over ( partition by shr.memno order by shr.sharedate , shr.seq_no ) as f_row , "
end if
ls_sql += " sharedate , share_in_amount , share_out_amount , share_in_amount - share_out_amount , share_in_amount - share_out_amount "
ls_sql += " from ( "
ls_sql += " 	select shsharestatement.coop_id as branch , shsharestatement.member_no as memno , "
ls_sql += "	shsharestatement.share_date as sharedate , " 
if li_divdaygrpflg = 1 then ls_sql += " sum"
ls_sql += "	( case shucfshritemtype.sign_flag when 1 then shsharestatement.share_amount else 0 end ) as share_in_amount , "
if li_divdaygrpflg = 1 then ls_sql += " sum"
ls_sql += "	( case shucfshritemtype.sign_flag when -1 then shsharestatement.share_amount else 0 end ) as share_out_amount , "
ls_sql	+= "	shsharestatement.seq_no as seq_no "
ls_sql += " 	from shsharestatement , yrbgmaster , shucfshritemtype "
ls_sql += " where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += "	and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " 	and shsharestatement.coop_id = yrbgmaster.coop_id "
ls_sql += " 	and shsharestatement.member_no = yrbgmaster.member_no "
ls_sql += " 	and shsharestatement.shritemtype_code = shucfshritemtype.shritemtype_code "
ls_sql += " 	and shsharestatement.item_status = 1 "
ls_sql	+= "	and shsharestatement.caldiv_status = 8 "
ls_sql += ls_sqlselect
ls_sql += " 	and shsharestatement.share_date < to_date( '"+ ls_startacc +"' , 'yyyy/mm/dd' ) "
if li_divdaygrpflg = 1 then
	ls_sql += " 	group by shsharestatement.coop_id , shsharestatement.member_no , '"+ ls_divyear +"' , "
	ls_sql += " 	shsharestatement.share_date "
end if
ls_sql += " ) shr "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_prc_memb_shr_mas (70.4)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลหุ้นสำหรับปันผลยอดหุ้นปีเก่า( รายการเคลื่อนไหวหุ้น )ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*คำนวณปันผลยอนหลัง( รายการเคลื่อนไหวหุ้น ) Yrbgshrstatementbf*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.5)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลคำนวณปันผลยอนหลัง( รายการเคลื่อนไหวหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql = " update yrbgshrstatementbf ys "
ls_sql += " set ( ys.day , ys.sharecal_value , ys.div_amt ) = ( select st.day , st.sharecal_value , st.divamt "
ls_sql += " from ( 	select  stm.coop_id , stm.div_year , stm.member_no , stm.seq_no , "
ls_sql	+= " 			sum( case when cy.accstart_date < stm.share_date then ( cy.accend_date + 1 ) - stm.share_date when cy.accstart_date > stm.share_date then ( cy.accend_date + 1 ) - cy.accstart_date else 0 end ) as day, "
ls_sql += " 			( stm.share_amount * st.unitshare_value ) as sharecal_value , "
ls_sql += " 			sum( nvl( ( select yr.divpercent_rate from yrcfrate yr where substr( trim( yr.div_year ) , 1 , 4 ) = to_char( cy.account_year ) ) , 0 ) * (( stm.share_amount * st.unitshare_value ) * ( case when cy.accstart_date < stm.share_date then ( cy.accend_date + 1 ) - stm.share_date when cy.accstart_date > stm.share_date then ( cy.accend_date + 1 ) - cy.accstart_date else 0 end )) / ( ( case when yc.div_dayfix_flag = 1 then yc.div_day_amt else ( ( cy.accend_date + 1 ) - cy.accstart_date ) end ) ) ) as divamt "
ls_sql += " 			from yrbgshrstatementbf stm , cmaccountyear cy , yrcfconstant yc , shsharetype st "
ls_sql += " 			where stm.coop_id = yc.coop_id "
ls_sql += " 			and stm.coop_id = st.coop_id "
ls_sql += " 			and st.sharetype_code = '01' "
ls_sql += " 			and stm.share_date <= cy.accend_date "
ls_sql += " 			and cy.account_year < " + ls_year + " "
ls_sql += " 			group by stm.coop_id , stm.div_year , stm.member_no , stm.seq_no , ( stm.share_amount * st.unitshare_value ) "
ls_sql	+= "		) st "
ls_sql += " where st.coop_id = ys.coop_id "
ls_sql += " and st.div_year = ys.div_year "
ls_sql += " and st.member_no = ys.member_no "
ls_sql += " and st.seq_no = ys.seq_no "
ls_sql += "  ) "
ls_sql += " where ys.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and ys.div_year = '" + ls_divyear + "' "
ls_sql += " and exists( select 1 from yrbgmaster where ys.coop_id = yrbgmaster.coop_id and ys.member_no = yrbgmaster.member_no and yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '" + ls_divyear + "' " + ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_prc_memb_shr_mas (70.5)" 
	ithw_exception.text 	+= "~r~nไม่สามารถคำนวณปันผลยอนหลัง( รายการเคลื่อนไหวหุ้น )ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

/*ปัดเศษปันผลยอนหลัง( รายการเคลื่อนไหวหุ้น ) Yrbgshrstatementbf*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMAS 50.6)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "ปัดเศษปันผลยอนหลัง( รายการเคลื่อนไหวหุ้น ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " update yrbgshrstatementbf ysb "
if ls_rdtyp = "1" /*ปัดแล้วรวม*/ then ls_sql	+= " set ysb.rdiv_amt = ( select sum( ftcm_roundmoney( nvl( ysb.div_amt , 0 ) , '" + ls_satangtyp + "' , '" + ls_rdtyp + "' , " + string( li_trnposamt ) + " , " + string( li_rdposamt ) + " ) ) "
if ls_rdtyp = "2" /*รวมแล้วปัดเก็บทศนิยมไว้*/then ls_sql	+= " set ysb.rdiv_amt = ( select sum( nvl( ysb.div_amt , 0 ) ) "
ls_sql	+= " 											from yrbgshrstatementbf ys "
ls_sql	+= " 											where ys.coop_id = ysb.coop_id "
ls_sql	+= " 											and ys.member_no = ysb.member_no "
ls_sql	+= " 											and ys.div_year = ysb.div_year "
ls_sql	+= " 											and ys.seq_no = ysb.seq_no "
ls_sql	+= " 											) "
ls_sql	+= " where ysb.coop_id = '" + is_coopcontrol + "' "
ls_sql	+= " and ysb.div_year = '" + ls_divyear + "' "
ls_sql	+= " and exists ( select 1 from yrbgmaster , yrbgshrstatementbf where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '" + ls_divyear + "' and yrbgmaster.coop_id = yrbgshrstatementbf.coop_id and yrbgmaster.member_no = yrbgshrstatementbf.member_no and yrbgmaster.div_year = yrbgshrstatementbf.div_year and yrbgmaster.coop_id = ysb.coop_id and yrbgmaster.member_no = ysb.member_no " + ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด of_prc_memb_shr_mas (70.6)" 
	ithw_exception.text 	+= "~r~nไม่สามารถปัดเศษปันผลยอนหลัง( รายการเคลื่อนไหวหุ้น ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

objdestroy:

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_memb_shr_mas()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_memb_shr_mth (n_ds ads_constant, n_ds ads_memb) throws Exception;string ls_divyear , ls_memno , ls_prvmemno , ls_shritemtypecode
string ls_syntax , ls_sql , ls_sqlselect
string ls_nxtmemno , ls_mth
string ls_mthdsc , ls_accstart , ls_accend
integer li_sumaccmth
integer li_periodmth
integer li_row , li_rowcnt , li_index , li_seqno
long ll_index , ll_count , ll_shrrow
dec ldc_sharestkamt , ldc_unitshare
dec ldc_sumshrmth
dec{3} ldc_shrin , ldc_shrout , ldc_shramt
datetime ldtm_accstart , ldtm_accend 
datetime ldtm_share , ldtm_nextshare
boolean lb_err

n_ds lds_shr_mth , lds_shr_div

lds_shr_mth = create n_ds
lds_shr_mth.dataobject = "d_divsrv_prc_info_yrshr_day"
lds_shr_mth.settransobject( itr_sqlca )

lds_shr_div = create n_ds
lds_shr_div.dataobject = "d_divsrv_prc_info_shr_mth_div_data"
lds_shr_div.settransobject( itr_sqlca )

ls_divyear			= ads_memb.object.div_year[1]
ldtm_accstart 		= ads_memb.object.sacc_date[1]
ldtm_accend		= ads_memb.object.eacc_date[1]

ls_accstart			= string( date( ldtm_accstart ) , "dd/mm/yyyy" )
ls_accend			= string( datetime(RelativeDate( date( ldtm_accend ), 1 )) , "dd/mm/yyyy" )

// จำนวนเดือนในรอบปีบัญชี
li_sumaccmth			= inv_datesrv.of_monthsafter( date(ldtm_accstart) , date(ldtm_accend) , false )
li_sumaccmth++ 

// set ค่าในการดึงข้อมูลสมาชิก
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
	inv_procsrv.of_set_sqldw_column( lds_shr_mth, " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' and yrbgmaster.coop_id = yrbgshrstatement.coop_id and yrbgmaster.member_no = yrbgshrstatement.member_no and yrbgmaster.div_year = yrbgshrstatement.div_year " + ls_sqlselect + " ) " )
	inv_procsrv.of_set_sqldw_column( lds_shr_mth, " and yrbgshrstatement.share_date between to_date('" + string( ldtm_accstart , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') and to_date('" + string( ldtm_accend , 'dd/mm/yyyy' ) + "','dd/mm/yyyy') " ) // ใส่เงื่อนไขอื่นๆ
catch( Exception lthw_setdwsql )
	ithw_exception.text	= "~r~nพบขอผิดพลาด (MEMSHRMAS 0.1)"
	ithw_exception.text	+= lthw_setdwsql.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

lds_shr_mth.retrieve()

// ปรับแต่ง statement กรณี สอ.ที่มีการถอนหุ้นระหว่างปี
try
	this.of_prc_memb_shr_mth_mod( ads_constant , ads_memb , lds_shr_mth , lds_shr_div )
catch( Exception lthw_modshr )
	ithw_exception.text	= lthw_modshr.text
	ithw_exception.text	+= "~r~nพบขอผิดพลาด (MEMSHRMTH 10.1)"
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try

// จัดทำข้อมูลลงฐานข้อมูล
ll_count	= lds_shr_div.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= ll_count

for ll_index = 1 to ll_count
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMTH 50.1)"
		lb_err		= true ; Goto objdestroy
	end if
	
	ls_memno		= lds_shr_div.object.member_no[ ll_index ]
	li_periodmth		= lds_shr_div.object.period_month[ ll_index ]
	ldc_shrin			= lds_shr_div.object.share_in_amount[ ll_index ]
	ldc_shrout		= lds_shr_div.object.share_out_amount[ ll_index ]
	ldc_shramt		= lds_shr_div.object.share_amount[ ll_index ]
	ldc_sumshrmth	= lds_shr_div.object.sum_shrmth[ ll_index ]

	ls_mth			= string( li_periodmth , "00" )

//	if ll_index = ll_count then ls_prvmemno = "END"

	if ls_prvmemno <> ls_memno then
		li_seqno			= 0
		ls_prvmemno	= ls_memno
	end if
	
	li_seqno++
	
	insert into yrbgshrmth
	(	coop_id ,					member_no ,		div_year ,			seq_no ,			
		mth_code ,				share_in_amount ,
		share_out_amount ,	share_amount ,	sharecal_value ,	div_amt ,			rdiv_amt	)
	values
	(	:is_coopcontrol , 		:ls_memno , 		:ls_divyear , 		:li_seqno ,
		:ls_mth , 				:ldc_shrin ,
		:ldc_shrout ,			:ldc_shramt ,		:ldc_sumshrmth ,	0 ,					0)
	using itr_sqlca ;
	
	if itr_sqlca.sqlcode <> 0 then
		ithw_exception.text	= "~r~nพบขอผิดพลาด (MEMSHRMTH 70.1)"
		ithw_exception.text	+= "~r~nนำเข้าข้อมูลปันผล"
		ithw_exception.text	+= "~r~nเลขสมาชิก : " + ls_memno
		ithw_exception.text	+= "~r~n" + string( itr_sqlca.sqlcode )
		ithw_exception.text	+= "~r~n" + itr_sqlca.sqlerrtext
		ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
		lb_err = true ; if lb_err then Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= ll_index
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_count , "#,##0" ) + " สรุปหุ้นส่งรายเดือน : " + ls_memno
	
next

inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1

/*สร้างเดือน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (MEMSHRMTH 50.2)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "อัพเดทเดือนทำรายการ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index
inv_progress.istr_progress.subprogress_max = 1

ls_sql		= " insert into yrucfmth "
ls_sql		+= " ( coop_id , div_year , mth_code , mth_desc ) "
ls_sql		+= " select '" + is_coopcontrol + "' , '" + ls_divyear + "' , "
ls_sql		+= " trim( to_char( rownum , '00' ) ) as mth_cde , "
ls_sql		+= " ( case ( mod( mth_st + ( rownum - 1 ) , 12 ) ) "
ls_sql		+= " when 1 then 'มกราคม' "
ls_sql		+= " when 2 then 'กุมภาพันธ์' "
ls_sql		+= " when 3 then 'มีนาคม' "
ls_sql		+= " when 4 then 'เมษายน' "
ls_sql		+= " when 5 then 'พฤษภาคม' "
ls_sql		+= " when 6 then 'มิถุนายน' "
ls_sql		+= " when 7 then 'กรกฎาคม' "
ls_sql		+= " when 8 then 'สิงหาคม' "
ls_sql		+= " when 9 then 'กันยายน' "
ls_sql		+= " when 10 then 'ตุลาคม' "
ls_sql		+= " when 11 then 'พฤศจิกายน' "
ls_sql		+= " when 0 then 'ธันวาคม' "
ls_sql		+= " else '' end ) as mth_dsc "
ls_sql		+= " from "
ls_sql		+= " ( select months_between( to_date( '" + ls_accend + "' , 'dd/mm/yyyy' ) , to_date( '" + ls_accstart + "' , 'dd/mm/yyyy' ) ) as mth_amt , "
ls_sql		+= " 01 as mth_st from dual ) mth "
ls_sql		+= " connect by level  <= mth.mth_amt "
					
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด of_prc_memb_shr_mth (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทเดือนทำรายการ ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

objdestroy:
if isvalid(lds_shr_mth) then destroy lds_shr_mth
if isvalid(lds_shr_div) then destroy lds_shr_div

if lb_err then
	ithw_exception.text = "~r~nof_prc_memb_shr_mth()" + ithw_exception.text
	throw ithw_exception
end if

return 1

end function

protected function integer of_prc_memb_shr_mth_mod (n_ds ads_constant, n_ds ads_memb, n_ds ads_shr_mth, ref n_ds ads_shr_div) throws Exception;string		ls_memcoop , ls_prvmemcoop , ls_memno, ls_prvmemno , ls_syntax , ls_sql , ls_divyear
string		ls_shradd , ls_shrwtd , ls_shrspec , ls_shrcp
dec		ldc_share, ldc_withdraw , ldc_sumshrmth , ldc_divamt , ldc_divrate , ldc_sharereal , ldc_sumshrmthreal
dec		ldc_shrmth , ldc_shrpx , ldc_shrsw , ldc_sumshrpx , ldc_sumshrsw , ldc_sumshare , ldc_sumshrbf , ldc_shrbf
dec{3}	ldc_shrin , ldc_shrout , ldc_shramt , ldc_sumshrin , ldc_sumshrout , ldc_sumshramt
integer	li_periodmonth , li_prvperiodmonth , li_endaccmonth , li_buysharebfday
boolean	lb_havewithdraw
long		ll_index , ll_row, ll_rowcount , ll_find
datetime	ldtm_share , ldtm_accstart , ldtm_accend
boolean lb_err
ll_rowcount = ads_shr_mth.rowcount()

inv_progress.istr_progress.subprogress_text	= "ปรับแต่งข้อมูลรายการเคลื่อนไหวหุ้น"
inv_progress.istr_progress.subprogress_index	= 0
inv_progress.istr_progress.subprogress_max	= ll_rowcount

ls_prvmemno = ""

li_buysharebfday		= ads_constant.object.div_day_amt[1]
ldc_share				= 0
ldc_sumshrmth			= 0
ldtm_accstart 			= ads_memb.object.sacc_date[1]
ldtm_accend			= ads_memb.object.eacc_date[1]

// จำนวนเดือนในรอบปีบัญชี
li_endaccmonth			= inv_datesrv.of_monthsafter( date(ldtm_accstart) , date(ldtm_accend) , false )
li_endaccmonth++ 


// ยัดยอดเพื่อคำนวณ
for ll_index = 1 to ll_rowcount
	
	yield()
	if inv_progress.of_is_stop() then
		ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (ESTDIVMTH 50.1)"
		lb_err		= true ; Goto objdestroy
	end if
	
	inv_progress.istr_progress.subprogress_index	= ll_index

	ls_memno				= ads_shr_mth.object.member_no[ ll_index ]
	ldc_share				= ads_shr_mth.object.cp_sharesum[ ll_index ]
	ldc_shrin					= ads_shr_mth.object.share_in_amount[ ll_index ]
	ldc_shrout				= ads_shr_mth.object.share_out_amount[ ll_index ]
	ldc_shramt				= ads_shr_mth.object.share_amount[ ll_index ]
	ldtm_share				= ads_shr_mth.object.share_date[ ll_index ]
	
	// หางวดทางบัญชี
	li_periodmonth		= of_gen_period( date(ldtm_accstart) , date(ldtm_share) )
	
	// ตรวจสอบวันที่น้อยกว่าวันที่กำหนดหรือไม่ถ้าน้อยกว่าให้ถอยไปอีก 1 เดือน
	if day( date(ldtm_share )) <= li_buysharebfday then
		li_periodmonth --
	end if

	// แถวสุดท้ายบังคับให้ยิงข้อมูล โดยเทียบกับ row ก่อนหน้าถ้าไม่ใช่งวดเดียวกันคนเดียวกันให้ยิงไปก่อนแล้วยิง row สุดท้ายตาม
	// ถ้าเป็นงวดเดียวกันคนเดียวกันให้รวมยอดแล้วยิงรวมกับ row สุดท้าย
	if ll_index = ll_rowcount and li_periodmonth = li_prvperiodmonth and ls_prvmemno = ls_memno then li_prvperiodmonth = 99

	// ถ้าเป็นงวดเดิม ทะเบียนเดิม ให้ผ่านไป
	if ( li_periodmonth <> li_prvperiodmonth or ls_prvmemno <> ls_memno ) and ( ll_index <> 1 or ll_index = ll_rowcount ) then 
		
		// กรณีแถวสุดท้าย ให้ลงข้อมูลแถวก่อนหน้าด้วยถ้าเป็นคนละงวดกัน
		if ll_index = ll_rowcount then 
			if li_prvperiodmonth = 99 then li_prvperiodmonth = li_periodmonth
			// แถวรองสุดท้ายไม่เท่ากับแถวสุดท้าย
			if li_periodmonth <> li_prvperiodmonth or ls_prvmemno <> ls_memno and ll_index > 1 then
				ll_row = ads_shr_div.insertrow(0)
				// เก็บค่าลงไปก่อน
				ads_shr_div.object.coop_id[ ll_row ]					= ls_memcoop
				ads_shr_div.object.member_no[ ll_row ]				= ls_prvmemno
				ads_shr_div.object.period_month[ ll_row ]			= li_prvperiodmonth
				ads_shr_div.object.sum_shrmth[ ll_row ]			= ldc_sumshare
				ads_shr_div.object.share_in_amount[ ll_row ]		= ldc_shrin
				ads_shr_div.object.share_out_amount[ ll_row ] 	= ldc_shrout
				ads_shr_div.object.share_amount[ ll_row ] 			= ldc_shramt

			//	 ต้องเป็นค่าบรรทัดสุดท้ายเท่านั้น
				ldc_sumshare			= ldc_share
				ldc_sumshrin			= ldc_shrin
				ldc_sumshrout			= ldc_shrout
				ldc_sumshramt			= ldc_shramt
			else
			//	 ต้องรวมยอดก่อนหน้าด้วยเพื่อยิงลงบรรทัดสุดท้าย
				ldc_sumshare 	+= ldc_share
				ldc_sumshrin 	+= ldc_shrin
				ldc_sumshrout	+= ldc_shrout
				ldc_sumshramt	+= ldc_shramt
			end if
			li_prvperiodmonth = li_periodmonth
			ls_prvmemno 		= ls_memno
		end if
		
		ll_row = ads_shr_div.insertrow(0)
		
		ads_shr_div.object.coop_id[ ll_row ]					= ls_memcoop
		ads_shr_div.object.member_no[ ll_row ]				= ls_prvmemno
		ads_shr_div.object.period_month[ ll_row ]			= li_prvperiodmonth
		ads_shr_div.object.sum_shrmth[ ll_row ]			= ldc_sumshare
		ads_shr_div.object.share_in_amount[ ll_row ]		= ldc_sumshrin
		ads_shr_div.object.share_out_amount[ ll_row ] 	= ldc_sumshrout
		ads_shr_div.object.share_amount[ ll_row ] 			= ldc_sumshramt
		
		// clear ค่า
		ldc_sumshare			= 0
		ldc_sumshrin			= 0
		ldc_sumshrout			= 0
		ldc_sumshramt			= 0
		li_prvperiodmonth 		= li_periodmonth
		ls_prvmemno			= ls_memno
	end if
	
	// กรณีแถวแรก
	if ll_index = 1 then li_prvperiodmonth = li_periodmonth
	if ll_index = 1 then ls_prvmemno = ls_memno
	
	// sum ยอดรวม
	ldc_sumshare 		+= ldc_share
	ldc_sumshrin 		+= ldc_shrin
	ldc_sumshrout		+= ldc_shrout
	ldc_sumshramt		+= ldc_shramt
	
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_rowcount , "#,##0" ) + " จัดทำข้อมูลปันผลทะเบียน : " + ls_memno
	
next

ll_rowcount	= ads_shr_div.rowcount()

inv_progress.istr_progress.subprogress_index	= 0
ll_row = 0
// ปรับยอด statement
for ll_index = ll_rowcount to 1 step -1
	
	yield()
	if inv_progress.of_is_stop() then
		destroy ads_shr_div
		return -1
	end if
	
	ll_row++
	inv_progress.istr_progress.subprogress_index	= ll_row
	// หุ้นที่ซื้อแต่ละ statement
	ldc_share			= ads_shr_div.object.sum_shrmth[ ll_index ]
	ldc_shrin				= ads_shr_div.object.share_in_amount[ ll_index ]
	ldc_shrout 			= ads_shr_div.object.share_out_amount[ ll_index ] 
	ldc_shramt			= ads_shr_div.object.share_amount[ ll_index ]
	ls_memno 			= ads_shr_div.getitemstring( ll_index, "member_no" )
	
//	ldc_share	= ( ldc_sumshrmth + ldc_sumshrpx ) + ldc_sumshrsw
	 
	ads_shr_div.setitem( ll_index, "sum_shrmth", ldc_share )
	// ตรวจสอบว่าเป็นรายการของสมาชิกคนเดิมหรือป่าว
	if ( ls_prvmemno <> ls_memno ) then
		ldc_withdraw = 0
		lb_havewithdraw = false
		ls_prvmemno = ls_memno
	end  if		
	
	if ( ldc_share > 0 ) and ( ldc_withdraw > 0 ) then continue
	
	if ldc_withdraw < 0 or ldc_share < 0 then ldc_withdraw += ldc_share

	// ถ้ายอดที่ถอน + ยอดที่ซื้อยังติดลบ ก็ต้องถอนย้อนลงไปเรื่อย ๆ
	if ( ldc_withdraw < 0 ) then
		lb_havewithdraw = true
		ads_shr_div.setitem( ll_index, "sum_shrmth", 0 )

	// กรณียอดที่ถอน + ยอดที่ซื้อ เริ่มติด บวก เช่น  
	// ซื้อ 1500 แต่ถอน แค่ 400 ก็ต้องปรับยอดที่ซื้อให้เท่ากับ 1100
	elseif ( lb_havewithdraw ) then
		lb_havewithdraw = false
		ads_shr_div.setitem( ll_index, "sum_shrmth", ldc_withdraw )
	end if
	
	inv_progress.istr_progress.subprogress_text	= string( ll_index , "#,##0" ) + "/" + string( ll_rowcount , "#,##0" ) + "คำนวณถอนหุ้นทะเบียน : " + ls_memno 
	
next
 
// จัดข้อมูลแล้วคำนวณยอดสรุป
ads_shr_div.setsort( " coop_id , member_no , period_month " )
ads_shr_div.sort()

objdestroy:

if lb_err then
	rollback using itr_sqlca ;
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_estdiv_mth_mod_swd()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_methpay_chk (n_ds ads_proc) throws Exception;string ls_coopid , ls_divyear
long ll_cnt

ls_coopid	= ads_proc.object.coop_id[1]
ls_divyear 	= ads_proc.object.div_year[1]

select count( distinct member_no )
into :ll_cnt
from yrdivmethpay
where coop_id = :ls_coopid
and div_year = :ls_divyear
and methpay_status = 1
using itr_sqlca;
if itr_sqlca.sqlcode <> 0 or isnull( ll_cnt ) then ll_cnt = 0

if ll_cnt > 0 then
	ithw_exception.text	= "~r~nมีการทำรายการจ่ายปันผล-เฉลี่ยคืน"
	ithw_exception.text	+= "~r~nปีปันผล-เฉลี่ยคืน : " + ls_divyear
	ithw_exception.text	+= "~r~nจำนวน " + string( ll_cnt , '#,##0' ) + " รายการ "
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_methpay_clr (n_ds ads_proc) throws Exception;string ls_sql , ls_sqlselect
string ls_divyear , ls_year , ls_startacc , ls_endacc
integer li_index , li_div , li_avg
long ll_index , ll_count , ll_seqno
datetime ldtm_startacc , ldtm_endacc
boolean lb_err

ls_divyear		= ads_proc.object.div_year[1]

inv_progress.istr_progress.subprogress_text = "ลบข้อมูลวิธีจ่ายปันผลเฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = 0
inv_progress.istr_progress.subprogress_max = 1

ls_year		= left( ls_divyear , 4 )
ls_startacc	= string( ldtm_startacc , 'yyyy/mm/dd' )
ls_endacc	= string( ldtm_endacc , 'yyyy/mm/dd' )

li_index		= 0

/*ดึงรายละเอียดที่จะประมวล*/
try
	inv_procsrv.of_set_sqlselect( "yrbgmaster")
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*เคลียร์ข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (METHPAYCLR 50.1)"
	throw ithw_exception
end if

li_index++
inv_progress.istr_progress.subprogress_text = "เคลียร์ข้อมูล( วิธีจ่ายปันผล-เฉลี่ยคืน ) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_index

ls_sql	= " delete from yrdivmethpay " 
ls_sql += " where yrdivmethpay.coop_id = '" + is_coopcontrol + "' and yrdivmethpay.div_year = '" + ls_divyear + "' " 
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '" + ls_divyear + "' " 
ls_sql += " and yrdivmethpay.coop_id = yrbgmaster.coop_id and yrdivmethpay.member_no = yrbgmaster.member_no "
ls_sql += " and yrdivmethpay.div_year = yrbgmaster.div_year "
ls_sql += ls_sqlselect + " ) "
execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "พบข้อผิดพลาด METHPAYCLR (70.1) "
	ithw_exception.text 	+= "~r~nไม่สามารถเคลียร์ข้อมูล( วิธีจ่ายปันผล-เฉลี่ยคืน ) ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end if
if lb_err then Goto objdestroy

objdestroy:

if lb_err then
	ithw_exception.text = "~r~nn_cst_divsrv_process.of_prc_methpay_clr()" + ithw_exception.text
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_methpay_gen_default (n_ds ads_proc) throws Exception;string ls_sqlselect , ls_sql
string ls_divyear
string ls_memno
integer li_flag
integer li_prgindex
boolean lb_err

li_prgindex = 0

inv_progress.istr_progress.subprogress_text = "สร้างขอมูลวิธีจ่ายปันผล-เฉลี่ยคืนตามค่าที่กำหนดไว้ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_max = 4

ls_divyear		= ads_proc.object.div_year[1]

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*1Start สร้างวิธีจ่ายปันผลจากตาราง yrucfdfmethpay กรณีที่ไม่มีใบคำขอ*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHGENDF 50.1)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_text = "สร้างใบคำขอข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน (สมาชิกที่ไม่มีวิธีจ่ายปันผล) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex

ls_sql = " insert into yrdivmethpay "
ls_sql += " ( coop_id , member_no , div_year , "
ls_sql += " seq_no , "
ls_sql += " methpaytype_code , moneytype_code , "
ls_sql += " expense_bank , div_amt , avg_amt , etc_amt , expense_amt , "
ls_sql += " methpay_status , paytype_code , pay_amt , pay_percent , payseq_no ) "
ls_sql += " select ym.coop_id , ym.member_no , ym.div_year , "
ls_sql += " 1 as seq_no , "
ls_sql += " yum.methpaytype_code as methpaytype_code , yump.join_moneytype_code as moneytype_code , "
ls_sql += " yum.expense_bank as expense_bank , ym.div_balamt , ym.avg_balamt , ym.etc_balamt , ( ym.div_balamt + ym.avg_balamt + ym.etc_balamt ) as expense_amt , "
ls_sql += " 0 as methpay_status, 'ALL' as paytype_code , 0 as pay_amt , 0 as pay_percent , 1 as payseq_no "
ls_sql += " from yrdivmaster ym , yrbgmaster ybm , yrucfdfmethpay yum , yrucfmethpay yump "
ls_sql += " where ym.coop_id = ybm.coop_id "
ls_sql += " and ym.div_year = ybm.div_year "
ls_sql += " and ym.member_no = ybm.member_no "
ls_sql += " and ym.coop_id = yum.coop_id "
ls_sql += " and yum.methpaytype_code = yump.methpaytype_code "
ls_sql += " and ( ym.div_balamt + ym.avg_balamt + ym.etc_balamt ) between yum.start_value and yum.end_value "
ls_sql += " and ym.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and ym.div_year = '" + ls_divyear + "' "
ls_sql += " and not exists ( 	select 1 from yrdivmethpay ydm where ydm.coop_id = ym.coop_id "
ls_sql += "	and ydm.div_year = ym.div_year and ydm.member_no = ym.member_no "
ls_sql += "	and ydm.coop_id = '" + is_coopcontrol + "' and ydm.div_year = '" + ls_divyear + "' "
ls_sql += "	and ydm.methpay_status in ( 0 , 1 ) "
ls_sql += "	) "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and yrbgmaster.coop_id = ybm.coop_id and yrbgmaster.member_no = ybm.member_no "
ls_sql += " and yrbgmaster.div_year = ybm.div_year "
ls_sql += ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้ (สมาชิกที่ไม่มีวิธีจ่ายปันผล)"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*1End สร้างวิธีจ่ายปันผลจากตาราง yrucfdfmethpay กรณีที่ไม่มีใบคำขอ*/

/*2Start สร้างวิธีจ่ายปันผลจากตาราง yrucfdfmethpay กำหนดตาม payreplace_flag = 1*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHGENDF 50.2)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_text = "สร้างใบคำขอข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน (สมาชิกที่วิธีจ่ายไม่ถึงตามข้อกำหนดสหกรณ์) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex

if is_coopcontrol = "010001" or is_coopcontrol = "012001" then
	ls_sql = " update yrdivmethpay ydm "
	ls_sql += " set ydm.methpaytype_code = 'NXT' , "
	ls_sql += " ydm.moneytype_code = 'TRN' , "
	ls_sql += " ydm.expense_bank = '' "
	ls_sql += " where ydm.coop_id = '" + is_coopcontrol + "' "
	ls_sql += " and ydm.div_year = '" + ls_divyear + "' "
	ls_sql += " and ydm.methpaytype_code in ( 'CBT' ) "
	ls_sql += " and ydm.expense_amt <= 10 "
	ls_sql += " and exists( select 1 from yrbgmaster "
	ls_sql += " 				where yrbgmaster.coop_id = ydm.coop_id "
	ls_sql += " 				and yrbgmaster.member_no = ydm.member_no "
	ls_sql += " 				and yrbgmaster.div_year = ydm.div_year "
	ls_sql += " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
	ls_sql += " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
	ls_sql += ls_sqlselect + " ) "
else
	ls_sql = " update yrdivmethpay ydm "
	ls_sql += " set ( ydm.methpaytype_code , ydm.moneytype_code , ydm.expense_bank ) = "
	ls_sql += " 	( 	select yudmp.methpaytype_code , nvl( yump.join_moneytype_code , '' ) , nvl( yudmp.expense_bank , '' ) "
	ls_sql += " 		from yrucfdfmethpay yudmp , yrucfmethpay yump "
	ls_sql += " 		where yudmp.coop_id = yump.coop_id "
	ls_sql += " 		and yudmp.methpaytype_code = yump.methpaytype_code "
	ls_sql += " 		and yudmp.coop_id = ydm.coop_id "
	ls_sql += " 		and ydm.expense_amt >= yudmp.start_value "
	ls_sql += " 		and ydm.expense_amt <= yudmp.end_value "
	ls_sql += " 		and yudmp.coop_id = '" + is_coopcontrol + "' "
	ls_sql += " 		and yudmp.payreplace_flag = 1 "
	ls_sql += " 	) "
	ls_sql += " where ydm.coop_id = '" + is_coopcontrol + "' "
	ls_sql += " and ydm.div_year = '" + ls_divyear + "' "
	ls_sql += " and exists( select 1 from yrucfdfmethpay yum "
	ls_sql += " 				where yum.coop_id = ydm.coop_id "
	ls_sql += " 				and ydm.expense_amt >= yum.start_value "
	ls_sql += " 				and ydm.expense_amt <= yum.end_value "
	ls_sql += " 				and yum.coop_id = '" + is_coopcontrol + "' "
	ls_sql += " 				and yum.payreplace_flag = 1 "
	ls_sql += " 				) "
	ls_sql += " and exists( select 1 from yrbgmaster "
	ls_sql += " 				where yrbgmaster.coop_id = ydm.coop_id "
	ls_sql += " 				and yrbgmaster.member_no = ydm.member_no "
	ls_sql += " 				and yrbgmaster.div_year = ydm.div_year "
	ls_sql += " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
	ls_sql += " 				and yrbgmaster.div_year = '" + ls_divyear + "' "
	ls_sql += ls_sqlselect + " ) "
end if

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้ (สมาชิกที่วิธีจ่ายไม่ถึงตามข้อกำหนดสหกรณ์)"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*2End สร้างวิธีจ่ายปันผลจากตาราง yrucfdfmethpay กรณีที่ไม่มีใบคำขอ*/

/*3Start Clear data 0*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHGENDF 50.3)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_text = "สร้างใบคำขอข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน (เคลียร์ข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน) รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex

ls_sql = " delete from yrdivmethpay ydm "
ls_sql += " where ydm.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and ydm.div_year = '" + ls_divyear + "' "
ls_sql += " and ydm.expense_amt = 0 "
ls_sql += " and exists ( select 1 from yrbgmaster  "
ls_sql += "				where yrbgmaster.coop_id = ydm.coop_id and yrbgmaster.member_no = ydm.member_no "
ls_sql += " 				and yrbgmaster.div_year = ydm.div_year "
ls_sql += " 				and ( yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' ) "
ls_sql += ls_sqlselect + " ) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด (70.3)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้ (เคลียร์ข้อมูลสมาชิกที่ไม่ได้ปันผล-เฉลี่ยคืน)"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*3End Clear data 0*/

/*4Start Sequest*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHGENDF 50.4)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_text = "ปรับปรุงอายัดข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex

declare ldcr_sequest cursor for
select nvl( yc.member_no , '' ) as member_no , nvl( sequest_flag , -1 ) as sequest_flag
from yrreqchg yc , yrreqchgsequest ycs
where yc.coop_id = ycs.coop_id
and yc.reqchg_docno = ycs.reqchg_docno
and yc.coop_id = :is_coopcontrol
and yc.div_year = :ls_divyear
and yc.reqchg_status = 1
order by yc.member_no , yc.reqchg_docno
using itr_sqlca;
open ldcr_sequest ;
	fetch ldcr_sequest into :ls_memno , :li_flag ;
	do while itr_sqlca.sqlcode = 0
		
		update yrbgmaster
		set sequest_flag = :li_flag
		where coop_id = :is_coopcontrol
		and member_no = :ls_memno
		and div_year = :ls_divyear
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text 	= "พบข้อผิดพลาด (70.4)" 
			ithw_exception.text 	+= "~r~nไม่สามารถปรับข้อมูลสมาชิกที่อายัดปันผล-เฉลี่ยคืนได้"
			ithw_exception.text 	+= "~r~nเลขสมาชิก : " + ls_memno
			ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
		update yrdivmethpay
		set sequest_flag = :li_flag
		where coop_id = :is_coopcontrol
		and member_no = :ls_memno
		and div_year = :ls_divyear
		using itr_sqlca ;
		
		if itr_sqlca.sqlcode <> 0 then
			ithw_exception.text 	= "พบข้อผิดพลาด (70.5)" 
			ithw_exception.text 	+= "~r~nไม่สามารถปรับข้อมูลสมาชิกที่อายัดปันผล-เฉลี่ยคืนได้"
			ithw_exception.text 	+= "~r~nเลขสมาชิก : " + ls_memno
			ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
			ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
			throw ithw_exception
		end if
		
	fetch ldcr_sequest into :ls_memno , :li_flag ;
	loop
close ldcr_sequest ;
/*4End Sequest*/

objdestroy:

if lb_err then
	ithw_exception.text = "n_cst_divsr_process.of_prc_methpay_gen_default() " + ithw_exception.text 
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_methpay_type (n_ds ads_constant, n_ds ads_proc) throws Exception;string ls_methpay

ls_methpay		= ads_constant.object.methpay_type[1]

try
	choose case ls_methpay
		case "REQ"
			/*ใบคำขอ yrreqmethpay*/
			this.of_prc_methpay_type_req( ads_proc )
		case "MEM"
			/*ทะเบียนสมาชิก mbmembmaster-mbmoneytr*/
			this.of_prc_methpay_type_mem( ads_proc )
		case "MIX"
			/*ผสม ใบคำขอ-ทะเบียนสมาชิก ดูจากใบคำขอเป็นหลัก*/
			this.of_prc_methpay_type_req( ads_proc )
			this.of_prc_methpay_type_mem( ads_proc )
	end choose
	
catch( Exception lthw_methpay )
	ithw_exception.text	= lthw_methpay.text
	throw ithw_exception
end try

return 1
end function

protected function integer of_prc_methpay_type_mem (n_ds ads_proc) throws Exception;string ls_sqlselect , ls_sql
string ls_divyear
integer li_prgindex
boolean lb_err

li_prgindex = 0

inv_progress.istr_progress.subprogress_text = "สร้างขอมูลวิธีจ่ายปันผล-เฉลี่ยคืนตามค่าที่กำหนดไว้ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_max = 1

ls_divyear		= ads_proc.object.div_year[1]

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*1Start สร้างวิธีจ่ายเงินปันผลจากทะเบียนสมาชิกหรือจากตารางจ่ายอื่นๆ*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~n<br>ยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHTYPMEM 50.1)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลวิธีจ่ายปันผล (ทะเบียนสมาชิก) รอสักครู่..."

ls_sql		= " insert into yrdivmethpay "
ls_sql		+= " ( coop_id , member_no , div_year , seq_no , methpaytype_code , moneytype_code , "
ls_sql		+= " expense_bank , expense_branch , expense_accid , expense_bank_typ , bizzcoop_id , bizztype_code , bizzaccount_no , "
ls_sql		+= " div_amt , avg_amt , etc_amt , expense_amt , ref_reqdoccoop , ref_reqdocno , methpay_status , "
ls_sql		+= " paytype_code , pay_amt , pay_percent , payseq_no ) "
ls_sql		+= " select yrbgmaster.coop_id , yrbgmaster.member_no , yrbgmaster.div_year , 1 as seq_no , nvl( yum.methpaytype_code , '' ) as methpaytype_code , mtr.expense_code as moneytype_code , "
ls_sql		+= " mtr.expense_bank , mtr.expense_branch , mtr.expense_accid , '' as expense_bank_typ , mtr.coop_id as bizzcoop_id , '' as bizztype_code , mtr.expense_accid as bizzaccount_no , "
ls_sql		+= " 0 , 0 , 0 , 0 , mtr.coop_id as coop_id , mtr.docno as methreq_docno , 0 , "
ls_sql		+= " 'ALL' as paytype_code , 0 as pay_amt , 0 as pay_percent , 1 as payseq_no "
ls_sql		+= " from yrbgmaster , "
/*จัดข้อมูล moneytype_code กรณี TRN ให้ตีเป็นเงินฝากให้หมด*/
ls_sql		+= " ( 	select coop_id , ( case when join_moneytype_code = 'TRN' then 'DEP' else methpaytype_code end ) as methpaytype_code , "
ls_sql		+= " 	join_moneytype_code "
ls_sql		+= " 	from yrucfmethpay "
ls_sql		+= " 	where coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 	group by coop_id , ( case when join_moneytype_code = 'TRN' then 'DEP' else methpaytype_code end ) , join_moneytype_code "
ls_sql		+= " ) yum , "
/*จัดลำดับความสำคัญในการอ่านค่าวิธีจ่าย*/
ls_sql		+= " ( "
ls_sql		+= " 	select rank() over( partition by mt.coop_id , mt.member_no order by mt.priority desc ) as priority , "
ls_sql		+= " 	mt.coop_id , mt.member_no , mt.docno , mt.expense_code , nvl( mt.expense_bank , '' ) as expense_bank , nvl( mt.expense_branch , '' ) as expense_branch , nvl( mt.expense_accid , '' ) as expense_accid "
ls_sql		+= " 	from( "
ls_sql		+= " 		select 1 as priority , 'MEMB' as docno , m.coop_id , m.member_no , m.expense_code , m.expense_bank , m.expense_branch , m.expense_accid "
ls_sql		+= " 		from mbmembmaster m "
ls_sql		+= " 		where m.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 		union "
ls_sql		+= " 		select 10 as priority , 'DVAV' as docno , mmt.coop_id , mmt.member_no , mmt.moneytype_code , mmt.bank_code , mmt.bank_branch , mmt.bank_accid "
ls_sql		+= " 		from mbmembmoneytr mmt "
ls_sql		+= " 		where mmt.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 		and mmt.trtype_code = 'DVAV1' "
//ls_sql		+= " 		and mmt.override_flag = 1 "
ls_sql		+= " 	) mt "
ls_sql		+= " )mtr "
ls_sql		+= " where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql		+= " and yrbgmaster.coop_id = mtr.coop_id "
ls_sql		+= " and yrbgmaster.member_no = mtr.member_no "
ls_sql		+= " and mtr.coop_id = yum.coop_id(+) "
ls_sql		+= " and mtr.expense_code = yum.join_moneytype_code(+) "
ls_sql		+= " and mtr.priority = 1 "
ls_sql		+= " and not exists( select 1 from yrdivmethpay ydm "
ls_sql		+= " 					where ydm.coop_id = yrbgmaster.coop_id "
ls_sql		+= " 					and ydm.member_no = yrbgmaster.member_no "
ls_sql		+= " 					and ydm.div_year = yrbgmaster.div_year "
ls_sql		+= " 					and ydm.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 					and ydm.div_year = '"+ ls_divyear +"' "
ls_sql		+= " 					) "
ls_sql		+= ls_sqlselect 

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~n<br>พบข้อผิดพลาด (70.1)" 
	ithw_exception.text 	+= "~r~n<br>ไม่สามารถสร้างข้อมูลวิธีจ่ายปันผล (ทะเบียนสมาชิก)ได้"
	ithw_exception.text 	+= "~r~n<br>"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*1End สร้างวิธีจ่ายเงินปันผลจากทะเบียนสมาชิกหรือจากตารางจ่ายอื่นๆ*/

/*2Star tอัพเดทประเภทเงินฝาก*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~n<br>ยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHTYPMEM 50.2)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_text = "อัพเดทข้อมูลประเภทเงินฝาก รอสักครู่..."

ls_sql		= " update yrdivmethpay "
ls_sql		+= " set yrdivmethpay.bizztype_code = ( select dm.depttype_code " 
ls_sql		+= " 								from dpdeptmaster dm "
ls_sql		+= " 								where dm.coop_id = yrdivmethpay.bizzcoop_id "
ls_sql		+= " 								and dm.deptaccount_no = yrdivmethpay.bizzaccount_no "
ls_sql		+= " 								) "
ls_sql		+= " where yrdivmethpay.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrdivmethpay.div_year = '"+ ls_divyear +"' "
ls_sql		+= " and yrdivmethpay.bizztype_code is null "
ls_sql		+= " and yrdivmethpay.methpaytype_code = 'DEP' "
ls_sql		+= " and exists ( select 1 from yrbgmaster "
ls_sql		+= " 				where yrbgmaster.coop_id = yrdivmethpay.coop_id "
ls_sql		+= " 				and yrbgmaster.member_no = yrdivmethpay.member_no "
ls_sql		+= " 				and yrbgmaster.div_year = yrdivmethpay.div_year "
ls_sql		+= " 				and yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " 				and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql		+= ls_sqlselect 
ls_sql		+= " 				) "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~n<br>พบข้อผิดพลาด (70.2)" 
	ithw_exception.text 	+= "~r~n<br>ไม่สามารถอัพเดทข้อมูลประเภทเงินฝากได้"
	ithw_exception.text 	+= "~r~n<br>"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~n<br>กรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if

/*2End อัพเดทประเภทเงินฝาก*/

objdestroy:

if lb_err then
	ithw_exception.text = "n_cst_divsr_process.of_prc_methpay_type_mem() " + ithw_exception.text 
	throw ithw_exception
end if

return 1
end function

protected function integer of_prc_methpay_type_req (n_ds ads_proc) throws Exception;string ls_sqlselect , ls_sql
string ls_divyear
integer li_prgindex
boolean lb_err

li_prgindex = 0

inv_progress.istr_progress.subprogress_text = "สร้างขอมูลวิธีจ่ายปันผล-เฉลี่ยคืนตามใบคำขอ รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_max = 2

ls_divyear		= ads_proc.object.div_year[1]

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*1Start สร้างวิธีจ่ายเงินปันผลจากใบคำขอ*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHTYPREQ 50.1)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_text = "สร้างข้อมูลวิธีจ่ายปันผล (ใบคำขอ) รอสักครู่..."

ls_sql = " insert into yrdivmethpay "
ls_sql += " ( coop_id , member_no , div_year , seq_no , methpaytype_code , moneytype_code ,  "
ls_sql += " expense_bank , expense_branch , expense_accid , expense_bank_typ , bizzcoop_id , bizztype_code , bizzaccount_no ,  "
ls_sql += " div_amt , avg_amt , etc_amt , expense_amt , ref_reqdoccoop , ref_reqdocno , methpay_status , "
ls_sql	+= " paytype_code , pay_amt , pay_percent , payseq_no ) "
ls_sql += " select yrbgmaster.coop_id , yrbgmaster.member_no , yrbgmaster.div_year , yrreqmethpaydet.payseq_no , yrreqmethpaydet.methpaytype_code , yrreqmethpaydet.moneytype_code , "
ls_sql += " yrreqmethpaydet.expense_bank , yrreqmethpaydet.expense_branch , yrreqmethpaydet.expense_accid , yrreqmethpaydet.expense_bank_typ , yrreqmethpaydet.bizzcoop_id , yrreqmethpaydet.bizztype_code , yrreqmethpaydet.bizzaccount_no , "
ls_sql += " 0 , 0 , 0 , 0 , yrreqmethpay.coop_id , yrreqmethpay.methreq_docno , 0 , "
ls_sql	+= " yrreqmethpaydet.paytype_code , yrreqmethpaydet.pay_amt , yrreqmethpaydet.pay_percent , yrreqmethpaydet.payseq_no "
ls_sql += " from yrreqmethpay , yrreqmethpaydet , yrbgmaster "
ls_sql += " where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and yrbgmaster.div_year = '" + ls_divyear + "' "
ls_sql += " and yrbgmaster.coop_id = yrreqmethpay.coop_id "
ls_sql += " and yrbgmaster.member_no = yrreqmethpay.member_no "
ls_sql += " and yrbgmaster.div_year = yrreqmethpay.div_year "
ls_sql += " and yrreqmethpay.coop_id = yrreqmethpaydet.coop_id "
ls_sql += " and yrreqmethpay.methreq_docno = yrreqmethpaydet.methreq_docno "
ls_sql += " and yrreqmethpay.methreq_status in ( 8 , 1 ) "
ls_sql += ls_sqlselect

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถสร้างข้อมูลวิธีจ่ายปันผล (ใบคำขอ)ได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*1End สร้างวิธีจ่ายเงินปันผลจากใบคำขอ*/

/*2Start อัพเดทสถานะใบคำขอเป็นผ่านรายการ*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHTYPREQ 50.2)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_text = "อัพเดทใบคำขอข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืน รอสักครู่..."

ls_sql = " update yrreqmethpay yrm "
ls_sql += " set yrm.methreq_status = 1 "
ls_sql += " where yrm.methreq_status = 8 "
ls_sql += " and exists ( select 1 from yrbgmaster where yrbgmaster.coop_id = '" + is_coopcontrol + "' and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql += " and yrbgmaster.coop_id = yrm.coop_id and yrbgmaster.member_no = yrm.member_no "
ls_sql += " and yrbgmaster.div_year = yrm.div_year "
ls_sql += ls_sqlselect + " ) "
ls_sql	+= " and yrm.coop_id = '" + is_coopcontrol + "' "
ls_sql += " and yrm.div_year =  '"+ ls_divyear +"' "

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด (70.2)" 
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทใบคำขอข้อมูลวิธีจ่ายปันผล-เฉลี่ยคืนได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	if lb_err then Goto objdestroy
end if
/*2End อัพเดทสถานะใบคำขอเป็นผ่านรายการ*/

objdestroy:

if lb_err then
	ithw_exception.text = "n_cst_divsr_process.of_prc_methpay_type_req() " + ithw_exception.text 
	throw ithw_exception
end if

return 1
end function

protected function integer of_setsrvdate (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_datesrv ) or not isvalid( inv_datesrv ) then
		inv_datesrv	= create n_cst_datetimeservice
		return 1
	end if
else
	if isvalid( inv_datesrv ) then
		destroy inv_datesrv
		return 1
	end if
end if

return 0
end function

protected function integer of_setsrvdw (boolean ab_switch) throws Exception;// Check argument
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
		inv_procsrv.of_initservice()
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

protected function integer of_setsrvrdmoney (boolean ab_switch);// Check argument
if isnull( ab_switch ) then
	return -1
end if

if ab_switch then
	if isnull( inv_rdmoneysrv ) or not isvalid( inv_rdmoneysrv ) then
		inv_rdmoneysrv	= create n_cst_roundmoneyservice
		inv_rdmoneysrv.of_initservice( inv_transection )
		return 1
	end if
else
	if isvalid( inv_rdmoneysrv ) then
		destroy inv_rdmoneysrv
		return 1
	end if
end if

return 0
end function

protected function integer of_prc_mthpay_update_mem (n_ds ads_proc) throws Exception;string ls_sqlselect , ls_sql
string ls_divyear
integer li_prgindex
boolean lb_err

li_prgindex = 0

inv_progress.istr_progress.subprogress_text = "อัพเดทข้อมูลสมาชิก รอสักครู่..."
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_max = 1

ls_divyear		= ads_proc.object.div_year[1]

try
	inv_procsrv.of_set_sqlselect( "yrbgmaster" )
	inv_procsrv.of_get_sqlselect( ls_sqlselect )
catch( Exception lthw_sqlselect )
	ithw_exception.text	+= lthw_sqlselect.text
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true
end try
if lb_err then Goto objdestroy

/*1Start Update ข้อมูลสมาชิก*/
yield()
if inv_progress.of_is_stop() then
	ithw_exception.text = "~r~nยกเลิกการประมวลโดยผู้ทำรายการ (DIVAVGMETHUPMEM 50.1)"
	throw ithw_exception
end if

li_prgindex++
inv_progress.istr_progress.subprogress_index = li_prgindex
inv_progress.istr_progress.subprogress_text = "อัพเดทข้อมูลสมาชิก รอสักครู่..."

ls_sql		= " update yrbgmaster "
ls_sql		+= " set ( yrbgmaster.membgroup_code , yrbgmaster.membtype_code ) = "
ls_sql		+= " 	( 	select m.membgroup_code , m.membtype_code "
ls_sql		+= " 		from mbmembmaster m "
ls_sql		+= " 		where m.coop_id = yrbgmaster.coop_id "
ls_sql		+= " 		and m.member_no = yrbgmaster.member_no ) "
ls_sql		+= " where yrbgmaster.coop_id = '" + is_coopcontrol + "' "
ls_sql		+= " and yrbgmaster.div_year = '"+ ls_divyear +"' "
ls_sql		+= ls_sqlselect

execute immediate :ls_sql using itr_sqlca;

if itr_sqlca.sqlcode <> 0 then
	ithw_exception.text 	= "~r~nพบข้อผิดพลาด (70.1)" 
	ithw_exception.text 	+= "~r~nไม่สามารถอัพเดทข้อมูลสมาชิกได้"
	ithw_exception.text 	+= "~r~n"+ string( itr_sqlca.sqlcode ) + "  " + itr_sqlca.sqlerrtext
	ithw_exception.text 	+= "~r~nกรุณาตรวจสอบ"
	lb_err = true ; if lb_err then Goto objdestroy
end if
/*1End Update ข้อมูลสมาชิก*/

objdestroy:

if lb_err then
	ithw_exception.text = "n_cst_divsr_process.of_prc_mthpay_update_mem() " + ithw_exception.text 
	throw ithw_exception
end if

return 1
end function

public function integer of_cal_methpay_order (string as_methpay, string as_paytype, decimal adc_paypercent, decimal adc_payamt, ref decimal adc_divamt, ref decimal adc_divbal, ref decimal adc_avgamt, ref decimal adc_avgbal, ref decimal adc_etcamt, ref decimal adc_etcbal, ref decimal adc_proc, ref decimal adc_itembal);string		ls_cuttype
long		li_count, li_index

choose case as_paytype
	case "PEC"
		adc_proc				= adc_itembal * adc_paypercent
	case "VAL"
		adc_proc				= adc_payamt
	case "ALL"
		adc_proc				= adc_itembal
end choose

ids_cutorder.setfilter( "methpaytype_code = '"+as_methpay+"'" )
ids_cutorder.filter()

li_count		= ids_cutorder.rowcount()

for li_index = 1 to li_count
	ls_cuttype		= ids_cutorder.getitemstring( li_index, "cuttype_code" )
	
	choose case ls_cuttype
		case "DIV"
			//ตัดปันผล
			if adc_divbal > 0 and adc_itembal > 0 and adc_proc > 0 then
				if adc_proc > adc_divbal then
					adc_itembal		-= adc_divbal
					adc_proc			-= adc_divbal
					adc_divamt		= adc_divbal
					adc_divbal		= 0
				else
					adc_itembal		-= adc_proc
					adc_divbal		-= adc_proc
					adc_divamt		= adc_proc
					adc_proc			= 0
				end if
			end if
		case "AVG"
			//ตัดเฉลี่ยคืน
			if adc_avgbal > 0 and adc_itembal > 0 and adc_proc > 0 then
				if adc_proc > adc_avgbal then
					adc_itembal		-= adc_avgbal
					adc_proc			-= adc_avgbal
					adc_avgamt		= adc_avgbal
					adc_avgbal		= 0
				else
					adc_itembal 		-= adc_proc
					adc_avgbal		-= adc_proc
					adc_avgamt		= adc_proc
					adc_proc			= 0
				end if
			end if
		case "ETC"
			//ตัดปันผลค้างจ่าย
			if adc_etcbal > 0 and adc_itembal > 0 and adc_proc > 0 then
				if adc_proc > adc_etcbal then
					adc_itembal		-= adc_etcbal
					adc_proc			-= adc_etcbal
					adc_etcamt		= adc_etcbal
					adc_etcbal		= 0
				else
					adc_itembal 		-= adc_proc
					adc_etcbal		-= adc_proc
					adc_etcamt		= adc_proc
					adc_proc			= 0
				end if
			end if
	end choose
next

adc_proc		= adc_divamt + adc_avgamt + adc_etcamt

ids_cutorder.setfilter( "" )
ids_cutorder.filter()

return 1
end function

on n_cst_divsrv_process.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_divsrv_process.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create Exception
end event

