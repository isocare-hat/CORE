$PBExportHeader$n_cst_money_return_proc_service.sru
forward
global type n_cst_money_return_proc_service from nonvisualobject
end type
end forward

global type n_cst_money_return_proc_service from nonvisualobject
end type
global n_cst_money_return_proc_service n_cst_money_return_proc_service

type variables
Public:

transaction						itr_sqlca
Exception						ithw_exception

n_cst_dbconnectservice		inv_transection
n_cst_dwxmlieservice			inv_dwxmliesrv
n_cst_stringservice			inv_stringsrv

string		is_coopid , is_coopcontrol
string		is_arg[] , is_sqlext
string		is_proctext
integer	ii_proctype
end variables

forward prototypes
public function integer of_setargument (string as_arg[])
public function integer of_setproctype (integer ai_proctype)
public function integer of_getargument (ref string as_arg[])
public function integer of_getproctype (ref integer ai_proctype)
public function integer of_setsqldw (ref n_ds ads_info) throws Exception
public function integer of_setsqlselect (string as_tablename) throws Exception
public function integer of_getsqlselect (ref string as_sqlext)
public function integer of_setanalyze () throws Exception
public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans)
public function integer of_setsqldw (ref n_ds ads_info, string as_tablename) throws Exception
public function integer of_set_proctext (string as_proctext)
public function integer of_set_coopid (string as_coopid)
public function integer of_set_coopcontrol (string as_coopcontrol)
protected function integer of_setsrvdwxmlie (boolean ab_switch)
end prototypes

public function integer of_setargument (string as_arg[]);/***********************************************************
<description>
	set ค่า argument ที่ต้องการประมวล
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success,  Exception = failure
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
is_arg[]		= as_arg[]

return 1
end function

public function integer of_setproctype (integer ai_proctype);/***********************************************************
<description>
	set ค่าประเภทการคำนวณ
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success,  Exception = failure
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
ii_proctype		= ai_proctype

return 1
end function

public function integer of_getargument (ref string as_arg[]);as_arg[]		= is_arg[]

return 1
end function

public function integer of_getproctype (ref integer ai_proctype);ai_proctype		= ii_proctype

return 1
end function

public function integer of_setsqldw (ref n_ds ads_info) throws Exception;/***********************************************************
<description>
	นำชุด sql ที่สร้างมานำเข้า dw
</description>

<arguments>  
	ads_info			n_ds		datastore ข้อมูลรายการที่จะทำการจัดเก็บ
</arguments> 

<return> 
	integer		1 = success, -1 = failure
</return> 

<usage> 
		
	Revision History:
	Version 1.0 (Initial version) Modified Date 23/04/2012 by Godji
</usage> 
***********************************************************/
string		ls_temp
integer	li_pos
integer	li_ret

ads_info.settransobject( itr_sqlca )

if is_sqlext <> "" then
//	แบบเดิม	
//	ls_temp	= ads_info.getsqlselect()
//	ls_temp	+= is_sqlext
	
	ls_temp	= ads_info.getsqlselect()
	li_pos		= pos( ls_temp , 'GROUP BY' )
	if isnull( li_pos ) or li_pos = 0 then ls_temp	+= is_sqlext
	if li_pos > 0 then ls_temp = mid( ls_temp , 1 , li_pos - 1 ) + ' ' + is_sqlext + ' ' + mid( ls_temp , li_pos , len( ls_temp ))
	
	li_ret = ads_info.setsqlselect( ls_temp )
	
	if ( li_ret <> 1 ) then
		ithw_exception.text += "~r~n" + ads_info.of_geterrormessage()
		return -1
	end if	
end if

return 1
end function

public function integer of_setsqlselect (string as_tablename) throws Exception;/***********************************************************
<description>
	สร้างชุด sql ในส่วน Where เพิ่มเติมสำหรับการประมวลผล 
	จากการเลือกช่วงสังกัด หรือ ช่วงเลขสมาชิก
</description>

<arguments>  
	ads_info			n_ds		datastore ข้อมูลรายการที่จะทำการจัดเก็บ
</arguments> 

<return> 
	integer		1 = success, -1 = failure
</return> 

<usage> 
		
	Revision History:
	Version 1.0 (Initial version) Modified Date 28/9/2010 by MiT
</usage> 
***********************************************************/
string		ls_tablename , ls_column
string		ls_temp

is_sqlext				= ""
ls_tablename		= as_tablename

if len( ls_tablename ) = 0 or ls_tablename = "" or isnull( ls_tablename ) then
	ls_column		= "mbmembmaster"
else
	ls_column		= trim( ls_tablename )
end if

