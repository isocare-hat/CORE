$PBExportHeader$n_cst_user_service.sru
$PBExportComments$Generated Web service object

forward
global type n_cst_user_service from n_cst_base
end type
end forward

/// <summary> Generated Web service object
/// 
/// </summary>
global type n_cst_user_service from n_cst_base
end type
global n_cst_user_service n_cst_user_service

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
public function integer of_settrans (ref n_cst_dbconnectservice anv_connected) throws Exception
public function integer of_savegroupapps (string as_groupid, string axml_groupapps)
public function integer of_savegrouppages (string as_groupid, string axml_grouppages)
public function integer of_savegroupusers (string as_groupid, string axml_groupusers)
public function integer of_saveuserpassword (string as_userid, string as_password)
public function integer of_resetuserpassword (string as_userid)
public function integer of_saveuserpages (string as_userid, string axml_userpages)
public function string of_getuserapps (string as_userid) throws Exception
public function integer of_existinguser (string as_userid, string as_fullname) throws Exception
public function integer of_existinggroup (string as_groupid, string as_description) throws Exception
public function string of_getapppages (string as_appid) throws Exception
public function string of_getapps () throws Exception
public function string of_getgroup (string as_groupid) throws Exception
public function string of_getgroupapps (string as_groupid) throws Exception
public function string of_getgrouppages (string as_groupid, string as_appid) throws Exception
public function string of_getgroups () throws Exception
public function string of_getgroupusers (string as_groupid) throws Exception
public function string of_getreportuseractivity (string as_userid, string as_appid) throws Exception
public function string of_getreportuserpermiss (string as_userid) throws Exception
public function string of_getuser (string as_userid) throws Exception
public function string of_getuserpages (string as_userid, string as_appid) throws Exception
public function string of_getusers () throws Exception
public function integer of_savenewgroup (string as_group) throws Exception
public function integer of_saveuser (string axml_user) throws Exception
public function integer of_saveuserapps (string as_userid, string axml_userapps) throws Exception
public function integer of_savegroup (string as_group) throws Exception
public function string of_encodestring (string as_string)
public function string of_decodestring (string as_string)
public function integer of_savenewuser (string axml_user, ref string as_err) throws Exception
end prototypes

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
//	Description: 	กำหนด transaction ให้ user-service ใช้ในการติดต่อฐานข้อมูลทั้งหมด
//
//////////////////////////////////////////////////////////////////////////////
//	ประวัติการแก้ไข
//  Function Code :USERSERVICE-of_settrans
//	Version 1.0   Initial version
//	Modified Date before 20/02/2012
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

public function integer of_savegroupapps (string as_groupid, string axml_groupapps);try
	n_ds lds_data
	long ll_rows, ll_row
	string ls_coopid
	lds_data = create n_ds
	lds_data.dataobject = "d_um_groupapps"
	lds_data.settrans( itr_connect )
	ll_rows = lds_data.importstring( XML!, axml_groupapps )
	ls_coopid = lds_data.getitemstring( 1, "amsecuseapps_coop_id" )
	delete from amsecuseapps
	where user_name = :as_groupid and coop_id=:ls_coopid
	using itr_connect;
	string ls_app
	for ll_row = 1 to ll_rows
		ls_app = lds_data.getitemstring( ll_row, "application" )
		INSERT INTO "AMSECUSEAPPS"  
		( "USER_NAME",   
		"APPLICATION","COOP_ID" )  
		VALUES ( :as_groupid,   
		:ls_app, :ls_coopid ) USING itr_connect;
		if( itr_connect.sqlcode <> 0 )then
			ithw_exception.setmessage( itr_connect.sqlerrtext )
			rollback using itr_connect;
			throw ithw_exception
			return -1
		end if
	next
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	rollback using itr_connect;
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function integer of_savegrouppages (string as_groupid, string axml_grouppages);
try
	n_ds lds_data
	long ll_row, ll_rows
	string ls_app, ls_win, ls_coopid
	integer li_save, li_view
	lds_data = create n_ds
	lds_data.dataobject = "d_um_grouppages"
	lds_data.settrans( itr_connect )
	ll_rows = lds_data.importstring( XML!, axml_grouppages )
	if( ll_rows > 0 )then
		ls_coopid = lds_data.getitemstring( 1, "amsecpermiss_coop_id" )
		ls_app = trim(lds_data.getitemstring( 1, "amsecpermiss_application" ))
		delete from amsecpermiss
		where user_name = :as_groupid
		using itr_connect;
		for ll_row = 1 to ll_rows
			ls_app = trim(lds_data.getitemstring( ll_row, "application" ))
			ls_win = trim(lds_data.getitemstring( ll_row, "window_id" ))
			li_save = lds_data.getitemnumber( ll_row, "save_status" )
			li_view = lds_data.getitemnumber( ll_row, "check_flag" )
			INSERT INTO "AMSECPERMISS"  
			( "USER_NAME",   
			"APPLICATION",   
			"WINDOW_ID",   
			"SAVE_STATUS",   
			"CHECK_FLAG",   
			"COOP_ID" )  
			VALUES ( :as_groupid,   
			:ls_app,   
			:ls_win,   
			:li_save,   
			:li_view,   
			:ls_coopid ) using itr_connect;
			if( itr_connect.sqlcode <> 0 )then
				ithw_exception.setmessage( itr_connect.sqlerrtext )
				throw ithw_exception
				return -1
			end if
		next
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit;
return 1
end function

