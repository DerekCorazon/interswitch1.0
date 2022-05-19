<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="roles.aspx.cs" Inherits="interswitch1._0.roles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="row">
        <div class="col-4">
            <h2>bankroles</h2>
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtBox2" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtBox2"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
                 </div>
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleDescription</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtBox1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtBox1"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
                 </div>
            <br />
            <asp:Button ID="Button1x" runat="server" Text="register" OnClick="Button1x_Click" />
        </div>
        <div class="col-4">
              <h2>interswitchroles</h2>
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBx1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBx1"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
                 </div>
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleDescription</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TxtBx1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TxtBx1"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
                 </div>
             <asp:Button ID="Button2x" runat="server" Text="register" OnClick="Button2x_Click" />
        </div>
        <div class="col-4">
              <h2>coporateroles</h2>
            <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Box1" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Box1"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
                 </div>
             <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">RoleDescription</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Box2" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Box2"
                    CssClass="text-danger" ErrorMessage="This field is required." />
            </div>
                 </div>
             <asp:Button ID="Button3x" runat="server" Text="register" OnClick="Button3x_Click" />
        </div>
    </div>
</asp:Content>
