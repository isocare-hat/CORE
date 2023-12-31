$PBExportHeader$n_cst_mis_service.sru
$PBExportComments$Generated Web service object
forward
global type n_cst_mis_service from n_cst_base
end type
end forward

global type n_cst_mis_service from n_cst_base
end type
global n_cst_mis_service n_cst_mis_service

type variables


Public:
DataStore ids_connect
DataStore ids_sheets[]
DataStore ids_sheetpair[]
String is_sheetcode[]
integer ii_sheetcount = 0

Protected:
Transaction itr_connect
Exception ithw_exception
n_cst_dbconnectservice inv_db


end variables

forward prototypes
public function integer of_gen_camels_analysis (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_dimxml1, ref string as_dimxml2, ref string as_dimxml3, ref string as_dimxml4, ref string as_dimxml5)
public function integer of_gen_gph_newmember_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_ratio_get_groups (ref string as_returnxml) throws Exception
public function integer of_ratio_get_ratios (long al_groupid, ref string as_returnxml) throws Exception
public function integer of_ratio_get_variables (ref string as_returnxml) throws Exception
public function integer of_settrans (ref n_cst_dbconnectservice anv_connected) throws Exception
public function integer of_ratio_save_groups (string as_savexml) throws Exception
public function integer of_ratio_save_variables (string as_savexml) throws Exception
public function integer of_ratio_save_operands (string as_savexml)
public function integer of_ratio_save_ratios (string as_savexml) throws Exception
public function integer of_ratio_get_operands (long al_ratioid, ref string as_returnxml) throws Exception
public function integer of_ratio_change_group (long al_ratioid, long al_newgroupid) throws Exception
public function integer of_ratio_get_accmoneysheethead (ref string as_sheetheadxml) throws Exception
public function integer of_ratio_get_accmoneysheetdet (string as_sheetcode, ref string as_returnxml) throws Exception
public function integer of_ratio_get_ratios (ref string as_returnxml) throws Exception
public function integer of_ratio_delete_group (long al_groupid) throws Exception
public function integer of_gen_gph_newmember_quarter (integer ai_startquarter, integer ai_startyear, integer ai_endquarter, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_newmember_half (integer ai_starthalf, integer ai_startyear, integer ai_endhalf, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_newmember_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_loan_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_loan_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_loan_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_loan_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_share_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_share_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_share_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_balance_share_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_dept_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_dept_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_dept_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_dept_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_loan_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_loan_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_loan_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_loan_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_share_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_share_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_share_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payin_share_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payout_dept_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_dept_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_dept_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_loan_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payout_loan_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payout_loan_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payout_loan_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception
public function integer of_gen_gph_payout_share_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_share_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_share_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_share_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_gen_gph_payout_dept_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml)
public function integer of_ratio_get_values (ref string as_returnxml, integer ai_month1, string as_year1, integer ai_month2, string as_year2)
public function integer of_ratio_get_ratios_values (ref string as_returnxml, integer ai_month1, string as_year1, integer ai_month2, string as_year2)
public function any of_split (string as_string, string as_delimiter, ref integer ai_returncount)
public function decimal of_ratio_get_ratios_values_single (long ai_ratvar_id, string as_xml, ref string as_ratvar_name)
public function integer of_ratio_get_values_single (string as_sheetcode, integer ai_sheetseq, ref decimal adc_value1, ref decimal adc_value2)
public function integer of_ratio_get_ratios_values_firsttouch (ref string as_returnxml, integer ai_month1, string as_year1, integer ai_month2, string as_year2)
public function decimal of_ratio_get_ratio_value (string as_functiontoken[], string as_variable_xmldw, ref string as_functionstring)
public function any of_ratio_get_ratio_value_expression (string as_functiontoken[], ref integer as_token)
end prototypes

public function integer of_gen_camels_analysis (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_dimxml1, ref string as_dimxml2, ref string as_dimxml3, ref string as_dimxml4, ref string as_dimxml5);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_camels_analysis
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//	as_dimxml1				ผลลัพธ์เป็น datawindow xml อัตราส่วนมิติที่ 1 (d_mis_ratio_dimension)
//	as_dimxml2				ผลลัพธ์เป็น datawindow xml อัตราส่วนมิติที่ 2 (d_mis_ratio_dimension)
//	as_dimxml3				ผลลัพธ์เป็น datawindow xml อัตราส่วนมิติที่ 3 (d_mis_ratio_dimension)
//	as_dimxml4				ผลลัพธ์เป็น datawindow xml อัตราส่วนมิติที่ 4 (d_mis_ratio_dimension)
//	as_dimxml5				ผลลัพธ์เป็น datawindow xml อัตราส่วนมิติที่ 5 (d_mis_ratio_dimension)
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	คำนวณอัตราส่วนทางการเงินตามช่วงเดือนที่เลือก
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_camels_analysis
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////


//ดึงข้อมูลงบย่อย.(เฉพาะที่มีอ้างอิงจากงบหลัก).
datastore lds_moneysheetdet
lds_moneysheetdet = create datastore
lds_moneysheetdet.dataobject = "d_mis_ratio_moneysheetdet"
lds_moneysheetdet.settransobject( SQLCA )

//คำนวณงบหลัก.เฉพาะที่มีอ้างอิงจากตัวแปร.
datastore lds_moneysheet
lds_moneysheet = create datastore
lds_moneysheet.dataobject = "d_mis_ratio_moneysheet"
lds_moneysheet.settransobject( SQLCA )

//วนอ่านค่าจากงบให้แต่ละตัวแปรในแต่ละสูตรจนครบทุก dimension.
string dimension[5]
decimal ldc_var[3]
datastore lds_ratio, lds_var
lds_ratio = create DataStore
lds_ratio.dataobject = "d_mis_ratio_dimension"
lds_ratio.settransobject( SQLCA )
lds_var = create DataStore
lds_var.dataobject = "d_mis_ratio_operand_acclink"
lds_var.settransobject( SQLCA )
integer li_groupid, li_ratio, li_var
long ll_ratioid
for li_groupid = 1 to 5 //DIMENSION(group) 1 - 5.
	lds_ratio.retrieve( li_groupid )
	for li_ratio = 1 to lds_ratio.rowcount( ) //RATIO in group.
		ll_ratioid = lds_ratio.getitemnumber( li_ratio, "ratio_id" )
		lds_var.retrieve( ll_ratioid )
		for li_var = 1 to lds_ratio.rowcount( ) //OPERAND in ratio.
			lds_ratio.getitemnumber( li_var, "seq_no" )
			//อ่านค่าจากงบมาเก็บในตัวแปรก่อน.
			
		next
		//คำนวณตามสูตรที่กำหนดไว้.ใช้ describe ของ datawindow ช่วยคำนวณให้.
		
	next
	dimension[li_groupid] = lds_ratio.describe( "Datawindow.data.XML" )
next

//Return values.
as_dimxml1 = dimension[1]
as_dimxml2 = dimension[2]
as_dimxml3 = dimension[3]
as_dimxml4 = dimension[4]
as_dimxml5 = dimension[5]

return 1

end function

public function integer of_gen_gph_newmember_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_newmember_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานจำนวนสมาชิกเข้าใหม่เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_newmember_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_newmember_month"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_newmember_month"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_groups (ref string as_returnxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_groups
//	
//	Arguments:
//	as_returnxml			ผลลัพธ์เป็น datawindow xml รายการกลุ่มอัตราส่วนทั้งหมด
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการกลุ่มของอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_get_groups
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_group"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( )
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_ratios (long al_groupid, ref string as_returnxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_ratios
//	
//	Arguments:
//	al_groupid				หมายเลขกลุ่มเพื่อเอาอัตราส่วนตามเลขกลุ่มที่ส่งมา
//								ถ้าเป็น Null จะ Throw error ออกไปทันที  (ยกเลิกกรณีเดิม:ถ้าเป็น Null หมายถึงเอาอัตราส่วนทั้งหมดไม่ระบุกลุ่ม:ให้เรียกฟังชั่น of_ratio_get_ratios(string) แทน)
//								ถ้าเป็น 0 หมายถึงอัตราส่วนที่ยังไม่มีกลุ่ม
//	as_returnxml			ผลลัพธ์เป็น datawindow xml รายการกลุ่มอัตราส่วนทั้งหมด
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_get_ratios
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	if( isnull( al_groupid ) )then
		ithw_exception.setmessage( "MISSERVICE-of_ratio_get_ratios:~rไม่อนุญาติให้ใช้ค่า Null สำหรับ GroupID เพื่อดึงรายการอัตราส่วน" )
		Throw ithw_exception
	else
		dw_data.dataobject = "d_mis_ratio_ratios_bygroup"
		dw_data.settrans( itr_connect )
		dw_data.retrieve( al_groupid )
	end if
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_variables (ref string as_returnxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_variables
//	
//	Arguments:
//	as_returnxml			ผลลัพธ์เป็น datawindow xml รายการกลุ่มอัตราส่วนทั้งหมด
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการตัวแปรสำหรับอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_get_variables
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_variables"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( )
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_settrans (ref n_cst_dbconnectservice anv_connected) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_settrans
//	
//	Arguments:
//	anv_connected			n_cst_dbconnectservice ที่กำหนด Database Transaction ไว้เรียบร้อยแล้ว
//								
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	กำหนด transaction ให้ mis-service ใช้ในการติดต่อฐานข้อมูลทั้งหมด
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_settrans
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	inv_db = anv_connected
	itr_connect = inv_db.itr_dbconnection
	if( not isvalid( itr_connect ) )then
		Exception thw
		thw = create Exception
		thw.setmessage( "Transaction is not valid !" )
		throw thw
	end if
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_save_groups (string as_savexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_save_groups
//	
//	Arguments:
//	as_savexml				ข้อมูลรายการกลุ่มอัตราส่วน (d_mis_ratio_group)
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ที่ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	บันทึกรายการกลุ่มอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_save_groups
//	Version 1.0   Initial version
//	Modified Date 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//วนเช็คทีละแถวว่ามีข้อมูลอยู่แล้วหรือไม่.(มีอยู่แล้วใช้ Update,ถ้ายังไม่มีต้องใช้ Insert).
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_group"
	dw_data.importstring( XML!, as_savexml )
	integer li_row, li_count
	long ll_group, ll_grouporder
	string ls_groupname
	for li_row = 1 to dw_data.rowcount( )
		ll_group = dw_data.getitemnumber( li_row, "ratgroup_id" )
		ls_groupname = trim(dw_data.getitemstring( li_row, "group_name" ))
		ll_grouporder = dw_data.getitemnumber( li_row, "group_order" )
		select count(*)
		into :li_count
		from misratiogroup
		where ratgroup_id = :ll_group
		USING itr_connect;
		if( li_count = 0 )then
			//INSERT
			INSERT INTO MISRATIOGROUP ( RATGROUP_ID, GROUP_NAME, GROUP_ORDER ) 
			VALUES ( :ll_group, :ls_groupname, :ll_grouporder )
			USING itr_connect;
		else
			//UPDATE
			UPDATE MISRATIOGROUP  
			SET GROUP_NAME = :ls_groupname,   
						GROUP_ORDER = :ll_grouporder
			WHERE RATGROUP_ID = :ll_group
			USING itr_connect;
		end if
		if( itr_connect.sqlcode <> 0 )then
			ithw_exception.setmessage( "MISSERVICE-of_ratio_save_groups: "+itr_connect.SQLERRTEXT )
			rollback USING itr_connect;
			throw ithw_exception
		end if
	next
	commit USING itr_connect;
Catch( Exception exception )
	rollback USING itr_connect;
	Throw exception
End Try

return 1

end function

public function integer of_ratio_save_variables (string as_savexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_save_variables
//	
//	Arguments:
//	as_savexml				ข้อมูลรายการตัวแปรสำหรับอัตราส่วนทางการเงิน (d_mis_ratio_variables)
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ที่ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	บันทึกรายการตัวแปรสำหรับอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_save_variables
//	Version 1.0   Initial version
//	Modified Date 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//วนเช็คทีละแถวว่ามีข้อมูลอยู่แล้วหรือไม่.(มีอยู่แล้วใช้ Update,ถ้ายังไม่มีต้องใช้ Insert).
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_variables"
	dw_data.importstring( XML!, as_savexml )
	integer li_row, li_count
	long ll_id,   ll_sheetseq
	string ls_name,ls_desc,ls_sheetcode   
	for li_row = 1 to dw_data.rowcount( )
		ll_id = dw_data.getitemnumber( li_row, "ratvar_id" )
		ls_name = dw_data.getitemstring( li_row, "var_name" )
		ls_desc = dw_data.getitemstring( li_row, "var_desc" )
		ls_sheetcode = dw_data.getitemstring( li_row, "moneysheet_code" )
		ll_sheetseq = dw_data.getitemnumber( li_row, "moneysheet_seq" )
		select count(*)
		into :li_count
		from misratiovar
		where ratvar_id = :ll_id
		USING itr_connect;
		if( li_count = 0 )then
			//INSERT
			INSERT INTO MISRATIOVAR  
					( RATVAR_ID,   
					  VAR_NAME,   
					  VAR_DESC,   
					  MONEYSHEET_CODE,   
					  MONEYSHEET_SEQ )  
			VALUES ( :ll_id,   
					  :ls_name,   
					  :ls_desc,   
					  :ls_sheetcode,   
					  :ll_sheetseq )
			USING itr_connect;
		else
			//UPDATE
			UPDATE MISRATIOVAR  
			SET VAR_NAME = :ls_name,   
				VAR_DESC = :ls_desc,   
				MONEYSHEET_CODE = :ls_sheetcode,   
				MONEYSHEET_SEQ = :ll_sheetseq
			WHERE RATVAR_ID = :ll_id
			USING itr_connect;
		end if
		if( itr_connect.sqlcode <> 0 )then
			ithw_exception.setmessage( "MISSERVICE-of_ratio_save_variables: "+itr_connect.SQLERRTEXT )
			rollback USING itr_connect;
			throw ithw_exception
		end if
	next
	commit USING itr_connect;
Catch( Exception exception )
	rollback USING itr_connect;
	Throw exception
End Try

return 1

end function

public function integer of_ratio_save_operands (string as_savexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_save_operands
//	
//	Arguments:
//	as_savexml				ข้อมูลรายการตัวแปรภายในอัตราส่วน (d_mis_ratio_operand)
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ที่ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	บันทึกรายการตัวแปรภายในอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_save_operands
//	Version 1.0   Initial version
//	Modified Date 10/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//วนเช็คทีละแถวว่ามีข้อมูลอยู่แล้วหรือไม่.(มีอยู่แล้วใช้ Update,ถ้ายังไม่มีต้องใช้ Insert).
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_operand"
	dw_data.importstring( XML!, as_savexml )
	integer li_row, li_count, li_seq
	long ll_ratid, ll_varid
	string ls_alias
	for li_row = 1 to dw_data.rowcount( )
		ll_ratid = dw_data.getitemnumber( li_row, "ratio_id" )
		ll_varid = dw_data.getitemnumber( li_row, "ratvar_id" )
		li_seq = dw_data.getitemnumber( li_row, "ratvar_seq" )
		ls_alias = dw_data.getitemstring( li_row, "ratvar_alias" )
		select count(*)
		into :li_count
		from misratiooperand
		where ratvar_id = :ll_varid 
		and ratvar_seq = :li_seq
		USING itr_connect;
		if( li_count = 0 )then
			//INSERT
			INSERT INTO MISRATIOOPERAND  
					( RATIO_ID,   
					  RATVAR_SEQ,   
					  RATVAR_ID,   
					  RATVAR_ALIAS )  
			VALUES ( :ll_ratid,   
					  :li_seq,   
					  :ll_varid,   
					  :ls_alias )
			USING itr_connect;
		else
			//UPDATE
			UPDATE MISRATIOOPERAND  
			SET RATVAR_ID = :ll_varid,   
				RATVAR_ALIAS = :ls_alias  
			WHERE ( MISRATIOOPERAND.RATIO_ID = :ll_ratid ) 
			AND  ( MISRATIOOPERAND.RATVAR_SEQ = :li_seq )
			USING itr_connect;
		end if
		if( itr_connect.sqlcode <> 0 )then
			ithw_exception.setmessage( "MISSERVICE-of_ratio_save_operands: "+itr_connect.SQLERRTEXT )
			rollback USING itr_connect;
			throw ithw_exception
		end if
	next
	commit USING itr_connect;
Catch( Exception exception )
	rollback USING itr_connect;
	Throw exception
End Try
return 1

end function

public function integer of_ratio_save_ratios (string as_savexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_save_ratios
//	
//	Arguments:
//	as_savexml				ข้อมูลรายการอัตราส่วน (d_mis_ratio_ratios)
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ที่ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	บันทึกรายการอัตราส่วนทางการเงิน (insert and update with no delete)
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_save_ratios
//	Version 1.0   Initial version
//	Modified Date 10/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//วนเช็คทีละแถวว่ามีข้อมูลอยู่แล้วหรือไม่.(มีอยู่แล้วใช้ Update,ถ้ายังไม่มีต้องใช้ Insert).
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_ratios"
	dw_data.importstring( XML!, as_savexml )
	integer li_row, li_count
	long ll_ratid, ll_group, ll_order
	string ls_name, ls_function, ls_desc
	for li_row = 1 to dw_data.rowcount( )
		ll_ratid = dw_data.getitemnumber( li_row, "RATIO_ID" )
		ll_group = dw_data.getitemnumber( li_row, "GROUP_ID" )
		ll_order = dw_data.getitemnumber( li_row, "RATIO_ORDER" )
		ls_name = dw_data.getitemstring( li_row, "RATIO_NAME" )
		ls_function = dw_data.getitemstring( li_row, "RATIO_FUNCTION" )
		ls_desc = dw_data.getitemstring( li_row, "RATIO_DESC" )
		select count(*)
		into :li_count
		from misratio
		where ratio_id = :ll_ratid
		USING itr_connect;
		if( li_count = 0 )then
			//Default groupid
			if( isnull(ll_group) )then
				ll_group = 0
			end if
			//INSERT
			INSERT INTO MISRATIO  
					( RATIO_ID,   
					  GROUP_ID,   
					  RATIO_NAME,   
					  RATIO_FUNCTION,   
					  RATIO_DESC,   
					  RATIO_ORDER )  
			VALUES ( :ll_ratid,   
					  :ll_group,   
					  :ls_name,   
					  :ls_function,   
					  :ls_desc,   
					  :ll_order )  
			USING itr_connect;
		else
			//UPDATE
			UPDATE MISRATIO  
			SET GROUP_ID = :ll_group,   
				RATIO_NAME = :ls_name,   
				RATIO_FUNCTION = :ls_function,   
				RATIO_DESC = :ls_desc,   
				RATIO_ORDER = :ll_order  
			WHERE MISRATIO.RATIO_ID = :ll_ratid 
			USING itr_connect;
		end if
		if( itr_connect.sqlcode <> 0 )then
			ithw_exception.setmessage( "MISSERVICE-of_ratio_save_ratios: "+itr_connect.SQLERRTEXT )
			rollback USING itr_connect;
			throw ithw_exception
		end if
	next
	commit USING itr_connect;
Catch( Exception exception )
	rollback USING itr_connect;
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_operands (long al_ratioid, ref string as_returnxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_operands
//	
//	Arguments:
//	as_returnxml			ผลลัพธ์เป็น datawindow xml รายการกลุ่มอัตราส่วนทั้งหมด
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการตัวแปรภายในอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_get_operands
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_operand"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( al_ratioid )
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_change_group (long al_ratioid, long al_newgroupid) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_change_group
//	
//	Arguments:
//	al_ratioid				หมายเลขอัตราส่วนที่ต้องการย้ายกลุ่ม
//	al_newgroupid		หมายเลขกลุ่มอัตราส่วนใหม่
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ที่ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	ย้ายกลุ่มให้อัตราส่วนทางการเงิน (update group ID)
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_change_group
//	Version 1.0   Initial version
//	Modified Date 10/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	integer li_count
	select count(*)
	into :li_count
	from misratio
	where ratio_id = :al_ratioid 
	USING itr_connect;
	if( li_count = 0 )then
		//No ratio then error
		ithw_exception.setmessage( "MISSERVICE-of_ratio_change_group: ไม่พบอัตราส่วนหมายเลข "+string(al_ratioid)+" ไม่สามารถเปลี่ยนหมายเลขกลุ่มให้เป็น "+string(al_newgroupid)+" ได้ !!"  )
		rollback USING itr_connect;
		throw ithw_exception
	else
		//UPDATE
		UPDATE MISRATIO  
		SET GROUP_ID = :al_newgroupid
		WHERE MISRATIO.RATIO_ID = :al_ratioid 
		USING itr_connect;
	end if
	if( itr_connect.sqlcode <> 0 )then
		ithw_exception.setmessage( "MISSERVICE-of_ratio_change_group: "+itr_connect.SQLERRTEXT )
		rollback USING itr_connect;
		throw ithw_exception
	end if
	
	commit USING itr_connect;
Catch( Exception exception )
	rollback USING itr_connect;
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_accmoneysheethead (ref string as_sheetheadxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_accmoneysheethead
//	
//	Arguments:
//	as_sheetheadxml		ผลลัพธ์เป็น datawindow xml รายการชื่องบการเงิน
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการชื่องบการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_get_accmoneysheethead
//	Version 1.0   Initial version
//	Modified Date 10/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_accsheetmoneyhead"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( )
	as_sheetheadxml = dw_data.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_accmoneysheetdet (string as_sheetcode, ref string as_returnxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_mis_get_accmoneysheetdet
//	
//	Arguments:
//	as_returnxml		ผลลัพธ์เป็น datawindow xml รายละเอียดงบการเงิน
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการชื่องบการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_mis_get_accmoneysheetdet
//	Version 1.0   Initial version
//	Modified Date 10/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_accsheetmoneydet"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( )
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_ratios (ref string as_returnxml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_ratios
//	
//	Arguments:
//	as_returnxml			ผลลัพธ์เป็น datawindow xml รายการกลุ่มอัตราส่วนทั้งหมด
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการอัตราส่วนทางการเงินทั้งหมดไม่ระบุกลุ่ม
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_get_ratios-2
//	Version 1.0   Initial version
//	Modified Date before 13/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_ratios"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( )
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )

Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_delete_group (long al_groupid) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_delete_group
//	
//	Arguments:
//	al_groupid				ข้อมูลรายการกลุ่มอัตราส่วน
//	
//	Returns:  		Integer
//						หากทำรายการ สมบูรณ์ที่ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1, ส่งกลับ 0 ไม่มีการเปลี่ยนแปลง(เกิดขึ้นกรณีไม่มีข้อมูลที่ต้องการ delete)
//	
//	Description: 	บันทึกรายการกลุ่มอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_ratio_delete_group
//	Version 1.0   Initial version
//	Modified Date 20/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//เช็คว่ามีข้อมูลอยู่หรือไม่.
	integer li_count
	select count(*)
	into :li_count
	from misratiogroup
	where ratgroup_id = :al_groupid
	USING itr_connect;
	if( li_count = 0 )then
		return 0
	else
		//UPDATE
		DELETE FROM MISRATIOGROUP  
		WHERE RATGROUP_ID = :al_groupid
		USING itr_connect;
	end if
	if( itr_connect.sqlcode <> 0 )then
		ithw_exception.setmessage( "MISSERVICE-of_ratio_delete_group: "+itr_connect.SQLERRTEXT )
		rollback USING itr_connect;
		throw ithw_exception
	end if
	commit USING itr_connect;
	
Catch( Exception exception )
	rollback USING itr_connect;
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_newmember_quarter (integer ai_startquarter, integer ai_startyear, integer ai_endquarter, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_newmember_quarter
//	
//	Arguments:
//	ai_startquarter			ตั้งแต่ไตรมาส
//	ai_startyear				ตั้งแต่ปี
//	ai_endquarter			ถึงไตรมาส
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานจำนวนสมาชิกเข้าใหม่เทียบไตรมาส
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_newmember_quarter
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_newmember_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startquarter,"00"), string(ai_endyear,"0000"), string(ai_endquarter,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_newmember_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startquarter,"00"), string(ai_endyear,"0000"), string(ai_endquarter,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_newmember_half (integer ai_starthalf, integer ai_startyear, integer ai_endhalf, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_newmember_half
//	
//	Arguments:
//	ai_startquarter			ตั้งแต่ครึ่งปีแรกหรือครึ่งปีหลัง
//	ai_startyear				ตั้งแต่ปี
//	ai_endquarter			ถึงครึ่งปีแรกหรือครึ่งปีหลัง
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานจำนวนสมาชิกเข้าใหม่เทียบครึ่งปี
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_newmember_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_newmember_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_starthalf,"00"), string(ai_endyear,"0000"), string(ai_endhalf,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_newmember_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_starthalf,"00"), string(ai_endyear,"0000"), string(ai_endhalf,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_newmember_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_newmember_year
//	
//	Arguments:
//	ai_startyear				ตั้งแต่ปี
//	ai_endyear				ถึงปี
//	
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานจำนวนสมาชิกเข้าใหม่เทียบปี
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_newmember_year
//	Version 1.0   Initial version
//	Modified Date 1/09/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_newmember_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_newmember_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_balance_loan_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_loan  {of_gen_gph_loan_month}
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่ไตรมาส
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงไตรมาส
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหนี้สะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_loan
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try

	//จัดทำ XML ตารางข้อมูล.
	string as_tableobject, as_gphobject
	datawindow dw_table
	as_tableobject = "d_mis_gphdata_balance_loan_quarter"
	dw_table = create datawindow
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML รายงานกราฟ.
	datawindow dw_gph
	as_gphobject = "d_mis_gph_balance_loan_quarter"
	dw_gph = create datawindow
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth ) 
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_balance_loan_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_loan_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหนี้สะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_loan_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try

	//จัดทำ XML ตารางข้อมูล.
	string as_tableobject, as_gphobject
	datawindow dw_table
	as_tableobject = "d_mis_gphdata_balance_loan_half"
	dw_table = create datawindow
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML รายงานกราฟ.
	datawindow dw_gph
	as_gphobject = "d_mis_gph_balance_loan_half"
	dw_gph = create datawindow
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth ) 
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_balance_loan_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_loan_year  {of_gen_gph_loan_month}
//	
//	Arguments:
//	ai_startyear				ตั้งแต่ปี
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหนี้สะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_loan_year
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try

	//จัดทำ XML ตารางข้อมูล.
	string as_tableobject, as_gphobject
	datawindow dw_table
	as_tableobject = "d_mis_gphdata_balance_loan_year"
	dw_table = create datawindow
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_endyear )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML รายงานกราฟ.
	datawindow dw_gph
	as_gphobject = "d_mis_gph_balance_loan_year"
	dw_gph = create datawindow
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_endyear ) 
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_balance_loan_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_loan_month  {of_gen_gph_loan_month}
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหนี้สะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_loan_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try

	//จัดทำ XML ตารางข้อมูล.
	string as_tableobject, as_gphobject
	datawindow dw_table
	as_tableobject = "d_mis_gphdata_balance_loan"
	dw_table = create datawindow
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML รายงานกราฟ.
	datawindow dw_gph
	as_gphobject = "d_mis_gph_balance_loan"
	dw_gph = create datawindow
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth ) 
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_balance_share_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_share_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหุ้นสะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_share_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_balance_share_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_balance_share_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_balance_share_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_share_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหุ้นสะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_share_quarter
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_balance_share_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_balance_share_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_balance_share_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_share_month {of_gen_gph_share_month}
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหุ้นสะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_share_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_balance_share"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_balance_share"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_startmonth, ai_endyear, ai_endmonth )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_balance_share_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_balance_share_year
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานหุ้นสะสมเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_balance_share_year
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_balance_share_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( ai_startyear, ai_endyear )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_balance_share_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( ai_startyear, ai_endyear )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_dept_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_dept_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการฝากเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_dept_month
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_dept"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_dept"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payin_dept_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_dept_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการฝากเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_dept_quarter
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_dept_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_dept_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_dept_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_dept_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการฝากเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_dept_half
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_dept_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_dept_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_dept_year
//	
//	Arguments:
//	ai_startyear				ตั้งแต่ปี
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการฝากเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_dept_year
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_dept_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payin_loan_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_loan_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการชำระพิเศษเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_loan_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_lon_month"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_lon_month"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_loan_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_loan_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการชำระพิเศษเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_loan_quarter
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_lon_month_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_lon_month_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_loan_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_loan_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการชำระพิเศษเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_loan_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_lon_month_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_lon_month_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_loan_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_loan_year
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการชำระพิเศษเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_loan_year
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
//////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_lon_month_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_lon_month_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_share_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_share_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการซื้อหุ้นเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_share_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_shr"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_shr"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_share_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_share_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการซื้อหุ้นเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_share_quarter
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_shr_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_shr_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_share_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_share_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการซื้อหุ้นเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_share_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_shr_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_shr_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payin_share_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payin_share_year
//	
//	Arguments:
//	ai_startyear				ตั้งแต่ปี
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานสรุปการซื้อหุ้นเทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payin_share_year
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payin_shr_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	if( trim(as_gphxml) = "" )then
		Exception gph
		gph = create Exception
		gph.setmessage( "Datawindow object not found: "+as_gphobject )
		Throw gph
	end if	
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payin_shr_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	if( trim(as_tablexml) = "" )then
		Exception tab
		tab = create Exception
		tab.setmessage( "Datawindow object might not be found: "+as_tableobject )
		Throw tab
	end if	
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payout_dept_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_dept_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการถอนเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_dept_month
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_dept"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_dept"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payout_dept_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_dept_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการถอนเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_dept_quarter
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_dept_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_dept_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payout_dept_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_dept_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการถอนเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_dept_half
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_dept_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_dept_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payout_loan_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_loan_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการจ่ายเงินกู้เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_loan_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_lon"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_lon"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_loan_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_loan_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการจ่ายเงินกู้เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_loan_quarter
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_lon_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_lon_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_loan_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_loan_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการจ่ายเงินกู้เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_loan_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_lon_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_lon_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_loan_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml) throws Exception;//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_loan_year
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการจ่ายเงินกู้เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_loan_year
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_lon_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_lon_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_share_month (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_share_month
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการคืนค่าหุ้น(ถอนหุ้น)เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_share_month
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_shr"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_shr"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_share_quarter (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_share_quarter
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการคืนค่าหุ้น(ถอนหุ้น)เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_share_quarter
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_shr_quarter"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_shr_quarter"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_share_half (integer ai_startmonth, integer ai_startyear, integer ai_endmonth, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_share_half
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการคืนค่าหุ้น(ถอนหุ้น)เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_share_half
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_shr_half"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_shr_half"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_startmonth,"00"), string(ai_endyear,"0000"), string(ai_endmonth,"00") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
Catch( Exception exception )
	Throw exception
End Try
return 1

end function

public function integer of_gen_gph_payout_share_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_share_year
//	
//	Arguments:
//	ai_startmonth			ตั้งแต่เดือน
//	ai_startyear				ตั้งแต่ปี
//	ai_endmonth			ถึงเดือน
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการคืนค่าหุ้น(ถอนหุ้น)เทียบเดือน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_share_year
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_shr_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_shr_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_gen_gph_payout_dept_year (integer ai_startyear, integer ai_endyear, ref string as_gphxml, ref string as_tablexml);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_gen_gph_payout_dept_year
//	
//	Arguments:
//	ai_startyear				ตั้งแต่ปี
//	ai_endyear				ถึงปี
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายงานการถอนเงินสดเทียบเดือนแยกประเภท
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE-of_gen_gph_payout_dept_year
//	Version 1.0   Initial version
//	Modified Date 30/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	//จัดทำ XML รายงานกราฟ.
	string as_gphobject, as_tableobject
	datastore dw_gph
	as_gphobject = "d_mis_gph_payout_dept_year"
	dw_gph = create datastore
	dw_gph.dataobject = as_gphobject
	dw_gph.settrans( itr_connect )
	dw_gph.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_gphxml = dw_gph.describe( "Datawindow.data.XML" )
	
	//จัดทำ XML ตารางข้อมูล.
	datastore dw_table
	as_tableobject = "d_mis_gphdata_payout_dept_year"
	dw_table = create datastore
	dw_table.dataobject = as_tableobject
	dw_table.settrans( itr_connect )
	dw_table.retrieve( string(ai_startyear,"0000"), string(ai_endyear,"0000") )
	as_tablexml = dw_table.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	Throw exception
End Try

return 1

end function

public function integer of_ratio_get_values (ref string as_returnxml, integer ai_month1, string as_year1, integer ai_month2, string as_year2);//////////////////////////////////////////////////////////////////////////////
//  
//	Function Name:  		of_ratio_get_values
//	
//	Arguments:
//	as_returnxml			ผลลัพธ์เป็น datawindow xml รายการตัวแปรพร้อมค่าข้อมูล
//
//	Returns:  		Integer
//						หากทำงานสมบูรณ์ส่งค่ากลับเป็น 1 ในทางกลับกัน ส่ง -1
//	
//	Description: 	รายการตัวแปรสำหรับอัตราส่วนทางการเงิน
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :MISSERVICE - of_ratio_get_values
//	Version 1.0   Initial version
//	Modified Date before 09/08/2010
//  Modified By  Prazit (R) Jitmanozot
/////////////////////////////////////////////////////////////////////////////
Try
	
	// รายการผังที่ใช้ทั้งหมด.
	datastore dw_sheets
	dw_sheets = create datastore
	dw_sheets.dataobject = "d_mis_ratio_variables_uses"
	dw_sheets.settrans( itr_connect )
	dw_sheets.retrieve( )
	
	// ตารางตัวแปร.
	datastore dw_data
	dw_data = create datastore
	dw_data.dataobject = "d_mis_ratio_variables_values"
	dw_data.settrans( itr_connect )
	dw_data.retrieve( )
	
	// ตัวแปรใช้งานในลูปทั้งสองลูป.
	integer li_row, li_sheet, li_sheetseq
	decimal ldc_value1, ldc_value2
	string ls_sheetcode, ls_cri, ls_cripair, ls_result, ls_resultpair
	datastore lds_cri
	n_cst_account_service lnv_acc
	
	// init Account Service.
	lnv_acc = create n_cst_account_service
	lnv_acc.of_initservice( inv_db ) //lnv_acc.of_init( /*n_cst_dbconnectservice anv_db*/, /*string as_branch_id */)
	
	// init Criteria สำหรับเรียกดูงบ.
	lds_cri = create datastore
	lds_cri.dataobject = 'd_acc_report_design_master'
	lds_cri.settransobject( itr_connect )
	lds_cri.insertrow( 1 )
	lds_cri.setitem( 1, "month_1", ai_month1 )
	lds_cri.setitem( 1, "year_1", as_year1 )
	lds_cri.setitem( 1, "month_2", ai_month2 )
	lds_cri.setitem( 1, "year_2", as_year2 )
	ls_cri = lds_cri.describe( "Datawindow.data.XML" )
	lds_cri.setitem( 1, "month_2", ai_month1 )
	lds_cri.setitem( 1, "year_2", as_year1 )
	lds_cri.setitem( 1, "month_1", ai_month2 )
	lds_cri.setitem( 1, "year_1", as_year2 )
	ls_cripair = lds_cri.describe( "Datawindow.data.XML" )
	
	// วนทีละงบการเงินเพื่อดึงค่าแบบทั้งงบ.เฉพาะงบที่มีการใช้งานจากตัวแปร.(ข้อมูลต้องเรียงตาม moneysheet_code และไม่ซ้ำ)
	integer li_rv
	for li_sheet = 1 to dw_sheets.rowcount()
		
		// เรียก service บัญชีเพื่อคำนวณงบการเงิน.(เจอบักว่ามันคำนวณมาให้เฉพาะปีแรกเลยต้องสลับปีเทียบมาไว้อันแรกและให้คำนวณมาให้อีกอันนึง)
		ls_sheetcode = trim( dw_sheets.getitemstring( li_sheet, "moneysheet_code" ) )
		lds_cri.setitem( 1, "moneysheet_code", ls_sheetcode )
		ls_result = ""
		if( lnv_acc.of_gen_balance_sheet( ls_cri, ls_sheetcode, "000", ls_result ) < 0 )then
			messagebox( "of_ratio_get_values", "failed on function: n_cst_account_service.of_get_balance_sheet !!", StopSign! )
			return -1
		end if
		ls_resultpair = ""
		if( lnv_acc.of_gen_balance_sheet( ls_cripair, ls_sheetcode, "000", ls_resultpair ) < 0 )then
			messagebox( "of_ratio_get_values", "failed on function: n_cst_account_service.of_get_balance_sheet(pair) !!", StopSign! )
			return -1
		end if
		ii_sheetcount = ii_sheetcount + 1
		is_sheetcode[ ii_sheetcount ] = ls_sheetcode
		ids_sheets[ ii_sheetcount ] = create datastore
		ids_sheets[ ii_sheetcount ].dataobject = "d_acc_pl"
		ids_sheets[ ii_sheetcount ].settrans( itr_connect )
		li_rv = ids_sheets[ ii_sheetcount ].importstring( XML!, ls_result )
		if( li_rv < 0 )then
			messagebox( "of_ratio_get_values", "failed on function: n_cst_account_service.of_get_balance_sheet @ ImportString (errorcode:"+string(li_rv)+")", StopSign! )
			return -1
		end if
		ids_sheetpair[ ii_sheetcount ] = create datastore
		ids_sheetpair[ ii_sheetcount ].dataobject = "d_acc_pl"
		ids_sheetpair[ ii_sheetcount ].settrans( itr_connect )
		li_rv = ids_sheetpair[ ii_sheetcount ].importstring( XML!, ls_resultpair )
		if( li_rv < 0 )then
			messagebox( "of_ratio_get_values", "failed on function: n_cst_account_service.of_get_balance_sheet @ ImportString(pair) (errorcode:"+string(li_rv)+")", StopSign! )
			return -1
		end if
		
	next
	
	// วนทีละตัวแปรเพื่อดึงค่าตัวเดียวจากงบ. (ข้อมูลต้องเรียงตาม moneysheet_code + moneysheet_seq)
	ldc_value1 = 0
	ldc_value2 = 0
	li_sheet = 1
	integer li_periodtype, li_varid
	for li_row = 1 to dw_data.rowcount()
		
		// key สำหรับการคำนวณ.
		li_varid			= dw_data.getitemnumber( li_row, "ratvar_id" )
		ls_sheetcode	= dw_data.getitemstring( li_row, "moneysheet_code" )
		li_sheetseq		= dw_data.getitemnumber( li_row, "moneysheet_seq" )
		li_periodtype	= dw_data.getitemnumber( li_row, "period_type" )
		
		// อ่านค่าจากจำนวนสมาชิก.(ณ.ปัจจุบัน)
		if( li_varid = 24 )then
			integer li_membercount
			li_membercount = 0
			select count(member_no)
			into :li_membercount
			from mbmembmaster
			where member_status = 1
			using itr_connect;
			if( isnull(li_membercount) )then
				li_membercount = 0
			end if
			dw_data.setitem( li_row, "var_value", dec(li_membercount) )
		
		// อ่านค่าจากหุ้นสะสมรวมทั้งสหกรณ์.(ณ.ปัจจุบัน)
		elseif( li_varid = 25 )then
			decimal ldc_sharestk
			ldc_sharestk = 0
			select sum(sharestk_amt)
			into :ldc_sharestk
			from shsharemaster
			where sharemaster_status = 1
			using itr_connect;
			if( isnull(ldc_sharestk) )then
				ldc_sharestk = 0
			end if
			dw_data.setitem( li_row, "var_value", ldc_sharestk )
		
		// อ่านค่าจาก sheet งบการเงิน.
		else
			if( of_ratio_get_values_single( ls_sheetcode, li_sheetseq, ldc_value1, ldc_value2 ) > 0 )then
				if( li_periodtype = 1 )then
					dw_data.setitem( li_row, "var_value", ldc_value1 )
				else
					dw_data.setitem( li_row, "var_value", ldc_value2 )
				end if
			else
				dw_data.setitem( li_row, "var_value", 0 )
			end if
		end if
		
	next
	
	// return XML.
	as_returnxml = dw_data.describe( "Datawindow.data.XML" )
	
Catch( Exception exception )
	messagebox( "of_ratio_get_values", "error "+exception.getMessage() )
	Throw exception
End Try
return 1

end function

public function integer of_ratio_get_ratios_values (ref string as_returnxml, integer ai_month1, string as_year1, integer ai_month2, string as_year2);
// retrieve สูตรการคำนวณทั้งหมด.
n_cst_stringservice lnv_strsevice
datastore dw_mis
dw_mis = create datastore
dw_mis.dataobject = "d_mis_ratio_values"
dw_mis.settrans( itr_connect )
dw_mis.retrieve( )

// retrieve ตัวแปรพร้อมค่า.
string ls_xml
integer li_mis
ls_xml = ""
if( this.of_ratio_get_values(as_returnxml,ai_month1,as_year1,ai_month2,as_year2) <= 0 )then
	return -1
else
	ls_xml = as_returnxml
end if

// ตัวแปรที่ใช้ใน Loop.
decimal ldc_ratio_id,ldc_group_id,ldc_ratio_order,ldc_ratio_value,ldc_ratio_operand1,ldc_ratio_operand2,ldc_ratio_operand3,ldc_ratio_operand4
string ls_ratio_name,ls_ratio_function,ls_ratio_desc, ls_ratio_operand1, ls_ratio_operand2, ls_ratio_operand3,ls_ratio_operand4
integer li_id_ar_operand
string ls_functiontoken[]
integer li_tokencount, li_operatorcount

// วนทีละสูตร
for li_mis = 1 to dw_mis.rowcount()
	
	// อ่านสูตร.
	ldc_ratio_id = dw_mis.getitemnumber( li_mis, "ratio_id" )
	ldc_group_id = dw_mis.getitemnumber( li_mis, "group_id" )
	ls_ratio_name = trim(dw_mis.getitemstring( li_mis, "ratio_name" ))
	ls_ratio_function = trim(dw_mis.getitemstring( li_mis, "ratio_function" ))
	ls_ratio_desc = trim(dw_mis.getitemstring( li_mis, "ratio_desc" ))
	ldc_ratio_order = dw_mis.getitemnumber( li_mis, "ratio_order" )
	ldc_ratio_value = 0 //dw_mis.getitemnumber( li_mis, "ratio_value" )
	
	//ls_sheetcode	= dw_data.getitemstring( li_row, "moneysheet_code" )
	integer li_arow,li_get_map
	long ll_lenarow,ll_idoper
	string lsa_operetor[],ls_id_var,ls_tmp
	decimal ldc_numvar
	
	// แปลสูตร - แยก Operand, Operator. ( ls_functiontoken = {'var1(4)','/','var2(6)','/','con3(100)'} )
	lnv_strsevice = create n_cst_stringservice
	ls_functiontoken = of_split(ls_ratio_function,' ',li_tokencount)
	
	// แปลสูตร - คำนวณ และสร้างสูตรใหม่สำหรับแสดงให้ผู้ใช้ดู.
	ls_ratio_function = ""
	ldc_ratio_value = of_ratio_get_ratio_value( ls_functiontoken, ls_xml, ls_ratio_function )
	
	// ยิงผลลัพธ์ใส่ในสูตร.(พร้อมค่าตัวแปรที่ใช้ในสูตร)
	ls_ratio_function = ls_ratio_function +" = "+ string(ldc_ratio_value,"#,##0.0000")
	dw_mis.SetItem( li_mis, "ratio_value",ldc_ratio_value )
	dw_mis.SetItem( li_mis, "ratio_function",ls_ratio_function )
	
next

// Export XML คืนกลับไป.
as_returnxml = dw_mis.describe( "Datawindow.data.XML" )
return 1

end function

public function any of_split (string as_string, string as_delimiter, ref integer ai_returncount);string ls_strp[]

int   li_pos   // position of commas
int   li_len   // string parsing
int   li_start   // string parsing
int   li_count
string  ls_item   // single item parsed from string

if Len ( as_string ) < 1 then
 return  ls_strp[]
end if

// parse out items and insert into array

li_pos  = 1
li_start = 1
li_count = 0

DO WHILE li_pos > 0
	li_pos = Pos ( as_string, as_delimiter, li_start )
	if li_pos = 0 then
		ls_item = Mid ( as_string, li_start )
	else
		ls_item = Mid ( as_string, li_start, li_pos - li_start )
	end if

	ls_item = Trim ( ls_item )
	if Len ( ls_item ) > 0 then
		li_count++
		ls_strp[li_count] = ls_item
	end if

	li_start = li_pos + 1
LOOP
ai_returncount = li_count

return  ls_strp
end function

public function decimal of_ratio_get_ratios_values_single (long ai_ratvar_id, string as_xml, ref string as_ratvar_name);decimal ldc_var
integer li_rowc
datastore dw_data
dw_data = create datastore
dw_data.dataobject = "d_mis_ratio_variables_values"
dw_data.settrans( itr_connect )

if not  isnull( as_xml ) and trim( as_xml ) <> ""  then
	dw_data.importstring( XML!, as_xml )
end if

dw_data.setfilter(" ratvar_id = "+string(ai_ratvar_id))
dw_data.filter()

li_rowc = dw_data.rowcount()
if(li_rowc = 0) then
	as_ratvar_name = "ไม่พบตัวแปร"+string(ai_ratvar_id)+"(0.00)"
	return 0.00
end if
ldc_var =  dw_data.GetItemDecimal( 1, "var_value" )
if ( IsNull(ldc_var)) then
	ldc_var = 0.00 
end if
as_ratvar_name = trim( dw_data.getitemstring( 1, "var_name" ) )+"("+string(ldc_var,"#,##0.00")+")"

return ldc_var

end function

public function integer of_ratio_get_values_single (string as_sheetcode, integer ai_sheetseq, ref decimal adc_value1, ref decimal adc_value2);
// หา sheet.
datastore lds_sheet, lds_sheetpair
integer li_index
for li_index = 1 to ii_sheetcount
	if( is_sheetcode[ li_index ] = as_sheetcode )then
		lds_sheet = ids_sheets[ li_index ]
		lds_sheetpair = ids_sheetpair[ li_index ]
		exit
	end if
next
if( isnull( lds_sheet ) )then
	return -1
end if

// หารายการ.
li_index = lds_sheet.find( "moneysheet_seq = "+string(ai_sheetseq), 1, lds_sheet.rowcount() )
if( li_index <= 0 )then
	return -1
end if

// คืนค่า.
adc_value1 = lds_sheet.getitemdecimal( li_index, "balance_1" )
adc_value2 = lds_sheet.getitemdecimal( li_index, "balance_3" )
adc_value2 = lds_sheetpair.getitemdecimal( li_index, "balance_1" )
return 1

end function

public function integer of_ratio_get_ratios_values_firsttouch (ref string as_returnxml, integer ai_month1, string as_year1, integer ai_month2, string as_year2);
// retrieve สูตรการคำนวณทั้งหมด.
n_cst_stringservice lnv_strsevice
datastore dw_mis
dw_mis = create datastore
dw_mis.dataobject = "d_mis_ratio_values"
dw_mis.settrans( itr_connect )
dw_mis.retrieve( )

// retrieve ตัวแปรพร้อมค่า.
string ls_xml
integer li_mis
ls_xml = ""
if( this.of_ratio_get_values(as_returnxml,ai_month1,as_year1,ai_month2,as_year2) <= 0 )then
	return -1
else
	ls_xml = as_returnxml
end if

// ตัวแปรที่ใช้ใน Loop.
decimal ldc_ratio_id,ldc_group_id,ldc_ratio_order,ldc_ratio_value,ldc_ratio_operand1,ldc_ratio_operand2,ldc_ratio_operand3,ldc_ratio_operand4
string ls_ratio_name,ls_ratio_function,ls_ratio_desc, ls_ratio_operand1, ls_ratio_operand2, ls_ratio_operand3,ls_ratio_operand4
integer li_id_ar_operand
string lsa_funtionrow[]
integer li_tokencount, li_operatorcount

// วนทีละสูตร
for li_mis = 1 to dw_mis.rowcount()
	
	// อ่านสูตร.
	ldc_ratio_id = dw_mis.getitemnumber( li_mis, "ratio_id" )
	ldc_group_id = dw_mis.getitemnumber( li_mis, "group_id" )
	ls_ratio_name = trim(dw_mis.getitemstring( li_mis, "ratio_name" ))
	ls_ratio_function = trim(dw_mis.getitemstring( li_mis, "ratio_function" ))
	ls_ratio_desc = trim(dw_mis.getitemstring( li_mis, "ratio_desc" ))
	ldc_ratio_order = dw_mis.getitemnumber( li_mis, "ratio_order" )
	ldc_ratio_value = 0 //dw_mis.getitemnumber( li_mis, "ratio_value" )
	ldc_ratio_operand1 = 0 //dw_mis.getitemnumber( li_mis, "ratio_operand1" )
	ldc_ratio_operand2 = 0 //dw_mis.getitemnumber( li_mis, "ratio_operand2" )
	ldc_ratio_operand3 = 0 //dw_mis.getitemnumber( li_mis, "ratio_operand3" )
	ldc_ratio_operand4 = 0 //dw_mis.getitemnumber( li_mis, "ratio_operand4" )
	
	//ls_sheetcode	= dw_data.getitemstring( li_row, "moneysheet_code" )
	integer li_arow,li_get_map
	long ll_lenarow,ll_idoper
	string lsa_operetor[],ls_id_var,ls_tmp
	decimal ldc_numvar
	
	// แปลสูตร - แยก Operand, Operator. ( lsa_funtionrow = {'var1(4)','/','var2(6)','/','con3(100)'} )
	lnv_strsevice = create n_cst_stringservice
	lsa_funtionrow = of_split(ls_ratio_function,' ',li_tokencount)
	
	// แปลสูตร - อ่านค่าใส่ตัวแปร.
	ll_idoper = 0
	li_get_map = 0
	ls_id_var = '0'
	for li_arow = 1 to li_tokencount
		ll_lenarow = len(trim(lsa_funtionrow[li_arow]))
		if (ll_lenarow>3 ) then
			ls_id_var = trim(right(left(lsa_funtionrow[li_arow],4),1))
			if(trim(left(lsa_funtionrow[li_arow],3)) = 'var') then
				//li_get_map = integer(left(trim(right(lsa_funtionrow[li_arow],ll_lenarow - 5)),1))
				li_get_map = integer(right(trim(left(lsa_funtionrow[li_arow],ll_lenarow - 1)),ll_lenarow - 6))
				if(ls_id_var = '1') then
					ldc_ratio_operand1 = of_ratio_get_ratios_values_single(li_get_map,ls_xml,ls_ratio_operand1)
				elseif(ls_id_var = '2') then
					ldc_ratio_operand2 = of_ratio_get_ratios_values_single(li_get_map,ls_xml,ls_ratio_operand2)
				elseif(ls_id_var = '3') then
					ldc_ratio_operand3 = of_ratio_get_ratios_values_single(li_get_map,ls_xml,ls_ratio_operand3)
				elseif(ls_id_var = '4') then
					ldc_ratio_operand4 = of_ratio_get_ratios_values_single(li_get_map,ls_xml,ls_ratio_operand4)
				end if
			elseif(trim(left(lsa_funtionrow[li_arow],3)) = 'con') then
				//ls_tmp = right(trim(left(lsa_funtionrow[li_arow],ll_lenarow - 1)),ll_lenarow - 4)
				ldc_numvar =  dec(right(trim(left(lsa_funtionrow[li_arow],ll_lenarow - 1)),ll_lenarow - 6))
				if(ls_id_var = '1') then
					ldc_ratio_operand1 = ldc_numvar
					ls_ratio_operand1 = "ค่าคงที่("+string(ldc_numvar,"#,##0.0000")+")"
				elseif(ls_id_var = '2') then
					ldc_ratio_operand2 = ldc_numvar
					ls_ratio_operand2 = "ค่าคงที่("+string(ldc_numvar,"#,##0.0000")+")"
				elseif(ls_id_var = '3') then
					ldc_ratio_operand3 = ldc_numvar
					ls_ratio_operand3 = "ค่าคงที่("+string(ldc_numvar,"#,##0.0000")+")"
				elseif(ls_id_var = '4') then
					ldc_ratio_operand4 = ldc_numvar
					ls_ratio_operand4 = "ค่าคงที่("+string(ldc_numvar,"#,##0.0000")+")"
				end if
			end if
		else
			ll_idoper += 1
			lsa_operetor[ll_idoper] = trim(lsa_funtionrow[li_arow])
		end if
	next
	
	// แปลสูตร - คำนวณ และสร้างสูตรใหม่สำหรับแสดงให้ผู้ใช้ดู.
	ls_ratio_function = ""
	for li_arow = 1 to ll_idoper
		if(li_arow = 1 ) then
			if( ldc_ratio_operand2 <> 0 )then
				if(trim(lsa_operetor[li_arow]) = '+') then
					ldc_ratio_value = ldc_ratio_operand1 + ldc_ratio_operand2
					ls_ratio_function = ls_ratio_operand1+" + "+ls_ratio_operand2
				elseif(trim(lsa_operetor[li_arow]) = '-') then
					ldc_ratio_value = ldc_ratio_operand1 - ldc_ratio_operand2
					ls_ratio_function = ls_ratio_operand1+" - "+ls_ratio_operand2
				elseif(trim(lsa_operetor[li_arow]) = '*') then
					ldc_ratio_value = ldc_ratio_operand1 * ldc_ratio_operand2
					ls_ratio_function = ls_ratio_operand1+" x "+ls_ratio_operand2
				elseif(trim(lsa_operetor[li_arow]) = '/') then
					ldc_ratio_value = ldc_ratio_operand1 / ldc_ratio_operand2
					ls_ratio_function = ls_ratio_operand1+" / "+ls_ratio_operand2
				end if
			else // ไม่ต้องคำนวณ(แก้กรณี error devide by zero) แต่แสดงค่าในสูตรให้เห็น.
				if(trim(lsa_operetor[li_arow]) = '+') then
					ls_ratio_function = ls_ratio_operand1+" + "+ls_ratio_operand2
				elseif(trim(lsa_operetor[li_arow]) = '-') then
					ls_ratio_function = ls_ratio_operand1+" - "+ls_ratio_operand2
				elseif(trim(lsa_operetor[li_arow]) = '*') then
					ls_ratio_function = ls_ratio_operand1+" x "+ls_ratio_operand2
				elseif(trim(lsa_operetor[li_arow]) = '/') then
					ls_ratio_function = ls_ratio_operand1+" / "+ls_ratio_operand2
				end if
			end if
		elseif(li_arow = 2 ) then
			if( ldc_ratio_operand3 <> 0 )then
				if(trim(lsa_operetor[li_arow]) = '+') then
					ldc_ratio_value = ldc_ratio_value + ldc_ratio_operand3
					ls_ratio_function = ls_ratio_function+" + "+ls_ratio_operand3
				elseif(trim(lsa_operetor[li_arow]) = '-') then
					ldc_ratio_value = ldc_ratio_value - ldc_ratio_operand3
					ls_ratio_function = ls_ratio_function+" - "+ls_ratio_operand3
				elseif(trim(lsa_operetor[li_arow]) = '*') then
					ldc_ratio_value = ldc_ratio_value * ldc_ratio_operand3
					ls_ratio_function = ls_ratio_function+" x "+ls_ratio_operand3
				elseif(trim(lsa_operetor[li_arow]) = '/') then
					ldc_ratio_value = ldc_ratio_value / ldc_ratio_operand3
					ls_ratio_function = ls_ratio_function+" / "+ls_ratio_operand3
				end if
			else // ไม่ต้องคำนวณ(แก้ error devide by zero) แต่แสดงค่าในสูตรให้เห็น.
				if(trim(lsa_operetor[li_arow]) = '+') then
					ls_ratio_function = ls_ratio_function+" + "+ls_ratio_operand3
				elseif(trim(lsa_operetor[li_arow]) = '-') then
					ls_ratio_function = ls_ratio_function+" - "+ls_ratio_operand3
				elseif(trim(lsa_operetor[li_arow]) = '*') then
					ls_ratio_function = ls_ratio_function+" x "+ls_ratio_operand3
				elseif(trim(lsa_operetor[li_arow]) = '/') then
					ls_ratio_function = ls_ratio_function+" / "+ls_ratio_operand3
				end if
			end if
		else
			if( ldc_ratio_operand4 <> 0 )then
				if(trim(lsa_operetor[li_arow]) = '+') then
					ldc_ratio_value = ldc_ratio_value + ldc_ratio_operand4
					ls_ratio_function = ls_ratio_function+" + "+ls_ratio_operand4
				elseif(trim(lsa_operetor[li_arow]) = '-') then
					ldc_ratio_value = ldc_ratio_value - ldc_ratio_operand4
					ls_ratio_function = ls_ratio_function+" - "+ls_ratio_operand4
				elseif(trim(lsa_operetor[li_arow]) = '*') then
					ldc_ratio_value = ldc_ratio_value * ldc_ratio_operand4
					ls_ratio_function = ls_ratio_function+" x "+ls_ratio_operand4
				elseif(trim(lsa_operetor[li_arow]) = '/') then
					ldc_ratio_value = ldc_ratio_value / ldc_ratio_operand4
					ls_ratio_function = ls_ratio_function+" / "+ls_ratio_operand4
				end if
			else // ไม่ต้องคำนวณ(แก้ error devide by zero) แต่แสดงค่าในสูตรให้เห็น.
				if(trim(lsa_operetor[li_arow]) = '+') then
					ls_ratio_function = ls_ratio_function+" + "+ls_ratio_operand4
				elseif(trim(lsa_operetor[li_arow]) = '-') then
					ls_ratio_function = ls_ratio_function+" - "+ls_ratio_operand4
				elseif(trim(lsa_operetor[li_arow]) = '*') then
					ls_ratio_function = ls_ratio_function+" x "+ls_ratio_operand4
				elseif(trim(lsa_operetor[li_arow]) = '/') then
					ls_ratio_function = ls_ratio_function+" / "+ls_ratio_operand4
				end if
			end if
		end if
	next
	
	// ยิงผลลัพธ์ใส่ในสูตร.(พร้อมค่าตัวแปรที่ใช้ในสูตร)
	ls_ratio_function = ls_ratio_function +" = "+ string(ldc_ratio_value,"#,##0.0000")
	dw_mis.SetItem( li_mis, "ratio_value",ldc_ratio_value )
	dw_mis.SetItem( li_mis, "ratio_operand1",ldc_ratio_operand1 )
	dw_mis.SetItem( li_mis, "ratio_operand2",ldc_ratio_operand2 )
	dw_mis.SetItem( li_mis, "ratio_operand3",ldc_ratio_operand3 )
	dw_mis.SetItem( li_mis, "ratio_operand4",ldc_ratio_operand4 )
	dw_mis.SetItem( li_mis, "ratio_function",ls_ratio_function )
	
next

// Export XML คืนกลับไป.
as_returnxml = dw_mis.describe( "Datawindow.data.XML" )
return 1

end function

public function decimal of_ratio_get_ratio_value (string as_functiontoken[], string as_variable_xmldw, ref string as_functionstring);
// ตัวอย่าง as_functiontoken = var1(9) * con2(100) / ( ( var3(3) + var4(4) ) / con5(2) )
// (ทุก token คั่นด้วย blank)
// as_functionstring คืนค่า สูตรการคำนวณแบบชัดแจ้งตามสูตรใน Array as_functiontoken.
// function return value คืนค่า ผลลัพธ์การคำนวณ.
decimal ldc_calc
decimal ldc_operand
string as_token, ls_operandtype, ls_operator, ls_operandstring
integer li_token, li_tokenlen, li_tokencount,li_parentheses
integer li_operandcount
integer li_varid

// วนตีความทีละ Token.
li_tokencount = upperbound( as_functiontoken )
li_parentheses = 0
li_operandcount = 0
ls_operator = ""
for li_token = 1 to li_tokencount
	
	// ถ้าเป็น Operand 
	as_token = trim( as_functiontoken[ li_token ] )
	li_tokenlen = len(as_token)
	if( li_tokenlen > 3 )then
		
		// Operand Type
		ls_operandtype = left(as_token,3) // 'var' = variable, 'con' = constant
		
		// อ่านค่า Operand.
		if( ls_operandtype = "var" )then
			li_varid = integer(right(trim(left(as_token,li_tokenlen - 1)),li_tokenlen - 6))
			ldc_operand = of_ratio_get_ratios_values_single(li_varid,as_variable_xmldw,ls_operandstring)
		elseif( ls_operandtype = "con" )then
			ldc_operand = dec(right(trim(left(as_token,li_tokenlen - 1)),li_tokenlen - 6))
			ls_operandstring = "ค่าคงที่("+string(ldc_operand,"#,##0.0000")+")"
		end if
		
		// หากมี operator รอคำนวณอยู่, ทำการคำนวณค่าใส่ Calc แล้วเคลียร์ operator ทิ้ง.
		if( ls_operator > "" )then
			if(ls_operator = '/') then
				if( ldc_operand = 0 )then
					ldc_calc = 0
				else
					ldc_calc = ldc_calc / ldc_operand
				end if
				as_functionstring += " / "+ls_operandstring
			elseif(ls_operator = '*') then
				ldc_calc = ldc_calc * ldc_operand
				as_functionstring += " x "+ls_operandstring
			elseif(ls_operator = '-') then
				ldc_calc = ldc_calc - ldc_operand
				as_functionstring += " - "+ls_operandstring
			else //default is +
				ldc_calc = ldc_calc + ldc_operand
				as_functionstring += " + "+ls_operandstring
			end if
			ls_operator = ""
		else
			ldc_calc = ldc_calc + ldc_operand
			as_functionstring += ls_operandstring
		end if
		
	elseif( li_tokenlen = 1 )then
		
		// ถ้าเป็น Expression Starter (วงเล็บเปิด).
		if( as_token = "(" )then
			
			// สร้าง Token Array ใหม่สำหรับ Expression นี้ และส่งไปคำนวณค่ามาใส่ Operand.
			ls_operandstring = ""
			ldc_operand = of_ratio_get_ratio_value(of_ratio_get_ratio_value_expression(as_functiontoken,li_token),as_variable_xmldw,ls_operandstring)
			ls_operandstring = "( "+ls_operandstring+" )"
			
			// หากมี operator รอคำนวณอยู่, ทำการคำนวณค่าใส่ Calc แล้วเคลียร์ operator ทิ้ง.
			if( ls_operator > "" )then
				if(ls_operator = '/') then
					if( ldc_operand = 0 )then
						ldc_calc = 0
					else
						ldc_calc = ldc_calc / ldc_operand
					end if
					as_functionstring += " / "+ls_operandstring
				elseif(ls_operator = '*') then
					ldc_calc = ldc_calc * ldc_operand
					as_functionstring += " x "+ls_operandstring
				elseif(ls_operator = '-') then
					ldc_calc = ldc_calc - ldc_operand
					as_functionstring += " - "+ls_operandstring
				else //default is +
					ldc_calc = ldc_calc + ldc_operand
					as_functionstring += " + "+ls_operandstring
				end if
				ls_operator = ""
			else
				ldc_calc = ldc_calc + ldc_operand
				as_functionstring += ls_operandstring
			end if
			
		else 
			// ถ้าเป็น Operator.
			ls_operator = as_token
		end if
		
	end if
	
next

return ldc_calc

end function

public function any of_ratio_get_ratio_value_expression (string as_functiontoken[], ref integer as_token);
// คืนค่าเป็น Array of Token of Expression start at as_token.
string ls_expression[]
integer li_exit, li_token, li_tokencount, li_exptoken
li_exptoken = 0	//ตัวนับ Token ใน Expression นี้.
li_exit = 0		// ตัวนับวงเล็บ.
li_tokencount = upperbound(as_functiontoken)
for li_token = as_token to li_tokencount
	
	// ถ้าเป็นวงเล็บปิด.
	if( trim(as_functiontoken[li_token]) = ")" )then
		li_exit = li_exit - 1
		if( li_exit = 0 )then
			exit
		else
			li_exptoken = li_exptoken + 1
			ls_expression[li_exptoken] = as_functiontoken[li_token]
		end if
	
	// ถ้าเป็นวงเล็บเปิด.
	elseif( trim(as_functiontoken[li_token]) = "(" )then
		li_exit = li_exit + 1
		if( li_exit > 1 )then
			li_exptoken = li_exptoken + 1
			ls_expression[li_exptoken] = as_functiontoken[li_token]
		end if
	
	// ถ้าเป็น operand, operator หรืออื่นๆที่ไม่ใช่วงเล็บ.
	else
		li_exptoken = li_exptoken + 1
		ls_expression[li_exptoken] = as_functiontoken[li_token]
	end if
	
next
as_token = li_token
return ls_expression

end function

on n_cst_mis_service.create
call super::create
end on

on n_cst_mis_service.destroy
call super::destroy
end on

event constructor;
//init all instance varirables.
ithw_exception = create Exception

end event