public function integer of_savegroupusers (string as_groupid, string axml_groupusers);
try
	n_ds lds_data
	long ll_rows, ll_row
	lds_data = create n_ds
	lds_data.dataobject = "d_um_groupusers"
	lds_data.settrans( itr_connect )
	ll_rows = lds_data.importstring( XML!, axml_groupusers )
	delete from amsecgroupings
	where group_name = :as_groupid
	using itr_connect;
	string ls_username
	for ll_row = 1 to ll_rows
		ls_username = lds_data.getitemstring( ll_row, "user_name" )
		INSERT INTO "AMSECGROUPINGS"  
		( "GROUP_NAME", "USER_NAME" )  
		VALUES ( :as_groupid, :ls_username ) USING itr_connect;
		if( itr_connect.sqlcode <> 0 )then
			ithw_exception.setmessage( itr_connect.sqlerrtext )
			rollback using itr_connect;
			throw ithw_exception
			return -1
		end if
	next
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	rollback using itr_connect;
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function integer of_saveuserpassword (string as_userid, string as_password);
try
	as_password = of_encodestring( as_password )
	update amsecusers
	set password = :as_password
	where user_name = :as_userid 
	using itr_connect;
	if( itr_connect.sqlcode <> 0 )then
		ithw_exception.setmessage( itr_connect.sqlerrtext )
		throw ithw_exception
		return -1
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function integer of_resetuserpassword (string as_userid);
try
	string ls_pass
	ls_pass = of_encodestring( "1234" )
	update amsecusers
	set password = :ls_pass
	where user_name = :as_userid 
	using itr_connect;
	if( itr_connect.sqlcode <> 0 )then
		ithw_exception.setmessage( itr_connect.sqlerrtext )
		throw ithw_exception
		return -1
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit;
return 1
end function

