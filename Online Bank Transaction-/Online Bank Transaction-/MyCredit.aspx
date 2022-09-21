<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="MyCredit.aspx.cs" Inherits="Online_Bank_Transaction_.MyCredit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">
    <table align="center">
       <tr>
            <td colspan="4" align="center">
                         <h4>My Credit</h4>
            </td>
        </tr>
       </table>
    <table align="center">
               <tr>
           <td>
               <asp:Label ID="Label5" runat="server" Text="From Account" Height="28px" Width="150px"></asp:Label>
           </td>
           <td>
               <asp:Label ID="Label6" runat="server" Text="Sender Name" Height="28px" Width="150px" ></asp:Label>
           </td>
           <td>
               <asp:Label ID="Label7" runat="server" Text="Amount" Height="28px" Width="100px"></asp:Label>              
           </td>
          
       </tr>
        </table>
</asp:Content>
