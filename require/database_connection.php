<?php
	$connection = mysqli_connect("localhost","root","","posts");

	if(mysqli_connect_errno())
	{
		echo "Database Connection Problem.. ".mysqli_connect_error();
	}
?>