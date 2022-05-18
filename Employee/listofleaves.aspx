<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="listofleaves.aspx.cs" Inherits="interswitch1._0.Employee.LeaveRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>InterSwitch Ug</h2>

    <div class="form-horizontal">
        <h4>LeaveRequests</h4>
        <hr />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="RoleCode" DataSourceID="newrequests" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="EmployeeID" HeaderText="EmployeeID" SortExpression="EmployeeID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="startDate" HeaderText="startDate" SortExpression="startDate" />
                <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate" />
                <asp:BoundField DataField="RoleCode" HeaderText="RoleCode" ReadOnly="True" SortExpression="RoleCode" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <hr />
        <asp:Button ID="Button1" runat="server" Text="MoveRequest" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click" />


        <asp:SqlDataSource ID="newrequests" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" DeleteCommand="DELETE FROM [leaveRequests] WHERE [RoleCode] = @RoleCode" InsertCommand="INSERT INTO [leaveRequests] ([EmployeeID], [Name], [startDate], [EndDate], [RoleCode]) VALUES (@EmployeeID, @Name, @startDate, @EndDate, @RoleCode)" SelectCommand="SELECT * FROM [leaveRequests]" UpdateCommand="UPDATE [leaveRequests] SET [EmployeeID] = @EmployeeID, [Name] = @Name, [startDate] = @startDate, [EndDate] = @EndDate WHERE [RoleCode] = @RoleCode">
            <DeleteParameters>
                <asp:Parameter Name="RoleCode" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter DbType="Date" Name="startDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="RoleCode" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmployeeID" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter DbType="Date" Name="startDate" />
                <asp:Parameter DbType="Date" Name="EndDate" />
                <asp:Parameter Name="RoleCode" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>



        <hr />
        <h3>Processed/OldRequests</h3>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="EmployeeID" DataSourceID="olderrequests">
            <AlternatingItemTemplate>
                <span style="background-color: #FFFFFF;color: #284775;">EmployeeID:
                <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                startDate:
                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                RoleCode:
                <asp:Label ID="RoleCodeLabel" runat="server" Text='<%# Eval("RoleCode") %>' />
                <br />
<br /></span>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <span style="background-color: #999999;">EmployeeID:
                <asp:Label ID="EmployeeIDLabel1" runat="server" Text='<%# Eval("EmployeeID") %>' />
                <br />
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                startDate:
                <asp:TextBox ID="startDateTextBox" runat="server" Text='<%# Bind("startDate") %>' />
                <br />
                EndDate:
                <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                <br />
                RoleCode:
                <asp:TextBox ID="RoleCodeTextBox" runat="server" Text='<%# Bind("RoleCode") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /><br /></span>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <span>No data was returned.</span>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <span style="">Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />startDate:
                <asp:TextBox ID="startDateTextBox" runat="server" Text='<%# Bind("startDate") %>' />
                <br />EndDate:
                <asp:TextBox ID="EndDateTextBox" runat="server" Text='<%# Bind("EndDate") %>' />
                <br />RoleCode:
                <asp:TextBox ID="RoleCodeTextBox" runat="server" Text='<%# Bind("RoleCode") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /><br /></span>
            </InsertItemTemplate>
            <ItemTemplate>
                <span style="background-color: #E0FFFF;color: #333333;">EmployeeID:
                <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                startDate:
                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                RoleCode:
                <asp:Label ID="RoleCodeLabel" runat="server" Text='<%# Eval("RoleCode") %>' />
                <br />
<br /></span>
            </ItemTemplate>
            <LayoutTemplate>
                <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <span runat="server" id="itemPlaceholder" />
                </div>
                <div style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <span style="background-color: #E2DED6;font-weight: bold;color: #333333;">EmployeeID:
                <asp:Label ID="EmployeeIDLabel" runat="server" Text='<%# Eval("EmployeeID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                <br />
                startDate:
                <asp:Label ID="startDateLabel" runat="server" Text='<%# Eval("startDate") %>' />
                <br />
                EndDate:
                <asp:Label ID="EndDateLabel" runat="server" Text='<%# Eval("EndDate") %>' />
                <br />
                RoleCode:
                <asp:Label ID="RoleCodeLabel" runat="server" Text='<%# Eval("RoleCode") %>' />
                <br />
<br /></span>
            </SelectedItemTemplate>
        </asp:ListView>
     
        <asp:SqlDataSource ID="olderrequests" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" SelectCommand="SELECT * FROM [ApprovedRequests]"></asp:SqlDataSource>


      
     
        </div>
    <div>
       <asp:PlaceHolder ID="PlaceHolder1" Visible="false" runat="server">
           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
           <asp:TextBox ID="TextBox200" runat="server"></asp:TextBox>
       </asp:PlaceHolder>
    </div>

</asp:Content>
