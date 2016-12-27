<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 123px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-left:200px;
			 margin-top:50px; ">
<tr>
<td>
    
    &nbsp;</tr>
</table>

    <table class="style1" style="background-color:rgba(219,219,219,1.00); width:550px; height:550px;
         padding-left:100px; margin-left:300px; ">
        <tr>
            <td class="style2">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" style="margin-left:5px;" Text="Adınız:"></asp:Label>
            </td>
            <td>
                 <asp:TextBox ID="ad" style="width:260px;" runat="server" 
                     CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="ad" ErrorMessage="Bu Alan Boş Geçilemez!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" style="margin-left:5px;" Text="Soyadınız:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="so" style="width:260px;" runat="server" 
                    CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="so" ErrorMessage="Bu Alan Boş Geçilemez!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label3" runat="server" style="margin-left:5px;" Text="E-posta"></asp:Label>
            </td>
            <td>
                  <asp:TextBox ID="ma" style="width:260px;" runat="server" 
                      CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="ma" ErrorMessage="Geçerli e-Posta Adresi Değil" 
                    
                    ValidationExpression="^([0-9a-zA-Z]([-\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$" />
            </td>
        </tr>
        <tr>
            <td class="style2"><asp:Label ID="Label4" runat="server" style="margin-left:5px;" Text="Mesajınız:"></asp:Label>
                &nbsp;</td>
            <td>
                 <asp:TextBox ID="msj" TextMode="multiline" Columns="50" Rows="5"
Height="101px" Width="253px"  runat="server" CssClass="form-control" BackColor="#FFFFCC" ></asp:TextBox>
                
            </td>
        </tr>
        <tr>
            <td class="style2">
                
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="msj" ErrorMessage="Bu Alan Boş Geçilemez!" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                <asp:Button style="margin-left:-60px;" ID="giris" runat="server" Text="Gönder" 
              CssClass="btn btn-lg btn-primary btn-block" onclick="giris_Click"  />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

