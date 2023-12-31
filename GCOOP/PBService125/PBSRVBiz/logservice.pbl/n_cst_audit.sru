$PBExportHeader$n_cst_audit.sru
$PBExportComments$DBUpdateLog Service ให้บริการกการเก็บ Log การปรับปรุงข้อมูลในฐานข้อมูล (AUDIT)
forward
global type n_cst_audit from n_cst_base
end type
end forward

global type n_cst_audit from n_cst_base
end type
global n_cst_audit n_cst_audit

type variables

Long il_lockauditno = 0		//ถ้าค่ามากกว่า 0 คือให้ Lock ใช้เลขนี้ในการบันทึกครั้งต่อไป.


end variables

forward prototypes
public function integer of_splitxml (string as_xml, integer ai_columnsize, ref string as_split[])
public function long of_getnextauditid ()
public function string of_find (string as_tablename, string as_columnname)
public function integer of_save_noparse (string as_xmlbefore, string as_xmlafter, string as_modifieduser)
public subroutine of_lockauditno (long al_auditno)
public function integer of_save (string as_coopid, string as_xmlbefore, string as_xmlafter, string as_tablename, string as_pkcols, string as_pknames, string as_pkvals, string as_modifieduser, string as_modifiedapp)
end prototypes

public function integer of_splitxml (string as_xml, integer ai_columnsize, ref string as_split[]);/***********************************************
<description>
แบ่งข้อมูล XML ให้พอดีตามขนาดคอลัมน์โดยไม่ทำความเสียหายกับ TAG ข้อมูลของ XML. 
ฟังชั่นนี้จะทำการค้นหา TAG สุดท้ายก่อนจะพอดีขนาดคอลัมน์และตัดให้ขึ้นบรรทัดใหม่(ลำดับถัดไปใน array).
</description>

<args>	
as_xml				ข้อมูล XML ของ Datawindow (หรือเรียกว่า DatawindowXML)
ai_columnsize		ขนาดคอลัมน์ที่จะใส่ข้อมูล XML เข้าไป
as_split[]				array of string เก็บข้อมูล XML ที่ถูกแบ่งให้แต่ละช่องข้อมูลลงพอดีกับขนาดคอลัมน์ โดยรักษา tag ไม่ให้ขาดเสียหาย
</args>

<return>
Integer ทำงานสำเร็จสมบูรณ์คืนค่าเป็น 1, หากพบข้อผิดพลาดระหว่างทางคืนค่า -1
</return>

<usage>
ฟังชั่นนี้สามารถใช้ได้กับข้อมูลในรูปแบบ Markup Language ทั้งหมด เช่น XML, HTML, ASP, PHP
ตัวต่อไปนี้จะแสดงให้เห็นว่าข้อมูล XML ถูกแบ่งออกเป็นอย่างไร

String ls_xml = "<xml:global><xml:a love=true hard=false system='heard'>Prazit (R) Jitmanozot</xml:a><xml:a love=false hard=true system='heard'>Angel (TM)</xml:a></xml:global>"
String ls_split[]
of_splitxml( ls_xml, 100, ls_split )
...
messagebox( "XML1", ls_split[1] )		//<xml:global><xml:a love=true hard=false system='heard'>Prazit (R) Jitmanozot</xml:a>
messagebox( "XML1", ls_split[2] )		//<xml:a love=false hard=true system='heard'>Angel (TM)</xml:a></xml:global>
...
</usage>
************************************************/

