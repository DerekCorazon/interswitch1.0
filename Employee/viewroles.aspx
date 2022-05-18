<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="viewroles.aspx.cs" Inherits="interswitch1._0.Employee.viewroles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <div class="jumbotron">
        <div class="row">
            <div class="col-6">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="EmployeeID" DataSourceID="employees">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" InsertVisible="False" ReadOnly="True" SortExpression="EmployeeID" />
                        <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="EmailAddress" HeaderText="EmailAddress" SortExpression="EmailAddress" />
                        <asp:BoundField DataField="RoleCode" HeaderText="RoleCode" SortExpression="RoleCode" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="employees" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" SelectCommand="SELECT [EmployeeID], [UserName], [LastName], [FirstName], [EmailAddress], [Password], [RoleCode] FROM [InterSwitchUsers]"></asp:SqlDataSource>
            </div>
            <div class="col-6" style="padding:20px">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleCode" DataSourceID="newdata">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="RoleCode" HeaderText="RoleCode" InsertVisible="False" ReadOnly="True" SortExpression="RoleCode" />
                <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName" />
                <asp:BoundField DataField="RoleDescription" HeaderText="RoleDescription" SortExpression="RoleDescription" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="newdata" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" DeleteCommand="DELETE FROM [InterSwitchRoles] WHERE [RoleCode] = @RoleCode" InsertCommand="INSERT INTO [InterSwitchRoles] ([RoleName], [RoleDescription]) VALUES (@RoleName, @RoleDescription)" SelectCommand="SELECT * FROM [InterSwitchRoles]" UpdateCommand="UPDATE [InterSwitchRoles] SET [RoleName] = @RoleName, [RoleDescription] = @RoleDescription WHERE [RoleCode] = @RoleCode">
            <DeleteParameters>
                <asp:Parameter Name="RoleCode" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="RoleDescription" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoleName" Type="String" />
                <asp:Parameter Name="RoleDescription" Type="String" />
                <asp:Parameter Name="RoleCode" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        </div>






       
    </div>




</asp:Content>
