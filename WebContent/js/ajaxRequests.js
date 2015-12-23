$("#newJokeNorris").click(function() {
	$.ajax({
		url : "http://api.icndb.com/jokes/random/",
		success : function(result) {
			obj = result['value'];
			var joke = obj['joke'];
			$("#joke-area-norris").html(joke);
		}
	});
});

$("#newJokeMomma").click(function() {
	$.ajax({
		url : "http://api.yomomma.info/",
		type : 'GET',
		dataType : 'json',
		success : function(result) {
			var joke = result['joke'];
			$("#joke-area-yomomma").html(joke)
		}
	});
});

$("#nextYesOrNo").click(function() {
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
		}
	});
});