//วนแบ่ง XML จนกว่าจะสิ้นสุด TAG สุดท้าย(หมดสายสตริง).
String ls_buff
Integer li_num
li_num = 0
do while len(as_xml) > 0
	
	if( ai_columnsize < len(as_xml) )then
		
		//ตัดมาก่อนตามขนาดคอลัมน์
		ls_buff = left( as_xml, ai_columnsize )
		
		//ค้นหา TAG สิ้นสุด.
		Integer li_end, li_pos
		li_pos = LastPos( ls_buff, "</" )
		if( li_pos > 0 )then //</TAG>
			
			//หาเจอ "</"
			//หาจุดจบ TAG
			li_end = Pos( ls_buff, ">", li_pos )
			if( li_end > 0 )then 
				//case นี้จะตัดที่จบ TAG ได้พอดี.
				ls_buff = left( ls_buff, li_end )
			else
				//case นี้จบไม่พอดี TAG ก็ต้องตัดก่อนจบ TAG แทน.
				ls_buff = left( ls_buff, li_pos )
			end if
			
		else //<TAG>
			
			//หาจุดจบ TAG แทน
			li_pos = LastPos( as_xml, ">" )
			if( li_pos > 0 )then
				//case นี้จะตัดที่จบ TAG ได้พอดี.
				ls_buff = left( ls_buff, li_pos )
			else
				//case นี้จบไม่พอดี TAG ก็ต้องเอามันทั้งก้อนไปเลย.
				ls_buff = as_xml
			end if
			
		end if
		
		//ตัดออกจาก as_xml ต้นทางได้เลย
		as_xml = right( as_xml, len(as_xml) - len(ls_buff) )
		
	else
		
		//ไม่ต้องตัดเพราะ xml สั้นพอใส่ในคอลัมน์
		ls_buff = as_xml
		as_xml = ""
		
	end if
	
	li_num = li_num + 1
	as_split[li_num] = ls_buff
	
loop

return 1

end function

public function long of_getnextauditid ();//ใช้เทเบิล WEBVARIABLE ในการคุมเลขให้.
long ll_auditid
n_cst_globalvar lnv_globalvar
lnv_globalvar = create n_cst_globalvar
lnv_globalvar.of_settransobject( itr_transaction )
ll_auditid = lnv_globalvar.of_getitemnumber_relative( "AUDITNO", 1 )
if( isnull(ll_auditid) )then
	ll_auditid = 0
end if
return ll_auditid

end function

public function string of_find (string as_tablename, string as_columnname);/***********************************************
<description>
ค้นหาข้อมูลที่มีการแก้ไข ระบุชื่อเทเบิลและคอลัมน์
</description>

<args>	
as_tablename		ชื่อเทเบิล (Lower Case เท่านั้น)
as_columnname	ชื่อคอลัมน์ (Lower Case เท่านั้น)
</args>

<return>
String		ผลลัพธ์การค้นหาในรูปแบบ DatawindowXML ซึ่งรายละเอียดผลลัพธ์ให้ดูใน d_dbupdatelog_result
</return>

<usage>
ใช้ในการบันทึกค่า XML ของ Datawindow ทั้่งก่อน
</usage>
************************************************/
string ls_result



return ls_result

end function

public function integer of_save_noparse (string as_xmlbefore, string as_xmlafter, string as_modifieduser);/***********************************************
<description>
สั่งเก็บข้อมูล Log ของการปรับปรุงข้อมูล ที่เรียกอีกชื่อว่า AUDIT
</description>

<args>	
as_xmlbefore		ข้อมูล XML ของ Datawindow ก่อนการปรับปรุง
as_xmlafter			ข้อมูล XML ของ Datawindow หลังจากการปรับปรุงเสร็จสิ้นแล้ว
as_modifieduser	User ID ผู้ที่ปรับปรุงข้อมูล
</args>

<return>
Integer ทำงานสำเร็จสมบูรณ์คืนค่าเป็น 1, หากพบข้อผิดพลาดระหว่างทางคืนค่า -1
</return>

<usage>
ใช้ในการบันทึกค่า XML ของ Datawindow ทั้่งก่อน
</usage>
************************************************/

//แบ่งข้อมูลก่อนและแก้ไขให้เก็บได้ตามขนาดคอลัมน์ในฐานข้อมูล
integer li_columnsize
string ls_before[], ls_after[]
li_columnsize = 1000
of_splitxml( as_xmlbefore, li_columnsize, ls_before )
of_splitxml( as_xmlafter, li_columnsize, ls_after )

