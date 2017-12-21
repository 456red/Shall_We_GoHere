<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body>
	<section class="main">
		<article class="board">
		<div id="demo" class="carousel slide" data-ride="carousel">

			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
				<li data-target="#demo" data-slide-to="3"></li>
				<li data-target="#demo" data-slide-to="4"></li>
			</ul>

			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="<%=request.getContextPath()%>/images/sell/a.PNG" alt="a"
						width="1400" height="500">
				</div>
				<div class="carousel-item">
					<img src="<%=request.getContextPath()%>/images/sell/d.PNG" alt="d"
						width="1400" height="500">
				</div>
				<div class="carousel-item">
					<img src="<%=request.getContextPath()%>/images/sell/z.PNG" alt="z"
						width="1400" height="500">
				</div>
				<div class="carousel-item">
					<img src="<%=request.getContextPath()%>/images/sell/d.PNG" alt="d"
						width="1400" height="500">
				</div>
				<div class="carousel-item">
					<img src="<%=request.getContextPath()%>/images/sell/z.PNG" alt="z"
						width="1400" height="500">
				</div>
			</div>

			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon"></span>
			</a> <a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon"></span>
			</a>
		</div>
		</article>
	</section>

	<section class="kate_board">
		<ul class="kate_line">
			<li id="s">
			<a href="#"> 
			<img alt="" src="<%=request.getContextPath()%>/images/sell/kate.PNG" 
			width="27" height="25" class="icon">ALL</a>
			</li>
			<li><a href="./usage.sell">USAGE</a></li>
			<li><a href="./exchange.sell">EXCHANGE</a></li>
			<li><a href="./purchase.sell">PURCHASE</a></li>
			<li class="dropdown">
				<a href="#" class="dropbtn">COMMUNITY</a>
				<div class="dropdown-content">
					<a href="./reviewList.sell">REVIEW</a> 
					<a href="./noticeList.sell">NOTICE</a>
					<a href="./qnaList.sell">Q＆A</a>
				</div></li>
		</ul>
	</section>
</body>
