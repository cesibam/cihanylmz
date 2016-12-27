<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="urundetay5.aspx.cs" Inherits="urundetay5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:DataList ID="DataList1" runat="server">

    <ItemTemplate>
    
    <div class="teli" style="margin-top:25px; background-color:rgba(219,219,219,1.00);"><asp:Image ID="Image1" runat="server" Height="400px" Width="400px" ImageUrl='<%#Eval("resim","resimler/{0}") %>' /></div>
    
    
    <div style="margin-left:450px; margin-top:-450px;"></div>
    <div style="margin-left:450px; margin-top:50px;">
        <asp:Label ID="Label1" 
            runat="server" Text="Özellikler" Font-Size="30px" ForeColor="#333333"></asp:Label></div>
            <div style="margin-left:480px; margin-top:15px;"><asp:Label ID="Label6" runat="server" Text="Poster Adı:" Font-Size="20px" ForeColor="Gray"></asp:Label></div>
    <div style="margin-left:500px; margin-top:15px;"><asp:Label ID="Label7"  runat="server"  ForeColor="Black"></asp:Label><%#Eval("ad") %></div>
      <div style="margin-left:480px; margin-top:15px;"><asp:Label ID="Label8" runat="server" Text="Fiyat:" Font-Size="20px" ForeColor="Gray"></asp:Label></div>
    <div style="margin-left:500px; margin-top:15px;"><asp:Label ID="Label9"  runat="server"  ForeColor="Black"></asp:Label><%#Eval("fiyat") %></div>
    <div style="margin-left:480px; margin-top:15px;"><asp:Label ID="Label2" runat="server" Text="Kategory" Font-Size="20px" ForeColor="Gray"></asp:Label></div>
    <div style="margin-left:500px; margin-top:15px;"><asp:Label ID="sis"  runat="server"  ForeColor="Black"></asp:Label><%#Eval("kategory") %></div>
     <div style="margin-left:480px; margin-top:15px;"><asp:Label ID="Label3" 
             runat="server" Text="HD" Font-Size="20px" ForeColor="Gray"></asp:Label></div>
     <div style="margin-left:500px; margin-top:15px;"><asp:Label ID="islem"  runat="server"  ForeColor="Black"></asp:Label><%#Eval("hd") %></div>
     <div style="margin-left:480px; margin-top:15px;"><asp:Label ID="Label4" 
             runat="server" Text="Boyutları" Font-Size="20px" ForeColor="Gray"></asp:Label></div>
     <div style="margin-left:520px; margin-top:15px;"><asp:Label ID="bel"  runat="server"  ForeColor="Black"></asp:Label><%#Eval("boyut") %></div>
      <div style="margin-left:480px; margin-top:15px;"><asp:Label ID="Label5" runat="server" Text="Adeti" Font-Size="20px" ForeColor="Gray"></asp:Label></div>
     <div style="margin-left:440px; margin-top:15px;">
         <asp:DropDownList style="margin-left:50px;" ID="gun" runat="server" 
             AutoPostBack="True">
             <asp:ListItem></asp:ListItem>
             <asp:ListItem>1</asp:ListItem>
             <asp:ListItem>2</asp:ListItem>
             <asp:ListItem>3</asp:ListItem>
             <asp:ListItem>4</asp:ListItem>
             <asp:ListItem>5</asp:ListItem>
             
                </asp:DropDownList></div>


      

        <div style="margin-left:1190px; margin-top:-200px; width:250px; margin-left:500px;">
            <asp:Button style="margin-left:450px;"  ID="giris" runat="server" Text="Sepete At" 
              CssClass="btn btn-lg btn-primary btn-block"   /></div>
                
    
    </ItemTemplate>

    </asp:DataList>
    
    
    
</asp:Content>

