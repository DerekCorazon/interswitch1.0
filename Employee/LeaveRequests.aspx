
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LeaveRequests.aspx.cs" Inherits="interswitch1._0.Employee.LeaveRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>InterSwitch Ug</h2>

    <div class="form-horizontal">
        <h4>LeaveRequest</h4>
        <hr />
        <asp:PlaceHolder ID="PlaceHolder2909" runat="server">
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4"
                    CssClass="text-danger" ErrorMessage="The name field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">StartDate</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" TextMode="Date"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox5"
                    CssClass="text-danger" ErrorMessage="The StartDate field is required." />
            </div>
        </div>
      
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">EndDate</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox2" CssClass="form-control" TextMode="Date" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox2"
                    CssClass="text-danger" ErrorMessage="The EndDate field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleCode</asp:Label>
            <div class="col-md-10">
         
                <asp:DropDownList ID="DropList1" runat="server" DataSourceID="SqlDataSourcex" DataTextField="RoleCode" DataValueField="RoleCode"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSourcex" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" SelectCommand="SELECT [RoleCode] FROM [InterSwitchRoles]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DropList1"
                    CssClass="text-danger" ErrorMessage="The RoleCode field is required." />
               
            </div>
        </div>

        <div style="align-content:end">
        <asp:Button ID="Button1" runat="server" Text="Request"  CssClass="btn btn-success btn-lg" OnClick="Button7_Click" />
            </div>
            </asp:PlaceHolder>
        <asp:PlaceHolder ID="PlaceHolder399"  runat="server" Visible="false">
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Employee ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="tuor" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="tuor"
                    CssClass="text-danger" ErrorMessage="Employee ID field is required." />
            </div>
        </div>
            <hr />
            <asp:Button ID="Button978" runat="server" Text="Confirm" CssClass="btn btn-danger btn-lg" OnClick="Button00978_Click" />
        </asp:PlaceHolder>
        </div>
    

</asp:Content>