//ข้อมูลส่วนหัว log
long ll_aid, ll_oldvid, ll_newvid
datetime ldtm_md
ll_aid = of_getnextauditid( )
ldtm_md = datetime( today(), now() )
ll_oldvid = 0//of_getnextvalueid( )
ll_newvid = 0//of_getnextvalueid( )

//บันทึกหัว log ข้อมูลก่อนและหลังแก้ไข.
INSERT INTO DBUPDATEHISTORY  
	( AUDIT_ID,   MODIFIED_ID,   MODIFIED_DATE,   OLDVALUE_ID,   NEWVALUE_ID )  
VALUES 
	( :ll_aid,   :as_modifieduser,   :ldtm_md,   :ll_oldvid,   :ll_newvid )  ;
if( SQLCA.sqlcode <> 0 )then
	//messagebox( "DBUpdateLog", "save failed: "+SQLCA.sqlerrtext, StopSign! )
	of_seterror( "Save DBUPDATEHISTORY failed: dbcode("+string(SQLCA.sqlcode)+") "+SQLCA.sqlerrtext )
	return -1
end if

//บันทึกข้อมูลก่อนแก้ไข โดยบันทึกทีละท้อนข้อมูล.
Long ll_index
String ls_xmlsave
for ll_index = 1 to upperbound( ls_before )
	ls_xmlsave = ls_before[ll_index]
	INSERT INTO DBUPDATEVALUES  
			( VALUE_ID,   SEQ_NO,   XML_VALUE )  
	VALUES ( :ll_oldvid,   :ll_index,   :ls_xmlsave )  ;
	if( SQLCA.sqlcode <> 0 )then
		of_seterror( "Save DBUPDATEVALUES(before) failed: dbcode("+string(SQLCA.sqlcode)+") "+SQLCA.sqlerrtext )
		return -1
	end if
next

//บันทึกข้อมูลหลังแก้ไข โดยบันทึกทีละท้อนข้อมูล.
for ll_index = 1 to upperbound( ls_after )
	ls_xmlsave = ls_after[ll_index]
	INSERT INTO DBUPDATEVALUES  
			( VALUE_ID,   SEQ_NO,   XML_VALUE )  
	VALUES ( :ll_newvid,   :ll_index,   :ls_xmlsave )  ;
	if( SQLCA.sqlcode <> 0 )then
		of_seterror( "Save DBUPDATEVALUES(after) failed: dbcode("+string(SQLCA.sqlcode)+") "+SQLCA.sqlerrtext )
		return -1
	end if
next

return 1

end function

public subroutine of_lockauditno (long al_auditno);//ถ้าค่า al_auditno <= 0 แสดงว่าไม่ Lock ให้ gen เลขใหม่เมื่อมีการบันทึก.
if( al_auditno <= 0 )then
	il_lockauditno = 0
else
	il_lockauditno = al_auditno
end if
end subroutine

