<!DOCYTPE html>
<html>
<head>
	<title>IntelliRack</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<h1>IntelliRack Webinterface</h1>


<?php
$filehandler=fopen("/var/www/IntelliRack/RPi/storage","r") or die("<script type='text/javascript'>window.location.reload()</script>");

$storage_index = array();

while(($line=fgets($filehandler))!==FALSE){

	$line_index = explode(":", $line, 2);
	array_push($storage_index, $line_index);

	$filehandler2=fopen("/var/www/IntelliRack/RPi/".str_replace("\n", "", $line_index[1]), "r" );
	$img_src = "/IntelliRack/RPi/".implode(explode( "/", $line_index[1], -1), "/") . '/0.jpg';
	$dvd_lines=fgets($filehandler2);
	echo '
	<div class="movie">
	<img src="' . $img_src . '">
		<table>
			<tr>
				<td style="padding-left: 20px;"><span class="title">' . $dvd_lines . '</span><div class="info"><br>';
				
				while(($dvd_lines=fgets($filehandler2))!==FALSE){

					$pattern = '/([^:]*): ([^:]*)/';
					$replacement = '<h3>${1}</h3>${2}';
					echo preg_replace($pattern, $replacement, $dvd_lines);
					echo'<br>';
				}
				
				echo'</div></td>
			</tr>
		</table>
	</div><br><br>';
}

fclose($filehandler);

?>


</body>
</html>
