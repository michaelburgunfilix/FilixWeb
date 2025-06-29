<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="C#" %>
<%@ Import Namespace="Filix.Licensing" %>

<script runat="server">

    protected void ButtonDownload_Click(object sender, EventArgs e)
    {
        string subject = string.Format("Trial downloaded by {0} {1}", TextFirstName.Text, TextLastName.Text);
        string body = string.Format("<strong>Name: </strong> {0} {1}<br/> <strong>Company: </strong> {2}<br/><strong>Email:</strong> {3}", 
            TextFirstName.Text, TextLastName.Text, TextCompany.Text, TextEmail.Text);
                      
        Registration.SendEmail(subject,body,@"Trial@filix-it.com");
    }
</script>

<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml" xmlns:mso="urn:schemas-microsoft-com:office:office" xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882">

<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<head runat="server">
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Filix Download</title>
<style type="text/css">
.auto-style1 {
	text-align: center;
}
</style>

<!--[if gte mso 9]><xml>
<mso:CustomDocumentProperties>
<mso:IsMyDocuments msdt:dt="string">1</mso:IsMyDocuments>
</mso:CustomDocumentProperties>
</xml><![endif]-->
</head>

<body>
<h1 class="auto-style1">Download Software</h1>
<h2>Please enter your details:</h2>
<form id="DownloadForm" runat="server">
<asp:Table runat="server" >
<asp:TableRow runat="server">
<asp:TableCell runat="server"><label id="LabelFirstName">First Name:</label></asp:TableCell>
<asp:TableCell runat="server"><asp:TextBox ID="TextFirstName" runat="server"/></asp:TableCell>
</asp:TableRow>
<asp:TableRow runat="server">
<asp:TableCell runat="server"><label id="LabelLastName">Last Name: </label> </asp:TableCell>
<asp:TableCell runat="server"><asp:TextBox ID="TextLastName" runat="server"/></asp:TableCell>
</asp:TableRow>
<asp:TableRow runat="server">
<asp:TableCell runat="server"><label id="LabelCompany">Company: </label>                  </asp:TableCell>
<asp:TableCell runat="server"><asp:TextBox ID="TextCompany" runat="server"/> </asp:TableCell>
</asp:TableRow>
<asp:TableRow runat="server">
<asp:TableCell runat="server"><label id="LabelEmail">Email: </label>                   </asp:TableCell>
<asp:TableCell runat="server"><asp:TextBox ID="TextEmail" runat="server"/> </asp:TableCell>
</asp:TableRow>
</asp:Table>
<asp:Button ID="ButtonDownload" runat="server" Text="Download" OnClick="ButtonDownload_Click" />
</form>
</body>

</html>