public function integer of_save (string as_coopid, string as_xmlbefore, string as_xmlafter, string as_tablename, string as_pkcols, string as_pknames, string as_pkvals, string as_modifieduser, string as_modifiedapp);/***********************************************
<description>
สั่งเก็บข้อมูล Log ของการเปลี่ยนแปลงข้อมูลแบบตรวจสอบได้ หรือเรียกว่า AUDIT
</description>

<args>
as_xmlbefore		ข้อมูล XML ของ Datawindow ก่อนการปรับปรุง
as_xmlafter			ข้อมูล XML ของ Datawindow หลังจากการปรับปรุงเสร็จสิ้นแล้ว  (ต้องเป็น datawindow ตัวเดียวกันกับ as_xmlbefore และจำนวนแถวเท่ากัน)
as_tablename		ชื่อเทเบิลที่มีการแก้ไขข้อมูล
as_pkcols			ชื่อคอลัมน์ในฐานข้อมูลที่เป็น Primarykey ในการเปลี่ยนแปลงข้อมูลครั้งนี้ คั่นแต่ละคอลัมน์ด้วย คอมม่า(,)
as_pknames			ชื่อคอลัมน์ภาษาไทยของคอลัมน์ที่เป็น Primarykey ในการเปลี่ยนแปลงครั้งนี้ คั่นแต่ละคอลัมน์ด้วย คอมม่า(,) (และต้องมีจำนวนเท่ากับ as_pkcols)
as_pkvals			ค่าข้อมูลของคอลัมน์ที่เป็น Primarykey ในการเปลี่ยนแปลงครั้งนี้ คั่นแต่ละคอลัมน์ด้วย คอมม่า(,) (และต้องมีจำนวนเท่ากับ as_pkcols)
as_modifieduser	User ID ผู้ที่ทำการเปลี่ยนแปลงข้อมูลครั้งนี้
as_modifiedapp	รหัส Application ที่ทำการเปลี่ยนแปลงข้อมูลครั้งนี้
</args>

<return>
Long ทำงานสำเร็จสมบูรณ์คืนค่าเป็น 1 ขึ้นไปซึ่งหมายถึง AUDIT_NO, หากพบข้อผิดพลาดระหว่างทางคืนค่า -1, กรณียังไม่รองรับ Insert กับ Delete คืนค่า 0
</return>

<usage>
</usage>
************************************************/

//วันเวลาสำหรับการบันทึกครั้งนี้.
datetime ldtm_modifieddate
ldtm_modifieddate = datetime( today(), now() )

//ถ้า Transaction ไม่พร้อม, ฟังชั่นนี้ก็ error แน่นอนอยู่แล้วเด้งออกไปก่อนเลย.
if( not isvalid( itr_transaction ) )then
	of_debuglog( "Save audit with no database connection not allow !" )
	return -1
end if

//ถ้า xml ที่ส่งมาเป็น null หรือ blank.
if( isnull(as_xmlbefore) or trim(as_xmlbefore) = "" )then
	of_debuglog( "Save audit with no data before not allow !" )
	return 0
end if
if( isnull(as_xmlafter) or trim(as_xmlafter) = "" )then
	of_debuglog( "Save audit with no data after not allow !" )
	return 0
end if

//แยกข้อมูล XML ให้เป็นข้อมูลแต่ละแถว.
n_cst_datawindowxml lnv_xmlbefore
n_cst_datawindowxml lnv_xmlafter
lnv_xmlbefore	= create n_cst_datawindowxml
lnv_xmlafter		= create n_cst_datawindowxml
lnv_xmlbefore.of_setdebuglog( inv_debuglog )
lnv_xmlafter.of_setdebuglog( inv_debuglog )
lnv_xmlbefore.of_loadxml( as_xmlbefore )
lnv_xmlafter.of_loadxml( as_xmlafter )
if( not isvalid( lnv_xmlbefore ) or not isvalid( lnv_xmlafter ) )then
	of_debuglog( "Save audit not allow, xml is not valid table("+as_tablename+") pkcolNameVals( {"+as_pkcols+"}, {"+as_pknames+"}, {"+as_pkvals+"} ) modifiedDateUserApp({"+string(ldtm_modifieddate,"dd/mm/yyyy hh:mm:ss")+"}, {"+as_modifieduser+"}, {"+as_modifiedapp+"})" )
	return -1
end if
if( lnv_xmlbefore.dataobject <> lnv_xmlafter.dataobject )then	//ต้องเป็น datawindow เดียวกันเท่านั้น.
	of_debuglog( "Save audit not allow, dataobject not the same. dataObjectBeforeAfter("+lnv_xmlbefore.dataobject+","+lnv_xmlafter.dataobject+") table("+as_tablename+") pkcolNameVals( {"+as_pkcols+"}, {"+as_pknames+"}, {"+as_pkvals+"} ) modifiedDateUserApp({"+string(ldtm_modifieddate,"dd/mm/yyyy hh:mm:ss")+"}, {"+as_modifieduser+"}, {"+as_modifiedapp+"})" )
	return -1
