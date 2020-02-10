<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<style>
#div1, #div2 {
	float: left;
	width: 100px;
	height: 80px;
	margin: 10px;
	padding: 10px;
	border: 1px solid black;
}

div.mypageMenu {
	padding-top: 10px;
	padding-bottom: 10px;
}

div.mypageMenu>a {
	color: white;
	font-size: 18px;
}

div.mypageMenu.active {
	font-size: 18px;
	background-color: white;
}

div.mypageMenu.active>a {
	font-size: 18px;
	color: #FF8C00;
}
</style>
<link href="resources/css/pickTourspot.css" rel="stylesheet">


<section class="section1">
	<br>
	<br>
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="clearfix"></div>

			<!-- start include menu -->
			<%@include file="mypage_menu.jsp"%>
			<!--end of include menu -->
			
			
			<div class="clear"></div>
			<div class="row">
				<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
					<h3 class="title">���� ����(1)</h3>
					<div class="box">
						<div class="btn_del" onclick="hotel_clip(26960)">
							<img src="/res/img/mypage/common/btn_delete.png" alt="">
						</div>
						<div class="img_box"
							onclick="go_link(26960,'/europe/turkey/istanbul/hotel_aslan_istanbul.html');">
							<img
								src="http://pix1.agoda.net/hotelimages/125/125860/125860_15060517110028713502.jpg?s=312x"
								alt="" class="box_img"
								onerror="this.src='/res/img/common/no_img/hotel.png';">
						</div>
						<div class="box_inner">
							<div class="box_inner_top">
								<div class="price_txt">1�� ���</div>
								<div class="price">��50,608</div>
							</div>
							<div class="box_inner_bottom">
								<img src="/res/map/marker/100_0.png" alt="" class="box_pin">
								<div class="bottom_title"
									onclick="go_link(26960,'/europe/turkey/istanbul/hotel_aslan_istanbul.html');">ȣ��
									�ƽþ� �̽�ź��</div>
								<div class="inner_bottom">
									<img src="./resources/img/mypage_icon/3.0.PNG" alt="" class="rate_img">
									<div class="inner_bottom_line">&nbsp;</div>
									<div class="rate_val">9.9 ������õ</div>
									<a href="/ko/city/istanbul_202/map/hotel/26960" target="_blank"
										class="btn_map" style="display: none">����</a>
									<div class="clear"></div>
								</div>
								<div class="inner_bottom">
									<div class="tag">ȣ��</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end content -->
	</div>
	<!-- end container -->
</section>
<!-- end section -->

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script>
$(function(){
	//�޴� Ȱ��ȭ.
	$('.mypageMenu').eq(2).attr('class','col-lg-2 col-md-2 col-sm-2 mypageMenu active');
});
	
</script>
<%@include file="../main/footer.jsp"%>