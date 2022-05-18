<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="mainpage.aspx.cs" Inherits="interswitch1._0.mainpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="jumbotron">
        <div style="align-self:center;align-content:center">
            <div class="jumbotron" style="height:400px">
                <h1>WELCOME</h1>
                <asp:PlaceHolder ID="PlaceHolder4" Visible="false" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>:&nbsp;<asp:TextBox ID="TextBoxxxb" ReadOnly="true" runat="server"></asp:TextBox><br />
                   <asp:Label ID="Label23" runat="server" Text="IdD"></asp:Label>:&nbsp;<asp:TextBox ID="TextBop" ReadOnly="true" runat="server"></asp:TextBox><br />

                </asp:PlaceHolder>
                <h4>InterSwitch UG</h4>
            </div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false">
                <asp:Button ID="Button3" runat="server" Text="log out " CssClass="btn btn-danger btn-lg" />&nbsp;&nbsp;|<asp:Button ID="Button1" runat="server" Text="Add a Bank" CssClass="btn btn-success btn-lg" PostBackUrl="~/Account/NewBank.aspx" />&nbsp;|&nbsp;<asp:Button ID="Button2" runat="server" Text="New Employee" CssClass="btn btn-primary btn-lg" PostBackUrl="~/Employee/addemployee.aspx" />&nbsp;|&nbsp;<asp:Button ID="Button8" runat="server" Text="LeaveRequests" CssClass="btn btn-default btn-lg" PostBackUrl="~/Employee/listofleaves.aspx" />&nbsp;|&nbsp;<asp:Button ID="Button9" runat="server" Text="Employees"  CssClass="btn btn-warning btn-lg" PostBackUrl="~/Employee/viewroles.aspx" />
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="PlaceHolder2" runat="server" Visible="false">
                 <asp:Button ID="Button6" runat="server" Text="log out"  CssClass="btn btn-danger btn-lg" />|<asp:Button ID="Button4" runat="server" Text="performTransaction" CssClass="btn btn-primary btn-lg" />
            </asp:PlaceHolder>
            <asp:PlaceHolder ID="PlaceHolder3" runat="server" Visible="false">
                 <asp:Button ID="Button7" runat="server" Text="log out" CssClass="btn btn-danger btn-lg" />|<asp:Button ID="Button5" PostBackUrl="~/Employee/LeaveRequests.aspx" runat="server" CssClass="btn btn-primary btn-lg" Text="REQUESTLEAVE" />
            </asp:PlaceHolder>
       </div>
         </div>




</asp:Content>
