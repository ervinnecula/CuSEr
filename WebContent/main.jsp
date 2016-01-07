<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to CuSEr!</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script src="https://w.soundcloud.com/player/api.js"
	type="text/javascript"></script>
<script src="https://connect.soundcloud.com/sdk/sdk-3.0.0.js"></script>

</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="#images" data-toggle="tab">Images</a></li>
		<li><a href="#videos" data-toggle="tab">Videos</a></li>
		<li><a href="#jokes" data-toggle="tab">Jokes</a></li>
		<li><a href="#music" data-toggle="tab">Music</a></li>
		<li><a href="#yesorno" data-toggle="tab">Yes or No</a></li>
		<li><a href="#gifs" data-toggle="tab">GIFs</a></li>
		<li><a href="#cats" data-toggle="tab">Cats</a></li>
		<li><a href="#news" data-toggle="tab">News NYT</a></li>
	</ul>
	<div class="tab-content">
		<div class="tab-pane fade active in" id="images"></div>

		<div class="tab-pane fade" id="videos">
			<div class="alert alert-success own-area">
				<div id="putTheVideoHere"></div>
				<div id="videoError"></div>
				<select name="YTsearch" id="YTsearchList" class="form-control"></select>
				<button id="nextVideo" class="btn btn-default">Next</button>
			</div>
		</div>

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
							<div id="joke-area-norris"></div>
						</div>
						<button id="nextJokeNorris" class="btn btn-default">Next</button>
					</div>
				</div>
				<div class="tab-pane fade" id="yoMomma">
					<div class="alert alert-success own-area">
						<div id="joke-area">
							<div id="joke-area-yomomma"></div>
						</div>
						<button id="nextJokeMomma" class="btn btn-default">Next</button>
					</div>
				</div>
			</div>

		</div>
		<div class="tab-pane fade" id="music">
			<div class="alert alert-success own-area">
				<div id="putTheWidgetHere"></div>
				<div id="musicError"></div>
				<select name="genre" id="genreList" class="form-control"></select>
				<button id="nextSong" class="btn btn-default">Next</button>
			</div>
		</div>
		<div class="tab-pane fade" id="yesorno">
			<div class="alert alert-success own-area">
				<div id="yesOrNoArea">
					<img src="" alt="yesorno" id="yesOrNoImage" class="yesOrNoRemove">
				</div>
				<button id="nextYesOrNo" class="btn btn-default">Next</button>
			</div>
		</div>

		<div class="tab-pane fade" id="gifs">
			<div class="alert alert-success own-area">
				<div id="gifArea">
					<img src="" alt="gif" id="gifImage" class="gifImageRemove">
				</div>
				<input type="text" class="form-control" id="gifInput"
					placeholder="Keywords">
				<button id="nextGif" class="btn btn-default">Next</button>
			</div>
		</div>

		<div class="tab-pane fade" id="cats">
			<div class="alert alert-success own-area">
				<div id="catArea">
					<img src="" alt="cat" id="catImage" class="catRemove">
				</div>
				<button id="nextCat" class="btn btn-default">Next</button>
			</div>
		</div>

		<div class="tab-pane fade" id="news">
			<div class="alert alert-success own-area">
				<div id="newsArea">
					
					<h2 id="titleArticle"></h2>
				
					<h6 id="categoryArticle"></h6>
					<blockquote>
						<p id="headingArticle"></p>
						<small> <a href="" id="readMoreArticle" class="text-warning">Read
								More on the NYT</a>
						</small>
					</blockquote>
				</div>

				<div class="row">
					<div class="col-md-6">
						<select class="form-control" id="articleList" name="articleList">
							<option>Random</option>
							<option>U.S.</option>
							<option>Health</option>
							<option>Arts</option>
							<option>Blogs</option>
							<option>Economy</option>
							<option>Business Day</option>
							<option>Technology</option>
							<option>Health</option>
							<option>Movies</option>
							<option>Sports</option>
							<option>World</option>
						</select>
					</div>
					<div class="col-md-6">
						<input type="text" class="form-control col-md-6" id="inputYear"
							placeholder="Pick a year starting 1860">
						<input value="0" type="hidden" id="counter"/>
						
					</div>
				</div>
				
				<div class="alert alert-dismissible alert-danger" id="yearAlert">
					<button type="button" class="close" id="closeEx">x</button>
					<strong>Oh snap!</strong> There was a problem with the year inserted
				</div>
				
				<button id="nextArticle" class="btn btn-default">Next</button>
			</div>
		</div>

	</div>
	<script type="text/javascript" src="js/ajaxRequests.js"></script>
</body>
</html>