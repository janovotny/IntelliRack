<?php
	if(!isset($_POST['title']) || !isset($_POST['content'])){


	echo '
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
			</script>
		</head>
		<body>
			<h1>IntelliRack Webinterface</h1>';


			
	if(!isset($_GET['id']) || !isset($_GET['rid']))
		die("ID invalid");

	$filehandler2=fopen(base64_decode($_GET['id']), "r" );
	$img_src = str_replace("/var/www/", "/", implode(explode("/", base64_decode($_GET['id']), -1), "/") . '/0.jpg');
	$dvd_lines=fgets($filehandler2);
	echo '
	<form action="edit.php?rid=' . $_GET['rid'] . '&id=' . $_GET['id'] . '" method="POST">
		<div class="movie_expanded">
		<img src="' . $img_src . '" border="0">
		<table>
			<tr>
				<td style="padding-left: 20px;"><input type="text" name="title" value="' . $dvd_lines . '"><br><br>
				<textarea name="content" rows="20" cols="200">';
				
				$id = 0;
				while(($dvd_lines=fgets($filehandler2))!==FALSE){
					echo $dvd_lines;
					
					$id++;
				}
				
				echo '
				</textarea><br><br>
				<input type="submit" value="Speichern" style="font-size: 12pt;">
				<input type="button" value="Abbrechen" onclick="window.location.href=\'index.php#' . $_GET['rid'] . '\'" style="font-size: 12pt;"></td>
			</tr>
		</table>
	</div>
	</form>
	<br><br>
	
	</body>
	</html>';
	
	fclose($filehandler2);



	}
	 else {
		 $filehandler=fopen(base64_decode($_GET['id']), "w");
		 fwrite($filehandler, $_POST['title'] . "\n" . str_replace("\n\n", "\n", $_POST['content']) . "\n");
		 fclose($filehandler);
		 
		 header('Location: index.php#' . $_GET['rid']);
	 }
	 
?>