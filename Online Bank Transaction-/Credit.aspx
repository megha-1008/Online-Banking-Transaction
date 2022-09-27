<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="Credit.aspx.cs" Inherits="Online_Bank_Transaction_.Credit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">
    <table align="center">
        <tr>
            <td align="center">
                <h4>My Credit</h4>
            </td>
        </tr>
        <tr >
             <asp:GridView ID="GridView2" runat="server" Height="250px" Width="600px" AutoGenerateColumns="False" DataKeyNames="TransactionId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                 <Columns>
                     <asp:BoundField DataField="To Account" HeaderText="To Account" SortExpression="To Account" />
                     <asp:BoundField DataField="Payee Name" HeaderText="Payee Name" SortExpression="Payee Name" />
                     <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                     <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-KA2J90EL\SQLEXPRESS;Initial Catalog=BankTransactionDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Transactions]"></asp:SqlDataSource>
        </tr>
       
    </table>
</asp:Content>
