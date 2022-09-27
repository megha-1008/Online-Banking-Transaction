<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="Debit.aspx.cs" Inherits="Online_Bank_Transaction_.Debit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">
    <table align="center">
        <tr>
            <td align="center">
                <h4>My Dedit</h4>
            </td>
        </tr>
        <tr>
            <asp:GridView ID="GridView1" runat="server" Height="250px" Width="600px" AutoGenerateColumns="False" DataKeyNames="TransactionId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="From Account" HeaderText="From Account" InsertVisible="False" ReadOnly="True" SortExpression="From Account" />
                    <asp:BoundField DataField="Sender Name" HeaderText="Sender Name" SortExpression="Sender Name" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Remarks" HeaderText="Remarks" SortExpression="Remarks" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-KA2J90EL\SQLEXPRESS;Initial Catalog=BankTransactionDB;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Transactions]"></asp:SqlDataSource>
        </tr>
    </table>
</asp:Content>