<%@ Page Title="" Language="C#" MasterPageFile="~/MenuHeader.master" AutoEventWireup="true" CodeBehind="PerformTransaction.aspx.cs" Inherits="Online_Bank_Transaction_.PerformTransaction" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPH" runat="server">
    <table align="center">
        <tr>
            <td colspan="2" align="center">
                <h4>Perform Transaction</h4>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Account Number"></asp:Label>
            </td>
            <td>
                  <asp:TextBox ID="txtAccountNumber" runat="server" Height="28px" Width="200px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                      ControlToValidate="txtAccountNumber" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
            </td>
           
        </tr>
         <tr>
             <td >
                <asp:Label ID="Label3" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="txtUserName" runat="server" Height="28px" Width="200px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
                      ControlToValidate="txtUserName" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                <div>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="Minimum User name length must be 6 characters(alphanumberic)" ControlToValidate="txtUserName" ForeColor="Red"
                    SetFocusOnError="true" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9\s]{6,15}$"></asp:RegularExpressionValidator>
                </div>
            </td>
        </tr>
         <tr>
             <td>
                <asp:Label ID="Label11" runat="server" Text="Amount"></asp:Label>
            </td>
            <td>
               <asp:TextBox ID="txtAmount" runat="server" Height="28px" Width="200px" TextMode="Number"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" 
                  ControlToValidate="txtAmount" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
             <div>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" 
                  ErrorMessage="Amount length must be in between 1 to 5 digits" ControlToValidate="txtAmount" ForeColor="Red" SetFocusOnError="true" Display="Dynamic" 
                  ValidationExpression="\d{1,5}"></asp:RegularExpressionValidator><a href="Login.aspx">Login.aspx</a>
             </div>
            </td>
        </tr>
         <tr>
            <td align="center">
                 <asp:Button ID="btnSend" runat="server" Text="Send" Height="28px" OnClick="btnSend_Click"/>  
            </td>
            <td align="center">
                 <asp:Button ID="btnCancel" runat="server" Text="Cancel" Height="28px" OnClick="btnCancel_Click" CausesValidation="false"/>  
            </td>
        </tr>
        <tr>
             <td colspan="2">
                <div id ="error" runat="server" style="color:red">

                </div>
            </td>
        </tr>
    </table>
</asp:Content>
