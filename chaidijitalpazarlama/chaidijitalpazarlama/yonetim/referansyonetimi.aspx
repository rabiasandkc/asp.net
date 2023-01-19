<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.Master" AutoEventWireup="true" CodeBehind="referansyonetimi.aspx.cs" 
    Inherits="chaidijitalpazarlama.yonetim.referansyonetimi" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="gvReferanslar" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="referans_id" DataSourceID="dsReferanslar" Width="80%" OnSelectedIndexChanged="gvReferanslar_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="referans_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="referans_id" />
            <asp:BoundField DataField="referens_basligi" HeaderText="Başlık" SortExpression="referens_basligi">
            <ItemStyle Width="65%" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="aktif" HeaderText="Yayında" SortExpression="aktif" />
            <asp:BoundField DataField="eklenme_tarihi" HeaderText="Eklenme Tarihi" SortExpression="eklenme_tarihi" DataFormatString="{0:dd.MM.dddd}" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsReferanslar" runat="server" ConnectionString="<%$ ConnectionStrings:chaipazarlamaDBConnectionString %>" DeleteCommand="DELETE FROM [referanslar] WHERE [referans_id] = @referans_id" InsertCommand="INSERT INTO [referanslar] ([referens_basligi], [referans_icerigi], [aktif], [silindi], [sira], [eklenme_tarihi]) VALUES (@referens_basligi, @referans_icerigi, @aktif, @silindi, @sira, @eklenme_tarihi)" SelectCommand="SELECT * FROM [referanslar] WHERE ([silindi] = @silindi) ORDER BY [eklenme_tarihi]" UpdateCommand="UPDATE [referanslar] SET [referens_basligi] = @referens_basligi, [referans_icerigi] = @referans_icerigi, [aktif] = @aktif, [silindi] = @silindi, [sira] = @sira, [eklenme_tarihi] = @eklenme_tarihi WHERE [referans_id] = @referans_id">
        <DeleteParameters>
            <asp:Parameter Name="referans_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="referens_basligi" Type="String" />
            <asp:Parameter Name="referans_icerigi" Type="String" />
            <asp:Parameter Name="aktif" Type="Boolean" />
            <asp:Parameter Name="silindi" Type="Boolean" />
            <asp:Parameter Name="sira" Type="Int32" />
            <asp:Parameter Name="eklenme_tarihi" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="silindi" Type="Boolean" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="referens_basligi" Type="String" />
            <asp:Parameter Name="referans_icerigi" Type="String" />
            <asp:Parameter Name="aktif" Type="Boolean" />
            <asp:Parameter Name="silindi" Type="Boolean" />
            <asp:Parameter Name="sira" Type="Int32" />
            <asp:Parameter Name="eklenme_tarihi" Type="DateTime" />
            <asp:Parameter Name="referans_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <table class="auto-style1">
        <tr>
            <td colspan="2">Başlık:<asp:TextBox ID="txtBaslik" runat="server" Width="80%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:CheckBox ID="chkAktif" runat="server" Text="Yayında" />
            </td>
            <td>Sıra:<asp:TextBox ID="txtSira" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <FCKeditorV2:FCKeditor ID="fckIcerik" runat="server" Height="500px">
                </FCKeditorV2:FCKeditor>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnYeni" runat="server" Text="Yeni" Width="200px" OnClick="btnYeni_Click" />
                <asp:Button ID="btnKaydet" runat="server" Text="Kaydet" Width="200px" OnClick="btnKaydet_Click" />
                <asp:Button ID="btnSil" runat="server" Text="Sil" Width="200px" OnClick="btnSil_Click" OnClientClick="return confirm('Bu sayfayı silmek istiyor musunuz?')" />
                <asp:Label ID="lblMesaj" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
