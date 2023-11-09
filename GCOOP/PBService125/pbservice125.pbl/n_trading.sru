$PBExportHeader$n_trading.sru
namespace
namespace pbservice125
end namespace

forward
global type n_trading from NonVisualObject
end type
end forward

global type n_trading from NonVisualObject
end type
global n_trading n_trading

forward prototypes
public function string of_test (string as_test)
end prototypes

public function string of_test (string as_test);string ls_result

ls_result = "test " + as_test

return ls_result
end function

on n_trading.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_trading.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on
