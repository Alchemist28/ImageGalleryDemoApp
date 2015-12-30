<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DisplayImages.aspx.cs" Inherits="ImageGallery.DisplayImages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .ButtonStyle {
          
            position:relative ;
            bottom:0px;
            left:400px;  
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-family:Arial">
        <asp:Image ID="displayImage" Width="900px" Height="800px" runat="server" />
        <br />
        <br />
        <asp:Button  ID="btnUpLoad" runat="server" Text="Back"  BackColor="#3366cc" ForeColor="White"  BorderStyle="Solid" Height="35px" Width="100px" CssClass="ButtonStyle" OnClick="btnUpLoad_Click" />
    </div>
    </form>
</body>
</html>