end if

//ข้อมูลส่วนหัว audit.
long ll_auditno
if( il_lockauditno > 0 )then
	ll_auditno = il_lockauditno
else
	n_cst_globalvar lnv_var
	lnv_var = create n_cst_globalvar
	lnv_var.of_settransobject( itr_transaction )
	lnv_var.of_setdebuglog( inv_debuglog )
	ll_auditno = of_getnextauditid()
end if

//save webaudit (ข้อมูลเทเบิลที่มีการเปลี่ยนแปลง)
INSERT INTO WEBAUDIT  
		( COOP_ID,
		  AUDIT_NO,   
		  TAB_NAME,   
		  PK_NAME,   
		  PK_DESC,   
		  PK_VALUE,   
		  MODIFIED_DATE,   
		  MODIFIED_USER,   
		  MODIFIED_APP )  
VALUES ( :as_coopid,
		  :ll_auditno,   
		  :as_tablename,   
		  :as_pkcols,   
		  :as_pknames,   
		  :as_pkvals,   
		  :ldtm_modifieddate,   
		  :as_modifieduser,   
		  :as_modifiedapp )  
USING itr_transaction;
if( itr_transaction.sqlcode <> 0 )then
	of_debuglog( "Insert WebAudit Failed: "+itr_transaction.sqlerrtext )
	of_debuglog( "Insert WebAudit Failed: table("+as_tablename+") pkcolNameVals( {"+as_pkcols+"}, {"+as_pknames+"}, {"+as_pkvals+"} ) modifiedDateUserApp({"+string(ldtm_modifieddate,"dd/mm/yyyy hh:mm:ss")+"}, {"+as_modifieduser+"}, {"+as_modifiedapp+"})" )
	Rollback using itr_transaction;
	return -1
end if

//save webauditdetail (ข้อมูลแต่ละแถวที่มีการเปลี่ยนแปลง)
n_cst_datawindowxmlrow lnv_rowbefore, lnv_rowafter
long ll_row, ll_rowcount
long ll_col, ll_colcount
string ls_colname, ls_coldesc
string ls_valbefore, ls_valafter
ll_rowcount = lnv_xmlbefore.of_rowcount()
for ll_row = 1 to ll_rowcount
	
	lnv_rowbefore = lnv_xmlbefore.of_getrow( ll_row )
	lnv_rowafter = lnv_xmlafter.of_getrow( ll_row )
	if( not isvalid( lnv_rowbefore ) or not isvalid( lnv_rowafter ) )then
		//กรณีนี้หมายถึง มี row ไม่เท่ากัน(อันใดอันหนึ่งไม่มี row แล้ว).ก็เด้งออกไปได้ทันที.
		exit
	end if
	ll_colcount = lnv_rowbefore.of_colcount()
	
	//เทียบค่าของคอลัมน์ และบันทึกเฉพาะคอลัมน์ที่มีค่าต่างกัน.
	for ll_col = 1 to ll_colcount
		
		ls_valbefore = lnv_rowbefore.of_getitem( ll_col )
		ls_valafter	= lnv_rowafter.of_getitem( ll_col )
		if( ls_valbefore <> ls_valafter )then
			ls_colname	= lnv_rowbefore.of_getitemname( ll_col )
			ls_coldesc	= "" //ขณะนี้ยังไม่รู้จะเอาชื่อภาษาไทยมายังไง. อาจมีบาง Property ที่ XML เอามาด้วย หรืออาจจำเป็นต้องมีเทเบิล Map Column ไว้ให้เอาชื่อภาษาไทยมาใช้.
			INSERT INTO WEBAUDITDETAIL  
					( COOP_ID,
						AUDIT_NO,   
					  TAB_NAME,
					  COL_NAME,   
					  ROW_NO,   
					  COL_DESC,   
					  NEW_VALUE,   
					  OLD_VALUE )  
			VALUES ( :as_coopid,
						:ll_auditno,   
					  :as_tablename,   
					  :ls_colname,   
					  :ll_row,   
					  :ls_coldesc,   
					  :ls_valafter,   
					  :ls_valbefore )
			USING itr_transaction;
			if( itr_transaction.sqlcode <> 0 )then
				of_debuglog( "Insert WebAuditDetail Failed: "+itr_transaction.sqlerrtext )
				of_debuglog( "Insert WebAuditDetail Failed: table("+as_tablename+") pkcolNameVals( {"+as_pkcols+"}, {"+as_pknames+"}, {"+as_pkvals+"} ) modifiedDateUserApp({"+string(ldtm_modifieddate,"dd/mm/yyyy hh:mm:ss")+"}, {"+as_modifieduser+"}, {"+as_modifiedapp+"})" )
				of_debuglog( "Insert WebAuditDetail Failed: auditNo("+string(ll_auditno)+") row("+string(ll_row)+") col("+ls_colname+", "+ls_coldesc+") valueOldNew("+ls_valbefore+", "+ls_valafter+")" )
				Rollback using itr_transaction;
				return -1
			end if
		end if
		
	next
	
