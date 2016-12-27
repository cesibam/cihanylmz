<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="urunler3.aspx.cs" Inherits="urunler3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="slider.css" rel="stylesheet" type="text/css" />

  
 <div id="wrapper" style="height:200px; margin-left:400px; margin-top:-430px;">
				<div id="slider-wrapper" style="height:200px;">        
					<div id="slider" class="nivoSlider" style="height:200px;">
						<img src="resimler/dgs1.png" alt="" />
						<img src="resimler/dgs2.png" alt=""/>
						<img src="resimler/dgs3.png" alt="" />
						<img src="resimler/dgs4.png" alt="" />
                        <img src="resimler/dgs5.png" alt="" />
                        <img src="resimler/dgs6.png" alt="" />
                        
					</div>        
				</div>
			</div>
			
<script type="text/javascript" src="lib/jquery-1.4.3.min.js"></script>
    <script type="text/javascript" src="lib/jquery.nivo.slider.pack.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $('#slider').nivoSlider();
        });
    </script>

    <asp:MultiView ID="MultiView1" runat="server"  ActiveViewIndex="0">
        <asp:View ID="View1" runat="server">
        
        <asp:DataList ID="DataList1" runat="server" style="margin-top:180px;" RepeatColumns="3" 
        RepeatDirection="Horizontal">
    <ItemTemplate>
     <div class="tel" style="float:left; width:220px; margin-top:80px; height:280px;">
     <div><a href="urundetay3.aspx?urun_id=<%# Eval("urun_id") %>">
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

