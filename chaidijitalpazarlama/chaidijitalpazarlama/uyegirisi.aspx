<%@ Page Title="" Language="C#" MasterPageFile="~/anasablon.Master" AutoEventWireup="true" CodeBehind="uyegirisi.aspx.cs" Inherits="chaidijitalpazarlama.uyegirisi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

          

                 
           
                      <div class="form-outline form-white mb-4">

                          <asp:Panel ID="pnlGiris" runat="server">
               <asp:Label ID="lblKulAdi" CssClass="form-label" for="typeEmailX" runat="server" Text="Kullanıcı Adı "></asp:Label><br />
                  <asp:TextBox ID="txtKulAdi" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                       
            

              <div class="form-outline form-white mb-4">
                
                <asp:Label ID="lblParola" CssClass="form-label" for="typePasswordX" runat="server" Text="Parola "></asp:Label><br />
                  <asp:TextBox ID="txtParola" CssClass="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
              </div>
               <asp:LinkButton ID="lnkbtnParolaHatirlat" runat="server">Parolamı Hatırlat</asp:LinkButton><br /> 
                <br />
               
                <asp:LinkButton ID="lnkbtnYeniKayit" runat="server">Yeni Kayıt</asp:LinkButton> 
                <br />

              <asp:Button ID="btnGiris" runat="server" Text="GİRİŞ" BackColor="#FACE35" CssClass="form-control form-control-lg" OnClick="btnGiris_Click" />
                <asp:Label ID="lblGirisMesaj" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                </asp:Panel>

</div>

                <asp:Panel ID="pnlKullanici" runat="server">
                    <asp:Label ID="lblKullanici" runat="server"></asp:Label>
                    <asp:Button ID="btnCikis" runat="server" CommandArgument="" OnClick="btnCikis_Click" OnClientClick="return confirm('Çıkmak istediğinizden emin misiniz?')" Text="GÜVENLİ ÇIKIŞ"/>
                    
                </asp:Panel>
            

              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>

            </div>     

          
        </div>
      </div>
    </div>
  </div>
</section>
</asp:Content>
