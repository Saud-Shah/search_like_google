<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
	<style type="text/css">
		#search{
			padding-top: 200px; 
			margin: 0px 32%;
		}
		#suggestion{
			border: 1px solid black; 
			margin: 0px 32.5%;
			display: none;
		}
		p{
			text-align: left;
		}
		#suggestion p:hover{
			background-color: black;
			opacity: 0.6;
			color: white;
			text-align: left;
			cursor: pointer;
		}
		h1{
			font-family: "Lucida Console", "Courier New", monospace;
		}
		h2{
			color: blue;
		}
		#show_data h2:hover{
			text-decoration: underline;
			cursor: pointer;
		}
		#show_data{
			margin-left: 10%;
			margin-right: 25%;
			display: none;
		}
	</style>

</head>
<body>
	<div align="center" id="search">
		<h1>Search Posts</h1>
		<input type="text" id="search_input" style="width: 95%;  height: auto;" onkeyup="search()">
	</div>
	<div align="center" id="suggestion">
		
	</div>
	<br />
	<div id="show_data">
		
	</div>
	<script type="text/javascript">
		function search(){
			var search = document.getElementById("search_input").value;
			var ajax_request;

			if (search.length == 0) {
				document.getElementById("suggestion").innerHTML = "";
				document.getElementById("suggestion").style.display = "none";
			}else{



			if (window.XMLHttpRequest) {
				ajax_request = new XMLHttpRequest();
			}else{
				ajax_request = new ActiveXObject();
			}

			ajax_request.onreadystatechange = function(){
				if (ajax_request.readyState == 4 && ajax_request.status == 200) {
					
					document.getElementById("suggestion").innerHTML = ajax_request.responseText;
					document.getElementById("suggestion").style.display = "block";

				}
			}
			
			ajax_request.open("POST","search_process.php");
			ajax_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			ajax_request.send("action=suggest&search_input="+search);
		}
			
		}

		function showData(post_title){
			
			var ajax_request;

			if (window.XMLHttpRequest) {
				ajax_request = new XMLHttpRequest();
			}else{
				ajax_request = new ActiveXObject();
			}

			ajax_request.onreadystatechange = function(){
				if (ajax_request.readyState == 4 && ajax_request.status == 200) {

					document.getElementById("show_data").innerHTML = ajax_request.responseText;
					document.getElementById("show_data").style.display = "block";
					document.getElementById("suggestion").style.display = "none";
					document.getElementById("search_input").value = post_title;
				}
			}
			
			ajax_request.open("POST","search_process.php");
			ajax_request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
			ajax_request.send("action=show_data&post_title="+post_title);
		}

	</script>
</body>
</html>