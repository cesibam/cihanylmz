<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="giriss.aspx.cs" Inherits="giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="hakkimizda" style="margin-right:85px; margin-top:30px;"><p>
Merhabalar, sınav zamanı yaklaştıkça herkesi biraz korku biraz endişe ve oldukça stres basar. 
Çalışmaya nerden başlayacağınızı bilemezsiniz danıştığınız herkes size farklı söyler nasıl 
çalışmanız gerektiğini bizzat kendiniz belirlemelisiniz. 
Şimdi önemli olan nerelerde eksiğiniz var bunları tesbit etmek. 
En zor kısmı hangi kitapları almalıyım bu kişi için çok zor birşeydir internette dolaşan kitaplar hakkındaki yorumlara bakarsanız yandınız !  
Bu site ise size doğru çalışma kitabı bulmakta klavuzluk edecektir. Başarınız mutluluğumuzdur..
<br>
Ürünlerimizi üye olmadan Göremezsiniz. Üye Olmak içinde Kayıt Ol'dan üye olabilirsiniz.
<br>
</p>

</div>
  <div class="giris">


<div class="k"></div>
<div class="ka">
<asp:Label ID="Label2" runat="server" style="margin-left:90px;" Text="Kullanıcı Adınız:"></asp:Label> 
     <asp:TextBox ID="k_adiii" style="width:180px; margin-left:50px;" CssClass="form-control" 
         runat="server"   BackColor="#FFFFCC"></asp:TextBox>
    <asp:Label ID="Label4" runat="server"></asp:Label>
        </div>
<div class="s">
   
<div class="ka">
<asp:Label ID="Label1" runat="server" style="margin-left:50px;" Text="Şifreniz:"></asp:Label> 
    <asp:TextBox ID="sifree" style="width:180px; margin-left:-20px;" 
        CssClass="form-control" runat="server" 
          TextMode="Password" BackColor="#FFFFCC"></asp:TextBox>
    <asp:Label ID="Label5" runat="server"></asp:Label>
        </div>
<div class="btn">
    <asp:Button style="margin-left:-5px; width:180px;" ID="girs" runat="server" Text="Giriş" 
              CssClass="btn btn-lg btn-primary btn-block" onclick="girs_Click"   /></div>
              <div>
                   <asp:Button style="margin-left:7px; width:180px; margin-top:50px;" ID="kayit" runat="server" Text="Kayıt Ol" 
              CssClass="btn btn-lg btn-primary btn-block" onclick="kayit_Click"     /></div>
<div class="h">
    </div>
        <div class="l">
            </div>
            <div style=" padding-left:20px; font-size:14px; padding-top:10px;">
                </div>
</div>
</asp:Content>

