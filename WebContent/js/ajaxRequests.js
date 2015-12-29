function loadNorris() {
	$.ajax({
		url : "http://api.icndb.com/jokes/random/",
		success : function(result) {
			obj = result['value'];
			var joke = obj['joke'];
			$("#joke-area-norris").html(joke);
		},
		failure : function() {
			// TODO
		}
	});
}

function loadYoMomma() {
	$.ajax({
		url : "http://api.yomomma.info/",
		type : 'GET',
		dataType : 'json',
		success : function(result) {
			var joke = result['joke'];
			$("#joke-area-yomomma").html(joke)
		},
		failure : function() {
			// TODO
		}
	});
}

function loadYesOrNo() {
	$.ajax({
		url : "http://yesno.wtf/api/",
		success : function(result) {
			obj = result;
			var yesOrNo = obj['image'];
			var img = new Image();
			var div = document.getElementById('yesOrNoArea');
			$("#yesOrNoImage").remove();
			img.onload = function() {
				div.appendChild(img);
			};

			img.src = yesOrNo;
			img.id = "yesOrNoImage";
		},
		failure : function() {
			// TODO
		}
	});
}

function loadSong(genre) {
	var client_id = '&client_id=ffcaccc2a3bf0998c26d5a980a8b8607';
	var baseURL = 'http://api.soundcloud.com/tracks?genres=';

	if (genre == 'random') {
		var availableTags = [ "rock", "dance", "electro", "classical", "tango",
				"pop", "country", "indie", "punk", "blues", "jazz", "choral",
				"medieval", "reggae", "hip hop", "opera", "random" ];

		var rand = availableTags[Math.floor(Math.random() * 17)];

		URL = baseURL.concat(rand).concat(client_id);
	}

	else {
		URL = baseURL.concat(genre).concat(client_id);
	}

	$
			.ajax({
				type : 'GET',
				dataType : 'json',
				url : URL,
				success : function(result) {
					var random = Math
							.floor((Math.random() * result.length) + 1);
					var randomObj = result[random];

					var link = randomObj['permalink_url'];
					SC.oEmbed(link, {
						element : document.getElementById('putTheWidgetHere')
					});
				},
				failure : function() {
					document.getElementById('musicError').innerHTML = "There was a problem loading the song, try again";
				}
			});

}

function loadSongOptions() {

	var s = document.getElementById('genreList');
	var availableTags = [ "random", "dance", "electro", "classical", "tango",
			"pop", "country", "indie", "punk", "blues", "jazz", "choral",
			"medieval", "reggae", "hip hop", "opera", "rock" ];

	for (var i = 0; i < availableTags.length; i++) {
		var t = document.createElement("option");
		t.textContent = availableTags[i];
		s.appendChild(t);
	}
}

function loadGIF(tag) {

	if (tag == 'random') {
		var URL = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC";
	}
	
	else {
		var URL = "http://api.giphy.com/v1/gifs/random?api_key=dc6zaTOxFJmzC&tag=".concat(tag);
	}
	$.ajax({
		url : URL,
		success : function(result) {
			obj = result;
			var giphyObj = obj['data'];
			var imageURL = giphyObj['image_url'];
			var img = new Image();
			var div = document.getElementById('gifArea');
			$("#gifImage").remove();
			img.onload = function() {
				div.appendChild(img);
			};

			img.src = imageURL;
			img.id = "gifImage";
		},
		failure : function() {
			// TODO
		}
	});
}

$(document).ready(function() {
	loadSong('random');
});

$(document).ready(function() {
	loadYesOrNo();
});

$(document).ready(function() {
	loadYoMomma();
});

$(document).ready(function() {
	loadNorris();
});

$(document).ready(function() {
	loadSongOptions();
});

$(document).ready(function() {
	loadGIF('random');
});

$("#nextSong").click(function() {
	loadSong($("#genreList option:selected").text());
});

$("#nextYesOrNo").click(function() {
	loadYesOrNo();
});

$("#nextJokeMomma").click(function() {
	loadYoMomma();
});

$("#nextJokeNorris").click(function() {
	loadNorris();
});

$("#nextGif").click(function() {
	var gifInput = document.getElementById('gifInput').value
	loadGIF(gifInput);
});