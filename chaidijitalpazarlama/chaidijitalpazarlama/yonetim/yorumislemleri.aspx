<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.Master" AutoEventWireup="true" CodeBehind="yorumislemleri.aspx.cs" Inherits="chaidijitalpazarlama.yonetim.yorumislemleri" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:RadioButtonList ID="rblFiltre" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblFiltre_SelectedIndexChanged" RepeatDirection="Horizontal">
        <asp:ListItem Selected="True" Value="0">Onay Bekleyenler</asp:ListItem>
        <asp:ListItem Value="1">Onaylananlar</asp:ListItem>
        <asp:ListItem Value="2">Tümü</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <br />
    
    
    <asp:GridView ID="gvYorumlar" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="yorum_id" DataSourceID="dsYorumlar" GridLines="Horizontal" Height="361px" OnSelectedIndexChanged="gvYorumlar_SelectedIndexChanged" Width="90%">
        <Columns>
            <asp:CommandField SelectText="Onayla/ Onayı Kaldır" ShowSelectButton="True" />
            <asp:BoundField DataField="yorum_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="yorum_id" />
            <asp:BoundField DataField="yorum_icerigi" HeaderText="Yorum" SortExpression="yorum_icerigi" />
            <asp:BoundField DataField="aktif" HeaderText="Yayında" SortExpression="aktif" />
            <asp:CheckBoxField DataField="aktif" HeaderText="Yayında" SortExpression="aktif" />
            <asp:BoundField DataField="eklenme_tarihi" HeaderText="Eklenme Tarihi" SortExpression="eklenme_tarihi" />
            <asp:BoundField DataField="ip_adresi" HeaderText="IP Adresi" SortExpression="ip_adresi" />
            <asp:BoundField DataField="referens_basligi" HeaderText="Referans" SortExpression="referens_basligi" />
            <asp:BoundField DataField="kullanici_adi_soyadi" HeaderText="Kullanıcı" SortExpression="kullanici_adi_soyadi" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <br />
    <br />
    <asp:SqlDataSource ID="dsYorumlar" runat="server" ConnectionString="<%$ ConnectionStrings:chaipazarlamaDBConnectionString %>" DeleteCommand="DELETE FROM [referans_yorumlari] WHERE [yorum_id] = @yorum_id" InsertCommand="INSERT INTO [referans_yorumlari] ([yorum_icerigi], [aktif], [silindi], [eklenme_tarihi], [referans_id], [uye_id], [ip_adresi]) VALUES (@yorum_icerigi, @aktif, @silindi, @eklenme_tarihi, @referans_id, @uye_id, @ip_adresi)" SelectCommand="SELECT * FROM [referans_yorumlari]  inner join referanslar on referans_yorumlari.referans_id=referanslar.referans_id inner join kullanicilar on referans_yorumlari.uye_id=kullanicilar.kullanici_id WHERE referans_yorumlari.silindi = 0 and referans_yorumlari.aktif=0 ORDER BY referans_yorumlari.eklenme_tarihi" UpdateCommand="UPDATE [referans_yorumlari] SET [aktif] = 1-aktif WHERE [yorum_id] = @yorum_id">
        <DeleteParameters>
            <asp:Parameter Name="yorum_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="yorum_icerigi" Type="String" />
            <asp:Parameter Name="aktif" Type="Boolean" />
            <asp:Parameter Name="silindi" Type="Boolean" />
            <asp:Parameter Name="eklenme_tarihi" Type="DateTime" />
            <asp:Parameter Name="referans_id" Type="Int32" />
            <asp:Parameter Name="uye_id" Type="Int32" />
            <asp:Parameter Name="ip_adresi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="yorum_id" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    
    
</asp:Content>