public function integer of_saveuserpages (string as_userid, string axml_userpages);
try
	n_ds lds_data
	long ll_row, ll_rows
	string ls_app, ls_win
	integer li_save, li_view
	string ls_coopid
	lds_data = create n_ds
	lds_data.dataobject = "d_um_userpages"
	lds_data.settrans( itr_connect )
	ll_rows = lds_data.importstring( XML!, axml_userpages )
	if( ll_rows > 0 )then
		ls_coopid = trim(lds_data.getitemstring( 1, "amsecpermiss_coop_id" ))
		ls_app = trim(lds_data.getitemstring( 1, "amsecpermiss_application" ))
		delete from amsecpermiss
		where user_name = :as_userid and coop_id = :ls_coopid
		using itr_connect;
		for ll_row = 1 to ll_rows
			ls_app = trim(lds_data.getitemstring( ll_row, "amsecwins_application" ))
			ls_win = trim(lds_data.getitemstring( ll_row, "amsecwins_window_id" ))
			li_save = lds_data.getitemnumber( ll_row, "amsecpermiss_save_status" )
			li_view = lds_data.getitemnumber( ll_row, "amsecpermiss_check_flag" )
			INSERT INTO "AMSECPERMISS"  
			( "COOP_ID",
			"USER_NAME",   
			"APPLICATION",   
			"WINDOW_ID",   
			"SAVE_STATUS",   
			"CHECK_FLAG" )  
			VALUES (:ls_coopid,
			:as_userid,   
			:ls_app,   
			:ls_win,   
			:li_save,   
			:li_view )  using itr_connect;
			if( itr_connect.sqlcode <> 0 )then
				ithw_exception.setmessage( itr_connect.sqlerrtext )
				throw ithw_exception
				return -1
			end if
		next
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function string of_getuserapps (string as_userid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_userapps"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_userid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function integer of_existinguser (string as_userid, string as_fullname) throws Exception;try
	integer li_count
	select count(user_name)
	into :li_count
	from amsecusers
	where user_type = 1 and ( user_name = :as_userid or full_name = :as_fullname )
	using itr_connect;
	if( itr_connect.sqlcode <> 0 )then
		return -1
	end if
	if( li_count > 0 )then
		return 1
	else
		return 0
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw(t)
end try
end function

public function integer of_existinggroup (string as_groupid, string as_description) throws Exception;try
	integer li_count
	select count(user_name)
	into :li_count
	from amsecusers
	where user_type = 2 and ( user_name = :as_groupid or description = :as_description )
	using itr_connect;
	if( itr_connect.sqlcode <> 0 )then
		return -1
	end if
	if( li_count > 0 )then
		return 1
	else
		return 0
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw(t)
end try
end function

public function string of_getapppages (string as_appid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_apppages"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_appid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getapps () throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_apps"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getgroup (string as_groupid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_group"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_groupid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getgroupapps (string as_groupid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_groupapps"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_groupid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getgrouppages (string as_groupid, string as_appid) throws Exception;string ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_grouppages"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_appid, as_groupid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getgroups () throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_groups"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getgroupusers (string as_groupid) throws Exception;string	ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_groupusers"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_groupid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getreportuseractivity (string as_userid, string as_appid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_reportuseractivity"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_userid, as_appid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getreportuserpermiss (string as_userid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_reportuserpermiss"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_userid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getuser (string as_userid) throws Exception;string ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_user"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_userid )
	//password-decrypt
	string ls_pass
	ls_pass = lds_data.getitemstring( 1, "password" )
	ls_pass = of_decodestring( ls_pass )
	lds_data.setitem( 1, "password", ls_pass )
	//--
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getuserpages (string as_userid, string as_appid) throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_userpages"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( as_appid, as_userid )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function string of_getusers () throws Exception;String ls_dwxmlreturn
setnull( ls_dwxmlreturn )

n_ds lds_data
try
	lds_data = create n_ds
	lds_data.dataobject = "d_um_users"
	lds_data.settrans( itr_connect )
	lds_data.retrieve( )
	ls_dwxmlreturn = lds_data.describe( "Datawindow.data.XML" )
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw( t )
end try

return ls_dwxmlreturn
end function

public function integer of_savenewgroup (string as_group) throws Exception;
try
	String ls_coopid,ls_username,ls_fullname,ls_description,ls_password,ls_terminal,ls_coopbranchid,ls_userid,ls_apvlevelid,ls_tablefincode,ls_initialname
	String ls_null
	long ls_userlevel,   ls_usertype,   ls_pointofcash,   ls_apvcashflag,   ls_freezflag,   ls_showsalaryflag,   ls_userc
	long ll_null
	n_ds lds_data
	setnull( ls_null )
	setnull( ll_null )
	lds_data = create n_ds
	lds_data.dataobject = "d_um_group"
	lds_data.settrans( itr_connect )
	lds_data.importstring( XML!, as_group )
	ls_coopid = lds_data.getitemstring( 1, "coop_id" )
	ls_username = lds_data.getitemstring( 1, "user_name" )
	ls_fullname = ls_null
	ls_description = lds_data.getitemstring( 1, "description" )
	ls_password = ls_null
	ls_terminal = ls_null
	ls_coopbranchid = ls_null
	ls_userid = ls_null
	ls_apvlevelid = ls_null
	ls_tablefincode = ls_null
	ls_userlevel = ll_null
	ls_usertype = 2
	ls_pointofcash = 0
	ls_apvcashflag = 0
	ls_freezflag = 0
	ls_initialname = ls_null
	ls_showsalaryflag = ll_null
	ls_userc = 1
INSERT INTO "AMSECUSERS"  
         ( "COOP_ID",   
           "USER_NAME",   
           "FULL_NAME",   
           "DESCRIPTION",   
           "PASSWORD",   
           "TERMINAL_NAME",   
           "COOPBRANCH_ID",   
           "USER_ID",   
           "APVLEVEL_ID",   
           "TABLEFIN_CODE",   
           "USER_LEVEL",   
           "USER_TYPE",   
           "POINT_OFCASH",   
           "APVCASH_FLAG",   
           "FREEZ_FLAG",   
           "INITIAL_NAME",   
           "SHOWSALARY_FLAG",   
           "USER_C" )  
  VALUES ( :ls_coopid,   
           :ls_username,   
           :ls_fullname,   
           :ls_description,   
           :ls_password,   
           :ls_terminal,   
           :ls_coopbranchid,   
           :ls_userid,   
           :ls_apvlevelid,   
           :ls_tablefincode,   
           :ls_userlevel,   
           :ls_usertype,   
           :ls_pointofcash,   
           :ls_apvcashflag,   
           :ls_freezflag,   
           :ls_initialname,   
           :ls_showsalaryflag,   
           :ls_userc )
	Using itr_connect;
	if( itr_connect.sqlcode<>0)then
		return -1
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function integer of_saveuser (string axml_user) throws Exception;try
	n_ds lds_data
	lds_data = create n_ds
	lds_data.dataobject = "d_um_user"
	lds_data.settrans( itr_connect )
	lds_data.importstring( XML!, axml_user )
	String ls_pass
	ls_pass = lds_data.getitemstring( 1, "password" )
	ls_pass = of_encodestring( ls_pass )
	lds_data.setitem( 1, "password", ls_pass )
	if( lds_data.update( ) < 0 )then
		rollback using itr_connect;
		throw ithw_exception
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function integer of_saveuserapps (string as_userid, string axml_userapps) throws Exception;
try
	n_ds lds_data
	long ll_row, ll_rows
	string ls_coopid
	lds_data = create n_ds
	lds_data.dataobject = "d_um_userapps"
	lds_data.settrans( itr_connect )
	ll_rows = lds_data.importstring( XML!, axml_userapps )
	if( ll_rows > 0 )then
		ls_coopid = lds_data.getitemstring( 1, "amsecuseapps_coop_id" )
		delete from amsecuseapps
		where user_name = :as_userid and coop_id = :ls_coopid
		using itr_connect;
		for ll_row = 1 to ll_rows
			string ls_app
			ls_app = trim(lds_data.getitemstring( ll_row, "amsecuseapps_application" ))
			INSERT INTO "AMSECUSEAPPS"  
			("COOP_ID", 
			"USER_NAME",   
			"APPLICATION" )  
			VALUES (:ls_coopid ,
			:as_userid,   
			:ls_app ) using itr_connect;		
			if( itr_connect.sqlcode <> 0 )then
				ithw_exception.setmessage( itr_connect.sqlerrtext )
				throw ithw_exception
				return -1
			end if
		next
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function integer of_savegroup (string as_group) throws Exception;
try
	n_ds lds_data
	lds_data = create n_ds
	lds_data.dataobject = "d_um_group"
	lds_data.settrans( itr_connect )
	lds_data.importstring( XML!, as_group )
	if( lds_data.update( ) = 1 )then
		rollback using itr_connect;
		throw ithw_exception
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

public function string of_encodestring (string as_string);//ของสหกรณ์ครูชลบุรี.
//เอามาจากฟังชั่น n_cst_cryptor.of_set(string) + instance variables
string retVal, tempStr, tStr
int sourcePtr, keyPtr, keyLen, sourceLen, tempVal, tempKey
string is_key, is_raw, is_keyserial, is_encrypted
is_key="CGI"
is_keyserial = "135797531135797531135797531135797531135797531135797531135797531135797531135797531135797531"

retVal = is_raw
is_raw = as_string

keyPtr = 1
keyLen = len(is_key)
sourceLen = len(is_raw)
is_encrypted = ""
for sourcePtr = 1 to sourceLen
	tempVal = ascA(right(is_raw, sourceLen - sourcePtr + 1))
	tempKey = ascA( mid( is_keyserial , keyPtr, 1  ))
	tempVal += tempKey
	// Added this section to ensure that ASCII Values stay within 0 to 255 range
	DO WHILE tempVal > 255
		if tempVal > 255 then
			tempVal = tempVal - 255
		end if
	LOOP
	// End of Section
	tStr = string( tempVal, "000" )
	is_encrypted += tStr
	keyPtr ++
	if keyPtr > len( is_keyserial ) then keyPtr = 1
next

return is_encrypted
end function

public function string of_decodestring (string as_string);//ของสหกรณ์ครูชลบุรี.
//เอามาจากฟังชั่น n_cst_cryptor.of_decode(string) + instance variables
string retVal, tempStr, tStr
int sourcePtr, keyPtr, keyLen, sourceLen, tempVal, tempKey
string is_key, is_raw, is_keyserial, is_encrypted
is_key="CGI"
is_keyserial = "135797531135797531135797531135797531135797531135797531135797531135797531135797531135797531"

////
is_encrypted = as_string

keyPtr = 1
keyLen = len(is_key)
// Fixed so that decryption is done on encrypted input string of proper length
//sourceLen = len(is_raw)
sourceLen = len(is_encrypted)
is_raw = ""

do while len( is_encrypted) > 2
	tempVal = integer( left( is_encrypted , 3 ) )	
	tempKey = ascA( mid( is_keyserial , keyPtr, 1  ))
	tempVal -= tempKey
	
	// Added this section to ensure that ASCII codes stay in 0 to 255 range
	DO WHILE tempVal < 0
		if tempVal < 0 then
			tempVal = tempVal + 255
		end if
	LOOP
	
	// end of section
	tStr = char(tempVal)
	is_raw += tStr
	keyPtr ++
	if keyPtr > len(is_keyserial) then keyPtr = 1
	
	is_encrypted	= mid( is_encrypted , 4 )
loop

retVal = is_raw

return retVal
end function

public function integer of_savenewuser (string axml_user, ref string as_err) throws Exception;
try
	String ls_coopid,ls_username,ls_fullname,ls_description,ls_password,ls_terminal,ls_coopbranchid,ls_userid,ls_apvlevelid,ls_tablefincode,ls_initialname
	String ls_null , ls_coopcontrol
	long ls_userlevel,   ls_usertype,   ls_pointofcash,   ls_apvcashflag,   ls_freezflag,   ls_showsalaryflag,   ls_userc
	long ll_null
	n_ds lds_data
	setnull( ls_null )
	setnull( ll_null )
	lds_data = create n_ds
	lds_data.dataobject = "d_um_user"
	lds_data.settrans( itr_connect )
	lds_data.importstring( XML!, axml_user )
	ls_coopid = lds_data.getitemstring( 1, "coop_id" )
	ls_username = lds_data.getitemstring( 1, "user_name" )
	ls_fullname = lds_data.getitemstring( 1, "full_name" )
	ls_description = lds_data.getitemstring( 1, "description" )
	ls_password = of_encodestring( "1234" )
	ls_terminal = lds_data.getitemstring( 1, "terminal_name" )
	ls_coopbranchid = "000"
	ls_userid = ls_null
	ls_apvlevelid = lds_data.getitemstring( 1, "apvlevel_id" )
	ls_tablefincode = "XXX"
	ls_userlevel = lds_data.getitemnumber( 1, "user_level" )
	ls_usertype = 1
	ls_pointofcash = lds_data.getitemnumber( 1, "point_ofcash" )
	ls_apvcashflag = lds_data.getitemnumber( 1, "apvcash_flag" )
	ls_freezflag = 0
	ls_initialname = lds_data.getitemstring( 1, "initial_name" )
	ls_showsalaryflag = lds_data.getitemnumber( 1, "showsalary_flag" )
	ls_coopcontrol =lds_data.getitemstring( 1, "coop_control" )
	ls_userc = 1
INSERT INTO "AMSECUSERS"  
         ( "COOP_ID",   
           "USER_NAME",   
           "FULL_NAME",   
           "DESCRIPTION",   
           "PASSWORD",   
           "TERMINAL_NAME",   
           "COOPBRANCH_ID",   
           "USER_ID",   
           "APVLEVEL_ID",   
           "TABLEFIN_CODE",   
           "USER_LEVEL",   
           "USER_TYPE",   
           "POINT_OFCASH",   
           "APVCASH_FLAG",   
           "FREEZ_FLAG",   
           "INITIAL_NAME",   
           "SHOWSALARY_FLAG",   
           "USER_C" ,
		   "COOP_CONTROL")  
  VALUES ( :ls_coopid,   
           :ls_username,   
           :ls_fullname,   
           :ls_description,   
           :ls_password,   
           :ls_terminal,   
           :ls_coopbranchid,   
           :ls_userid,   
           :ls_apvlevelid,   
           :ls_tablefincode,   
           :ls_userlevel,   
           :ls_usertype,   
           :ls_pointofcash,   
           :ls_apvcashflag,   
           :ls_freezflag,   
           :ls_initialname,   
           :ls_showsalaryflag,   
           :ls_userc,
		   :ls_coopcontrol)
	Using itr_connect;
	if( itr_connect.sqlcode<>0)then
	 	as_err = itr_connect.sqlerrtext
		return -1
	end if
catch( Exception t )
	ithw_exception.setmessage( t.getmessage() )
	throw t
	return -1
end try
commit using itr_connect;
return 1
end function

on n_cst_user_service.create
call super::create
end on

on n_cst_user_service.destroy
call super::destroy
end on

event constructor;
//init all instance varirables.
ithw_exception = create Exception
end event
