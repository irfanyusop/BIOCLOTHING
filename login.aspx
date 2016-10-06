<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="ilogin" ContentPlaceHolderID="placeholdermain" runat="server">
    <div id="loginpage">
        <h3>Login</h3>
        <table>
            <tr>
                <td>IC Number</td>
                <td>
                    <asp:TextBox ID="txtic" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtic" ErrorMessage="This field is required" Font-Italic="True" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                 </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="this field is required" Font-Italic="True" Font-Size="Small" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td></td>
                <td colspan="2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                 </td>
                
            </tr>
          
             <tr>
                <td>&nbsp;</td>
                <td colspan="2">
                    <h3>Not yet a member?</h3>
                    <p>
                       Every member can enjoy priviliges such as:</p>
                   
                       <ul>
                           <li>Latest products and promotions</li>
                           <li>Discounts on selected items</li>
                           <li>View previous purchases</li>
                       </ul>

                    <p>
                        <a href="register.aspx">Sign-up now</a></p>
                 </td>
                
            </tr>
          
        </table>

    </div>

</asp:Content>
