<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageGallery.aspx.cs" Inherits="ImageGallery.ImageGallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#aadbf8">
    <form id="form1" runat="server">
    <div style="font-family:Arial">
        <h1 style="text-align:center">Welcome To Image Gallery</h1>
        <br />
        <br />
        <asp:FileUpload ID="fileUpLoad" runat="server" /><asp:Button ID="btnUpLoad" runat="server" Text="Upload" BackColor="#3366cc" ForeColor="White" OnClick="btnUpLoad_Click" BorderStyle="Solid" Height="35px" Width="100px" />
        <asp:Panel ID="panelImage" runat="server" BorderStyle ="None" Width="500px"></asp:Panel>
    </div>
    </form>
</body>
</html>
