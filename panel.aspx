<%@ Page Title="" Language="C#" Theme="Tasarim" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="panel.aspx.cs" Inherits="panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table class="style1">
            <tr>
                <td>
                    &nbsp;<asp:GridView ID="GridView1" runat="server">
                    </asp:GridView>
                </td>
            </tr>
        </table>
  <div>
    
        <table style="height:500px; width:400px;background-color:rgba(219,219,219,1.00); margin-left:880px; 
                 margin-top:-280px;">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label1" style="margin-left:150px;" runat="server" Font-Bold="True"  
                        ForeColor="Black" Text="Kayıt Ekleme İşlemleri"></asp:Label>
                </td>
            </tr>
            <tr>
                
                     
                
                <td >
                <asp:Label ID="Label3" runat="server" style="margin-left:120px;" Text="Ürün Adı:"></asp:Label>
                    <asp:TextBox ID="urun_ad"  style="margin-left:120px;"  runat="server" CssClass="form-control" Width="200px" Height="30px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    
                </td>
                <td>
                <asp:Label ID="Label4" runat="server" style="margin-left:-200px;" Text="Ürün Fiyatı:"></asp:Label>
                    <asp:TextBox ID="fiyat" style="margin-left:-200px;" runat="server" CssClass="form-control" 
                        Width="200px" Height="30px" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    
                </td>
                <td>
                <asp:Label ID="Label6" runat="server" style="margin-left:-200px;" Text="Kategory:"></asp:Label>
                    <asp:TextBox ID="marka" style="margin-left:-200px;"  runat="server" CssClass="form-control" 
                         Width="200px" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                   
                </td>
                <td>
                 <asp:Label ID="Label5" runat="server" style="margin-left:-200px;" Text="Ürün Resmi:"></asp:Label>
                    <asp:FileUpload ID="resim" style="margin-left:-200px;" runat="server"/>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="ekleme" Width="200px" style="margin-left:-200px;"  runat="server" Text="Ekle" 
                        CssClass="btn btn-primary" onclick="ekleme_Click"/>
                </td>
            </tr>
            
            </table>
            
&nbsp;<br />
        <table style="height:250px; width:400px; margin-top:-520px; background-color:rgba(219,219,219,1.00); margin-left:465px; ">
            <tr>
            
                <td class="style4" colspan="2">
                    <asp:Label ID="Label8"  runat="server" style="margin-left:150px;" Font-Bold="True"  
                        ForeColor="Black" Text="Kayıt Silme İşlemleri"></asp:Label>
                </td>
            </tr>
            <tr>
            <td><asp:Label ID="Label2" runat="server" style="margin-left:5px;" Text="Ürün Adı:"></asp:Label></td>
                <td class="style3">
                 
                    <asp:TextBox ID="urun_sil"  runat="server" CssClass="form-control" style="margin-left:0px;" Height="30px" 
                        Width="200px" ></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="sil" Width="50px" runat="server"  style="margin-left:-100px;" Text="Sil" 
                        CssClass="btn btn-primary" onclick="sil_Click"/>
                </td>
            </tr>
        </table>
        <br />
        
        <br />
       
    <div style="margin-left:500px;"> 
        <asp:Button ID="cks" CssClass="btn btn-primary" 
           runat="server"  Text="Çıkış Yap" 
                        Width="321px" onclick="cks_Click"  /></div>
    </div>
</asp:Content>

