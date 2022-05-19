<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="coporate users.aspx.cs" Inherits="interswitch1._0.coporate_users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h2>Corporate Registry</h2>

    <div class="form-horizontal">
        <h4>New Administator</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <p class="text-danger">
            <asp:Literal runat="server" ID="ErrorMessage" />
        </p>


        <asp:PlaceHolder ID="PlaceHolderlon" runat="server">
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">UserName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txusr" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txusr"
                    CssClass="text-danger" ErrorMessage="The username field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">LastName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Tbl" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Tbl"
                    CssClass="text-danger" ErrorMessage="The LastName field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">FirstName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Tbf" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Tbf"
                    CssClass="text-danger" ErrorMessage="The FirstName field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">CorporateType</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DownList1" runat="server">
                    <asp:ListItem>executive</asp:ListItem>
                    <asp:ListItem>management</asp:ListItem>
                    <asp:ListItem>BOARD</asp:ListItem>
                </asp:DropDownList>
               <br />
                <asp:Button ID="Button1" runat="server" Text="NEXT" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click" />
            </div>
        </div>
        </asp:PlaceHolder>




        <asp:PlaceHolder ID="PlaceHoldernon" Visible="false" runat="server">
        <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">EmailAddress</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Temeail" CssClass="form-control" TextMode="Email"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Temail"
                    CssClass="text-danger" ErrorMessage="The EmailAddress field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Passwords"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Confirmme" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Confirmme"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Passwords" ControlToValidate="Confirmme"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">RoleCode</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="RoleCode" DataValueField="RoleCode"></asp:DropDownList>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" SelectCommand="SELECT [RoleCode] FROM [CorporateRoles]"></asp:SqlDataSource>
               
            </div>
        </div>
            <br />
            <asp:Button ID="Button2" runat="server" Text="register" OnClick="Button2_Click" />
            </asp:PlaceHolder>


     </div>
</asp:Content>
