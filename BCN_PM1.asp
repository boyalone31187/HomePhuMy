<!-- InstanceBegin template="/Templates/TemplateMainFull.dwt.asp" codeOutsideHTMLIsLocked="false" --><%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>

<!-- InstanceBeginEditable name="doctitle" -->
<title>TRANG THONG TIN NOI BO</title>
<!-- InstanceEndEditable -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="description" content="Default Description" />
<meta name="keywords" content="Magento, Varien, E-commerce" />
<meta name="robots" content="*" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" >
<link rel="icon" href="../images/icon5.jpg" type="image/x-icon"/>
<link rel="shortcut icon" href="../images/icon5.jpg" type="image/x-icon"/>
<!--[if lt IE 7]>
<script type="text/javascript">
//<![CDATA[
    var BLANK_URL = 'http://freedemo.templates-master.com/js/blank.html';
    var BLANK_IMG = 'http://freedemo.templates-master.com/js/spacer.gif';
//]]>
</script>
<![endif]-->
<link rel="stylesheet" type="text/css" href="../css/styles.css" media="all" />
<link rel="stylesheet" type="text/css" href="../css/custom.css" media="all" />
<link href="../css/menu.css" rel="stylesheet" type="text/css">
<!--
 <script type="text/javascript">

        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-34045887-2']);
        _gaq.push(['_trackPageview']);

        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();

    </script>
-->
 <link rel="stylesheet" href="../css/jquery-ui.css" />
<script src="../css/jquery-1.9.1.js"></script>
<script src="../css/jquery-ui.js"></script>
<script>
$(function() {
$( "#tabs" ).tabs();
});
$(function() {
$( "#tabscp" ).tabs();
});
$(function() {
$( "#tabstb" ).tabs();
});
$(function() {
$( "#tabslct" ).tabs();
});
$(function() {
$( "#tabslct1" ).tabs();
});
$(function() {
$( "#tabslk" ).tabs();
});
$(function() {
$( "#tabstt" ).tabs();
});

$(function() {
$( "#tabsungdung" ).tabs();
});

$(function() {
$( "#tabsungdung1" ).tabs();
});
$(function() {
$( "#tabsungdung2" ).tabs();
});
$(function() {
$( "#tabsungdung3" ).tabs();
});

$(function() {
$( "#tabsungdung4" ).tabs();
});

$(function() {
$( "#tabsungdung5" ).tabs();
});

$(function() {
$( "#tabsungdung6" ).tabs();
});

</script>
<!--[if lt IE 8]>
<link rel="stylesheet" type="text/css" href="http://freedemo.templates-master.com/skin/frontend/default/f001/css/styles-ie.css" media="all" />
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="http://freedemo.templates-master.com/skin/frontend/default/f001/css/ie8.css" media="all" />
<![endif]-->
<!--[if lt IE 7]>
<script type="text/javascript" src="http://freedemo.templates-master.com/js/lib/ds-sleight.js"></script>
<script type="text/javascript" src="http://freedemo.templates-master.com/skin/frontend/base/default/js/ie6.js"></script>
<![endif]-->

<script type="text/javascript">
//<![CDATA[
optionalZipCountries = [];
//]]>
</script>
<script type="text/javascript">
// Created by: Justin Barlow | http://www.netlobo.com
// This script downloaded from www.JavaScriptBank.com

function toggleLayer(whichLayer) {
  var elem, vis;
  if(document.getElementById) // this is the way the standards work
    elem = document.getElementById(whichLayer);
  else if(document.all) // this is the way old msie versions work
      elem = document.all[whichLayer];
  else if(document.layers) // this is the way nn4 works
    elem = document.layers[whichLayer];
  vis = elem.style;
  // if the style.display value is blank we try to figure it out here
  if(vis.display==''&&elem.offsetWidth!=undefined&&elem.offsetHeight!=undefined)
    vis.display = (elem.offsetWidth!=0&&elem.offsetHeight!=0)?'block':'none';
  vis.display = (vis.display==''||vis.display=='block')?'none':'block';
}
</script>

<%
intLocale = SetLocale(1033)

public mindate,maxdate
		mindate=date
	If (weekday(date) =2) Then
		mindate=dateadd("d",0,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	If (weekday(date) =3) Then
		mindate=dateadd("d",-1,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	If (weekday(date) =4) Then
		mindate=dateadd("d",-2,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	If (weekday(date) =5) Then
		mindate=dateadd("d",-3,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	If (weekday(date) =6) Then
		mindate=dateadd("d",-4,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	If (weekday(date) =7) Then
		mindate=dateadd("d",-5,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	If (weekday(date) =1) Then
		mindate=dateadd("d",1,mindate)
	    maxdate = dateAdd("d",6,mindate)
     End If
	 
%>
<%
	dim tbao
	tbao = request.QueryString("tbao")
	if tbao = "khongquyen" then
	%>
	<script language="javascript">
		alert("Xin lỗi, Bạn chưa đăng nhập ! hay Bạn không có quyền thực hiện chức năng này !");
	</script>
	<%end if%>
<script language="javascript" type="text/javascript">
    function ShowTime() {
        var dt = new Date();
        var strMonth = "";

        var strMonth = new Array("01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12");
        var strlanguage = "vi-VN";
        if (strlanguage == "vi-VN") {

            strDay = new Array("Chủ nhật", "Thứ hai", "Thứ ba", "Thứ tư", "Thứ năm", "Thứ sáu", "Thứ bảy");
        }
        else {

            strDay = new Array("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday");
        }
        var date = strDay[dt.getDay()] + ", ";
        var years = dt.getYear();
        var days = dt.getDate();
        if (years < 1900) years += 1900;
        if (days < 10)
            date += "0" + dt.getDate() + "/" + strMonth[dt.getMonth()] + "/" + years;
        else
            date += "" + dt.getDate() + "/" + strMonth[dt.getMonth()] + "/" + years;
        var phut = dt.getMinutes();
        if (phut < 10) {
            phut = "0" + phut;
        }
        document.getElementById("timer").innerHTML = date + ", " + dt.getHours() + ":" + phut + ":" + dt.getSeconds() + " GMT+7";
		/*document.getElementById("ngaysx").innerHTML = " ( đến ngày " + (days -1) + "/" + dt.getMonth() + "/" + years + " )";*/
        window.setTimeout("ShowTime()", 1000);
    } 
</script>
<SCRIPT RUNAT=SERVER LANGUAGE=VBSCRIPT>					
function DoDateTime(str, nNamedFormat, nLCID)				
	dim strRet								
	dim nOldLCID								
										
	strRet = str								
	If (nLCID > -1) Then							
		oldLCID = Session.LCID						
	End If									
										
	On Error Resume Next							
										
	If (nLCID > -1) Then							
		Session.LCID = nLCID						
	End If									
										
	If ((nLCID < 0) Or (Session.LCID = nLCID)) Then				
		strRet = FormatDateTime(str, nNamedFormat)			
	End If									
										
	If (nLCID > -1) Then							
		Session.LCID = oldLCID						
	End If									
										
	DoDateTime = strRet							
End Function									
</SCRIPT>
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
</head>
<body onLoad="ShowTime();">
<div class="wrapper">
    	<div class="page">
        	<div class="header-container">
			    <div class="header">
			        <h1 class="logo"><img src="../images/bannergenco.PNG" alt="EVNGENCO 3" /></h1>
			        <div class="quick-access">
            			<div class="shop-access">
							<ul class="links">
            					<li class="firsttimer"><span id="timer">Label</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="../images/login.jpg" width="16" height="16"/>&nbsp;Đăng nhập: <%if Session("CodeError")<> "0" then%>Chưa đăng nhập<%else%><%=Session("TEN_DD")%><%end if%></li>
						    </ul>
							<ul class="links">
            					<li class="first" ><a href="../SiteMap/HomeSite.asp" title="Sitemap" >Sitemap</a></li>
					            <li ><a href="http://mail.genco3.com" target="_blank" title="Webmail" class="top-link-wishlist">Web mail</a></li>
					            <li ><a href="../SiteMap/Lienhe.asp" title="Lienhe" class="top-link-cart">Liên hệ</a></li>
						        <%
								ktra=0
								ktraLich=0
								ktraCVT=0
								ktraCVTU=0
								do while not rsroll.eof
								if rsroll("idmn")="17" then
								ktra=1
								end if
								if rsroll("idmn")="1" then
								ktraLich=1
								end if
								if rsroll("idmn")="2" and rsroll("ReadWrite")="1" then
								ktraCVT=1
								end if
								if rsroll("idmn")="16" then
								ktraCVTU=1
								end if
								
								rsroll.movenext
								loop
								if rsroll.recordcount>0 then
								rsroll.movefirst
								end if
								if ktra=1 then
								%>
								<li ><a href="../Admin/HomeAdmin.asp" title="Quản trị phân quyền hệ thống" class="top-link-checkout">Hệ thống</a></li>
								<%end if%>
					            <li class=" last" ><a href="../Login.asp" title="Log In" ><%if Session("CodeError")<> "0" then%>Đăng nhập<%else%>Thoát<%end if%></a></li>	
						    </ul>
			            </div>
			        </div>
				</div>

<!-- MenuBar -->
<div align="center">
    <div class="menubar-block" style="width:1010px">
         
<link rel="stylesheet" type="text/css" href="../Scripts/menubar/ddsmoothmenu.css" />
<link rel="stylesheet" type="text/css" href="../Scripts/menubar/ddsmoothmenu-v.css" />
<script type="text/javascript" src="../Scripts/menubar/ddsmoothmenu.js"></script>
<script type="text/javascript">
    ddsmoothmenu.init({
        mainmenuid: "smoothmenu1",
        orientation: 'h',
        classname: 'ddsmoothmenu',
        contentsource: "markup"
    })
</script>
<div class="menubar-bg"  style="width:1010px">
    <div class="container_16"  style="width:1010px">
        <div class="grid_13"  style="width:1010px" align="center">
            <div id="smoothmenu1" class="ddsmoothmenu">
                <ul><li class='selected'><a href='../index.html' title='Trang chủ' class='icon_home'><img class='is_img_menubar onLaw2-icon1 onLaw1-Home' src='../images/home.png' alt='Trang chủ' style="padding-top:5px"></a></li>
				<li style="width:100px"><a href='../Gioithieu/Gioithieu.asp'>Giới thiệu</a><ul><li><a href='../Gioithieu/Tongquan.asp'>Tổng quan</a></li><li><a href='../Gioithieu/Sodo.asp'>Sơ đồ tổ chức</a></li><li><a href='../Gioithieu/Hoatdong.asp'>Lĩnh vực hoạt động</a></li></ul></li>
				<li ><a href='../Lichtuan/HomeLT.asp'>Lịch tuần</a><ul><li><a href='../Lichtuan/ListDK.asp'>Đăng ký lịch</a></li><li><a href='../Lichtuan/ViewLT.asp' target="_blank">Xem lịch công tác tuần</a></li></ul></li>
				<li ><a href='../CongviecTuan/ListCongviec.asp'  >Công việc tuần</a><ul><li><%if ktraCVT=1 then%><a href='../CongviecTuan/ListUpCV.asp'>Nhập mới công việc</a><%else%><a href='../home.asp?tbao=khongquyen'>Nhập mới công việc</a><%end if%></li><li><%if ktraCVTU=1 then%><a href='../CongviecTuan/ListUpKQ.asp'>Cập nhật kết quả thực hiện</a><%else%><a href='../home.asp?tbao=khongquyen'>Cập nhật kết quả thực hiện</a><%end if%></li><li><a href='../CongviecTuan/ListCongviec.asp'>Xem danh sách công việc giải quyết tuần</a></li><li><a href='../gbt_ktsx/List_cv.asp'>Cập nhật kết quả thực hiện GBT KT-SX</a></li></ul></li>
				<li ><a href='../TieuchuanISO/HomeISO.asp'>Tiêu chuẩn ISO</a><ul><li><a href='../TieuchuanISO/TC_Genco3.asp'>Tiêu chuẩn ISO Tổng Công ty Phát điện 3</a></li><li><a href='../TieuchuanISO/TC_Bocongthuong.asp'>Tiêu chuẩn Bộ Công thương ban hành</a></li><li><a href='../TieuchuanISO/TC_TCVN.asp'>Tiêu chuẩn Việt nam (TCVN)</a></li></ul></li>
				<li ><a href='../Phapche/HomeQD.asp'  >Văn bản pháp quy</a><ul><li><a href='../Phapche/HomeQD.asp'>Văn bản quản lý nội bộ Tổng Công ty</a></li><li><a href='../Phapche/HomePL.asp'>Văn bản Luật - Pháp chế Tổng Công ty</a></li><li><a href='http://phapche.evn.com.vn/Pages/Search.aspx?scope=1' target="_blank">Văn bản Tập đoàn</a></li></ul></li>
				<li ><a href='../TinTuc/HomeNew.asp'  >Tin tức - sự kiện</a><ul><li><a href='../TinTuc/HomeNB.asp'>Bản tin nội bộ</a></li><li><a href='../TinTuc/HomeND.asp'>Bản tin ngành điện</a></li></ul></li>
				<li ><a href='../Danhba/HomeDB.asp'  >Danh bạ</a><ul><li><a href='../Danhba/HomeGEN.asp'>Cơ quan Tổng Công ty</a></li><li><a href='../Danhba/HomeDV.asp'>Các đơn vị</a></li><li><a href='http://home.evn.com.vn/tin-tuc/Pages/chi-tiet-tin.aspx?nid=486' target="_blank">Cơ quan Tập đoàn</a></li>	</ul></li>
				<li ><a href='../Thongbao/ListTB.asp'>Thông báo</a><ul><li><a href='../Thongbao/HomeTB.asp'>Thông báo Tổng Công ty</a></li><li><a href='../Thongbao/HomeGB.asp'>Kết luận giao ban Tổng Công ty</a></li><li><a href='../Thongbao/HomePM.asp'>Kết luận giao ban KT-SX</a></li>	</ul></li>
				</ul>
                <br style="clear: left" />
            </div>
        </div>
    </div>
</div>
    </div>
	</div>
    <!-- /Menubar -->

<div style="height:35px"></div>
 <div class="main-container col2-right-layout">
            <div class="main">
                <div class="col-mainfull">
				<!-- InstanceBeginEditable name="LeftColumn" -->
				 <%
				 dim ctrinh,nga1,than1,na1,ngay1,ngay2
				 if request.QueryString("ngay") = "" then
				 	nga1 = day(dateadd("d",-1,date))
				 else
				 	nga1 = request.QueryString("ngay")
				 end if
				 if request.QueryString("thang") = "" then
				 	than1 = month(dateadd("d",-1,date))
				 else
				 	than1 = request.QueryString("thang")
				 end if
				 if request.QueryString("nam") = "" then
				 	na1 = year(dateadd("d",-1,date))
				 else
				 	na1 = request.QueryString("nam")
				 end if
				 ngay1 =  than1 & "/" & nga1 & "/" & na1				 
				 cngay1=nga1
				 if nga1<10 then
					 cngay1="0"+cstr(cngay1)
				 end if
				 if than1<10 then
					 cngay1=cstr(cngay1)+"/"+"0"+cstr(than1)+"/"+cstr(na1)
				 else
					 cngay1=cstr(cngay1)+"/"+cstr(than1)+"/"+cstr(na1)
				 end if
				 if than1=1 and nga1=1 then
					nga=nga1
					than=than1
					na=na1	
				 else
					 nga = nga1-1
					if nga=0 then
						 than = than1-1
						 nga=31
					else
						than=than1	
					end if
					if than=0 then
					 	na=na1-1
					else
						na=na1	
					 end if
					' na = year(dateadd("d",-1,ngay1))
				 end if
				 ngay =  nga1 & "/" & than1 & "/" & na1				 
				 
Set cn = Server.CreateObject("ADODB.Connection")
cn.Open "Provider=SQLOLEDB; Data Source=10.144.0.2; Initial Catalog=QLTHSL_TTD; User ID=homephumy; Password=homephumy"
set rs1=server.CreateObject("adodb.recordset")
set rs1eoh=server.CreateObject("adodb.recordset")
set rs2eoh=server.CreateObject("adodb.recordset")
set rs3eoh=server.CreateObject("adodb.recordset")
set rs2=server.CreateObject("adodb.recordset")
set rs3=server.CreateObject("adodb.recordset")
set rs4=server.CreateObject("adodb.recordset")
set rs5=server.CreateObject("adodb.recordset")
set rs11=server.CreateObject("adodb.recordset")
set rs21=server.CreateObject("adodb.recordset")
set rs31=server.CreateObject("adodb.recordset")
set rs11t=server.CreateObject("adodb.recordset")
set rs21t=server.CreateObject("adodb.recordset")
set rs31t=server.CreateObject("adodb.recordset")
set rs1t=server.CreateObject("adodb.recordset")
set rs2t=server.CreateObject("adodb.recordset")
set rs3t=server.CreateObject("adodb.recordset")
set rs4t=server.CreateObject("adodb.recordset")

set rs1lk=server.CreateObject("adodb.recordset")
set rs2lk=server.CreateObject("adodb.recordset")
set rs3lk=server.CreateObject("adodb.recordset")
set rs4lk=server.CreateObject("adodb.recordset")

set rs11lk=server.CreateObject("adodb.recordset")
set rs21lk=server.CreateObject("adodb.recordset")
set rs31lk=server.CreateObject("adodb.recordset")

set rs1ld=server.CreateObject("adodb.recordset")
set rs2ld=server.CreateObject("adodb.recordset")
set rs3ld=server.CreateObject("adodb.recordset")
set rs4ld=server.CreateObject("adodb.recordset")

rs1.open "Select * from  TTD_BCN_PX where ngay ='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='11'",cn,1
rs1eoh.open "Select * from  TTD_BCN_PX where ngay ='1' and thang='1' and nam='" & na1 &"' and idtomay='11'",cn,1
rs2eoh.open "Select * from  TTD_BCN_PX where ngay ='1' and thang='1' and nam='" & na1 &"' and idtomay='12'",cn,1
rs3eoh.open "Select * from  TTD_BCN_PX where ngay ='1' and thang='1' and nam='" & na1 &"' and idtomay='13'",cn,1
rs2.open "Select * from  TTD_BCN_PX where ngay ='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='12'",cn,1
rs3.open "Select * from  TTD_BCN_PX where ngay ='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='13'",cn,1
rs4.open "Select * from  TTD_BCN_PX where ngay ='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='14'",cn,1
rs5.open "Select * from  TTD_BCN_PX where ngay ='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='15'",cn,1
rs11.open "Select top 1 * from  TTD_BCN_PX where ngay <='"& nga &"' and thang='"& than &"' and nam='" & na &"' and idtomay='11' order by ngay desc",cn,1
rs21.open "Select top 1 * from  TTD_BCN_PX where ngay <='"& nga &"' and thang='"& than &"' and nam='" & na &"' and idtomay='12' order by ngay desc",cn,1
rs31.open "Select top 1 * from  TTD_BCN_PX where ngay <='"& nga &"' and thang='"& than &"' and nam='" & na &"' and idtomay='13' order by ngay desc",cn,1

rs1t.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='11'",cn,1
rs2t.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='12'",cn,1
rs3t.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='13'",cn,1
rs4t.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(t7) as t7, sum(t8) as t8, sum(ncs_m3) as ncs_m3, sum(ncs_btu) as ncs_btu,sum(tvh_h) as tvh_h, sum(tvh_p) as tvh_p, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='14'",cn,1
rs11t.open "Select sum(EOH2) as EOH2 from  TTD_BCN_PX where thang='"& than &"' and nam='" & na &"' and idtomay='11'",cn,1
rs21t.open "Select sum(EOH2) as EOH2 from  TTD_BCN_PX where thang='"& than &"' and nam='" & na &"' and idtomay='12'",cn,1
rs31t.open "Select sum(EOH2) as EOH2 from  TTD_BCN_PX where thang='"& than &"' and nam='" & na &"' and idtomay='13'",cn,1

rs11lk.open "Select sum(EOH2) as EOH2 from  TTD_BCN_PX where nam='" & na1 &"' and idtomay='11'",cn,1
rs21lk.open "Select sum(EOH2) as EOH2 from  TTD_BCN_PX where nam='" & na1 &"' and idtomay='12'",cn,1
rs31lk.open "Select sum(EOH2) as EOH2 from  TTD_BCN_PX where nam='" & na1 &"' and idtomay='13'",cn,1

rs1lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<='"& than1-1 &"' and nam='" & na1 &"'))  and idtomay='11'",cn,1
rs2lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<='"& than1-1 &"' and nam='" & na1 &"')) and idtomay='12'",cn,1
rs3lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<='"& than1-1 &"' and nam='" & na1 &"')) and idtomay='13'",cn,1
rs4lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(t7) as t7, sum(t8) as t8, sum(ncs_m3) as ncs_m3, sum(ncs_btu) as ncs_btu,sum(tvh_h) as tvh_h, sum(tvh_p) as tvh_p, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<='"& than1-1 &"' and nam='" & na1 &"')) and idtomay='14'",cn,1

