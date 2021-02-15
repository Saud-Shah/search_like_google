<?php
	require_once("require/database_connection.php");

	if ($_REQUEST['action'] == 'suggest') {
		$query = "SELECT * FROM post WHERE post_title LIKE '%".htmlspecialchars($_REQUEST['search_input'], true)."%'";

		$result = mysqli_query($connection,$query);

		if ($result->num_rows) {
			while ($data = mysqli_fetch_assoc($result)) {
				?>
					<p onclick="showData(<?php echo "'".$data['post_title']."'"; ?>)">
						<?php 
							echo "&nbsp;".$data['post_title']; 
						?>	
					</p>	
				<?php
			}
		}
	}

	elseif ($_REQUEST['action'] == 'show_data') {
		$query = "SELECT * FROM post WHERE post_title='".htmlspecialchars($_REQUEST['post_title'], true)."'";

		$result = mysqli_query($connection,$query);

		if ($result->num_rows) {
			$data = mysqli_fetch_assoc($result);
			?>
				<h2><?php echo $data['post_title']; ?></h2>
				<p><?php echo $data['post_summary']; ?></p>
				<p><?php echo $data['post_description']; ?></p>
			<?php
		}
	}
?>