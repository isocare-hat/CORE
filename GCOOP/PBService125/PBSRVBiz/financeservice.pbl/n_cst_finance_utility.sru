$PBExportHeader$n_cst_finance_utility.sru
$PBExportComments$Generated Web service object
forward
global type n_cst_finance_utility from nonvisualobject
end type
end forward

global type n_cst_finance_utility from nonvisualobject
end type
global n_cst_finance_utility n_cst_finance_utility

type variables
transaction itr_tran
string is_errormessage = ""
end variables

forward prototypes
public function string of_geterrormessage ()
public function integer of_dddwbankbranch (string bank_code, ref string as_xmlbranch)
public function integer of_settrans (n_cst_dbconnectservice anv_connection)
public function integer of_getchildbranch (ref string as_xmlbank)
public function string of_dddwfinitemtype ()
public function string of_dddwbank ()
public function string of_getchildmoneytype ()
public function string of_getchildtaxcode ()
public function string of_getchildfinaccid ()
end prototypes

public function string of_geterrormessage ();return is_errormessage
end function

public function integer of_dddwbankbranch (string bank_code, ref string as_xmlbranch);datastore lds_branch
lds_branch = create datastore
lds_branch.dataobject = "dddw_cm_ucfbankbranch"
lds_branch.settransobject(itr_tran)
lds_branch.retrieve(bank_code)
as_xmlbranch = lds_branch.describe("datawindow.data")

return 1
end function

public function integer of_settrans (n_cst_dbconnectservice anv_connection);itr_tran = anv_connection.itr_dbconnection
return 1
end function

public function integer of_getchildbranch (ref string as_xmlbank);datastore lds_branch
lds_branch = create datastore
lds_branch.dataobject = "dddw_fin_coopbranch"
lds_branch.settransobject(itr_tran)
lds_branch.retrieve()
as_xmlbank = lds_branch.describe("datawindow.data.xml")
return 1
end function

public function string of_dddwfinitemtype ();datastore lds_finstatus
lds_finstatus = create datastore
lds_finstatus.dataobject = "dddw_status"
lds_finstatus.settransobject(itr_tran)
lds_finstatus.retrieve()

return lds_finstatus.describe("datawindow.data.xml")
end function

public function string of_dddwbank ();datastore lds_bank
lds_bank = create datastore
lds_bank.dataobject = "dddw_cm_ucfbank"
lds_bank.settransobject(itr_tran)
lds_bank.retrieve()

return lds_bank.describe("datawindow.data")
end function

public function string of_getchildmoneytype ();datastore lds_data

lds_data = create datastore
lds_data.dataobject = "dddw_fin_moneytype"
lds_data.settransobject(itr_tran)
lds_data.retrieve()

return lds_data.describe("datawindow.data.xml")
end function

public function string of_getchildtaxcode ();datastore lds_data

lds_data = create datastore
lds_data.dataobject = "dddw_fin_taxtype"
lds_data.settransobject(itr_tran)
lds_data.retrieve()

return lds_data.describe("datawindow.data.xml")
end function

public function string of_getchildfinaccid ();
datastore lds_accid
lds_accid = create datastore
lds_accid.dataobject = "dddw_fin_accid"
lds_accid.settransobject(itr_tran)
lds_accid.retrieve()

return lds_accid.describe("datawindow.data.xml")
end function

on n_cst_finance_utility.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_finance_utility.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