rs1ld.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where nam<'" & na1 &"' and idtomay='11'",cn,1
rs2ld.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where nam<'" & na1 &"' and idtomay='12'",cn,1
rs3ld.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where nam<'" & na1 &"' and idtomay='13'",cn,1
rs4ld.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(t7) as t7, sum(t8) as t8, sum(ncs_m3) as ncs_m3, sum(ncs_btu) as ncs_btu,sum(tvh_h) as tvh_h, sum(tvh_p) as tvh_p, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d from  TTD_BCN_PX where nam<'" & na1 &"' and idtomay='14'",cn,1
'
set rsevn=server.CreateObject("adodb.recordset")
rsevn.open "Select top 1 dsx,tong_pm1,tong_pm4,tong_pm21,nam from K_SANLUONG_KH_EVN order by nam desc",cn,1

set pm21rs1lk=server.CreateObject("adodb.recordset")
set pm21rs2lk=server.CreateObject("adodb.recordset")
set pm21rs3lk=server.CreateObject("adodb.recordset")
set pm21rs4lk=server.CreateObject("adodb.recordset")
set pm21rs5lk=server.CreateObject("adodb.recordset")
set pm21rs6lk=server.CreateObject("adodb.recordset")
pm21rs1lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH1) as EOH1, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd, sum(MW_CHAY_GAS) as MW_CHAY_GAS, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='21'",cn,1
pm21rs2lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH1) as EOH1, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd, sum(MW_CHAY_GAS) as MW_CHAY_GAS, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='22'",cn,1
pm21rs3lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH1) as EOH1, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd, sum(MW_CHAY_GAS) as MW_CHAY_GAS, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl, sum(tvh_h) as tvh_h, sum(tvh_p) as tvh_p from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='23'",cn,1
pm21rs4lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH1) as EOH1, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd, sum(MW_CHAY_GAS) as MW_CHAY_GAS, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='24'",cn,1
pm21rs5lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH1) as EOH1, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd, sum(MW_CHAY_GAS) as MW_CHAY_GAS, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='25'",cn,1
pm21rs6lk.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd, sum(tdn_td) as tdn_td, sum(tdn_kt) as tdn_kt, sum(mw_chay_dau) as mw_chay_dau, sum(t7) as t7, sum(t8) as t8, sum(ncs_m3) as ncs_m3, sum(ncs_btu) as ncs_btu,sum(tvh_h) as tvh_h, sum(tvh_p) as tvh_p, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(shd_ttd) as shd_ttd, sum(MW_CHAY_GAS) as MW_CHAY_GAS, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl, sum(tvh_h) as tvh_h, sum(tvh_p) as tvh_p, sum(EOH1) as EOH1 from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='26'",cn,1

set pm4rs1lk=server.CreateObject("adodb.recordset")
set pm4rs2lk=server.CreateObject("adodb.recordset")
set pm4rs3lk=server.CreateObject("adodb.recordset")
pm4rs1lk.open "Select sum(tdnsx_dc_kt) as tdnsx_dc_kt, sum(tdnsx_g) as tdnsx_g, sum(tdnsx_d) as tdnsx_d, sum(mw_chay_gas) as mw_chay_gas, sum(mw_chay_gas_kt) as mw_chay_gas_kt, sum(mw_chay_dau) as mw_chay_dau,sum(mw_chay_dau_kt) as mw_chay_dau_kt, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl, sum(tyle_tdk) as tyle_tdk, sum(tyle_tdd) as tyle_tdd, sum(shk_ttd) as shk_ttd, sum(shd_ttd) as shd_ttd, sum(EOH1) as EOH1 from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='41'",cn,1
pm4rs2lk.open "Select sum(tdnsx_dc_kt) as tdnsx_dc_kt, sum(tdnsx_g) as tdnsx_g, sum(tdnsx_d) as tdnsx_d, sum(mw_chay_gas) as mw_chay_gas, sum(mw_chay_gas_kt) as mw_chay_gas_kt, sum(mw_chay_dau) as mw_chay_dau,sum(mw_chay_dau_kt) as mw_chay_dau_kt, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl, sum(tyle_tdk) as tyle_tdk, sum(tyle_tdd) as tyle_tdd, sum(shk_ttd) as shk_ttd, sum(shd_ttd) as shd_ttd, sum(EOH1) as EOH1 from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='42'",cn,1
pm4rs3lk.open "Select sum(tdnsx_dc_kt) as tdnsx_dc_kt, sum(tdnsx_g) as tdnsx_g, sum(tdnsx_d) as tdnsx_d, sum(mw_chay_gas) as mw_chay_gas, sum(mw_chay_gas_kt) as mw_chay_gas_kt, sum(mw_chay_dau) as mw_chay_dau,sum(mw_chay_dau_kt) as mw_chay_dau_kt, sum(dau_tt) as dau_tt, sum(vhk_h) as vhk_h, sum(vhk_p) as vhk_p, sum(vhd_h) as vhd_h, sum(vhd_p) as vhd_p, sum(EOH2) as EOH2, sum(ptb_k)/count(ptb_k) as ptb_k, sum(ptb_d)/count(ptb_d) as ptb_d, sum(mw_xssc) as mw_xssc, sum(mw_xsdp) as mw_xsdp, sum(mw_xssctx) as mw_xssctx, sum(mw_xsscl) as mw_xsscl, sum(ncs_m3) as ncs_m3, sum(ncs_btu) as ncs_btu, sum(tvh_p) as tvh_p, sum(tvh_h) as tvh_h, sum(tyle_tdk) as tyle_tdk, sum(tyle_tdd) as tyle_tdd, sum(shk_ttd) as shk_ttd, sum(shd_ttd) as shd_ttd, sum(EOH1) as EOH1 from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and nam='" & na1 &"')) and idtomay='43'",cn,1

