<?php
	
	$host = "localhost";
	$user = "root";
	$pass = "";
	$db = "emlak_db";
	
	$veriyolu = @mysql_connect ("$host" , "$user" , "$pass" ) or die("baglanmadi");

	mysql_select_db( "$db" , $veriyolu );
	mysql_query("SET NAMES 'utf8'"); 
	mysql_query("SET CHARACTER SET utf8"); 
	mysql_query("SET COLLATION_CONNECTION = 'utf8_turkish_ci'");  


?>