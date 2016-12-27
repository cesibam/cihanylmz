<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="anasayfa.aspx.cs" Inherits="anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="hakkimizda" style="height:150px; margin-left:250px; margin-top:30px; text-align:center;">
<p>
Çalışma kitaplarını soru bankalarını vs. görüntülemek için giriş yapın.
</p>
<p>
Giriş yapmak için <a href="giriss.aspx" title="">tıklayın</a>
</p>
<p>
Üye değildeniz yukarda Kayıt Ol menüsüne tıklayın.
</p>

<p style="font-size:xx-large; margin-top:50px; margin-left:-5px; ">Karitatür Köşesi</p>

</div>
    <link href="slider.css" rel="stylesheet" type="text/css" />


    <asp:MultiView ID="MultiView1" runat="server"  ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        
        <asp:DataList ID="DataList1" runat="server" style="margin-top:20px;" RepeatColumns="3" 
        RepeatDirection="Horizontal">
    <ItemTemplate>
     <div class="tel" style="float:left; width:220px; margin-top:80px; height:280px;">
     <div><a href="urundetay5.aspx?urun_id=<%# Eval("urun_id") %>">
						<figure><img width=200px; style="margin-left:10px; margin-top:15px;" height=250px; src='<%#Eval("resim","resimler/{0}") %>'/></figure>
					</a></div>   
<div class="fiyat" style="margin-top:10px; padding-left:55px;">
    <asp:Label ID="ad" runat="server"  Font-Size="20px" 
        ForeColor="Black"><%#Eval("ad")%></asp:Label>
   </div> 
</div>
             
 </ItemTemplate>
    </asp:DataList>
            </div>
<div style="margin-left:530px; margin-top:70px;">  
            <asp:Button ID="arama" Height="35px"  
                runat="server" Text="Çıkış Yap"  CssClass="btn btn-primary"  Width="200px" onclick="arama_Click"  
                  />  </div>
    </asp:View>

    </asp:MultiView>
</asp:Content>

