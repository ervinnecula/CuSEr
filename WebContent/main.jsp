<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="#images" data-toggle="tab">Images</a></li>
		<li><a href="#videos" data-toggle="tab">Videos</a></li>
		<li><a href="#jokes" data-toggle="tab">Jokes</a></li>
		<li><a href="#music" data-toggle="tab">Music</a></li>
		<li><a href="#yesorno" data-toggle="tab">Yes or No</a>
	</ul>
	<div class="tab-content">
		<div class="tab-pane fade active in" id="images"></div>
		<div class="tab-pane fade" id="videos"></div>
		<div class="tab-pane fade" id="jokes">
			<ul id="inner-nav" class="nav nav-tabs">
				<li class="inner-menu active"><a href="#norris"
					data-toggle="tab" aria-expanded="true">Norris</a></li>
				<li class="inner-menu"><a href="#yoMomma" data-toggle="tab"
					aria-expanded="false">Yo Momma</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane fade active in" id="norris">
					<div class="alert alert-success own-area">
						<div id="joke-area">
							<div id="joke-area-norris">${jokeNorris}</div>
						</div>
						<button id="newJokeNorris" class="btn btn-default">Next</button>
					</div>
				</div>
				<div class="tab-pane fade" id="yoMomma">
					<div class="alert alert-success own-area">
						<div id="joke-area">
							<div id="joke-area-yomomma">${jokeMomma}</div>
						</div>
						<button id="newJokeMomma" class="btn btn-default">Next</button>
					</div>
				</div>
			</div>

		</div>
		<div class="tab-pane fade" id="music">
			<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy
				art party before they sold out master cleanse gluten-free squid
				scenester freegan cosby sweater. Fanny pack portland seitan DIY, art
				party locavore wolf cliche high life echo park Austin. Cred vinyl
				keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table
				VHS viral locavore cosby sweater.</p>
		</div>
		<div class="tab-pane fade" id="yesorno">
			<div class="alert alert-success own-area">
				<div id="yesOrNoArea">
					<img src="${yesOrNo}" alt="yesorno" id="yesOrNoImage">
				</div>
				<button id="nextYesOrNo" class="btn btn-default">Next</button>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="js/ajaxRequests.js"></script>
</body>
</html>