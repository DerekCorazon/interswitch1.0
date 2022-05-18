<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewBank.aspx.cs" Inherits="interswitch1._0.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2>BankRegistry</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

           <div class="form-horizontal">
        <h4>Add new Bank</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
  
         <div class="form-group">
            <asp:Label runat="server" CssClass="col-md-2 control-label">BranchName</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="TextBox3" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBox3"
                    CssClass="text-danger" ErrorMessage="The username field is required." />
            </div>
        </div>
       
   
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" Text="Register" CssClass="btn btn-default" OnClick="Unnamed4_Click" />
            </div>
        </div>
            
        
    </div>
           <div class="form-horizontal">
        <h4>Banks</h4>

        <hr />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="BranchCode" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="BranchCode" HeaderText="BranchCode" InsertVisible="False" ReadOnly="True" SortExpression="BranchCode" />
                <asp:BoundField DataField="BranchName" HeaderText="BranchName" SortExpression="BranchName" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:InterSwitch1.0ConnectionString %>" DeleteCommand="DELETE FROM [Banks] WHERE [BranchCode] = @BranchCode" InsertCommand="INSERT INTO [Banks] ([BranchName]) VALUES (@BranchName)" SelectCommand="SELECT * FROM [Banks]" UpdateCommand="UPDATE [Banks] SET [BranchName] = @BranchName WHERE [BranchCode] = @BranchCode">
            <DeleteParameters>
                <asp:Parameter Name="BranchCode" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BranchName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BranchName" Type="String" />
                <asp:Parameter Name="BranchCode" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        </div>



</asp:Content>
