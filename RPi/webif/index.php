<!DOCYTPE html>
<html>
<head>
	<title>IntelliRack</title>
	<link rel="stylesheet" type="text/css" href="style.css">
	
	<script type="text/javascript">
		function expand(id){
			if(document.getElementById(id).style.height == "auto"){
				document.getElementById(id).style.height = "350px";
			} else {
				document.getElementById(id).style.height = "auto";
			}
		}

		function find_hell(){
			var filter_str=document.getElementById("search").value;
			var i=0;
			var movie;
			filter_str=filter_str.toLowerCase();

			while(movie=document.getElementById(i + "")){
				movie=movie.innerHTML;
				movie=movie.replace(/<[^<]*>/g, "");
				movie=movie.toLowerCase();
							
				//alert("Find: "+filter_str+" in this:"+movie);
				if(movie.indexOf(filter_str)<0){
					document.getElementById(i).style.display="none";
				}
				else
				{
					document.getElementById(i).style.display="block";
				}
				i++;
			}
		}
	</script>
</head>
<body>
<h1>IntelliRack Webinterface</h1>
<br>
Suche: <input id="search" type="text" onchange="javascript:find_hell()">
<br>
<br>

<?php
$filehandler=fopen("/var/www/IntelliRack/RPi/storage","r") or die("<script type='text/javascript'>window.location.reload()</script>");

$storage_index = array();
$id = 0;

while(($line=fgets($filehandler))!==FALSE){

	$line_index = explode(":", $line, 2);
	array_push($storage_index, $line_index);

	$filehandler2=fopen("/var/www/IntelliRack/RPi/".str_replace("\n", "", $line_index[1]), "r" );
	$img_src = "/IntelliRack/RPi/".implode(explode( "/", $line_index[1], -1), "/") . '/0.jpg';
	$dvd_lines=fgets($filehandler2);
	echo '
	<div class="movie" id="' . $id . '" onclick="javascript:expand(' . $id . ')">
	<img src="' . $img_src . '">
		<table>
			<tr>
				<td style="padding-left: 20px;"><span class="title">' . $dvd_lines . '</span><div class="info"><br>';
				
				while(($dvd_lines=fgets($filehandler2))!==FALSE){

					$pattern = '/([^:]*): ([^:]*)/';
					$replacement = '<h3>${1}</h3>${2}';
					echo preg_replace($pattern, $replacement, str_replace(">", '&gt;', str_replace("<", '&lt;', $dvd_lines)));
					echo'<br>';
				}
				
				echo'
				<br>
				<input type="button" value="Bearbeiten" style="font-size: 12pt;" onclick="window.location.href=\'edit.php?rid=' . $id . '&id=' . base64_encode("/var/www/IntelliRack/RPi/".str_replace("\n", "", $line_index[1])) . '\'">
				</div></td>
			</tr>
		</table>
	</div>';
	
	$id++;
	fclose($filehandler2);
}

fclose($filehandler);

?>


</body>
</html>
