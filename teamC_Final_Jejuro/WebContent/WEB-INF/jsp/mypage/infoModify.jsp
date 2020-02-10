<%@include file="../main/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<style>
#div1, #div2 {
	float: left;
	width: 100px;
	height: 80px;
	margin: 10px;
	padding: 10px;
	border: 1px solid black;
}

.config_table .t_input {
	height: 29px;
	line-height: 29px;
	border: 1px solid #c8c8ca;
	width: 421px;
	padding-left: 15px;
}
</style>
<section class="post-wrapper-top">
	<div class="container">
		<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
			<ul class="breadcrumb">
				<li><a href="home">Home</a></li>
				<li>����������</li>
			</ul>
			<h2>��������</h2>
		</div>
	</div>
</section>
<!-- end post-wrapper-top -->

<section class="section1">
	<div class="container clearfix">
		<div class="content col-lg-12 col-md-12 col-sm-12 clearfix">
			<div class="clearfix"></div>

			<div class="content col-lg-2 col-md-2 col-sm-2 clearfix"></div>
			<div class="content col-lg-8 col-md-8 col-sm-8">

				<div style="text-align: center;">
					<h2>ȸ�� ���� ����</h2>
				</div>
				<div></div>
				<form action="" method="post" id="modifyForm">
				<input type="hidden" name="uNo" id="uNo" value="${detail.uNo }">
					<table class="config_table" style="width:100%;">
						<colgroup>
							<col width=250 />
							<col width=* />
						</colgroup>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸�-->�̸�
							</th>
							<td><input type="text" name="uName" class="t_input" id="uName"
								value="${detail.uName }" /></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸�-->���̵�
							</th>
							<td><input type="text" name="uuId" id="uuId" class="t_input" value="${detail.uuId }"
								disabled /></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--��й�ȣ-->��й�ȣ
							</th>
							<td><a href="#" data-toggle="modal"
						data-target="#pwdCheck" class="pw_reset"> <!--�缳��-->��й�ȣ �缳��
							</a></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸��� �ּ�-->�̸��� �ּ�
							</th>
							<td><input type="text" name="uEmail" class="t_input"
								value="${detail.uEmail }"/></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--����-->����
							</th>
							<td><input type="radio" value="M" name="uGender" id="ugender_m">&nbsp;����
								&nbsp;&nbsp; <input type="radio" value="F" name="uGender" id="ugender_f">&nbsp;����
								&nbsp;&nbsp;</td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸��� �ּ�-->�������
							</th>
							<td><input type="text" name="uBirth" class="t_input"
								value="${detail.uBirth }"/></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸�-->��ȭ��ȣ
							</th>
							<td><input type="text" name="uPhone" class="t_input" id="uPhone"
								value="${detail.uPhone }" /></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸�-->�̹���
							</th>
							<td>
								<img alt="" src="">
								<input type="file" name="uImg" id="uImg" value="teamC" />
							</td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<th>
								<!--�̸�-->������
							</th>
							<td><input type="text" name="uDate" class="t_input" id="uDate"
								value="${detail.uDate }" disabled /></td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
							<td class="space">&nbsp;</td>
						</tr>
						<tr>
						<td>
							<a href="user_delete?uno=${detail.uNo }">ȸ��Ż��</a>
						</td>							
						<td style="float: right;">
							<button type="submit" style="font-size: medium;" id="update">������� ����</button>
						</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="content col-lg-2 col-md-2 col-sm-2 clearfix"></div>

			<!-- �⺻ ��� -->
					<div class="modal fade" id="pwdCheck" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content" style="width: 480px;">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">
										<span aria-hidden="true">��</span><span class="sr-only">Close</span>
									</button>
									<h3 class="modal-title" id="myModalLabel"
										style="text-align: center;">��й�ȣ �缳��</h3>
								</div>
								<div class="modal-body">
									<div class="modal-div">
										<form action="pwdUpdate" method="post" name="pwdUpdateForm" id="pwdUpdate">
										<input type="hidden" name="uNo" id="uNo" value="${detail.uNo }">
											<table style="margin-left: 80px;">
												<tr>
													<td>���� ��й�ȣ&nbsp;&nbsp; </td>
													<td><input type="password" name="old_pwd" id="old_pwd"></td>
												</tr>
												<tr>
													<td colspan="2"></td>
												</tr>
												<tr>
													<td>�ű� ��й�ȣ&nbsp;&nbsp; </td>
													<td><input type="password" name="new_pwd" id="new_pwd"></td>
												</tr>
												<tr>
													<td colspan="2"></td>
												</tr>
												<tr>
													<td>�ű� ��й�ȣ Ȯ��&nbsp;&nbsp; </td>
													<td><input type="password" name="uPwd" id="pwd_vali"></td>
												</tr>
												<tr>
													<td colspan="2"></td>
												</tr>
											</table>
										</form>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" id="button2" class="btn btn-default"
										data-dismiss="modal">Close</button>
									<button type="button" id="pwdCheckBtn" style="color: #696E7;"
										class="btn btn-primary">Save</button>
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
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
$(function(){
	
	//ȸ������ ���� radioButton �ʱⰪ ����.
	var ugender='${detail.uGender}';
	if(ugender=='M'){
		$('#ugender_m').attr("checked", true);
	}else{
		$('#ugender_f').attr("checked", true);
	}
	
	//ȸ������ ����
	$('#modifyForm').attr('action','infoUpdate');
	$('#update').click(function(){
		console.log('sss');
		$('#modifyForm').attr('action','infoUpdate');
		$('#modifyForm').submit();
	});
	
	//��й�ȣ üũ �� ����
	$('#pwdCheckBtn').click(function(){
		var old_pwd = $('#old_pwd').val();
		var new_pwd = $('#new_pwd').val();
		var pwd_vali = $('#pwd_vali').val();
		
		console.log(old_pwd);
		console.log(new_pwd);
		console.log(pwd_vali);
		console.log(${detail.uPwd});
		if(old_pwd == ''){
			alert('��й�ȣ�� �ʼ������Դϴ�.');
		}else if(old_pwd!=${detail.uPwd}){
			alert('���� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.');
		}else if(new_pwd == ''){
			alert('�ű� ��й�ȣ�� �Է��� �ּ���.');
		}else if(pwd_vali == ''){
			alert('�ű� ��й�ȣ Ȯ���� �Է��� �ּ���.');
		}else if(new_pwd != pwd_vali){
			alert('�űԺ�й�ȣ�� ��й�ȣ Ȯ�� ���ڰ� ��ġ���� �ʽ��ϴ�.');
		}else{
			$('#pwdUpdate').submit();
		}
	});
	
	
});
</script>
<%@include file="../main/footer.jsp"%>



