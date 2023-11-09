<%@ Page Title="" Language="C#" MasterPageFile="~/Frame.Master" AutoEventWireup="true"
    CodeBehind="ws_sheet_as_genrequest.aspx.cs" Inherits="Saving.Applications.assist.ws_sheet_as_genrequest_ctrl.ws_sheet_as_genrequest" %>

<%@ Register Src="DsMain.ascx" TagName="DsMain" TagPrefix="uc1" %>
<%@ Register Src="DsList.ascx" TagName="DsList" TagPrefix="uc2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script type="text/javascript">
        var dsMain = new DataSourceTool;
        var dsList = new DataSourceTool;

        function Validate() {
            return confirm("ยืนยันการบันทึกข้อมูล");
        }

        function OnDsMainClicked(s, r, c, v) {
            if (c == "b_process") {
                if (dsMain.GetItem(0, "process_month") == "1") { dsMain.SetItem(0, "process_month", "01"); }
                var chk_assistcode = dsMain.GetItem(0, "assisttype_code");
                var moneytype_code = dsMain.GetItem(0, "moneytype_code");
                var trtype_code = dsMain.GetItem(0, "trtype_code");
                var depttype_code = dsMain.GetItem(0, "depttype_code");

                if (chk_assistcode == "00" || chk_assistcode == null) {
                    alert("กรุณาเลือก ประเภทสวัสดิการ!!!"); return;
                } else {
                    if (moneytype_code == "TRN" && trtype_code == "DEP" && ( depttype_code == "" || depttype_code == null)) {
                    alert("กรุณาเลือก ประเภทบัญชีเงินฝาก!!!"); return;
                    }
                    else{
                     PostProcess();
                    }
                }
            } else if (c == "b_save") {
                if (confirm("ยืนยันการบันทึก")) {
                    PostSave();
                }
            }
        }
        function OnDsMainItemChanged(s, r, c, v) {
            if (c == "all_check") {
                var checkbox_grid = "";
                var H_row = Gcoop.GetEl("Hd_rowcount").value;
                if (v == "0") {
                    checkbox_grid = false;
                } else {
                    checkbox_grid = true;
                }
                $("#ctl00_ContentPlace_GridView1").find("[type='checkbox']").prop('checked', checkbox_grid);
            } else if (c == "moneytype_code") {
                if (v == "CSH") {
                    dsMain.SetItem(0, "trtype_code", '');
                    dsMain.GetElement(0, "trtype_code").style.background = "#CCCCCC";
                    dsMain.GetElement(0, "trtype_code").readOnly = true;
                    dsMain.GetElement(0, "trtype_code").disabled = true;
                    dsMain.SetItem(0, "depttype_code", '');
                    dsMain.GetElement(0, "depttype_code").style.background = "#CCCCCC";
                    dsMain.GetElement(0, "depttype_code").readOnly = true;
                    dsMain.GetElement(0, "depttype_code").disabled = true;
                } else if (v == "TRN") {
                    dsMain.SetItem(0, "trtype_code", '');
                    dsMain.GetElement(0, "trtype_code").style.background = "#FFFFFF";
                    dsMain.GetElement(0, "trtype_code").readOnly = false;
                    dsMain.GetElement(0, "trtype_code").disabled = false;
                    dsMain.SetItem(0, "depttype_code", '');
                    dsMain.GetElement(0, "depttype_code").style.background = "#FFFFFF";
                    dsMain.GetElement(0, "depttype_code").readOnly = false;
                    dsMain.GetElement(0, "depttype_code").disabled = false;
                } else {
                    dsMain.SetItem(0, "trtype_code", '');
                    dsMain.GetElement(0, "trtype_code").style.background = "#FFFFFF";
                    dsMain.GetElement(0, "trtype_code").readOnly = false;
                    dsMain.GetElement(0, "trtype_code").disabled = false;
                    dsMain.SetItem(0, "depttype_code", '');
                    dsMain.GetElement(0, "depttype_code").style.background = "#CCCCCC";
                    dsMain.GetElement(0, "depttype_code").readOnly = true;
                    dsMain.GetElement(0, "depttype_code").disabled = true;
                }
            } else if (c == "trtype_code") {
                var moneytype_code = dsMain.GetItem(0, "moneytype_code");
                if (v == "DEP" && moneytype_code != "TRN") {
                    alert("บัญชีเงินฝาก ใช้สำหรับประเภทเงินโอนภายในสหกรณ์เท่านั้น");
                    dsMain.SetItem(0, "trtype_code", '');
                    return;
                }
            }
        }


    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlace" runat="server">
    <asp:Literal ID="LtServerMessage" runat="server"></asp:Literal>
   
    <uc1:DsMain ID="dsMain" runat="server" />
    <%--<uc2:DsList ID="dsList" runat="server" />--%>
    <br />
                         <%-- <uc2:DsList ID="dsList" runat="server" />--%>

  <table cellspacing="0" rules="all" class="DataSourceRepeater" border="1" style="border-collapse: collapse; width:1095px">
            <tr>
                
                <th width="3%">
                </th>
                <th width="10%">
                    วันที่จ่ายล่าสุด
                </th>
                <th width="10%">
                    ทะเบียน
                </th>
                <th width="20%">
                    ชื่อ สกุล
                </th>
                <th width="8%">
                    อายุสมาชิก
                </th>
                <th width="15%">
                    งวดที่จ่าย
                </th>
                <th width="15%">
                    จำนวนเงินตามสิทธิ์
                </th>
                <th width="10%">
                    จำนวนเงิน
                </th>
                <th width="10%">
                    เลขบัญชี
                </th>
            </tr>
        </table>
        <div style="overflow:scroll ; height:450px; width:1113px;" >
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" class="DataSourceRepeater"
               ShowHeader="false" calss="tbData" >

             <Columns>    
                <asp:TemplateField ItemStyle-Width="3%" HeaderText="">
                    <ItemTemplate>
                        <center>
                            <asp:CheckBox ID="choose_flag" ClientIDMode="static" runat="server" Checked='<%# Eval("choose_flag") != DBNull.Value ? bool.Parse(Eval("choose_flag").ToString()) : false %>'
                                Enable='<%# !bool.Parse(Eval("choose_flag").ToString()) %>' />
                        </center>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField  HeaderText="วันที่จ่ายล่าสุด" ItemStyle-Width="10%">
                   <ItemTemplate>
                        <asp:TextBox ID="slip_date" runat="server" Text='<%#Eval("slip_date2","{0:dd/MM/yyyy}")%>'
                            Style="text-align: center" ReadOnly="true"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ทะเบียน" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:TextBox ID="member_no" runat="server" Text='<%# Bind("member_no") %>' Style="text-align: center" ReadOnly="true"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="ชื่อ สกุล" ItemStyle-Width="20%">
                    <ItemTemplate>
                        <asp:TextBox ID="full_name" runat="server" Text='<%# Bind("full_name") %>' Style="text-align: left" ReadOnly="true"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="อายุสมาชิก" ItemStyle-Width="8%">
                    <ItemTemplate>
                        <asp:TextBox ID="work_age" runat="server" Text='<%# Bind("work_age") %>' Style="text-align: center" ReadOnly="true"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>   
                <asp:TemplateField HeaderText="งวดที่จ่าย" ItemStyle-Width="15%">
                    <ItemTemplate>
                        <asp:TextBox ID="last_periodpay" runat="server" Text='<%# Bind("last_periodpay") %>' Style="text-align: center" ReadOnly="true" ToolTip="###,###,##0"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                 <asp:TemplateField HeaderText="จำนวนเงินตามสิทธิ์" ItemStyle-Width="15%">
                    <ItemTemplate>
                        <asp:TextBox ID="max_payamt" runat="server" Text='<%# Bind("max_payamt") %>' Style="text-align: right" ReadOnly="true" ToolTip="###,###,##0.00"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="จำนวนเงิน" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:TextBox ID="approve_amt" runat="server" Text='<%# Bind("approve_amt") %>' Style="text-align: right" ReadOnly="true" ToolTip="###,###,##0.00"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="เลขบัญชี" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:TextBox ID="expense_accid" runat="server" Text='<%# Bind("expense_accid") %>' Style="text-align: center" ReadOnly="true" ></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
    <asp:HiddenField ID="Hd_rowcount" runat="server" />
</asp:Content>
