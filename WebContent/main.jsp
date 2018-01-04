<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
#topAutoScroll img {max-width:50px; z-index:999; position:fixed; bottom:0px; right:0px;}
</style>

<script type="text/javascript">

	$(function(){
		
		$(window).scroll(function() {
			$(".slideanim").each(function() {
				var pos = $(this).offset().top;

				var winTop = $(window).scrollTop();
				if (pos < winTop + 600) {
					$(this).addClass("slide");
				}
			});
		});
	})
</script>
<link href="./css/reset.css">
<link href="./css/header.css" rel="stylesheet">
<link href="./css/section.css" rel="stylesheet">
</head>
<body>

	<%@include file="./WEB-INF/temp/scroll.jsp" %>
	<%@include file="./WEB-INF/temp/header.jsp"%>
	<section id="main">
		<section id="subMain">
			<section id="contents">
				<div class="container">
					<div id="myCarousel" class="carousel slide" data-ride="carousel">

						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<a href="#"><img src="./images/common/(20)_leeglu56.jpg"
									style="width: 1300px; height: 500px;"></a>
							</div>

							<div class="item">
								<img src="./images/common/대저생태공원03.jpg"
									style="width: 1300px; height: 500px;">
							</div>

							<div class="item">
								<img src="./images/common/풍경.jpg"
									style="width: 1300px; height: 500px;">
							</div>
						</div>
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</section>
		</section>
		
		<div id="portfolio" class="container-fluid text-center bg-grey">
			<h2>Portfolio</h2>
			<br>
			<h4>What we have created</h4>
			<div class="row text-center slideanim">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="./images/common/paris.jpg" alt="Paris" width="400"
							height="300">
						<p>
							<strong>Paris</strong>
						</p>
						<p>Yes, we built Paris</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="./images/common/newyork.jpg" alt="New York" width="400"
							height="300">
						<p>
							<strong>New York</strong>
						</p>
						<p>We built New York</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="./images/common/sanfran.jpg" alt="San Francisco"
							width="400" height="300">
						<p>
							<strong>San Francisco</strong>
						</p>
						<p>Yes, San Fran is ours</p>
					</div>
				</div>
			</div>
			<br>
		</div>
		<div id="portfolio" class="container-fluid text-center bg-grey">
			<h2>Portfolio</h2>
			<br>
			<h4>What we have created</h4>
			<div class="row text-center slideanim">
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="./images/common/paris.jpg" alt="Paris" width="400"
							height="300">
						<p>
							<strong>Paris</strong>
						</p>
						<p>Yes, we built Paris</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="./images/common/풍경1.jpg" alt="New York" width="400"
							height="300">
						<p>
							<strong>New York</strong>
						</p>
						<p>We built New York</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="thumbnail">
						<img src="./images/common/대저생태공원03.jpg" alt="San Francisco"
							width="400" height="300">
						<p>
							<strong>San Francisco</strong>
						</p>
						<p>Yes, San Fran is ours</p>
					</div>
				</div>
			</div>
			<br>
		</div>

	</section>
	


</body>
</html>