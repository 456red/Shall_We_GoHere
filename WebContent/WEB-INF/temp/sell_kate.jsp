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
				</ul>

				<div class="carousel-inner">
					<div class="carousel-item active">
						<img src="<%=request.getContextPath()%>/images/sell/board_2.jpg"
							alt="board_2" width="1300" height="500">
					</div>
					<div class="carousel-item">
						<img src="<%=request.getContextPath()%>/images/sell/board_1.jpg"
							alt="board_1" width="1300" height="500">
					</div>
					<div class="carousel-item">
						<img src="<%=request.getContextPath()%>/images/sell/board_3.jpg"
							alt="board_3" width="1300" height="500">
					</div>
					<div class="carousel-item">
						<img src="<%=request.getContextPath()%>/images/sell/board_4.jpg"
							alt="board_4" width="1300" height="500">
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
			<li id="s" class="dropdown"><a href="#" class="dropbtn"> <img
					alt="" src="<%=request.getContextPath()%>/images/sell/kate.PNG"
					width="27" height="25" class="icon">ALL
			</a>
				<div class="dropdown-content">
					<a href="./reviewList.sell">REVIEW</a> <a href="./noticeList.sell">NOTICE</a>
					<a href="./qnaList.sell">Q＆A</a>
				</div></li>
			<li><a href="./reviewList.sell">REVIEW</a></li>
			<li><a href="./noticeList.sell">NOTICE</a></li>
			<li><a href="./qnaList.sell">Q＆A</a></li>
		</ul>
	</section>
</body>
