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
		<div class="tab-pane fade active in" id="images">
			<p>Raw denim you probably haven't heard of them jean shorts
				Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.
				Mustache cliche tempor, williamsburg carles vegan helvetica.
				Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby
				sweater eu banh mi, qui irure terry richardson ex squid. Aliquip
				placeat salvia cillum iphone. Seitan aliquip quis cardigan american
				apparel, butcher voluptate nisi qui.</p>

		</div>
		<div class="tab-pane fade" id="videos">
			<p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla
				single-origin coffee squid. Exercitation +1 labore velit, blog
				sartorial PBR leggings next level wes anderson artisan four loko
				farm-to-table craft beer twee. Qui photo booth letterpress, commodo
				enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum
				PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus
				mollit.</p>
		</div>
		<div class="tab-pane fade" id="jokes">
			<div class="alert alert-success own-area">
				<div id="joke-area">
					<div id="joke-area">${joke}</div>
				</div>
				<button id="newJoke" class="btn btn-default">Next</button>
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