pm4=pm4rs1lk("tdnsx_dc_kt")+pm4rs2lk("tdnsx_dc_kt")+pm4rs3lk("tdnsx_dc_kt")
pm1=rs1lk("tdn_sx")+rs2lk("tdn_sx")+rs3lk("tdn_sx")+rs4lk("tdn_sx")
pm21=pm21rs1lk("tdn_sx")+pm21rs2lk("tdn_sx")+pm21rs3lk("tdn_sx")+pm21rs4lk("tdn_sx")+pm21rs5lk("tdn_sx")+pm21rs6lk("tdn_sx")
pt=((cdbl(pm4)+cdbl(pm1)+cdbl(pm21))*100000)/rsevn("dsx")
%>

	<SCRIPT language="Javascript">
  function ShowDate(date_form, date_field,thang,nam,ngay)
  {

	url='ntnmc_calendar.asp?date_form=' + date_form + '&date_field=' + date_field  + '&thang=' + thang  + '&nam=' + nam + '&ngay=' + ngay ;
	window.open(url,"_blank","height=260,width=330, resizable=No,left=400%,top=200%,status=No,toolbar=No,menubar=No,address=no");
	
  }
 
</SCRIPT>
<script language="javascript">
				
				 function OpenFormUp(idt){
				  url='InsertTHVHPM1.asp?id=' + idt ;
  			 	  window.open(url ,"xxxx", "toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=yes,copyhistory=no,width=500,height=250,top="+ (screen.height - 250)/2 +",left=" + (screen.width - 500)/2);
				 }
</script>
				
				<style type="text/css">
				#bangchinh{ border-left:1px solid #ffcc99;border-top:1px solid #ffcc99;border-bottom:1px solid #ffcc99;border-right:1px solid #ffcc99}
				#bangphu{ border-left:1px solid #ffcc99;border-top:1px solid #ffcc99;border-bottom:1px solid #ffcc99;border-right:1px solid #ffcc99}
				#bangphu tr th{border-top:1px solid #ffcc99;border-right:1px solid #ffcc99;border-bottom:1px solid #ffcc99;}
				#bangphu tr td{border-right:1px solid #ffcc99;border-bottom:1px solid #ffcc99;}
				.tdechinh{ height:30px; text-align: center; font-family:Tahoma; font-size:16px; font-weight:bold; color:red;vertical-align:bottom}
				.Hide{ visibility:hidden;}
				</style>
<div class="box recently">
<div class="category-head" style="padding-left:0px">
        <h2 class="subtitlemenu"><img id="btChitiet" src="Images/manual_icon.png" border="1" style="padding-top:0px" width="20"/>&nbsp;<strong>BÁO CÁO NGÀY SẢN XUẤT ĐIỆN &raquo;</strong> &nbsp;<a href="BCN_PM1.asp" target="_self" title="Các tổ máy Phú Mỹ 1">Phú Mỹ 1</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="BCN_PM4.asp" target="_self" title="Các tổ máy Phú Mỹ 4">Phú Mỹ 4</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="BCN_PM21.asp" target="_self" title="Các tổ máy Phú Mỹ 2.1 và 2.1MR">Phú Mỹ 2.1 &amp;2.1MR</a>
		<span class="noidung" style="padding-left:8%; font-weight:600">Các NMĐ Phú Mỹ thực hiện so với kế hoạch tính đến ngày <%=ngay1%> đạt: <%if rs1.recordcount >0 then%><%=formatnumber(pt,2)%>&nbsp;%<%else%>(chưa đọc số liệu ngày này!)<%end if%></span>
		</h2>
    </div>			
