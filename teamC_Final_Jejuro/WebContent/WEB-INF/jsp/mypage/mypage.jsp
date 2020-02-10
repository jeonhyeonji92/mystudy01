<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<style>
/*�����ġ*/
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 80%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}

ul {
	list-style: none;
}

#div1, #div2 {
	float: left;
	width: 100px;
	height: 80px;
	margin: 10px;
	padding: 10px;
	border: 1px solid black;
}

div.mypageMenu{
	padding-top: 10px;
    padding-bottom: 10px;
}

div.mypageMenu>a{
	color: white;
	font-size: 18px;
	
}
div.mypageMenu.active{
	font-size: 18px;
	background-color: white;
	
}
div.mypageMenu.active>a{
	font-size: 18px;
	color: #FF8C00;
	
}
</style>
<link href="resources/css/plan.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<script>
	$(function() {
		//���� ��¥�� ���
		$("#today").text(new Date().toLocaleDateString());
		//datepicker �ѱ���� ����ϱ� ���� ����
		$.datepicker.setDefaults($.datepicker.regional['ko']);

		// ������(fromDate)�� ������(toDate) ���� ��¥ ���� �Ұ�
		// ������(toDate)�� ������(fromDate) ���� ��¥ ���� �Ұ�

		//������.
		$('#fromDate').datepicker({
			showOn : "both", // �޷��� ǥ���� Ÿ�̹� (both: focus or button)
			buttonImage : "resources/img/calendar.gif", // ��ư �̹���
			buttonImageOnly : true, // ��ư �̹����� ǥ������ ����
			buttonText : "��¥����", // ��ư�� ��ü �ؽ�Ʈ
			dateFormat : "yy-mm-dd", // ��¥�� ����
			changeMonth : true, // ���� �̵��ϱ� ���� ���û��� ǥ�ÿ���
			//minDate: 0,                       // �����Ҽ��ִ� �ּҳ�¥, ( 0 : ���� ���� ��¥ ���� �Ұ�)
			onClose : function(selectedDate) {
				// ������(fromDate) datepicker�� ������
				// ������(toDate)�� �����Ҽ��ִ� �ּ� ��¥(minDate)�� ������ �����Ϸ� ����
				$("#toDate").datepicker("option", "minDate", selectedDate);
			}
		});
		
		//������
		$('#toDate').datepicker({
			showOn : "both",
			buttonImage : "resources/img/calendar.gif",
			buttonImageOnly : true,
			buttonText : "��¥����",
			dateFormat : "yy-mm-dd",
			changeMonth : true,
			//minDate: 0, // ���� ���� ��¥ ���� �Ұ�
			onClose : function(selectedDate) {
				// ������(toDate) datepicker�� ������
				// ������(fromDate)�� �����Ҽ��ִ� �ִ� ��¥(maxDate)�� ������ �����Ϸ� ���� 
				$("#fromDate").datepicker("option", "maxDate", selectedDate);
			}
			//console.log($('#toDate').handleDtpicker('getDate'));
		});
		
		$('#button3').click(function test() {
			var start = $('#fromDate').datepicker('getDate');
			var end = $('#toDate').datepicker('getDate');
			var diff = new Date(end-start);
			var days = (diff/1000/60/60/24)+1;
				
			console.log("���۳�¥ : " + start)
			console.log("���ᳯ¥ : " + end)
			console.log("��¥ : " + diff)
			console.log("��¥ : " + days)
			//window.open('plan?num=' + days);
			if(start != null & end != null){
				location.href='plan?num=' + days;
			}else{
				location.href='404';
			}
		})
	});
