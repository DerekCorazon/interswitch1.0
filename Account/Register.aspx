<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="interswitch1._0.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>
            <asp:Label ID="Label1" runat="server" Text="Create a new account"></asp:Label></h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <asp:PlaceHolder ID="PlaceHolder3" runat="server">
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Username</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="x3" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="x3"
                    CssClass="text-danger" ErrorMessage="The username field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Lastname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox4" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox4"
                    CssClass="text-danger" ErrorMessage="The Lastname field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">Firstname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox5" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox5"
                    CssClass="text-danger" ErrorMessage="The Firstname field is required." />
               
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">EmailAddress</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The EmailAddress field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
                 <br />
                <asp:Button ID="Button2" runat="server" Text="Next" CssClass="btn btn-primary" OnClick="Button2_Click" />
            </div>
        </div>

            </asp:PlaceHolder>
        <asp:PlaceHolder ID="PlaceHolder4" Visible="false" runat="server">
        
      <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
      <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">BranchCode</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="List4" runat="server" DataSourceID="SqlDataSource99" DataTextField="BranchCode" DataValueField="BranchCode"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource99" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" SelectCommand="SELECT [BranchCode] FROM [Banks]"></asp:SqlDataSource>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="List4"
                    CssClass="text-danger" ErrorMessage="The BranchCode field is required." />
            </div>
        </div>
      <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">RoleCode</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="RoleCode" DataValueField="RoleCode"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" SelectCommand="SELECT [RoleCode], [RoleName] FROM [BankRoles]"></asp:SqlDataSource>
            </div>
        </div>
      <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
     
            </asp:PlaceHolder>

       
   
        
    </div>
</asp:Content>
