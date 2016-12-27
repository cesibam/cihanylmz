<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="uye.aspx.cs" Inherits="uye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 148px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <table class="style1" style="background-color:rgba(219,219,219,1.00); width:500px; height:400px;
         padding-left:100px; margin-left:300px; border-top-left-radius:5px; border-top-right-radius:5px;
			border-bottom-left-radius:5px; margin-top:50px; border-bottom-right-radius:5px; ">
        <tr>
            <td class="style2">
               <asp:Label ID="Label2" runat="server" style="margin-left:5px;" Text="Adınız:"></asp:Label> 
            </td>
            <td>
               <asp:TextBox ID="ad" style="width:260px; margin-top:15px;" runat="server" 
                    CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="ad" ErrorMessage="Bu Alan Boş Geçilemez!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
               <asp:Label ID="Label1" runat="server" style="margin-left:5px;" Text="Soyadınız:"></asp:Label> 
            </td>
            <td>
               <asp:TextBox ID="soyad" style="width:260px;" runat="server" 
                    CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="soyad" ErrorMessage="Bu Alan Boş Geçilemez!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
             <asp:Label ID="Label3" runat="server" style="margin-left:5px;" Text="Doğum Tarihiniz:"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:DropDownList style="margin-left:50px;" ID="gun" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="ay" runat="server">
                </asp:DropDownList>
                <asp:DropDownList ID="yil" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
             <asp:Label ID="Label4" runat="server" style="margin-left:5px;" Text="Cinsiyetiniz"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:RadioButton style="margin-left:70px;" ID="bay" runat="server" GroupName="cinsiyet" Text="Bay" />
                <asp:RadioButton ID="bayan" runat="server" GroupName="cinsiyet" Text="Bayan" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                 <asp:Label ID="Label5" runat="server" style="margin-left:5px;" Text="Kullanıcı Adınız:"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="k_adi" style="width:260px;" runat="server" 
                     CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="k_adi" ErrorMessage="Bu Alan Boş Geçilemez!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="la" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                 <asp:Label ID="Label6" runat="server" style="margin-left:5px;" Text="Şifreniz"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="sifre" style="width:260px; margin-top:-5px;" runat="server" 
                    CssClass="form-control"  TextMode="Password" BackColor="#FFFFCC"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="sifre" Display="Dynamic" 
                    ErrorMessage="Şifre Alanı Boş Geçilemez!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                 <asp:Label ID="Label7" style="margin-left:5px;" runat="server" Text="E-Postanız:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="e_mail" style="width:260px; margin-top:10px;" runat="server" 
                    CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>
                <asp:RegularExpressionValidator
            ID="RegularExpressionValidator1"
            runat="server"
            ValidationExpression="^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$"
            ControlToValidate="e_mail"
            ErrorMessage="Geçerli e-Posta Adresi Değil" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                 &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button style="margin-left:-50px; width:360px;" ID="giris" runat="server" Text="Kayıt Ol" 
              CssClass="btn btn-lg btn-primary btn-block" onclick="giris_Click"   />
            </td>
        </tr>
        <tr>
            <td class="style2">
            </td>
            <td>
                <asp:Label ID="ba" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button style="margin-left:-50px; width:360px;" ID="gir" runat="server" Text="GİRİŞ" 
              CssClass="btn btn-lg btn-primary btn-block" onclick="giris_Click"   />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </ItemTemplate>
    </asp:DataList>

</asp:Content>

