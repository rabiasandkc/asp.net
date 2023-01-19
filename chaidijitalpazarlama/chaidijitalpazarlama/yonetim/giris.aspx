<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giris.aspx.cs" Inherits="chaidijitalpazarlama.yonetim.giris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="form-outline form-white mb-4">
             <asp:Label ID="lblKulAdi" CssClass="form-label" for="typeEmailX" runat="server" Text="Kullanıcı Adı "></asp:Label><br />
                  <asp:TextBox ID="txtKulAdi" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
            
              <div class="form-outline form-white mb-4">
                
                <asp:Label ID="lblParola" CssClass="form-label" for="typePasswordX" runat="server" Text="Parola "></asp:Label><br />
                  <asp:TextBox ID="txtParola" CssClass="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
              </div>
           
              <asp:Button ID="btnGiris" runat="server" Text="GİRİŞ" BackColor="#FACE35" CssClass="form-control form-control-lg" OnClick="btnGiris_Click" />
                <asp:Label ID="lblGirisMesaj" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        </div>
            </div>
    </form>
</body>
</html>
