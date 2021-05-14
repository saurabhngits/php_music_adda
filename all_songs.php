<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="icon" href="images/logo.png" type="image/png">
	<title>Home - Music Adda</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
	
	<link href="https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400" rel="stylesheet"> 
	
	<style>

	</style>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" onclick="openNav()" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>                        
			</button>
			
			<div class="logo"><a href="#"><img src="images/logo.png" /></a></div>
			<a class="navbar-brand" href="#"><span class="myorange">Music</span> Adda</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar"  id="mySidenav" class="sidenav">
			<ul class="nav navbar-nav navbar-center">
				<li  id="Home"><a href="index.html">Home</a></li>
				<li  id="Artists"><a href="artists.php">Artists</a></li>
				<li  id="Albums"><a href="albums.php">Albums</a></li>
				<li  id="AllSongs" class="active"><a href="all_songs.php">All Songs</a></li>
			</ul>
			<form class="navbar-form navbar-right" action="All_songs.php" method="POST">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search" name="searchsong">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div>
</nav>
<div class="container-fluid" style="margin-top:70px;">    
	<div class="row">
		<div class="col-sm-1">
			&nbsp;
		</div>
		<div class="col-sm-8">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-12">
						<div class="songslist">
							<table class="table">
								<?php
									$servername = "localhost";
									$username = "root";
									$password = "";
									$dbname = "music_player";
									// Create connection
									$conn = new mysqli($servername, $username, $password, $dbname);

									// Check connection
									if ($conn->connect_error) {
									die("Connection failed: " . $conn->connect_error);
									} 
									
									if(isset($_POST['searchsong'])){
										$searchsong = $_POST['searchsong'];
										$sql = "SELECT * FROM songs_metadata where name like '$searchsong%' ORDER BY name ASC";
										$result = $conn->query($sql);
										if ($result->num_rows > 0) {
											
										}
										else {
											echo '
												<div style="text-align:center;margin-left:240px;">
													<h1>SOORY !</h1>
													<p>Your keyword is not match to any song</p>
												</div>
											';
										}
									}
									else {
										$sql = "SELECT * FROM songs_metadata ORDER BY name ASC";
									}
									
									
									$result = $conn->query($sql);
									if ($result->num_rows > 0) {
										$count = 1;
										// output data of each row 
										while($row = $result->fetch_assoc()) {
											echo '
												<tr onclick="open_player(\''.$row['name'].'\')" class="activesong">
													<th width="5%">'.$count.'</th>
													<td>
														<strong>'.$row['name'].'</strong><br/>'.$row['album'].' &gt; '.$row['artist'].'
													</td>
													<td width="5%">'.$row['duration'].'</td>
												</tr>
											';
											$count = $count+1;
										}
									}
									$conn->close();		
								?>
							</table>
						</div>						
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3">
			&nbsp;
		</div>
	</div>
</div>

<form action="music_player2.php" method="POST" id="open_musicplayer">
	<input type="hidden" value="" id="name" name="name"> 
</form>

<!-- script -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
	function open_player(name){
		document.getElementById('name').value=name;
		document.getElementById('open_musicplayer').submit();
	}
</script>
<script>
$('.activesong').on('click', function(){
    $('.activesong').removeClass('selected');
    $(this).addClass('selected');
});
</script>

<!-- //script -->
</body>
</html>