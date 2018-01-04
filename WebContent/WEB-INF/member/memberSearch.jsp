<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style type="text/css">
	#btn_gr{
		margin-top: 50%;
	}
	 .btn {
	  margin-top:10px;
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
	</style>
<script type="text/javascript">
	$(function() {
		$("#emailSearch").click(function() {
			var name = $("#name").val();
			var phone = $("#phone").val();

			$.post("./memberSearch.member", {
				name : name,
				phone : phone
			}, function(data) {
				$("#showEmail").html(data);
			});
		})

		$("#searchBtn").click(function() {
			var email = $("#email").val();
			$.post("../email/searchMail.email", {email : email}, function(data) {
				$("#showEmail2").html(data);
			});
		})
	})
</script>
<title>아이디/비밀번호찾기</title>
</head>
<body>

	<section class="container">
		<div id="btn_gr">
			<button data-toggle="modal" data-target="#myModal" class="btn btn-block">아이디찾기</button>
			<button data-toggle="modal" data-target="#searchPw" class="btn btn-block">비밀번호찾기</button>
		</div>

		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
				<!-- 아이디찾기-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4>
							<span class="glyphicon glyphicon-list"></span> Email Search
						</h4>
					</div>
					<div class="modal-body">

						<label>NAME:</label> <input type="text" class="form-control" name="name" id="name" placeholder="가입하신 이름"><br>
						<label>PHONE:</label> <input type="text" class="form-control" name="phone" id="phone" placeholder="가입하신 핸드폰 번호">
						<button id="emailSearch" class="btn btn-block">Search</button>
						<br>

						<div id="showEmail" style="width: 300px; height: 300px;"></div>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="searchPw" role="dialog">
			<div class="modal-dialog">
				<!-- 비밀번호찾기-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4>
							<span class="glyphicon glyphicon-list"></span> Password Search
						</h4>
					</div>
					<div class="modal-body">

						<label>Email:</label> <input type="text" class="form-control" name="email" id="email" placeholder="가입하신 이메일로 비밀번호를 전송합니다."><br>
						<button id="searchBtn" class="btn btn-block">Send</button>
						<br>

						<div id="showEmail2" style="width: 300px; height: 300px;"></div>
					</div>
				</div>
			</div>
		</div>


	</section>
</body>
</html>