<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="../css/header.css" rel="stylesheet">
<link href="../css/mypage.css" rel="stylesheet">
<script type="text/javascript">
$(function(){
	$('modal').modal({backdrop: 'static'});

	
	$("#update").click(function(){
		window.open("./memberUpdate.member","","top=300, left=750, width=500, height=600");	
	})
	$(".myPageMenu").hover(function(){
		$(this).css("box-shadow","5px 0px 40px rgba(0,0,0, .2)");
		$(this).find("span").css("color","red");
		$("table").find("span").css("color","black");
	}, function(){
		$(this).css("box-shadow","none");
		$(this).find("span").css("color","white");
		
	})
	$("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	$(".list").click(function(){
		 var cur = $(this).attr("title");
		 document.frm.curPage.value=cur;
		 document.frm.submit();
	 });
})
</script>
</head>
<body>
	<%@include file="../temp/header.jsp"%>
	<section id="myPageAll">
		<div id="myPage">
		<section id="myPage_hd">
			<section id="myPage_hd_alert">
			<h1>${member.name}님 ${member.point}점</h1>
			</section>
		</section>
		<c:if test="${member.email eq 'gohere@gohere.gohere'}">
		<a href="#" data-toggle="modal" data-target="#myModal">
			<div class="myPageMenu">
				<span class="glyphicon glyphicon-user logo-small"></span>
				<h4>List</h4>
				<h5>고객리스트</h5>		
		</div>
		<a href="#">
	     <div class="myPageMenu">
		  <span class="glyphicon glyphicon-list-alt logo-small"></span>	
			<span class="label label-danger">New</span>
				<h4>Plan</h4>
				<h5>제발</h5>
		</div>
			</a>
		
		<a href="#">
			<div class="myPageMenu">
				<span class="glyphicon glyphicon-shopping-cart logo-small"></span>
				<h4>Point</h4>
				<h5>되라</h5>
		</div>
		</a>
		<section id="myPageMenu_ft">
			<a href="#">
				<div class="myPageMenu">
					<span class="glyphicon glyphicon-cloud logo-small"></span>
					<h4>Q&A</h4>
					<h5>이게</h5>
		</div>
			</a>
		<a href="#">
	     <div class="myPageMenu">
		  <span class="glyphicon glyphicon-list-alt logo-small"></span>	
			<span class="label label-danger">New</span>
				<h4>Plan</h4>
				<h5>제발</h5>
		</div>
			</a>
			</section>
			</div>
			 <!-- User List Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">×</button>
          <h4><span class="glyphicon glyphicon-list"></span> User List</h4>
        </div>
        <div class="modal-body">
          <form role="form" action="">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Search User</label>
              <input type="text" class="form-control" id="myInput" placeholder="Enter email">
            </div>
              <div class="table-responsive">    
              <div>
	</div>
	<div style="height: 300px; overflow-y: scroll">
  <table class="table">
    <thead>
      <tr>
        <th>Num</th>
        <th>Email</th>
        <th>Name</th>
        <th>Join_DATE</th>
        <th>Point</th>
        <th>Phone</th>
      </tr>
    </thead>
    <tbody id="myTable" style="overflow-y:auto;">
    <c:forEach begin="1" end="${ar.size()-1}" var="i">
      <tr>
        <td>${i}</td>
        <td>${ar[i].email}</td>
        <td>${ar[i].name}</td>
        <td>${ar[i].join_date}</td>
        <td>${ar[i].point}</td>
        <td>${ar[i].phone}</td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
	</div>      

  </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal">
            <span class="glyphicon glyphicon-remove"></span> Cancel
          </button>
        </div>
      </div>
    </div>
  </div>
		</c:if>
		<c:if test="${member.email ne 'gohere@gohere.gohere'}">
			<a href="#">
				<div class="myPageMenu" id="update">
					<span class="glyphicon glyphicon-user logo-small"></span>
					<h4>Profile</h4>
					<h5>회원정보수정</h5>			
		</div>
			</a>
		<a href="#">
			<div class="myPageMenu">
			<span class="glyphicon glyphicon-list-alt logo-small"></span>	
			<span class="label label-danger">New</span>
				<h4>Plan</h4>
				<h5>나의여행일정</h5>
		</div>
		</a>
		<a href="#">
			<div class="myPageMenu">
				<span class="glyphicon glyphicon-shopping-cart logo-small"></span>
				<h4>Point</h4>
				<h5>포인트사용</h5>
		</div>
		</a>
		<section id="myPageMenu_ft">
			<a href="#">
				<div class="myPageMenu">
					<span class="glyphicon glyphicon-cloud logo-small"></span>
					<h4>Q&A</h4>
					<h5>문의사항</h5>
				
		</div>
			</a>
			<a href="#">
				<div class="myPageMenu">
					<span class="glyphicon glyphicon-user logo-small"></span>
					<h4>Profile</h4>
					<h5>회원정보수정</h5>		
		</div>
			</a>
		</section>
			</div>
		</c:if>
	</section>
</body>
</html>