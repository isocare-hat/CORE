﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="u_cm_cmdconfig_itemtype.ascx.cs"
    Inherits="Saving.Applications.cmd.u_cm_cmdconfig_itemtype" %>
<%@ Register Assembly="WebDataWindow" Namespace="Sybase.DataWindow.Web" TagPrefix="dw" %>
<style type="text/css">
    .style1
    {
        font-family: Tahoma;
        font-size: x-small;
        font-weight: bold;
        color: #003399;
    }
</style>
<% Page_LoadComplete(); %>

<script type="text/javascript">
    function OnButtonClick(sender, row, name) {
        if (name == "b_delete") {
            var detail = "รหัสประเภท " + objDwMain.GetItem(row, "itemtype_id");
            //                detail += " รหัสบัญชี " + objDwMain.GetItem(row, "account_id");
            if (confirm("คุณต้องการลบรายการ " + detail + " ใช่หรือไม่?")) {
                objDwMain.DeleteRow(row);
            }
        }
        return 0;
    }

    function OnUpdate() {
        if (confirm("ยืนยันการบันทึกข้อมูลทั้งหมด?")) {
            objDwMain.Update();
        }
    }

    function OnInsert() {
        objDwMain.InsertRow(objDwMain.RowCount() + 1);
    }
</script>

<div style="height: 18px; vertical-align: top">
    <span class="linkSpan" onclick="OnUpdate()" style="font-size: small; color: Green;
        float: right">บันทึกข้อมูล</span> <span class="linkSpan" onclick="OnInsert()" style="font-size: small;
            color: Red; float: left">เพิ่มแถว</span>
</div>
<dw:WebDataWindowControl ID="DwMain" runat="server" DataWindowObject="dw_cmd_itemtype_mas"
    LibraryList="~/DataWindow/Cmd/cm_constant_config.pbl" ClientScriptable="True"
    Width="560px" ClientEventButtonClicked="OnButtonClick" Height="350px" UseCurrentCulture="True">
</dw:WebDataWindowControl>