</div>					
     <table id="bangchinh" width="998" cellpadding="0" cellspacing="0">
		 <tr><td class="tdechinh">TÌNH HÌNH SẢN XUẤT ĐIỆN CÁC TỔ MÁY PHÚ MỸ 1</td></tr>
			 <form id="form1" name="form1" action="BCN_PM1.asp" method="get">
				 <tr><td class="noidung">Chọn ngày&nbsp;
				 <input name="DATE_" type="text" align="top" id="DATE_" style="text-align: left" size="8" value="<%=ngay%>"  readonly="TRUE">  
  <a href="javascript:ShowDate('form1','DATE_','thang','nam','ngay');" class="style23"><img src="Images/lich.bmp" alt="Chọn ngày" border="0" align="baseline"></a>
 
  <input name="ngay" type="hidden" class="XPBarBg" id="ngay" style="text-align: left"  value="<%=(nga1)%>"  size="7" readonly >
  <input name="thang" type="hidden" class="XPBarBg" id="thang" style="text-align: left" size="7"  value="<%=(than1)%>"  readonly><input name="nam" type="hidden" class="XPBarBg" id="nam" style="text-align: left" size="7"  value="<%=(na1)%>"  readonly>
  				&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="  Xem  " alt="Xem" name="btSubmit" /> <span style="padding-left:10px"><a href="Export_PM1.asp?ngay=<%=(nga1)%>&thang=<%=(than1)%>&nam=<%=(na1)%>" target="_blank" title="Các tổ máy Phú Mỹ 1">[Xuất file]</a></span> <%if session("ten_nv")="khoint" or session("ten_nv")="ngadtp" or session("ten_nv")="minhlt" or session("ten_nv")="thaond" or session("ten_nv")="hanhntn" then%> <span style="padding-left:10px"><%if rs1.recordcount>0 then%><a  href="javascript:OpenFormUp('<%=rs1("id_tt")%>');"  title="Các tổ máy Phú Mỹ 1">[Cập nhật tình hình vận hành]</a><%end if%></span><%end if%>
				 </td></tr>
			 </form>
		 <tr>
		 	<td class="noidung" style="padding-top:5px">
				<table id="bangphu" width="998" border="0" cellspacing="0" cellpadding="0" align="center">
				<%IF RS1.RECORDCOUNT>0 then%>
				 <tr>
				   	<th class="noidung" height="25" width="220" bgcolor="#FFFF99"><strong>CHỈ TIÊU</strong></th>
					<th class="noidung" width="50" bgcolor="#FFFF99"><strong>Đơn vị </strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT11</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT12</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT13</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>ST14</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>Tổng ngày</strong></th>
					<th width="1" bgcolor="#ffcc99"></th>
					<th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT11</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT12</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT13</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>ST14</strong></th>
				    <th class="noidung" width="65" bgcolor="#FFFF99"><strong>Tổng tháng</strong></th>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Tổng sản lượng điện</td>
				    <td class="noidung">MWh</td><!--Replace(sMyString, "-", " ")-->
					<%session.LCID = 1034%>
				    <td class="noidungr"><%=formatnumber(rs1("tdn_sx"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("tdn_sx"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("tdn_sx"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("tdn_sx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs1("tdn_sx")+rs2("tdn_sx")+rs3("tdn_sx")+rs4("tdn_sx"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%=formatnumber(rs1t("tdn_sx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2t("tdn_sx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3t("tdn_sx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs4t("tdn_sx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs1t("tdn_sx")+rs2t("tdn_sx")+rs3t("tdn_sx")+rs4t("tdn_sx"),0)%>&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;- Sản lượng điện phát bằng khí</td>
				    <td class="noidung"></td>
				    <td class="noidungr"><%if rs1("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs1("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs2("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs3("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs4("dn_sxg")=0 then%>&nbsp;<%else%><%=formatnumber(rs4("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
				    <td class="noidungr"><%if rs1t("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs1t("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2t("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs2t("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3t("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs3t("dn_sxg"),0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%if rs1t("dn_sxg")+rs2t("dn_sxg")+rs3t("dn_sxg")=0 then%>-<%else%><%=formatnumber(rs1t("dn_sxg")+rs2t("dn_sxg")+rs3t("dn_sxg"),0)%><%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;- Sản lượng điện phát bằng dầu</td>
				    <td class="noidung"></td>
				    <td class="noidungr"><%if rs1("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs1("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs2("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs3("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs4("dn_sxd")=0 then%>&nbsp;<%else%><%=formatnumber(rs4("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd"))=0 then%>-<%else%><%=formatnumber(rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if rs1t("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs1t("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2t("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs2t("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3t("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs3t("dn_sxd"),0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%if rs1t("dn_sxd")+rs2t("dn_sxd")+rs3t("dn_sxd")=0 then%>-<%else%><%=formatnumber(rs1t("dn_sxd")+rs2t("dn_sxd")+rs3t("dn_sxd"),0)%><%end if%>&nbsp;</td>
				  </tr>
				  <%
				  slkhi=replace(cstr(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg")),",",".")
					sldau=replace(cstr(rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd")),",",".")
					sldh=replace(cstr(rs4("tdn_sx")),",",".")
					slngay=replace(cstr(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg")+rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd")+rs4("tdn_sx")),",",".")
				  %>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;- Sản lượng điện phát bằng ST14</td>
				    <td class="noidung"></td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr"><%if rs4("tdn_sx")=0 then%>-<%else%><%=formatnumber(rs4("tdn_sx"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs4("tdn_sx")=0 then%>-<%else%><%=formatnumber(rs4("tdn_sx"),0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr"><%if rs4("tdn_sx")=0 then%>-<%else%><%=formatnumber(rs4t("tdn_sx"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs4("tdn_sx")=0 then%>-<%else%><%=formatnumber(rs4t("tdn_sx"),0)%><%end if%>&nbsp;</td>
				  </tr>
				  <%'INSERT SẢN LƯỢNG VÀO TABLE BCN_PHUMY - BỔ SUNG NGÀY 07/07/2014
  					
			'	  set rs_insertbcn=server.CreateObject("adodb.recordset")
			'	  rs_insertbcn.open "SELECT * FROM BCN_PHUMY where day(ngay)='" &nga1& "' and month(ngay)='" &than1& "' and year(ngay)='" &na1& "' and madv='4'",cn,1
			'	if rs_insertbcn.recordcount=0 then
			'		strsql="insert into BCN_PHUMY(madv,ngay,cngay,slngay,slkhi,sldau,sldh) values('4','" & ngay1 & "','" & cngay1 & "','" & slngay & "','" & slkhi & "','" & sldau & "','" & sldh & "')"
			'	else
			'		strsql="update BCN_PHUMY set slngay='" & slngay & "',slkhi='" & slkhi & "',sldau='" & sldau & "',sldh='" & sldh & "' where madv='4' and cngay='" & cngay1 & "'"
			'	end if
			'	cn.execute strsql 
				  %>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Điện tự dùng:<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">MWh</td>
					<td class="noidungr"><%if (rs1("tdn_td")+rs1("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs1("tdn_td")+rs1("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs2("tdn_td")+rs2("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs2("tdn_td")+rs2("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs3("tdn_td")+rs3("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs3("tdn_td")+rs3("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%if (rs4("tdn_td")+rs4("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs4("tdn_td")+rs4("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1("tdn_td")+rs1("tdn_kt")+rs2("tdn_td")+rs2("tdn_kt")+rs3("tdn_td")+rs3("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs1("tdn_td")+rs1("tdn_kt")+rs2("tdn_td")+rs2("tdn_kt")+rs3("tdn_td")+rs3("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if (rs1t("tdn_td")+rs1t("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs1t("tdn_td")+rs1t("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs2t("tdn_td")+rs2t("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs2t("tdn_td")+rs2t("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs3t("tdn_td")+rs3t("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs3t("tdn_td")+rs3t("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%if (rs4t("tdn_td")+rs4t("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs4t("tdn_td")+rs4t("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1t("tdn_td")+rs1t("tdn_kt")+rs2t("tdn_td")+rs2t("tdn_kt")+rs3t("tdn_td")+rs3t("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs1t("tdn_td")+rs1t("tdn_kt")+rs2t("tdn_td")+rs2t("tdn_kt")+rs3t("tdn_td")+rs3t("tdn_kt"),1)%><%end if%>&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:94px">- Dầu</span></td>
				    <td class="noidung"></td>
					<td class="noidungr"><%if rs1("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs1("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs2("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs3("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1("mw_chay_dau")+rs2("mw_chay_dau")+rs3("mw_chay_dau"))=0 then%>-<%else%><%=formatnumber(rs1("mw_chay_dau")+rs2("mw_chay_dau")+rs3("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if rs1t("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs1t("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2t("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs2t("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3t("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs3t("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1t("mw_chay_dau")+rs2t("mw_chay_dau")+rs3t("mw_chay_dau"))=0 then%>-<%else%><%=formatnumber(rs1t("mw_chay_dau")+rs2t("mw_chay_dau")+rs3t("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Điện tự dùng nhận từ lưới</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%if (rs4("t7")+rs4("t8"))=0 then%>-<%else%><%=formatnumber((rs4("t7")+rs4("t8"))/1000,1)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%if (rs4t("t7")+rs4t("t8"))=0 then%>-<%else%><%=formatnumber((rs4t("t7")+rs4t("t8"))/1000,1)%><%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Tỷ lệ điện tự dùng khí:<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">%</td>
				    <td class="noidungr"><%if rs1("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs1("tdn_td")+rs1("tdn_kt"))/rs1("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs2("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs2("tdn_td")+rs2("tdn_kt"))/rs2("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs3("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs3("tdn_td")+rs3("tdn_kt"))/rs3("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr" rowspan="2"><%if rs4("tdn_sx")=0 then%>-<%else%><%=formatnumber(((rs4("tdn_td")+rs4("tdn_kt"))/rs4("tdn_sx"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if (rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg"))=0 then%>-<%else%><%=formatnumber(((rs1("tdn_td")+rs1("tdn_kt")+rs2("tdn_td")+rs2("tdn_kt")+rs3("tdn_td")+rs3("tdn_kt"))/(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg")))*100,2)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
				    <td class="noidungr"><%if rs1t("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs1t("tdn_td")+rs1("tdn_kt"))/rs1t("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs2t("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs2t("tdn_td")+rs2("tdn_kt"))/rs2t("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs3t("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs3t("tdn_td")+rs3("tdn_kt"))/rs3t("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr" rowspan="2"><%if rs4t("tdn_sx")=0 then%>-<%else%><%=formatnumber(((rs4t("tdn_td")+rs4t("tdn_kt"))/rs4t("tdn_sx"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if (rs1t("dn_sxg")+rs2t("dn_sxg")+rs3t("dn_sxg")+rs4t("dn_sxg"))=0 then%>-<%else%><%=formatnumber(((rs1t("tdn_td")+rs1t("tdn_kt")+rs2t("tdn_td")+rs2t("tdn_kt")+rs3t("tdn_td")+rs3t("tdn_kt"))/(rs1t("dn_sxg")+rs2t("dn_sxg")+rs3t("dn_sxg")+rs4t("dn_sxg")))*100,2)%><%end if%>&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:138px">- Dầu</span></td>
				    <td class="noidung">%</td>
					<td class="noidungr"><%if rs1("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs1("mw_chay_dau")/rs1("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs2("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs2("mw_chay_dau")/rs2("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs3("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs3("mw_chay_dau")/rs3("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if (rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd"))=0 then%>-<%else%><%=formatnumber(((rs1("mw_chay_dau")+rs2("mw_chay_dau")+rs3("mw_chay_dau"))/(rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd")))*100,2)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if rs1t("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs1t("mw_chay_dau")/rs1t("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs2t("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs2t("mw_chay_dau")/rs2t("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs3t("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs3t("mw_chay_dau")/rs3t("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if (rs1t("dn_sxd")+rs2t("dn_sxd")+rs3t("dn_sxd")+rs4t("dn_sxd"))=0 then%>-<%else%><%=formatnumber(((rs1t("mw_chay_dau")+rs2t("mw_chay_dau")+rs3t("mw_chay_dau"))/(rs1t("dn_sxd")+rs2t("dn_sxd")+rs3t("dn_sxd")+rs4t("dn_sxd")))*100,2)%><%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Nhiên liệu tiêu thụ:</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Lưu lượng khí tại LOCAL</span></td>
				    <td class="noidung">m3</td>
					<td class="noidungr"><%=formatnumber(rs1("gas_tieuthu"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("gas_tieuthu"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("gas_tieuthu"),0)%>&nbsp;</td>
					<td class="noidungr"></td>
					<td class="noidungr"><%=formatnumber(rs1("gas_tieuthu")+rs2("gas_tieuthu")+rs3("gas_tieuthu"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Lưu lượng khí tại trạm PM</span></td>
				    <td class="noidung">m3</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(rs4("ncs_m3"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(rs4t("ncs_m3"),0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Nhiệt lượng khí tại trạm PM</span></td>
				    <td class="noidung">tr.BTU</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(rs4("ncs_btu"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(rs4t("ncs_btu"),0)%>&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Dầu</span></td>
				    <td class="noidung">kg</td>
					<td class="noidungr"><%if rs1("dau_tt")=0 then%>-<%else%><%=formatnumber(rs1("dau_tt"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("dau_tt")=0 then%>-<%else%><%=formatnumber(rs2("dau_tt"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("dau_tt")=0 then%>-<%else%><%=formatnumber(rs3("dau_tt"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"></td>
					<td class="noidungr"><%if (rs1("dau_tt")+rs2("dau_tt")+rs3("dau_tt"))=0 then%>-<%else%><%=formatnumber(rs1("dau_tt")+rs2("dau_tt")+rs3("dau_tt"),0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%if (rs1t("dau_tt")+rs2t("dau_tt")+rs3t("dau_tt"))=0 then%>-<%else%><%=formatnumber(rs1t("dau_tt")+rs2t("dau_tt")+rs3t("dau_tt"),0)%><%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Suất hao nhiên liêu:</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- SHN tra theo đặc tuyến</span></td>
				    <td class="noidung">BTU/kWh</td>
					<td class="noidungr"><%if rs1("shk_ttd")=0 then%>-<%else%><%=formatnumber(rs1("shk_ttd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("shk_ttd")=0 then%>-<%else%><%=formatnumber(rs2("shk_ttd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("shk_ttd")=0 then%>-<%else%><%=formatnumber(rs3("shk_ttd"),0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%if rs1("shk_ttd")+rs2("shk_ttd")+rs3("shk_ttd")=0 then%>-<%else%>
					<%de=0 
							if rs1("shk_ttd")>0 then
								de=de+1
							end if 
							if rs2("shk_ttd")>0 then
								de=de+1
							end if
							if rs3("shk_ttd")>0 then
								de=de+1
							end if%>
							<%=formatnumber((rs1("shk_ttd")+rs2("shk_ttd")+rs3("shk_ttd"))/de,0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- SHN thực hiện phân bổ theo CSBQ</span></td>
				    <td class="noidung">BTU/kWh</td>
					<%
					c17=formatnumber(rs1("shk_ttd"),0)
					d17=formatnumber(rs2("shk_ttd"),0)
					e17=formatnumber(rs3("shk_ttd"),0)
					g17=formatnumber((rs1("shk_ttd")+rs2("shk_ttd")+rs3("shk_ttd"))/3,0)
					g18=formatnumber(rs4("ncs_btu")/(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg"))*1000,0)
					%>
					<td class="noidungr"><%if rs1("shk_ttd")=0 then%>-<%else%><%=formatnumber(g18/g17*c17,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("shk_ttd")=0 then%>-<%else%><%=formatnumber(g18/g17*d17,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("shk_ttd")=0 then%>-<%else%><%=formatnumber(g18/g17*e17,0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%if rs4("ncs_btu")=0 then%>-<%else%><%=formatnumber(rs4("ncs_btu")/(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg"))*1000,0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<%'	B/A*1000
					A=formatnumber(rs1t("dn_sxg")+rs2t("dn_sxg")+rs3t("dn_sxg"),0)
					B=formatnumber(rs4t("ncs_btu"),0)
					%>
					<td class="noidungr"><%if A=0 then%>-<%else%><%=formatnumber(B/A*1000,0)%><%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- SHD thực hiện phân bố theo CSBQ</span></td>
				    <td class="noidung">g/kWh</td>
					<%de=0 
							if rs1("shd_ttd")>0 then
								de=de+1
							end if 
							if rs2("shd_ttd")>0 then
								de=de+1
							end if
							if rs3("shd_ttd")>0 then
								de=de+1
							end if
							if de=0 then
								de=3
							end if

					d1=formatnumber((rs1("shd_ttd")+rs2("shd_ttd")+rs3("shd_ttd"))/de,0)
					d4=formatnumber(rs1("dn_sxd")+rs2("dn_sxd")+rs3("dn_sxd")+rs4("dn_sxd"),0)
					d5=formatnumber(rs1("dau_tt")+rs2("dau_tt")+rs3("dau_tt"),0)
					d3=formatnumber(rs1("shd_ttd"),0)
					if d4=0 then
						d2=0
					else
						d2=formatnumber(d5/d4,0)
					end if
					%>
					<td class="noidungr"><%if d1=0 then%>-<%else%><%=formatnumber(d2/d1*d3,0)%><%end if%>&nbsp;</td>
					<%
					d3=formatnumber(rs2("shd_ttd"),0)
					%>
					<td class="noidungr"><%if d1=0 then%>-<%else%><%=formatnumber(d2/d1*d3,0)%><%end if%>&nbsp;</td>
					<%
					d3=formatnumber(rs3("shd_ttd"),0)
					%>
					<td class="noidungr"><%if d1=0 then%>-<%else%><%=formatnumber(d2/d1*d3,0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%if d2=0 then%>-<%else%><%=formatnumber(d2,0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- SHD tra theo đặc tuyến</span></td>
				    <td class="noidung">g/kWh</td>
					<td class="noidungr"><%if rs1("shd_ttd")=0 then%>-<%else%><%=formatnumber(rs1("shd_ttd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("shd_ttd")=0 then%>-<%else%><%=formatnumber(rs2("shd_ttd"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("shd_ttd")=0 then%>-<%else%><%=formatnumber(rs3("shd_ttd"),0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%if rs1("shd_ttd")+rs2("shd_ttd")+rs3("shd_ttd")=0 then%>-<%else%>
					<%de=0 
							if rs1("shd_ttd")>0 then
								de=de+1
							end if 
							if rs2("shd_ttd")>0 then
								de=de+1
							end if
							if rs3("shd_ttd")>0 then
								de=de+1
							end if%>
					<%=formatnumber((rs1("shd_ttd")+rs2("shd_ttd")+rs3("shd_ttd"))/de,0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
<!--  				  
				   <tr>
				    <td class="noidungl" height="20">&nbsp;Số giờ VH thực tế (OH):<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">Giờ</td>
					<td class="noidungr"><%if rs1("vhk_p")=0 then%><%=formatnumber(rs1("vhk_h"),0)%><%else%><%=formatnumber(rs1("vhk_h"),0)%>:<%=formatnumber(rs1("vhk_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("vhk_p")=0 then%><%=formatnumber(rs2("vhk_h"),0)%><%else%><%=formatnumber(rs2("vhk_h"),0)%>:<%=formatnumber(rs2("vhk_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("vhk_p")=0 then%><%=formatnumber(rs3("vhk_h"),0)%><%else%><%=formatnumber(rs3("vhk_h"),0)%>:<%=formatnumber(rs3("vhk_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%if rs4("tvh_p")=0 then%><%=formatnumber(rs4("tvh_h"),0)%><%else%><%=formatnumber(rs4("tvh_h"),0)%>:<%=formatnumber(rs4("tvh_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber((rs1("vhk_h")+rs2("vhk_h")+rs3("vhk_h"))+(rs1("vhk_p")+rs2("vhk_p")+rs3("vhk_p"))/60,0)%><%if ((cint(rs1("vhk_p"))+cint(rs2("vhk_p"))+cint(rs3("vhk_p"))) - 60) >0 then%>:<%=(rs1("vhk_p")+rs2("vhk_p")+rs3("vhk_p")) - 60%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if rs1t("vhk_p")=0 then%><%=formatnumber(rs1t("vhk_h"),0)%><%else%><%=formatnumber(rs1t("vhk_h"),0)%>:<%=formatnumber(rs1t("vhk_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2t("vhk_p")=0 then%><%=formatnumber(rs2t("vhk_h"),0)%><%else%><%=formatnumber(rs2t("vhk_h"),0)%>:<%=formatnumber(rs2t("vhk_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3t("vhk_p")=0 then%><%=formatnumber(rs3t("vhk_h"),0)%><%else%><%=formatnumber(rs3t("vhk_h"),0)%>:<%=formatnumber(rs3t("vhk_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%if rs4t("tvh_p")=0 then%><%=formatnumber(rs4t("tvh_h"),0)%><%else%><%=formatnumber(rs4t("tvh_h"),0)%>:<%=formatnumber(rs4t("tvh_p"),0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber((rs1t("vhk_h")+rs2t("vhk_h")+rs3t("vhk_h"))+(rs1t("vhk_p")+rs2t("vhk_p")+rs3t("vhk_p"))/60,0)%><%if ((cint(rs1t("vhk_p"))+cint(rs2t("vhk_p"))+cint(rs3t("vhk_p"))) - 60) >0 then%>:<%=(rs1t("vhk_p")+rs2t("vhk_p")+rs3t("vhk_p")) - 60%><%end if%>&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:146px">- Dầu</span></td>
				    <td class="noidung">Giờ</td>
					<td class="noidungr"><%if rs1("vhd_p")=0 and rs1("vhd_h")=0 then%>-<%else%><%if rs1("vhd_p")=0 then%><%=formatnumber(rs1("vhd_h"),0)%><%else%><%=formatnumber(rs1("vhd_h"),0)%>:<%=formatnumber(rs1("vhd_p"),0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("vhd_p")=0 and rs2("vhd_h")=0 then%>-<%else%><%if rs2("vhd_p")=0 then%><%=formatnumber(rs2("vhd_h"),0)%><%else%><%=formatnumber(rs2("vhd_h"),0)%>:<%=formatnumber(rs2("vhd_p"),0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("vhd_p")=0 and rs3("vhd_h")=0 then%>-<%else%><%if rs3("vhd_p")=0 then%><%=formatnumber(rs3("vhd_h"),0)%><%else%><%=formatnumber(rs3("vhd_h"),0)%>:<%=formatnumber(rs3("vhd_p"),0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs1("vhd_h")+rs2("vhd_h")+rs3("vhd_h")+rs1("vhd_p")+rs2("vhd_p")+rs3("vhd_p") >0 then%><%=formatnumber((rs1("vhd_h")+rs2("vhd_h")+rs3("vhd_h"))+(rs1("vhd_p")+rs2("vhd_p")+rs3("vhd_p"))/60,0)%><%if ((cint(rs1("vhd_p"))+cint(rs2("vhd_p"))+cint(rs3("vhd_p"))) - 60) >0 then%>:<%=(rs1("vhd_p")+rs2("vhd_p")+rs3("vhd_p")) - 60%><%end if%><%else%>-<%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if rs1t("vhd_p")=0 and rs1t("vhd_h")=0 then%>-<%else%><%if rs1t("vhd_p")=0 then%><%=formatnumber(rs1t("vhd_h"),0)%><%else%><%=formatnumber(rs1t("vhd_h"),0)%>:<%=formatnumber(rs1t("vhd_p"),0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2t("vhd_p")=0 and rs2t("vhd_h")=0 then%>-<%else%><%if rs2t("vhd_p")=0 then%><%=formatnumber(rs2t("vhd_h"),0)%><%else%><%=formatnumber(rs2t("vhd_h"),0)%>:<%=formatnumber(rs2t("vhd_p"),0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3t("vhd_p")=0 and rs3t("vhd_h")=0 then%>-<%else%><%if rs3t("vhd_p")=0 then%><%=formatnumber(rs3t("vhd_h"),0)%><%else%><%=formatnumber(rs3t("vhd_h"),0)%>:<%=formatnumber(rs3t("vhd_p"),0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs1t("vhd_h")+rs2t("vhd_h")+rs3t("vhd_h")+rs1t("vhd_p")+rs2t("vhd_p")+rs3t("vhd_p") >0 then%><%=formatnumber((rs1t("vhd_h")+rs2t("vhd_h")+rs3t("vhd_h"))+(rs1t("vhd_p")+rs2t("vhd_p")+rs3t("vhd_p"))/60,0)%><%if ((cint(rs1t("vhd_p"))+cint(rs2t("vhd_p"))+cint(rs3t("vhd_p"))) - 60) >0 then%>:<%=(rs1t("vhd_p")+rs2t("vhd_p")+rs3t("vhd_p")) - 60%><%end if%><%else%>-<%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Số giờ vận hành tương đương (EOH)</td>
				    <td class="noidung">Giờ</td>
					<td class="noidungr"><%if nga<>nga1 then%><%=formatnumber(rs1("EOH2")-rs11("EOH2"),0)%><%else%><%=formatnumber(rs1("EOH2")-124257,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if nga<>nga1 then%><%=formatnumber(rs2("EOH2")-rs21("EOH2"),0)%><%else%><%=formatnumber(rs2("EOH2")-126272,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if nga<>nga1 then%><%=formatnumber(rs3("EOH2")-rs31("EOH2"),0)%><%else%><%=formatnumber(rs3("EOH2")-129935,0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if cint(than) <> cint(than1) then%>a<%=formatnumber(rs1t("EOH2")-rs11t("EOH2"),0)%><%else%><%=formatnumber(rs1("EOH2")-124257,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if cint(than) <> cint(than1) then%><%=formatnumber(rs2t("EOH2")-rs21t("EOH2"),0)%><%else%><%=formatnumber(rs2("EOH2")-126272,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if cint(than) <> cint(than1) then%><%=formatnumber(rs3t("EOH2")-rs31t("EOH2"),0)%><%else%><%=formatnumber(rs3("EOH2")-129935,0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>-->
				   <tr>
				    <td class="noidungl" height="20">&nbsp;Công suất bình quân:<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">MW</td>
					<td class="noidungr"><%=formatnumber(rs1("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%=formatnumber(rs4("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber((rs1("ptb_k")+rs2("ptb_k")+rs3("ptb_k"))/3,1)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%=formatnumber(rs1t("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2t("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3t("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%=formatnumber(rs4t("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber((rs1t("ptb_k")+rs2t("ptb_k")+rs3t("ptb_k"))/3,1)%>&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:138px">- Dầu</span></td>
				    <td class="noidung">MW</td>
					<td class="noidungr"><%if rs1("ptb_d")>0 then%><%=formatnumber(rs1("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("ptb_d")>0 then%><%=formatnumber(rs2("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("ptb_d")>0 then%><%=formatnumber(rs3("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>					
					<td class="noidungr"><%if (rs1("ptb_d")+rs2("ptb_d")+rs3("ptb_d"))/3 > 0 then%><%=formatnumber((rs1("ptb_d")+rs2("ptb_d")+rs3("ptb_d"))/3,1)%><%else%>-<%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%if rs1t("ptb_d")>0 then%><%=formatnumber(rs1t("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2t("ptb_d")>0 then%><%=formatnumber(rs2t("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3t("ptb_d")>0 then%><%=formatnumber(rs3t("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>					
					<td class="noidungr"><%if (rs1t("ptb_d")+rs2t("ptb_d")+rs3t("ptb_d"))/3 > 0 then%><%=formatnumber((rs1t("ptb_d")+rs2t("ptb_d")+rs3t("ptb_d"))/3,1)%><%else%>-<%end if%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Dầu D.O tồn trữ lúc 24h00 (báo EVN)</td>
				    <td class="noidung">kg</td>
					<td class="noidungr"><%=formatnumber(rs1("do_ton_evn"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("do_ton_evn"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("do_ton_evn"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs4("do_ton_evn"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs5("do_ton_evn"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				<%else%>
				<tr>
				    <td class="noidung" height="20">Không tìm thấy số liệu !</td>
				  </tr>
				<%end if%>
			  </table>
			</td>
		</tr>
<%IF RS1.RECORDCOUNT>0 then%>
				 <%'Lấy lũy kế tháng từ báo cáo thống kê tháng của Ban KH Biểu 04 ĐIỆN SẢN XUẤT CỦA CÁC NHÀ MÁY ĐIỆN - BỔ SUNG NGÀY 07/07/2014
				  set rs_lknam=server.CreateObject("adodb.recordset")
				  set rs11_lknam=server.CreateObject("adodb.recordset")
				  set rs12_lknam=server.CreateObject("adodb.recordset")
				  set rs13_lknam=server.CreateObject("adodb.recordset")
				  set rs14_lknam=server.CreateObject("adodb.recordset")
				  rs_lknam.open "SELECT top 33 * FROM K_BIEU04SANLUONG_SXD where thang <'" & than1 & "' and nam='" &na1& "' order by thang desc",cn,1
				  if rs_lknam.recordcount=0 then
						rs11_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='11'",cn,1		
						rs12_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='12'",cn,1	
						rs13_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='13'",cn,1	
						rs14_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"' and idtomay='14'",cn,1	
				  else
						rs11_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and thang> '" & rs_lknam("thang") & "' and nam='" & na1 &"'))  and idtomay='11'",cn,1	
						rs12_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and thang> '" & rs_lknam("thang") & "' and nam='" & na1 &"'))  and idtomay='12'",cn,1	
						rs13_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and thang> '" & rs_lknam("thang") & "' and nam='" & na1 &"'))  and idtomay='13'",cn,1	
						rs14_lknam.open "Select sum(tdn_sx) as tdn_sx, sum(dn_sxg) as dn_sxg, sum(dn_sxd) as dn_sxd from  TTD_BCN_PX where ((ngay<='"& nga1 &"' and thang='"& than1 &"' and nam='" & na1 &"') or (thang<'"& than1 &"' and thang> '" & rs_lknam("thang") & "' and nam='" & na1 &"'))  and idtomay='14'",cn,1	
				  end if			  
				  g_lkgt11=0
				  g_lkgt12=0
				  g_lkgt13=0
				  d_lkgt11=0
				  d_lkgt12=0
				  d_lkgt13=0
				  g_lkst14=0
				  lktongnam=0
				  do while not rs_lknam.eof
				  	if rs_lknam("nl_vh")=18 then
						g_lkgt11=rs_lknam("sl_lk")
					elseif rs_lknam("nl_vh")=19 then
						g_lkgt12=rs_lknam("sl_lk")
					elseif rs_lknam("nl_vh")=20 then
						g_lkgt13=rs_lknam("sl_lk")
					elseif rs_lknam("nl_vh")=22 then
						d_lkgt11=rs_lknam("sl_lk")
					elseif rs_lknam("nl_vh")=23 then
						d_lkgt12=rs_lknam("sl_lk")
					elseif rs_lknam("nl_vh")=24 then
						d_lkgt13=rs_lknam("sl_lk")
					elseif rs_lknam("nl_vh")=25 then
						g_lkst14=rs_lknam("sl_lk")
					end if
				  rs_lknam.movenext
				  loop
				  g_lkgt11=g_lkgt11/1000+rs11_lknam("dn_sxg")
				  g_lkgt12=g_lkgt12/1000+rs12_lknam("dn_sxg")
				  g_lkgt13=g_lkgt13/1000+rs13_lknam("dn_sxg")
				  d_lkgt11=d_lkgt11/1000+rs11_lknam("dn_sxd")
				  d_lkgt12=d_lkgt12/1000+rs12_lknam("dn_sxd")
				  d_lkgt13=d_lkgt13/1000+rs13_lknam("dn_sxd")
				  g_lkst14=g_lkst14/1000+rs14_lknam("tdn_sx")
				  lktongnam=g_lkgt11 + g_lkgt12 + g_lkgt13 + d_lkgt11 + d_lkgt12 + d_lkgt13 + g_lkst14
				%>
		<tr><td class="tdechinh" style="padding-top:5px">TÌNH HÌNH SẢN XUẤT ĐIỆN LŨY KẾ CÁC TỔ MÁY PHÚ MỸ 1 <%'=formatnumber(lktongnam,0)%></td></tr>
		<tr>
		 	<td class="noidung">
				<table id="bangphu" width="998" border="0" cellspacing="0" cellpadding="0" align="center">
				 <tr>
				   	<th class="noidung" height="25" width="220" bgcolor="#FFFF99"><strong>CHỈ TIÊU</strong></th>
					<th class="noidung" width="50" bgcolor="#FFFF99"><strong>Đơn vị </strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT11</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT12</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT13</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>ST14</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>TC <%=na%></strong></th>
					<th width="1" bgcolor="#ffcc99"></th>
					<th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT11</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT12</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>GT13</strong></th>
				    <th class="noidung" width="60" bgcolor="#FFFF99"><strong>ST14</strong></th>
				    <th class="noidung" width="65" bgcolor="#FFFF99"><strong>TC từ khi<br />lắp đặt</strong></th>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Tổng sản lượng điện</td>
				    <td class="noidung">MWh</td>
					<%if nga1=31 and than1=12 and na1=2014 then%>
					 <td class="noidungr"><%=formatnumber(1678675811/1000,0)%>&nbsp;</td><!--rs1lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(1649943287/1000,0)%>&nbsp;</td><!--rs2lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(1697389689/1000,0)%>&nbsp;</td><!--rs3lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(2709639589/1000,0)%>&nbsp;</td><!--rs4lk("tdn_sx")-->
					<td class="noidungr"><%=formatnumber(lktongnam-66.624 ,0)%>&nbsp;</td>
					<%else%>
					<td class="noidungr"><%=formatnumber(rs1lk("tdn_sx"),0)%>&nbsp;</td><!--rs1lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs2lk("tdn_sx"),0)%>&nbsp;</td><!--rs2lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs3lk("tdn_sx"),0)%>&nbsp;</td><!--rs3lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs4lk("tdn_sx"),0)%>&nbsp;</td><!--rs4lk("tdn_sx")-->
					<td class="noidungr"><%=formatnumber(rs1lk("tdn_sx")+rs2lk("tdn_sx") +rs3lk("tdn_sx")+rs4lk("tdn_sx"),0)%>&nbsp;</td>
					<!--
					<td class="noidungr"><%=formatnumber(g_lkgt11+d_lkgt11,0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(g_lkgt12+d_lkgt12,0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(g_lkgt13+d_lkgt13,0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(g_lkst14,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(lktongnam ,0)%>&nbsp;</td>
					-->
					<%end if%>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					if rs1ld("tdn_sx")<>"" then
						ld1=formatnumber(rs1lk("tdn_sx")+18933595+rs1ld("tdn_sx"),0)
					else
						ld1=formatnumber(rs1lk("tdn_sx")+18933595,0)
					end if
					if rs2ld("tdn_sx")<>"" then
						ld2=formatnumber(rs2lk("tdn_sx")+19119808+rs2ld("tdn_sx"),0)
					else
						ld2=formatnumber(rs2lk("tdn_sx")+19119808,0)
					end if
					if rs3ld("tdn_sx")<>"" then
						ld3=formatnumber(rs3lk("tdn_sx")+18857734+rs3ld("tdn_sx"),0)
					else
						ld3=formatnumber(rs3lk("tdn_sx")+18857734,0)
					end if
					if rs4ld("tdn_sx")<>"" then
						ld4=formatnumber(rs4lk("tdn_sx")+29528525+rs4ld("tdn_sx"),0)
					else
						ld4=formatnumber(rs4lk("tdn_sx")+29528525,0)
					end if
					ldall=formatnumber(cdbl(ld1)+cdbl(ld2)+cdbl(ld3)+cdbl(ld4))
					%>
					<td class="noidungr"><%=formatnumber(ld1,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld2,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld3,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld4,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ldall,0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;- Sản lượng điện phát bằng khí</td>
				    <td class="noidung">MWh</td>
					<%if nga1=31 and than1=12 and na1=2014 then%>
				    <td class="noidungr"><%=formatnumber(1678049385/1000,0)%>&nbsp;</td><!--rs1lk("dn_sxg")-->
				    <td class="noidungr"><%=formatnumber(1649454127/1000,0)%>&nbsp;</td><!-- rs2lk("dn_sxg")-->
				    <td class="noidungr"><%=formatnumber(1697098949/1000,0)%>&nbsp;</td><!--rs3lk("dn_sxg")-->
				    <td class="noidungr"><%'=formatnumber(rs4lk("dn_sxg"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(1678049385/1000+1649454127/1000+1697098949/1000,0)%>&nbsp;</td>
					<%else%>
					<td class="noidungr"><%=formatnumber(rs1lk("dn_sxg"),0)%>&nbsp;</td><!--rs1lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs2lk("dn_sxg"),0)%>&nbsp;</td><!--rs2lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs3lk("dn_sxg"),0)%>&nbsp;</td><!--rs3lk("tdn_sx")-->
				    <td class="noidungr"><%'=formatnumber(rs4lk("tdn_sx"),0)%>&nbsp;</td><!--rs4lk("tdn_sx")-->
					<td class="noidungr"><%=formatnumber(rs1lk("dn_sxg")+rs2lk("dn_sxg") +rs3lk("dn_sxg"),0)%>&nbsp;</td>
					<%end if%>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					if rs1ld("dn_sxg")<>"" then
						ld1=formatnumber(rs1lk("dn_sxg")+18933595-83613+rs1ld("dn_sxg"),0)
					else
						ld1=formatnumber(rs1lk("dn_sxg")+18933595-83613,0)
					end if
					if rs2ld("dn_sxg")<>"" then
						ld2=formatnumber(rs2lk("dn_sxg")+19119808-141013+rs2ld("dn_sxg"),0)
					else
						ld2=formatnumber(rs2lk("dn_sxg")+19119808-141013,0)
					end if
					if rs3ld("dn_sxg")<>"" then
						ld3=formatnumber(rs3lk("dn_sxg")+18857734-178786+rs3ld("dn_sxg"),0)
					else
						ld3=formatnumber(rs3lk("dn_sxg")+18857734-178786,0)
					end if
					if rs4ld("tdn_sx")<>"" then
						ld4=formatnumber(rs4lk("tdn_sx")+29528525+rs4ld("tdn_sx"),0)
					else
						ld4=formatnumber(rs4lk("tdn_sx")+29528525,0)
					end if
					ldall=formatnumber(cdbl(ld1)+cdbl(ld2)+cdbl(ld3))
					%>
					<td class="noidungr"><%=formatnumber(ld1,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld2,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld3,0)%>&nbsp;</td>
					<td class="noidungr"><%'=formatnumber(ld4,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ldall,0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;- Sản lượng điện phát bằng dầu</td>
				    <td class="noidung">MWh</td>
					<%if nga1=31 and than1=12 and na1=2014 then%>
				    <td class="noidungr"><%=formatnumber(626426/1000,0)%>&nbsp;</td><!--rs1lk("dn_sxd")-->
				    <td class="noidungr"><%=formatnumber(489160/1000,0)%>&nbsp;</td><!-- rs2lk("dn_sxd")-->
				    <td class="noidungr"><%=formatnumber(290740/1000,0)%>&nbsp;</td><!--rs3lk("dn_sxd")-->
				    <td class="noidungr"><%'=formatnumber(rs4lk("dn_sxd"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(626426/1000+489160/1000+290740/1000,0)%>&nbsp;</td>
					<%else%>
					<td class="noidungr"><%=formatnumber(rs1lk("dn_sxd"),0)%>&nbsp;</td><!--rs1lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs2lk("dn_sxd"),0)%>&nbsp;</td><!--rs2lk("tdn_sx")-->
				    <td class="noidungr"><%=formatnumber(rs3lk("dn_sxd"),0)%>&nbsp;</td><!--rs3lk("tdn_sx")-->
				    <td class="noidungr"><%'=formatnumber(rs4lk("tdn_sx"),0)%>&nbsp;</td><!--rs4lk("tdn_sx")-->
					<td class="noidungr"><%=formatnumber(rs1lk("dn_sxd")+rs2lk("dn_sxd") +rs3lk("dn_sxd"),0)%>&nbsp;</td>
					<%end if%>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					if rs1ld("dn_sxd")<>"" then
						ld1=formatnumber(rs1lk("dn_sxd")+83613+rs1ld("dn_sxd"),0)
					else
						ld1=formatnumber(rs1lk("dn_sxd")+83613,0)
					end if
					if rs2ld("dn_sxd")<>"" then
						ld2=formatnumber(rs2lk("dn_sxd")+141013+rs2ld("dn_sxd"),0)
					else
						ld2=formatnumber(rs2lk("dn_sxd")+141013,0)
					end if
					if rs3ld("dn_sxd")<>"" then
						ld3=formatnumber(rs3lk("dn_sxd")+178786+rs3ld("dn_sxd"),0)
					else
						ld3=formatnumber(rs3lk("dn_sxd")+178786,0)
					end if
					ld4=0
					ldall=formatnumber(cdbl(ld1)+cdbl(ld2)+cdbl(ld3))
					%>
					<td class="noidungr"><%=formatnumber(ld1,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld2,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld3,0)%>&nbsp;</td>
					<td class="noidungr"><%'=formatnumber(ld4,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ldall,0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;- Sản lượng điện phát bằng ST14</td>
				    <td class="noidung">MWh</td>
				    <td class="noidungr"><%'=formatnumber(rs1lk("dn_sxd"),0)%>&nbsp;</td>
				    <td class="noidungr"><%'=formatnumber(rs2lk("dn_sxd"),0)%>&nbsp;</td>
				    <td class="noidungr"><%'=formatnumber(rs3lk("dn_sxd"),0)%>&nbsp;</td>
					<%if nga1=31 and than1=12 and na1=2014 then%>
				    <td class="noidungr"><%=formatnumber(2709639589/1000,0)%>&nbsp;</td><!--rs4lk("tdn_sx")-->
					<td class="noidungr"><%=formatnumber(2709639589/1000,0)%>&nbsp;</td>
					<%else%>
				    <td class="noidungr"><%=formatnumber(rs4lk("tdn_sx"),0)%>&nbsp;</td><!--rs4lk("tdn_sx")-->
					<td class="noidungr"><%=formatnumber(rs4lk("tdn_sx"),0)%>&nbsp;</td>
					<%end if%>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					if rs4ld("tdn_sx")<>"" then
						ld4=formatnumber(rs4lk("tdn_sx")+29528525+rs4ld("tdn_sx"),0)
					else
						ld4=formatnumber(rs4lk("tdn_sx")+29528525,0)
					end if
					%>
					<td class="noidungr"><%'=formatnumber(ld1,0)%>&nbsp;</td>
					<td class="noidungr"><%'=formatnumber(ld2,0)%>&nbsp;</td>
					<td class="noidungr"><%'=formatnumber(ld3,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld4,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(ld4,0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Điện tự dùng:<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">MWh</td>
					<td class="noidungr"><%if (rs1lk("tdn_td")+rs1lk("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs1lk("tdn_td")+rs1lk("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs2lk("tdn_td")+rs2lk("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs2lk("tdn_td")+rs2lk("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs3lk("tdn_td")+rs3lk("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs3lk("tdn_td")+rs3lk("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%if (rs4lk("tdn_td")+rs4lk("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs4lk("tdn_td")+rs4lk("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1lk("tdn_td")+rs1lk("tdn_kt")+rs2lk("tdn_td")+rs2lk("tdn_kt")+rs3lk("tdn_td")+rs3lk("tdn_kt"))=0 then%>-<%else%><%=formatnumber(rs1lk("tdn_td")+rs1lk("tdn_kt")+rs2lk("tdn_td")+rs2lk("tdn_kt")+rs3lk("tdn_td")+rs3lk("tdn_kt"),1)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:94px">- Dầu</span></td>
				    <td class="noidung"></td>
					<td class="noidungr"><%if rs1lk("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs1lk("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2lk("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs2lk("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3lk("mw_chay_dau")=0 then%>-<%else%><%=formatnumber(rs3lk("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if (rs1lk("mw_chay_dau")+rs2lk("mw_chay_dau")+rs3lk("mw_chay_dau"))=0 then%>-<%else%><%=formatnumber(rs1lk("mw_chay_dau")+rs2lk("mw_chay_dau")+rs3lk("mw_chay_dau"),1)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Tỷ lệ điện tự dùng khí:<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">%</td>
				    <td class="noidungr"><%if rs1lk("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs1lk("tdn_td")+rs1lk("tdn_kt"))/rs1lk("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs2lk("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs2lk("tdn_td")+rs2lk("tdn_kt"))/rs2lk("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs3lk("dn_sxg")=0 then%>-<%else%><%=formatnumber(((rs3lk("tdn_td")+rs3lk("tdn_kt"))/rs3lk("dn_sxg"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr" rowspan="2"><%if rs4lk("tdn_sx")=0 then%>-<%else%><%=formatnumber(((rs4lk("tdn_td")+rs4lk("tdn_kt"))/rs4lk("tdn_sx"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if (rs1lk("dn_sxg")+rs2lk("dn_sxg")+rs3lk("dn_sxg")+rs4lk("dn_sxg"))=0 then%>-<%else%><%=formatnumber(((rs1lk("tdn_td")+rs1("tdn_kt")+rs2lk("tdn_td")+rs2lk("tdn_kt")+rs3lk("tdn_td")+rs3lk("tdn_kt"))/(rs1lk("dn_sxg")+rs2lk("dn_sxg")+rs3lk("dn_sxg")+rs4lk("dn_sxg")))*100,2)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
				    <td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:138px">- Dầu</span></td>
				    <td class="noidung">%</td>
					<td class="noidungr"><%if rs1lk("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs1lk("mw_chay_dau")/rs1lk("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs2lk("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs2lk("mw_chay_dau")/rs2lk("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if rs3lk("dn_sxd")=0 then%>-<%else%><%=formatnumber((rs3lk("mw_chay_dau")/rs3lk("dn_sxd"))*100,2)%><%end if%>&nbsp;</td>
				    <td class="noidungr"><%if (rs1lk("dn_sxd")+rs2lk("dn_sxd")+rs3lk("dn_sxd")+rs4lk("dn_sxd"))=0 then%>-<%else%><%=formatnumber(((rs1lk("mw_chay_dau")+rs2lk("mw_chay_dau")+rs3lk("mw_chay_dau"))/(rs1lk("dn_sxd")+rs2lk("dn_sxd")+rs3lk("dn_sxd")+rs4lk("dn_sxd")))*100,2)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
					<td class="noidungr">&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Nhiên liệu tiêu thụ:</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Lưu lượng khí tại trạm PM</span></td>
				    <td class="noidung">m3</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(rs4lk("ncs_m3"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Nhiệt lượng khí tại trạm PM</span></td>
				    <td class="noidung">tr.BTU</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(rs4lk("ncs_btu"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Dầu</span></td>
				    <td class="noidung">kg</td>
					<td class="noidungr"></td>
					<td class="noidungr"></td>
					<td class="noidungr"></td>
					<td class="noidungr"></td>
					<td class="noidungr"><%=formatnumber(cdbl(rs1lk("dau_tt"))+cdbl(rs2lk("dau_tt"))+cdbl(rs3lk("dau_tt")),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Suất hao nhiên liêu:</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">BTU/kWh</td>
										<%
					c17=formatnumber(rs1("shk_ttd"),0)
					d17=formatnumber(rs2("shk_ttd"),0)
					e17=formatnumber(rs3("shk_ttd"),0)
					g17=formatnumber((rs1("shk_ttd")+rs2("shk_ttd")+rs3("shk_ttd"))/3,0)
					g18=formatnumber(rs4("ncs_btu")/(rs1("dn_sxg")+rs2("dn_sxg")+rs3("dn_sxg")+rs4("dn_sxg"))*1000,0)
					%>
					<td class="noidungr"></td>
					<td class="noidungr"></td>
					<td class="noidungr"></td>
					<td class="noidung"></td>
					<td class="noidungr"><%if rs4lk("ncs_btu")=0 then%>-<%else%><%=formatnumber(rs4lk("ncs_btu")/(rs1lk("dn_sxg")+rs2lk("dn_sxg")+rs3lk("dn_sxg")+rs4lk("dn_sxg"))*1000,0)%><%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidungr"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:20px">- Dầu</span></td>
				    <td class="noidung">g/kWh</td>
					<%
					d1=formatnumber((rs1lk("shd_ttd")+rs2lk("shd_ttd")+rs3lk("shd_ttd"))/3,0)
					d4=formatnumber(rs1lk("dn_sxd")+rs2lk("dn_sxd")+rs3lk("dn_sxd")+rs4("dn_sxd"),0)
					d5=formatnumber(rs1lk("dau_tt")+rs2lk("dau_tt")+rs3lk("dau_tt"),0)
					d3=formatnumber(rs1lk("shd_ttd"),0)
					if d4=0 then
						d2=0
					else
						d2=formatnumber(d5/d4,0)
					end if
					%>
					<td class="noidungr"><%if d1=0 then%>-<%else%><%=formatnumber(d2/d1*d3,0)%><%end if%>&nbsp;</td>
					<%
					d3=formatnumber(rs2lk("shd_ttd"),0)
					%>
					<td class="noidungr"><%if d1=0 then%>-<%else%><%=formatnumber(d2/d1*d3,0)%><%end if%>&nbsp;</td>
					<%
					d3=formatnumber(rs3lk("shd_ttd"),0)
					%>
					<td class="noidungr"><%if d1=0 then%>-<%else%><%=formatnumber(d2/d1*d3,0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidungr"><%=formatnumber(d2,0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <!--
				   <tr>
				    <td class="noidungl" height="20">&nbsp;Số giờ VH thực tế (OH):<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">Giờ</td>
					<td class="noidungr"><%if rs1lk("vhk_p")=0 then%><%=formatnumber(rs1lk("vhk_h"),0)%><%else%><%=formatnumber(rs1lk("vhk_h")+rs1lk("vhk_p")/60,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2lk("vhk_p")=0 then%><%=formatnumber(rs2lk("vhk_h"),0)%><%else%><%=formatnumber(rs2lk("vhk_h")+rs2lk("vhk_p")/60,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3lk("vhk_p")=0 then%><%=formatnumber(rs3lk("vhk_h"),0)%><%else%><%=formatnumber(rs3lk("vhk_h")+rs3lk("vhk_p")/60,0)%><%end if%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%if rs4lk("tvh_p")=0 then%><%=formatnumber(rs4lk("tvh_h"),0)%><%else%><%=formatnumber(rs4lk("tvh_h")+rs4lk("tvh_p")/60,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					h1lk=rs1lk("vhk_h")+rs1lk("vhk_p")/60+94394
					%>
					<td class="noidungr"><%if rs1ld("vhk_h")<>"" then%><%=formatnumber(rs1ld("vhk_h")+h1lk,0)%>,0)%><%else%><%=formatnumber(h1lk,0)%><%end if%>&nbsp;</td>
					<%
					h2lk=rs2lk("vhk_h")+rs2lk("vhk_p")/60+94802
					%>
					<td class="noidungr"><%if rs2ld("vhk_h")<>"" then%><%=formatnumber(rs2ld("vhk_h")+h2lk,0)%>,0)%><%else%><%=formatnumber(h2lk,0)%><%end if%>&nbsp;</td>
					<%
					h3lk=rs3lk("vhk_h")+rs3lk("vhk_p")/60+93794
					%>
					<td class="noidungr"><%if rs3ld("vhk_h")<>"" then%><%=formatnumber(rs3ld("vhk_h")+h3lk,0)%>,0)%><%else%><%=formatnumber(h3lk,0)%><%end if%>&nbsp;</td>
					<%
					h4lk=rs4lk("tvh_h")+rs4lk("tvh_p")/60+96370
					%>
					<td class="noidungr" rowspan="2"><%if rs4ld("tvh_h")<>"" then%><%=formatnumber(rs4ld("tvh_h")+h4lk,0)%>,0)%><%else%><%=formatnumber(h4lk,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs1ld("vhk_h")<>"" then%><%=formatnumber(rs1ld("vhk_h")+h1lk+rs2ld("vhk_h")+h2lk+rs3ld("vhk_h")+h3lk,0)%>,0)%><%else%><%=formatnumber(h1lk+h2lk+h3lk,0)%><%end if%></td>
				  </tr>
				  
				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:146px">- Dầu</span></td>
				    <td class="noidung">Giờ</td>
					<td class="noidungr"><%if rs1lk("vhd_p")=0 and rs1lk("vhd_h")=0 then%>-<%else%><%if rs1lk("vhd_p")=0 then%><%=formatnumber(rs1lk("vhd_h"),0)%><%else%><%=formatnumber(rs1lk("vhd_h")+rs1lk("vhd_p")/60,0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2lk("vhd_p")=0 and rs2lk("vhd_h")=0 then%>-<%else%><%if rs2lk("vhd_p")=0 then%><%=formatnumber(rs2lk("vhd_h"),0)%><%else%><%=formatnumber(rs2lk("vhd_h")+rs2lk("vhd_p")/60,0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3lk("vhd_p")=0 and rs3lk("vhd_h")=0 then%>-<%else%><%if rs3lk("vhd_p")=0 then%><%=formatnumber(rs3lk("vhd_h"),0)%><%else%><%=formatnumber(rs3lk("vhd_h")+rs3lk("vhd_p")/60,0)%><%end if%><%end if%>&nbsp;</td>
					<td class="noidungr"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					h1lk=rs1lk("vhd_h")+rs1lk("vhd_p")/60+546
					h2lk=rs2lk("vhd_h")+rs2lk("vhd_p")/60+875
					h3lk=rs3lk("vhd_h")+rs3lk("vhd_p")/60+1132
					%>
					<td class="noidungr"><%if rs1ld("vhd_h")<>"" then%><%=formatnumber(rs1ld("vhd_h")+h1lk,0)%>,0)%><%else%><%=formatnumber(h1lk,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2ld("vhd_h")<>"" then%><%=formatnumber(rs2ld("vhd_h")+h2lk,0)%>,0)%><%else%><%=formatnumber(h2lk,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3ld("vhd_h")<>"" then%><%=formatnumber(rs3ld("vhd_h")+h3lk,0)%>,0)%><%else%><%=formatnumber(h3lk,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs1ld("vhd_h")<>"" then%><%=formatnumber(rs1ld("vhd_h")+h1lk+rs2ld("vhd_h")+h2lk+rs3ld("vhd_h")+h3lk,0)%>,0)%><%else%><%=formatnumber(h1lk+h2lk+h3lk,0)%><%end if%>&nbsp;</td>
				  </tr>
				   <tr>
				    <td class="noidungl" height="20">&nbsp;Số giờ vận hành tương đương (EOH2)</td>
				    <td class="noidung">Giờ</td>
					<td class="noidungr"><%if nga<>nga1 then%><%=formatnumber(rs1("EOH2")-rs1eoh("EOH2")+24,0)%><%else%><%=formatnumber(rs1lk("EOH2")-124257,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if nga<>nga1 then%><%=formatnumber(rs2("EOH2")-rs2eoh("EOH2")+24,0)%><%else%><%=formatnumber(rs2lk("EOH2")-126272,0)%><%end if%>&nbsp;</td>
					<td class="noidungr"><%if nga<>nga1 then%><%=formatnumber(rs3("EOH2")-rs3eoh("EOH2")+24,0)%><%else%><%=formatnumber(rs3lk("EOH2")-129935,0)%><%end if%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%=formatnumber(rs1("EOH2"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("EOH2"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("EOH2"),0)%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;EOH thời điểm đại tu gần nhất</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%=formatnumber(rs1("eoh_dt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("eoh_dt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("eoh_dt"),0)%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;EOH thời điểm trung tu gần nhất</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungr"><%=formatnumber(rs1("eoh_tt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("eoh_tt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("eoh_tt"),0)%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;EOH còn lại đến lần SCL tiếp theo</td>
				    <td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<%
					if rs1("eoh_dt")>rs1("eoh_tt") then
						scltt1=8000-(rs1("EOH2")-rs1("eoh_dt"))
					else
						scltt1=8000-(rs1("EOH2")-rs1("eoh_tt"))
					end if
					if rs2("eoh_dt")>rs2("eoh_tt") then
						scltt2=8000-(rs2("EOH2")-rs2("eoh_dt"))
					else
						scltt2=8000-(rs2("EOH2")-rs2("eoh_tt"))
					end if
					if rs3("eoh_dt")>rs3("eoh_tt") then
						scltt3=8000-(rs3("EOH2")-rs3("eoh_dt"))
					else
						scltt3=8000-(rs3("EOH2")-rs3("eoh_tt"))
					end if
					%>
					<td class="noidungr"><%=formatnumber(scltt1,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(scltt2,0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(scltt3,0)%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  -->
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Công suất bình quân:<span style="padding-left:20px">- Khí</span></td>
				    <td class="noidung">MW</td>
					<td class="noidungr"><%=formatnumber(rs1("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr" rowspan="2"><%=formatnumber(rs4("ptb_k"),1)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber((rs1("ptb_k")+rs2("ptb_k")+rs3("ptb_k"))/3,1)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
  				  <tr>
				    <td class="noidungl" height="20">&nbsp;<span style="padding-left:138px">- Dầu</span></td>
				    <td class="noidung">MW</td>
					<td class="noidungr"><%if rs1("ptb_d")>0 then%><%=formatnumber(rs1("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs2("ptb_d")>0 then%><%=formatnumber(rs2("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>
					<td class="noidungr"><%if rs3("ptb_d")>0 then%><%=formatnumber(rs3("ptb_d"),1)%><%else%>-<%end if%>&nbsp;</td>					
					<td class="noidungr"><%if (rs1("ptb_d")+rs2("ptb_d")+rs3("ptb_d"))/3 > 0 then%><%=formatnumber((rs1("ptb_d")+rs2("ptb_d")+rs3("ptb_d"))/3,1)%><%else%>-<%end if%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td class="noidung"></td>
				  </tr>
				  <tr>
					<td colspan="13" height="1" bgcolor="#ffcc99"></td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Mực bồn DO1/DO2/DO3 thực tế lúc 7h00 hôm sau</td>
				    <td class="noidung">mm</td>
					<td class="noidungr"><%=formatnumber(rs1("dau_csm"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("dau_csm"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("dau_csm"),0)%>&nbsp;</td>
					<td class="noidung"></td>
					<td class="noidung"></td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungl" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max (mm)</td>
					<td class="noidungr">17,000&nbsp;</td>
					<td class="noidungr">17,000&nbsp;</td>
					<td class="noidungr">17,000&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Lượng dầu tồn thực tế trong bồn</td>
				    <td class="noidung">lít</td>
					<td class="noidungr"><%=formatnumber(rs1("dau_tontt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("dau_tontt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("dau_tontt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs4("dau_tontt"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs1("dau_tontt")+rs2("dau_tontt")+rs3("dau_tontt")+rs4("dau_tontt"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungl" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Max (lít)</td>
					<td class="noidungr">11.316.057&nbsp;</td>
					<td class="noidungr">11.291.774&nbsp;</td>
					<td class="noidungr">11.282.787&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidungl" height="20">&nbsp;Lượng dầu tồn trữ cho sản xuất</td>
				    <td class="noidung">lít</td>
					<td class="noidungr"><%=formatnumber(rs1("dau_tonsx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs2("dau_tonsx"),0)%>&nbsp;</td>
					<td class="noidungr"><%=formatnumber(rs3("dau_tonsx"),0)%>&nbsp;</td>
					<td class="noidungr"></td>
					<td class="noidungr"><%=formatnumber(rs1("dau_tonsx")+rs2("dau_tonsx")+rs3("dau_tonsx"),0)%>&nbsp;</td>
					<td width="1" bgcolor="#ffcc99"></td>
					<td class="noidungl" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Còn trống (lít)</td>
					<td class="noidungr">2.750.328&nbsp;</td>
					<td class="noidungr">5.898.912&nbsp;</td>
					<td class="noidungr">10.679.763&nbsp;</td>
				  </tr>
				</table>
			</td>
		</tr>
<%END IF%>
<%IF RS1.RECORDCOUNT>0 then%>
		<tr><td class="tdechinh" style="padding-top:5px">CÔNG SUẤT PHÁT TRONG NGÀY (Đơn vị tính: MW)</td></tr>
		<tr>
		 	<td class="noidung">
				<table id="bangphu" width="998" border="0" cellspacing="0" cellpadding="0" align="center">
				 <tr>
				   	<th class="noidung" height="25" width="50" bgcolor="#FFFF99"><strong>TỔ MÁY</strong></th>
					<th class="noidung" width="50" bgcolor="#FFFF99"><strong>H1</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H2</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H3</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H4</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H5</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H6</strong></th>
					<th class="noidung" width="50" bgcolor="#FFFF99"><strong>H7</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H8</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H9</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H10</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H11</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H12</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H13</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H14</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H15</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H16</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H17</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H18</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H19</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H20</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H21</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H22</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H23</strong></th>
				    <th class="noidung" width="50" bgcolor="#FFFF99"><strong>H24</strong></th>
				  </tr>
				  <tr>
				    <td class="noidung" height="20">GT11</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw1"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw2"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw3"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw4"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw5"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw6"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw7"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw8"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw9"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw10"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw11"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw12"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw13"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw14"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw15"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw16"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw17"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw18"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw19"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw20"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw21"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw22"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw23"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs1("pw24"),0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidung" height="20">GT12</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw1"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw2"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw3"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw4"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw5"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw6"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw7"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw8"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw9"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw10"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw11"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw12"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw13"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw14"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw15"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw16"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw17"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw18"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw19"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw20"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw21"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw22"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw23"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs2("pw24"),0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidung" height="20">GT13</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw1"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw2"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw3"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw4"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw5"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw6"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw7"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw8"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw9"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw10"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw11"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw12"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw13"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw14"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw15"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw16"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw17"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw18"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw19"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw20"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw21"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw22"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw23"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs3("pw24"),0)%>&nbsp;</td>
				  </tr>
				  <tr>
				    <td class="noidung" height="20">ST14</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw1"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw2"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw3"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw4"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw5"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw6"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw7"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw8"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw9"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw10"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw11"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw12"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw13"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw14"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw15"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw16"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw17"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw18"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw19"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw20"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw21"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw22"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw23"),0)%>&nbsp;</td>
				    <td class="noidungr"><%=formatnumber(rs4("pw24"),0)%>&nbsp;</td>
				  </tr>
<!-- bieu do -->
<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript">
$(function () {
	  var h1=<%=rs1("pw1")%>;
	  var h2=<%=rs1("pw2")%>;
	  var h3=<%=rs1("pw3")%>;
	  var h4=<%=rs1("pw4")%>;
	  var h5=<%=rs1("pw5")%>;
	  var h6=<%=rs1("pw6")%>;
	  var h7=<%=rs1("pw7")%>;
	  var h8=<%=rs1("pw8")%>;
	  var h9=<%=rs1("pw9")%>;
	  var h10=<%=rs1("pw10")%>;
	  var h11=<%=rs1("pw11")%>;
	  var h12=<%=rs1("pw12")%>;
	  var h13=<%=rs1("pw13")%>;
	  var h14=<%=rs1("pw14")%>;
	  var h15=<%=rs1("pw15")%>;
	  var h16=<%=rs1("pw16")%>;
	  var h17=<%=rs1("pw17")%>;
	  var h18=<%=rs1("pw18")%>;
	  var h19=<%=rs1("pw19")%>;
	  var h20=<%=rs1("pw20")%>;
	  var h21=<%=rs1("pw21")%>;
	  var h22=<%=rs1("pw22")%>;
	  var h23=<%=rs1("pw23")%>;
	  var h24=<%=rs1("pw24")%>;
	  
	  var hh1=<%=rs2("pw1")%>;
	  var hh2=<%=rs2("pw2")%>;
	  var hh3=<%=rs2("pw3")%>;
	  var hh4=<%=rs2("pw4")%>;
	  var hh5=<%=rs2("pw5")%>;
	  var hh6=<%=rs2("pw6")%>;
	  var hh7=<%=rs2("pw7")%>;
	  var hh8=<%=rs2("pw8")%>;
	  var hh9=<%=rs2("pw9")%>;
	  var hh10=<%=rs2("pw10")%>;
	  var hh11=<%=rs2("pw11")%>;
	  var hh12=<%=rs2("pw12")%>;
	  var hh13=<%=rs2("pw13")%>;
	  var hh14=<%=rs2("pw14")%>;
	  var hh15=<%=rs2("pw15")%>;
	  var hh16=<%=rs2("pw16")%>;
	  var hh17=<%=rs2("pw17")%>;
	  var hh18=<%=rs2("pw18")%>;
	  var hh19=<%=rs2("pw19")%>;
	  var hh20=<%=rs2("pw20")%>;
	  var hh21=<%=rs2("pw21")%>;
	  var hh22=<%=rs2("pw22")%>;
	  var hh23=<%=rs2("pw23")%>;
	  var hh24=<%=rs2("pw24")%>;

	  var hhh1=<%=rs3("pw1")%>;
	  var hhh2=<%=rs3("pw2")%>;
	  var hhh3=<%=rs3("pw3")%>;
	  var hhh4=<%=rs3("pw4")%>;
	  var hhh5=<%=rs3("pw5")%>;
	  var hhh6=<%=rs3("pw6")%>;
	  var hhh7=<%=rs3("pw7")%>;
	  var hhh8=<%=rs3("pw8")%>;
	  var hhh9=<%=rs3("pw9")%>;
	  var hhh10=<%=rs3("pw10")%>;
	  var hhh11=<%=rs3("pw11")%>;
	  var hhh12=<%=rs3("pw12")%>;
	  var hhh13=<%=rs3("pw13")%>;
	  var hhh14=<%=rs3("pw14")%>;
	  var hhh15=<%=rs3("pw15")%>;
	  var hhh16=<%=rs3("pw16")%>;
	  var hhh17=<%=rs3("pw17")%>;
	  var hhh18=<%=rs3("pw18")%>;
	  var hhh19=<%=rs3("pw19")%>;
	  var hhh20=<%=rs3("pw20")%>;
	  var hhh21=<%=rs3("pw21")%>;
	  var hhh22=<%=rs3("pw22")%>;
	  var hhh23=<%=rs3("pw23")%>;
	  var hhh24=<%=rs3("pw24")%>;

	  var sh1=<%=rs4("pw1")%>;
	  var sh2=<%=rs4("pw2")%>;
	  var sh3=<%=rs4("pw3")%>;
	  var sh4=<%=rs4("pw4")%>;
	  var sh5=<%=rs4("pw5")%>;
	  var sh6=<%=rs4("pw6")%>;
	  var sh7=<%=rs4("pw7")%>;
	  var sh8=<%=rs4("pw8")%>;
	  var sh9=<%=rs4("pw9")%>;
	  var sh10=<%=rs4("pw10")%>;
	  var sh11=<%=rs4("pw11")%>;
	  var sh12=<%=rs4("pw12")%>;
	  var sh13=<%=rs4("pw13")%>;
	  var sh14=<%=rs4("pw14")%>;
	  var sh15=<%=rs4("pw15")%>;
	  var sh16=<%=rs4("pw16")%>;
	  var sh17=<%=rs4("pw17")%>;
	  var sh18=<%=rs4("pw18")%>;
	  var sh19=<%=rs4("pw19")%>;
	  var sh20=<%=rs4("pw20")%>;
	  var sh21=<%=rs4("pw21")%>;
	  var sh22=<%=rs4("pw22")%>;
	  var sh23=<%=rs4("pw23")%>;
	  var sh24=<%=rs4("pw24")%>;

        $('#container').highcharts({
            title: {
                text: 'Biểu đồ thể hiện công suất phát trong ngày',
                x: -20 //center
            },
            subtitle: {
                text: '',
                x: -20
            },
            xAxis: {
                categories: [1, 2, 3, 4, 5,6, 7, 8, 9,10, 11, 12,13,14,15,16,17,18,19,20,21,22,23,24],
            },
            yAxis: {
                title: {
                    text: ''
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: 'MW'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'GT11',
                data: [h1, h2, h3, h4, h5, h6, h7,h8,h9, h10, h11, h12,h13,h14,h15,h16,h17,h18,h19,h20,h21,h22,h23,h24]
            }, {
                name: 'GT12',
                data: [hh1, hh2, hh3, hh4, hh5, hh6, hh7,hh8,hh9, hh10, hh11, hh12,hh13,hh14,hh15,hh16,hh17,hh18,hh19,hh20,hh21,hh22,hh23,hh24]
            }, {
                name: 'GT13',
                data: [hhh1, hhh2, hhh3, hhh4, hhh5, hhh6, hhh7,hhh8,hhh9, hhh10, hhh11, hhh12,hhh13,hhh14,hhh15,hhh16,hhh17,hhh18,hhh19,hhh20,hhh21,hhh22,hhh23,hhh24]
            }, {
				name: 'ST14',
                data: [sh1, sh2, sh3, sh4, sh5, sh6, sh7,sh8,sh9, sh10, sh11, sh12,sh13,sh14,sh15,sh16,sh17,sh18,sh19,sh20,sh21,sh22,sh23,sh24]
            }]
        });
		
    });
    

		</script>				  
				 <tr>
				    <td class="noidungl" colspan="25" style="padding-top:2px">
					<script src="js/highcharts.js"></script>
<script src="js/modules/exporting.js"></script>
<div id="container" style="min-width: 728px; height: 400px; margin: 5 "></div>

<script src="js/themes/grid.js"></script>
<script src="js/modules/exporting.src.js"></script>
					</td>
				</tr>
				</table>
			</td>
		</tr>
<%END IF%>
<%if rs1.recordcount>0 then%>
<!-- TINH HINH VAN HANH -->
<tr><td class="tdechinh" style="padding-top:5px">TÌNH HÌNH VẬN HÀNH</td></tr>
<tr><td class="noidungl"><%=rs1("THVH")%></td></tr>
<!-- END TINH HINH VAN HANH -->
<%end if%>
	 </table>
	 <form name="form 1" action="BCN_PM1.asp" method="get"><input type="submit" name="btSubmit" id="btSubmit" value="Refresh" class="Hide" /></form>
    <!-- InstanceEndEditable -->		
                </div>
              
</div>
</div>
        </div>
<div class="footer-container">
		    	<div class="footer">
					<div class="box informational">
						<ul>
							<li><h6>Giới thiệu</h6>
							    <ul>
									<li ><a href="../Gioithieu/Tongquan.asp"><span>Tổng quan</span></a></li>
									<li ><a href="../Gioithieu/Sodo.asp"><span>Sơ đồ tổ chức</span></a></li>
									<li ><a href="../Gioithieu/Hoatdong.asp"><span>Lĩnh vực hoạt động</span></a></li>
							    </ul>
							 </li>
							  <li><h6>Văn bản pháp quy</h6>
							    <ul>
									<li><a href="../Phapche/HomePL.asp"><span>Văn bản Tổng Công ty</span></a></li>		
									<li><a href="http://phapche.evn.com.vn/Pages/Search.aspx?scope=1" target="_blank"><span>Văn bản Tập đoàn</span></a></li>		
								</ul>
							  </li>
							  <li><h6>Thư viện Tiêu chuẩn ISO</h6>
							    <ul>
									<li><a href="../TieuchuanISO/TC_Genco3.asp"><span>EVN<i>GENCO</i> 3 ban hành</span></a></li>
									<li><a href="../TieuchuanISO/TC_Bocongthuong.asp"><span>Bộ Công thương ban hành</span></a></li>
									<li><a href="../TieuchuanISO/TC_TCVN.asp"><span>Tiêu chuẩn Việt nam (TCVN)</span></a></li>
								</ul>
							  </li>
							  <li class="last"><h6>Danh bạ</h6>
							    <ul>
									<li><a href="../Danhba/HomeGEN.asp"><span>Cơ quan Tổng Công ty</span></a></li>
									<li><a href="../Danhba/HomeDV.asp"><span>Các đơn vị</span></a></li>		
									<li><a href="http://home.evn.com.vn/Home/PhoneBook.aspx?CatePhoneBookId=3" target="_blank"><span>Cơ quan Tập đoàn</span></a></li>	
									<li><a href="http://home.evn.com.vn/Home/Detail/tabid/156/ItemId/1089/View/2/CateId/256/Default.aspx" target="_blank"><span>Cơ quan Tập đoàn - 11 Cửa Bắc</span></a></li>	
								</ul>
							  </li>
						</ul>
					</div>
					
					<div class="contacts">
					    <div class="f-left"><img class="payments" src="../images/icon_logo.png" width="32" height="32" alt=""/>&nbsp;    Tổng Công ty Phát điện 3 | Khu Công Nghiệp Phú Mỹ 1, Thị trấn Phú Mỹ, huyện Tân Thành, tỉnh Bà Rịa - Vũng Tàu | Điện thoại:  0643-876927 | Fax:  0643-876930 | WebSite:  www.genco3.com
				   	 	</div><br>
						<div class="legality">&copy;2013&nbsp;Tổng Công ty Phát điện 3. All Rights Reserved.</div>
					</div>
					
				</div><!-- end div footer -->
			</div><!-- end div footer-container-->
 </div>
</div>
</body>
<!-- InstanceEnd --></html>
	

	