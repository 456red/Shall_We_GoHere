<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="../css/memberUpdate.css" rel="stylesheet">
<script type="text/javascript">
	$(function() {
		$("#updatebtn").click(function() {
			if ($("#password").val() == $("#password2").val()) {
				$("#myModal form").submit();
			} else {
				alert("비밀번호가 서로 같지 않습니다.")
				$("#password2").popover();
			}
		});
		
		$("#deletebtn2").click(function() {
			if($("#deletepassword").val() == ${member.password}){
				$("#deletefrm").submit();
			}else{
				alert("비밀번호가 서로 같지 않습니다.")
			}
		})

	});
</script>
</head>
<body>
	<section id="update">
		<section>
			<table class="table">
				<thead>
					<tr>
						<th>EMAIL</th>
						<th>NAME</th>
						<th>PHONE</th>
						<th>JOIN_DATE</th>
						<th>POINT</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${member.email}</td>
						<td>${member.name}</td>
						<td>${member.phone}</td>
						<td>${member.join_date}</td>
						<td>${member.point}</td>
					</tr>
				</tbody>
			</table>
			<button class="btn btn-warning" data-toggle="modal"
				data-target="#myModal" style="margin-top: 120px;">수정하기</button>



		</section>
	</section>

	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4>
						<span class="glyphicon glyphicon-list"></span> User Update
					</h4>
				</div>
				<div class="modal-body">
					<form action="./memberUpdate.member" method="post" id="#updatefrm">
						<div class="form-group">
							<label>EMAIL:</label> <input type="text" class="form-control"
								value="${member.email}" name="email" readonly="readonly">
						</div>
						<div class="form-group">
							<label>NAME:</label> <input type="text" class="form-control"
								value="${member.name}" name="name">
						</div>
						<div class="form-group">
							<label>PASSWORD:</label> <input type="password"
								class="form-control" name="password" id="password"
								value="${member.password}">
						</div>
						<div class="form-group">
							<label>PASSWORD CHECK:</label> <input type="password"
								class="form-control" id="password2" data-toggle="popover"
								data-content="다시확인하세요." data-placement="bottom">
						</div>
						<div class="form-group">
							<label>PHONE:</label> <input type="text" class="form-control"
								value="${member.phone}" name="phone">
						</div>
						<input type="hidden" value="${member.point}" name="point">
						<input type="hidden" value="${member.join_date}" name="join_date">
					</form>
					<button id="updatebtn">수정</button>
					<button id="deletebtn" data-toggle="modal"
						data-target="#deleteModal">탈퇴</button>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
				</div>
			</div>
		</div>
	</div>

	<!-- delete modal -->
	<div class="modal fade" id="deleteModal" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">×</button>
					<h4>
						<span class="glyphicon glyphicon-remove"></span> User Delete
					</h4>
				</div>

				<div class="modal-body">
					<form action="./memberDelete.member" method="post" id="deletefrm">

						<div class="form-group">
							<label>EMAIL:</label> <input type="text" value="${member.email}"
								readonly="readonly" name="email">
						</div>

						<div class="form-group">
							<label>NAME:</label> <input type="text" value="${member.name}"
								readonly="readonly">
						</div>

						<div class="form-group">
							<label>PASSWORD:</label> <input type="password" name="password"
								id="deletepassword" data-toggle="popover"
								data-content="다시확인하세요." data-placement="bottom">
						</div>

						<div class="form-group">
							<label>JOINDATE:</label> <input type="text" name="join_date"
								value="${member.join_date}" readonly="readonly">
						</div>
						<div class="form-group">
							<label>REASON:</label> <select id="select" name="reason">
								<option value="가">가</option>
								<option value="나">나</option>
								<option value="다">다</option>
							</select>
						</div>
						<input type="button" value="탈퇴" id="deletebtn2">
					</form>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger btn-default pull-left"
						data-dismiss="modal">
						<span class="glyphicon glyphicon-remove"></span> Cancel
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>