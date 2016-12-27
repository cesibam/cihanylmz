<%@ Page Title="" Language="C#" Theme="Tasarim" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="hakkimizda" style="height:150px; margin-left:center; margin-top:100px; text-align:center;">
<p>
Lütfen seçmek istediğiniz sınav türüne tıklayın
</p>
<p>
Giriş yapmadıysanız lütfen giriş yapın aksi takdirde yönlendirilmeyeceksiniz.
</p>
<p>
Giriş yapmak için <a href="giriss.aspx" title="">tıklayın</a>
</p>

</div>
 <div style="margin-left:-190px; margin-top:200px; width:250px;">
            <asp:Button style="margin-left:250px; margin-top:-100px; text-decoration: none;
	color: #fff;
	font-weight: bold;
	padding: 12px 20px;
	font-size: 18px;
	border-radius: 10px;
	background-color: #666666;	
	box-shadow: 0 5px 5px #313131, 0 9px 0 #393939, 0px 9px 10px rgba(0,0,0,0.4), inset 0px 2px 9px rgba(255,255,255,0.2), inset 0 -2px 9px rgba(0,0,0,0.2);
	position: relative;
	border-bottom: 1px solid rgba(255,255,255,0.2);
	display: inline-block;
	font-family: Arial, Helvetica, sans;
	text-shadow: 0px -1px 0px rgba(0,0,0,0.2);"  ID="ygs" runat="server" Text="YGS"  link
                href="App_Themes/Tasarim/css/butoon.css" rel="stylesheet" type="text/css" onclick="ygs_Click" 
                /></div>




                <div style="margin-left:-190px;  width:250px;">
            <asp:Button style="margin-left:600px; margin-top:-95px; text-decoration: none;
	color: #fff;
	font-weight: bold;
	padding: 12px 20px;
	font-size: 18px;
	border-radius: 10px;
	background-color: #666666;	
	box-shadow: 0 5px 5px #313131, 0 9px 0 #393939, 0px 9px 10px rgba(0,0,0,0.4), inset 0px 2px 9px rgba(255,255,255,0.2), inset 0 -2px 9px rgba(0,0,0,0.2);
	position: relative;
	border-bottom: 1px solid rgba(255,255,255,0.2);
	display: inline-block;
	font-family: Arial, Helvetica, sans;
	text-shadow: 0px -1px 0px rgba(0,0,0,0.2);"  ID="lys" runat="server" Text="LYS" onclick="lys_Click"   
                /></div>



                 <div style="margin-left:-190px; margin-top:-45px; width:250px;">
            <asp:Button style="margin-left:950px; margin-top:-50px; text-decoration: none;
	color: #fff;
	font-weight: bold;
	padding: 12px 20px;
	font-size: 18px;
	border-radius: 10px;
	background-color: #666666;	
	box-shadow: 0 5px 5px #313131, 0 9px 0 #393939, 0px 9px 10px rgba(0,0,0,0.4), inset 0px 2px 9px rgba(255,255,255,0.2), inset 0 -2px 9px rgba(0,0,0,0.2);
	position: relative;
	border-bottom: 1px solid rgba(255,255,255,0.2);
	display: inline-block;
	font-family: Arial, Helvetica, sans;
	text-shadow: 0px -1px 0px rgba(0,0,0,0.2);"  ID="dgs" runat="server" Text="DGS" onclick="dgs_Click"   
                /></div>



                  <div style="margin-left:-190px; margin-top:-55px; width:150px;">
            <asp:Button style="margin-left:1250px; margin-top:9px; text-decoration: none;
	color: #fff;
	font-weight: bold;
	padding: 12px 20px;
	font-size: 18px;
	border-radius: 10px;
	background-color: #666666;	
	box-shadow: 0 5px 5px #313131, 0 9px 0 #393939, 0px 9px 10px rgba(0,0,0,0.4), inset 0px 2px 9px rgba(255,255,255,0.2), inset 0 -2px 9px rgba(0,0,0,0.2);
	position: relative;
	border-bottom: 1px solid rgba(255,255,255,0.2);
	display: inline-block;
	font-family: Arial, Helvetica, sans;
	text-shadow: 0px -1px 0px rgba(0,0,0,0.2);"  ID="kpss" runat="server" Text="KPSS" onclick="kpss_Click"   
                /></div>
</asp:Content>

