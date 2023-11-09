﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="w_sheet_cmd_picture.aspx.cs" Inherits="Saving.Applications.cmd.w_sheet_cmd_picture" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   <title>Guest Image</title>
    <style type="text/css">
        .textMenu14
        {
            font-family: "Times New Roman" , Times, Sans-Serif;
            font-weight: bold;
            font-size: 14px;
        }
        .tdSol
        {
            border: 1px solid #333333;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; background-color: #EEEEEE;" class="tdSol" cellpadding="0"
        cellspacing="0">
        <tr>
            <td align="center" style="height: 25px;" class="textMenu14">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" style="height: 30px;" class="textMenu14">
                <asp:HiddenField ID="HiddenField1" runat="server" />
                <asp:FileUpload ID="FileUpload" runat="server" />
                &nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                &nbsp;
                <asp:Button ID="deleteB" runat="server" Text="Delete" OnClick="DeleteB_Click" />
            </td>
        </tr>
    </table>
    <br />
    <div style="text-align: center">
        <asp:Label ID="Label2" runat="server" Text="&nbsp;"></asp:Label>
        <asp:Image ID="Image1" runat="server" />
        
    </div>
    </form>
</body>
</html>