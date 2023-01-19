<%@ Page Title="" Language="C#" MasterPageFile="~/yonetim/yonetim.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="chaidijitalpazarlama.yonetim._default" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gvSayfalar" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="sayfa_id" DataSourceID="dsSayfalar" Width="80%" OnSelectedIndexChanged="gvSayfalar_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="sayfa_id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="sayfa_id" />
            <asp:BoundField DataField="sayfa_basligi" HeaderText="BAŞLIK" SortExpression="sayfa_basligi">
            <ItemStyle Width="65%" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="aktif" HeaderText="YAYINDA" SortExpression="aktif" />
            <asp:TemplateField HeaderText="SIRA" SortExpression="sira">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sira") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("sira") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    <asp:SqlDataSource ID="dsSayfalar" runat="server" ConnectionString="<%$ ConnectionStrings:chaipazarlamaDBConnectionString %>" DeleteCommand="update sayfalar set silindi=1 WHERE [sayfa_id] = @sayfa_id" InsertCommand="INSERT INTO [sayfalar] ([sayfa_basligi], [sayfa_icerigi], [aktif], [silindi], [sira]) VALUES (@sayfa_basligi, @sayfa_icerigi, @aktif, 0, @sira)" SelectCommand="SELECT * FROM [sayfalar] WHERE ([silindi] = @silindi) ORDER BY [sayfa_basligi]" UpdateCommand="UPDATE [sayfalar] SET [sayfa_basligi] = @sayfa_basligi, [sayfa_icerigi] = @sayfa_icerigi, [aktif] = @aktif,  [sira] = @sira WHERE [sayfa_id] = @sayfa_id">
        <DeleteParameters>
            <asp:Parameter Name="sayfa_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtBaslik" Name="sayfa_basligi" PropertyName="Text" />
            <asp:Parameter Name="sayfa_icerigi" />
            <asp:ControlParameter ControlID="chkAktif" Name="aktif" PropertyName="Checked" />
            <asp:ControlParameter ControlID="txtSira" Name="sira" PropertyName="Text" />
        </InsertParameters>
        <SelectParameters>
            <asp:Parameter DefaultValue="False" Name="silindi" Type="Boolean" />
        </SelectParameters>
        <UpdateParameters>
            <asp:ControlParameter ControlID="txtBaslik" Name="sayfa_basligi" PropertyName="Text" />
            <asp:Parameter Name="sayfa_icerigi" />
            <asp:ControlParameter ControlID="chkAktif" Name="aktif" PropertyName="Checked" />
            <asp:ControlParameter ControlID="txtSira" Name="sira" PropertyName="Text" />
            <asp:Parameter Name="sayfa_id" />
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
