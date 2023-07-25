<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Registration.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Registration</h1><br />
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label><br />
            <asp:TextBox ID="firstname" runat="server" Placeholder="Enter Your First Name"></asp:TextBox><br /> 

            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label><br />
            <asp:TextBox ID="lastname" runat="server" Placeholder="Enter Your Last Name"></asp:TextBox><br /> 

            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="email" runat="server" Placeholder="Enter Your Email Address" TextMode="Email"></asp:TextBox><br /> 

            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="password" runat="server" Placeholder="Enter Your Password" TextMode="Password"></asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
