<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Registration.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HomePage</h1>
            Welcome Mr. <%=HttpContext.Current.Session["first_name"] %><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink>
        </div>
    </form>
</body>
</html>