choose case ii_proctype
	case 1
		is_sqlext	= ""
	case 2
		ls_column		+= ".member_no"
		inv_stringsrv.of_buildsqlext( is_arg[], ls_column, is_sqlext )
		is_sqlext	= " and " + is_sqlext
	case 3
		ls_column		+= ".membgroup_code"
		inv_stringsrv.of_buildsqlext( is_arg[], ls_column , is_sqlext )
		is_sqlext	= " and " + is_sqlext
	case 4
		ls_column		+= ".membtype_code"
		inv_stringsrv.of_buildsqlext( is_arg[], ls_column, is_sqlext )
		is_sqlext	= " and " + is_sqlext	
end choose

return 1
end function

public function integer of_getsqlselect (ref string as_sqlext);as_sqlext			= is_sqlext

return 1
end function

public function integer of_setanalyze () throws Exception;/***********************************************************
<description>
	set ค่าตามประเภทที่ต้องการคำนวณ
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success,  Exception = failure
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
// รูปแบบการประมวลผล
if ii_proctype > 1 then inv_stringsrv.of_analyzestring( is_proctext, is_arg[] )

return 1
end function

public function integer of_initservice (n_cst_dbconnectservice anv_dbtrans);/***********************************************************
<description>
	ใช้สำหรับ Intial service
</description>

<arguments>  
	atr_dbtrans			n_cst_dbconnectservice	รายละเอียดการเชื่อมต่อฐานข้อมูล
</arguments> 

<return> 
	1						Integer	ถ้าไม่มีข้อผิดพลาด
</return> 

<usage> 
	เรียกใช้ครั้งเดียว และต้องเรียกใช้เป็นฟังก์ชั่นแรกหลังจาก create instance
	ก่อนที่จะเรียกใช้ฟังก์ชั่นอื่น ๆ
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 28/9/2010 by MiT
</usage> 
***********************************************************/
// Service Transection
if isnull( inv_transection ) or not isvalid( inv_transection ) then
	inv_transection	= create n_cst_dbconnectservice
end if

inv_transection	= anv_dbtrans
itr_sqlca 			= inv_transection.itr_dbconnection

is_coopid			= anv_dbtrans.is_coopid
is_coopcontrol	= anv_dbtrans.is_coopcontrol

//this.of_setsrvdwxmlie( true )

// Service สำหรับสร้าง Sql Extend
inv_stringsrv	= create n_cst_stringservice

return 1
end function

public function integer of_setsqldw (ref n_ds ads_info, string as_tablename) throws Exception;/***********************************************************
<description>
	นำชุด sql ที่สร้างมานำเข้า dw
</description>

<arguments>  
	ads_info			n_ds		datastore ข้อมูลรายการที่จะทำการจัดเก็บ
	as_tablename	String		table ที่ต้องการเชื่อม coopid
</arguments> 

<return> 
	integer		1 = success, -1 = failure
</return> 

<usage> 
		
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
string		ls_temp , ls_column
integer	li_pos , li_ret

if isnull( as_tablename ) or len( trim( as_tablename )) = 0 then as_tablename = "mbmembmaster"

ls_column	= " and " + as_tablename + ".coop_id = '" + is_coopid + "'"

ads_info.settransobject( itr_sqlca )

ls_temp	= ads_info.getsqlselect()
li_pos		= pos( ls_temp , 'GROUP BY' )
if isnull( li_pos ) or li_pos = 0 then ls_temp	+= ls_column
if li_pos > 0 then ls_temp = mid( ls_temp , 1 , li_pos - 1 ) + ' ' + ls_column + ' ' + mid( ls_temp , li_pos , len( ls_temp ))

li_ret = ads_info.setsqlselect( ls_temp )

if ( li_ret <> 1 ) then
	ithw_exception.text += "~r~n" + ads_info.of_geterrormessage()
	return -1
end if	
	
return 1
end function

public function integer of_set_proctext (string as_proctext);/***********************************************************
<description>
	set เงื่อนไขพิเศษที่ต้องการประมวล
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success,  Exception = failure
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
is_proctext	= as_proctext

return 1
end function

public function integer of_set_coopid (string as_coopid);/***********************************************************
<description>
	set เงื่อนไขพิเศษที่ต้องการประมวล
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success,  Exception = failure
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
is_coopid	= as_coopid

return 1
end function

public function integer of_set_coopcontrol (string as_coopcontrol);/***********************************************************
<description>
	set เงื่อนไขพิเศษที่ต้องการประมวล
</description>

<arguments>

</arguments> 

<return> 
	Integer	1 = success,  Exception = failure
</return> 

<usage> 
	
	Revision History:
	Version 1.0 (Initial version) Modified Date 09/05/2012 by Godji
</usage> 
***********************************************************/
is_coopcontrol	= as_coopcontrol

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

on n_cst_money_return_proc_service.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_money_return_proc_service.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ithw_exception = create Exception
end event

event destructor;this.of_setsrvdwxmlie( false )
if isvalid(inv_stringsrv) then destroy inv_stringsrv
end event