next

//ยืนยันการบันทึกอีกครั้ง
COMMIT USING itr_transaction;
if( itr_transaction.sqlcode <> 0 )then
	of_debuglog( "Commit audit failed: "+itr_transaction.sqlerrtext )
	Rollback using itr_transaction;
	return -1
end if

return 1

end function

on n_cst_audit.create
call super::create
end on

on n_cst_audit.destroy
call super::destroy
end on

event constructor;/***********************************************
<object>
DBUpdateService รวมฟังชั่นบริการเกี่ยวกับการเก็บ log ของการ Update ปรับปรุงข้อมูลในฐานข้อมูล.
บางระบบอาจเรียกว่า Audit ซึ่ง service นี้จะใช้หลักการง่ายๆในการเก็บค่าการเปลี่ยนแปลงที่กระทำใน database ดังนี้
เริ่มจากเก็บข้อมูลก่อน Update ไว้แล้วค่อยสั่ง Update จริงและเมื่อ Update เสร็จแล้วก็จะเก็บข้อมูลมาอีกครั้ง
ทำให้มีข้อมูลทั้งก่อนแก้ไขและหลังแก้ไขเปรียบเทียบกันได้
แต่การทำงานนี้จำเป็นต้องเรียกใช้บริการ 1 ครั้งต่อ 1 เทเบิลเพื่อให้ง่ายและชัดเจนในการชัดเก็บ Log นี้.
</object>

<author>
Initial Version 1.0 by Prazit (R) Jitmanozot 23/9/2553
</author>

<usage>
เก็บข้อมูลก่อนและหลังแก้ไขไว้สำหรับเรียกค้นมาดูข้อมูลที่แก้ว่าใครแก้ตอนไหนยังไง
ตัวอย่างการใช้งาน

//เก็บ XML ไว้ตอนที่ดึงข้อมูลมาตั้งรอแก้:
...
dw_data.retrieve()
ls_xmlbefore = dw_data.describe( "Datawindow.data.XML" )

//เก็บ XML อีกครั้งตอนที่แก้ไขเสร็จแล้วกดปุ่มบันทึกทำงานเสร็จเรียบร้อยแล้ว: ให้เรียกฟังชั่น save ที่นี่ต่อเลยเพื่อให้ทำการบันทึกค่าเก็บไว้ในฐานข้อมูล.
ls_xmlafter = dw_data.describe( "Datawindow.data.XML" )
if( lnv_dbupdatelog.of_save( ls_xmlbefore, ls_xmlafter, ls_userid ) < 0 )then
	messagebox( "", "Save failed: "+lnv_dbupdatelog.of_getlasterror().of_getmessage() )
else
	messagebox( "", "บันทึกเรียบร้อยแล้ว" )
end if
...
</usage>
************************************************/

end event

