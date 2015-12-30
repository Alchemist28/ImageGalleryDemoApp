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
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fileUpLoad" ErrorMessage="Please Select Image to upload" ForeColor="#FF3300" SetFocusOnError="True" ValidationGroup="Upload">*</asp:RequiredFieldValidator>
        <asp:FileUpload ID="fileUpLoad"  runat="server" /><asp:Button ID="btnUpLoad" runat="server" Text="Upload" BackColor="#3366cc" ValidationGroup="Upload" ForeColor="White" OnClick="btnUpLoad_Click" BorderStyle="Solid" Height="35px" Width="100px" />
        <asp:Panel ID="panelImage" runat="server" BorderStyle ="None" Width="500px">
        </asp:Panel>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Upload" runat="server" ForeColor="Red" />
    </div>
    </form>
</body>
</html>
