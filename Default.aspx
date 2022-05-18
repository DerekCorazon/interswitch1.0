<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="interswitch1._0._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <div style="align-self:center;align-content:center">


               <div class="form-horizontal">
                    <h4>Use a your account details to log in.</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server"  CssClass="col-md-2 control-label">UserName</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="tbx" CssClass="form-control"  />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="tbx"
                                CssClass="text-danger" ErrorMessage="The USERNAME field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server"  CssClass="col-md-2 control-label">InstitutionCode</asp:Label>
                        <div class="col-md-10">
                           <asp:DropDownList runat="server" ID="x4" >
                               <asp:ListItem>BANK</asp:ListItem>
                               <asp:ListItem>INTERSWITCH</asp:ListItem>
                               <asp:ListItem>CORPORATE</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="x4"
                                CssClass="text-danger" ErrorMessage="PLEASE SELECT AN INSTITUTION" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:Button runat="server"  Text="Log in" CssClass="btn btn-default" OnClick="Unnamed8_Click" />
                        </div>
                    </div>
                </div>

        </div>
    </div>

    <div class="row">
      
    </div>

</asp:Content>
