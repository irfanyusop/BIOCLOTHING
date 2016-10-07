<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>

<asp:Content ID="index" ContentPlaceHolderID="placeholdermain" runat="server">

    <div id="ipage">
       <div id="right"><img src="images/main.PNG" alt="main" /></div>
           <div id="left">
        <h1>Latest Products</h1>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">

                <HeaderTemplate>
                  
                </HeaderTemplate>
                <ItemTemplate>
                    <table>
                        <tr>

                            <td><%# Eval("productname") %></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgurl")%>' /></td>
                        </tr>
                        <tr>
                            <td>Category: <%# Eval("productcategory") %></td>
                        </tr>
                        <tr>
                            <td>Price: <%# Eval("price") %></td>
                        </tr>
                        <tr>
                            <td>Quantity: <%# Eval("stock") %></td>
                        </tr>
                    </table>
              
                </ItemTemplate>
                <FooterTemplate>
                   
                </FooterTemplate>

        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BioDB %>" SelectCommand="SELECT * FROM [products] ORDER BY [productid] DESC"></asp:SqlDataSource>
    </div>
   
    </div>
</asp:Content>
