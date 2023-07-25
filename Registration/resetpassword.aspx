<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetpassword.aspx.cs" Inherits="Registration.resetpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Reset Password</h1><br />
            <asp:Label ID="lblErrorMsg" runat="server" Text=""></asp:Label><br />
            
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"> 

                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="password" runat="server" Placeholder="Enter Your Password" TextMode="Password"></asp:TextBox><br />

                <asp:Label ID="Label1" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="cpassword" runat="server" Placeholder="Enter Your Confirm Password" TextMode="Password"></asp:TextBox><br />

                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />

            </asp:PlaceHolder>
            <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>

        </div>
    </form>
</body>
</html>
