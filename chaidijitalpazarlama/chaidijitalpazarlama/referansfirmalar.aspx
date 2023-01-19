<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="referansfirmalar.aspx.cs" Inherits="chaidijitalpazarlama.referansfirmalar" %>

<%@ Register TagPrefix="ajaxToolkit" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="single-post-content">
        <div style="margin-top: 6px"></div>
    </section>

    <asp:Panel ID="pnlTumReferanslar" runat="server">
        <asp:Repeater ID="rptTumReferanslar" runat="server" DataSourceID="dsTumReferanslar">

            <HeaderTemplate>
                <h3>TÜM REFERANSLAR
                </h3>
            </HeaderTemplate>
            <ItemTemplate>
                <a href="referansfirmalar.aspx?id=<%#Eval("referans_id") %>"><%#Eval("referens_basligi") %> (<%#Eval("eklenme_tarihi", "{0:dd.MM.yyyy}") %>)</a>
                <br />
            </ItemTemplate>
        </asp:Repeater>


        <asp:SqlDataSource runat="server" ID="dsTumReferanslar" ConnectionString='<%$ ConnectionStrings:chaipazarlamaDBConnectionString %>' SelectCommand="SELECT * FROM [referanslar] WHERE (([aktif] = @aktif) AND ([silindi] = @silindi)) ORDER BY [eklenme_tarihi]">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="aktif" Type="Boolean"></asp:Parameter>
                <asp:Parameter DefaultValue="False" Name="silindi" Type="Boolean"></asp:Parameter>
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>



    <asp:Panel ID="pnlSeciliReferans" runat="server">
        <asp:Repeater ID="rptSeciliReferans" runat="server" DataSourceID="dsSeciliReferans">
            <ItemTemplate>


                <h4>
                    <%#Eval("referens_basligi") %><br />
                </h4>


                <%#Eval("referans_icerigi") %>
                <br />
                <%#Eval("eklenme_tarihi") %> tarihinde eklendi.<br />

                </div>
            </ItemTemplate>
        </asp:Repeater>
        <br />
        <asp:SqlDataSource runat="server" ID="dsSeciliReferans" ConnectionString='<%$ ConnectionStrings:chaipazarlamaDBConnectionString %>' SelectCommand="SELECT * FROM [referanslar] WHERE (([aktif] = @aktif) AND ([silindi] = @silindi) AND ([referans_id] = @referans_id))">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="aktif" Type="Boolean"></asp:Parameter>
                <asp:Parameter DefaultValue="False" Name="silindi" Type="Boolean"></asp:Parameter>
                <asp:QueryStringParameter QueryStringField="id" DefaultValue="0" Name="referans_id" Type="Int32"></asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <br />

        <asp:Panel ID="pnlYorumlar" runat="server">
            <asp:Repeater ID="rptYorumlar" runat="server" DataSourceID="dsYorumlar">
                <HeaderTemplate>
                    <hr />
                    <h4>YORUMLAR:</h4>
                </HeaderTemplate>
                <ItemTemplate>
                    <%#Eval("yorum_icerigi") %><br />
                    <%#Eval("eklenme_tarihi") %> tarihinde <%#Eval("kullanici_adi_soyadi") %> tarafından eklendi<br />
                </ItemTemplate>
            </asp:Repeater>
            <asp:SqlDataSource runat="server" ID="dsYorumlar" ConnectionString='<%$ ConnectionStrings:chaipazarlamaDBConnectionString %>' SelectCommand="SELECT yorum_icerigi,eklenme_tarihi,kullanici_adi_soyadi,referans_yorumlari.aktif,referans_yorumlari.silindi,referans_yorumlari.eklenme_tarihi FROM [referans_yorumlari] inner join kullanicilar on referans_yorumlari.uye_id=kullanicilar.kullanici_id WHERE 
                ((referans_yorumlari.aktif = @aktif) AND (referans_yorumlari.silindi = @silindi) AND ([referans_id] = @referans_id)) ORDER BY 
                referans_yorumlari.eklenme_tarihi"
                InsertCommand="insert into referans_yorumlari (yorum_icerigi,aktif,silindi,eklenme_tarihi,referans_id,uye_id,ip_adresi) values(@yorum_icerigi,0,0,getdate(),@referans_id,@uye_id,@ip_adresi)">
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtYorum" Name="yorum_icerigi" PropertyName="Text" />
                    <asp:QueryStringParameter DefaultValue="0" Name="referans_id" QueryStringField="id" />
                    <asp:SessionParameter DefaultValue="1" Name="uye_id" SessionField="uye_id" />
                    <asp:ControlParameter ControlID="lblIP" Name="ip_adresi" PropertyName="Text" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="True" Name="aktif" Type="Boolean"></asp:Parameter>
                    <asp:Parameter DefaultValue="False" Name="silindi" Type="Boolean"></asp:Parameter>
                    <asp:QueryStringParameter QueryStringField="id" DefaultValue="0" Name="referans_id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>


        <asp:Panel ID="pnlYorumYap" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <hr />
                    <asp:Label ID="lblYorumYap" runat="server" Text="Yorum Yap" CssClass="align-bottom" Font-Italic="True"> </asp:Label>
                    <br />
                    <asp:TextBox ID="txtYorum" runat="server" Height="106px" TextMode="MultiLine" Width="195px"></asp:TextBox>
                    <br />
                    <br />
                    IP ADRESİNİZ:
                    <asp:Label ID="lblIP" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="btnYorumGonder" runat="server" Text="Yorum Gönder" BackColor="#FACE35" CssClass="form-control" Width="133px" OnClick="btnYorumGonder_Click" />

                    <ajaxToolkit:ConfirmButtonExtender runat="server" ConfirmText="Bu yorumu göndermek istediğinizden emin misiniz?" BehaviorID="btnYorumGonder_ConfirmButtonExtender" TargetControlID="btnYorumGonder" ID="btnYorumGonder_ConfirmButtonExtender"></ajaxToolkit:ConfirmButtonExtender>
                    <asp:Label ID="lblMesaj" runat="server" ForeColor="Red"></asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
           

             

         
        </asp:Panel>
    </asp:Panel>
</asp:Content>
