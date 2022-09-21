<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="MyDebit.aspx.cs" Inherits="Online_Bank_Transaction_.MyDebit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">
    <table align="center">
      <tr>
            <td colspan="4" align="center">
                         <h4>My Debit</h4>
            </td>
        </tr>
  </table>
    <table align="center">
        <gridview>
            <tr>
           <td>
               <asp:Label ID="Label5" runat="server" Text="To Account" Height="28px" Width="150px"></asp:Label>
           </td>
           <td>
               <asp:Label ID="Label6" runat="server" Text="User Name" Height="28px" Width="150px" ></asp:Label>
           </td>
           <td>
               <asp:Label ID="Label7" runat="server" Text="Amount" Height="28px" Width="100px"></asp:Label>              
           </td>
          
       </tr>
        </gridview>
   </table>
</asp:Content>
