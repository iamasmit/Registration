<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="Registration.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Forgot Password</h1><br />
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
            
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="email" runat="server" Placeholder="Enter Your Email Address" TextMode="Email"></asp:TextBox><br /> 

            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