</script>
<section class="section1">
<br><br>
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">

			<div class="clearfix"></div>
			
			<!-- start include -->
			<%@include file="mypage_menu.jsp"%>
			<!--end of include -->
			
			<div class="clearfix"></div>
			<div class="divider"></div>

			<div class="tab-pane active" id="myTourPlan">
				<h3 class="title">
					���� ���� ����(1) <small><a href="#" data-toggle="modal"
						data-target="#myModal" style="float: right;">[���� ���� �߰�]</a></small>
				</h3>
				<div class="plan_inner">
					<a href="" class="box" target="_blank">
						<div class="plan_hidden_btn">������ ����</div>
						<div class="plan_bg">
							<div class="plan_bg_inner">
								<span>2020-01-27</span><span
									style="margin-left: 10px; color: #b4b4b4;">2 DAYS</span><br>���ֿ���
							</div>
						</div>
						<div class="plan_img_box">
							<img
								src="http://img.earthtory.com/img/city_images/312/jeju_1425527554.jpg"
								alt="" class="plan_img">
						</div>
						<div class="plan_bg_inner2">
							<span>��Ȧ�� ����</span>
							<div class="fr pn_list_view_icon" style="float: right;">4</div>
							<div class="clear"></div>
							<div class="pn_list_city"></div>
							<div class="clear"></div>
							<div>&nbsp;</div>
							<div class="pn_list_user">
								������id
								<div class="edit_btn" data-srl="303925" data-op="del">����</div>
								<div class="edit_line"></div>
								<div class="edit_btn" data-op="edit" data-srl="303925">����</div>
								<div class="clear"></div>
							</div>
						</div>
					</a>

					<!-- �⺻ ��� -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true">��</span><span class="sr-only">Close</span>
									</button>
									<h4 class="modal-title" id="myModalLabel"
										style="text-align: center;">XXX���� ���� ����</h4>
								</div>
								<div class="modal-body">
									<div class="modal-div">
										<form>
											<table>
												<tr>
													<td>����&nbsp;&nbsp;<input type="text"
														placeholder="������ �Է��ϼ���." required="required"
														style="width: 300px"></td>
												</tr>
												<tr>
													<td>���� ��¥ : <span id="today"></span> <br> <label
														for="fromDate">������&nbsp;</label> <input type="text"
														name="fromDate" id="fromDate">~ <label
														for="toDate">������&nbsp;</label> <input type="text"
														name="toDate" id="toDate"> <br>
													</td>
												</tr>
											</table>
											�ο�<select id="number" name="number" class="small"
												aria-required="true" aria-invalid="false"><option
													value="1">1��</option>
												<option value="2">2��</option>
												<option value="3">3��</option>
												<option value="4">4��</option>
												<option value="5">5��</option>
												<option value="6">6��</option>
												<option value="7">7��</option>
												<option value="8">8��</option>
												<option value="9">9��</option>
												<option value="10">10��</option></select>&nbsp;����<select id="partner"
												name="partner" class="small" aria-required="true"
												aria-invalid="false"><option value="">����</option>
												<option value="p1">�θ�</option>
												<option value="p2">����</option>
												<option value="p3">ģ��</option>
												<option value="p4">Ŀ��</option>
												<option value="p5">ȥ��</option></select>&nbsp;�����׸� <select
												id="concept" name="concept" aria-required="true"
												aria-invalid="false"><option value="">����
													������ �����ϼ���</option>
												<option value="c01">�޽İ� ġ�� ����</option>
												<option value="c02">������ ü��</option>
												<option value="c03">õõ�� �ȱ�</option>
												<option value="c04">�ĵ��� ����</option>
												<option value="c05">������ ��ȭ����</option>
												<option value="c06">���ÿ� ���</option>
												<option value="c07">����</option></select>
											<ul>
												<li class="radio_padding_box"><input type="radio"
													name="publishyn" id="public" value="y" aria-required="true"
													aria-invalid="false">����&nbsp;&nbsp;<input
													type="radio" name="publishyn" id="private" value="n"
													aria-required="true" aria-invalid="false"> �����</li>
											</ul>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" id="button2" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" id="button3" style="color: #696E7;"
										class="btn btn-primary">Save</button>
								</div>



							</div>
						</div>
					</div>
					<!-- end content -->
				</div>
				<!-- end container -->
</section>
<!-- end section -->
<script>
	function allowDrop(ev) {
		ev.preventDefault();
	}

	function drag(ev) {
		ev.dataTransfer.setData("text", ev.target.id);
	}

	function drop(ev) {
		ev.preventDefault();
		var data = ev.dataTransfer.getData("text");
		ev.target.appendChild(document.getElementById(data));
	}

	$(function(){
		//�޴� Ȱ��ȭ.
		$('.mypageMenu').first().attr('class','col-lg-2 col-md-2 col-sm-2 mypageMenu active');
	});
	
</script>
<%@include file="../main/footer.jsp"%>










