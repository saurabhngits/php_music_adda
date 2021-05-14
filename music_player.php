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
				<li  id="AllSongs"><a href="all_songs.php">All Songs</a></li>
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
	
	$category = $_POST['category'];
	$name = $_POST['name'];
	$image = '';
	
	if($category == 'artist'){
		$image='artist_image';
	}
	else {
		$image='image';
	}
	
	
	$sql1 = "SELECT distinct $category, $image  FROM songs_metadata where $category='$name' ";
	$result1 = $conn->query($sql1);
										
	if ($result1->num_rows > 0) {
		// output data of each row 
		while($row1 = $result1->fetch_assoc()) {
			echo '
				<div class="container-fluid" style="margin-top:70px;">    
					<div class="row">
						<div class="col-sm-1">
							&nbsp;
						</div>
						<div class="col-sm-8">
							<div class="player-back container-fluid">
								<div class="player-main container-fluid">
									<div class="row">
										<div class="col-sm-12">
											<div class="breadcrums">
												<a href="index.html">Home</a> &gt; <a href="album.php">Albums</a> &gt; <a href="javascript:void(0);">'.$row1[$category].'</a>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-sm-4" >
											<div class="playerthumbnail">
												<img src="database/thumbnails/'.$row1[$image].'" alt="Lights" style="width:100%">
												<!-- <div class="thumbnailcaption">
													<h4>About This Album</h4>
													<p>
														<span>ARTISTS</span> <br />
														Tiger Shroff, Disha Patani, Randeep Hooda, Manoj Bajpayee, Prateik Babbar
													</p>
												</div>-->
											</div>
										</div>
										<div class="col-sm-8">
											<div class="playerbox">
												<h3>~ '.$row1[$category].' ~</h3>
												<span id="songname">select song</span>
												<div class="player paused"  id="play_pause">
													<div class="info">
														<div class="time">
															<span class="current-time">0:00</span>
															<span class="progress"><span></span></span>
															<span class="duration">0:00</span>
														</div>
													</div>
													<div class="actions">
														
														<button class="button rw" onclick="backwardsong();">
															<div class="arrow"></div>
															<div class="arrow"></div>
														</button>
														<button class="button play-pause">
															<div class="arrow"></div>
														</button>
														<button class="button ff" onclick="forwardsong();" >
															<div class="arrow"></div>
															<div class="arrow"></div>
														</button>
													</div>
													<audio id="audioscr" preload src=""></audio>
												</div>
											</div>
										</div>
										<div class="col-sm-8">
											<div class="songslist">
												<table class="table">
			';
												$sql1_1 = "SELECT * FROM songs_metadata where $category='$name' ";
												$result1_1 = $conn->query($sql1_1);
												if ($result1_1->num_rows > 0) {
													$count = 1;
													// output data of each row 
													while($row1_1 = $result1_1->fetch_assoc()) {
														echo '
															<tr onclick="changesong(\''.$count.'\')" class="activesong">
																<th width="5%">'.$count.'</th>
																<td>
																	<strong>'.$row1_1['name'].'</strong><br/> '.$row1_1[$category].'
																</td>
																<td width="5%">'.$row1_1['duration'].'</td>
															</tr>
														
														';
														$count = $count+1;
													}
												}
													
											
			echo '
												</table>
											</div> 
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
			';
			
		}
	}
	
	$sql3 = "SELECT * FROM songs_metadata where $category='$name' ";
	$result3 = $conn->query($sql3);
	if ($result3->num_rows > 0) {
		echo '
			<script>
			var songs_queue = new Array("Saab", "Volvo", "BMW");
			var max = 0;
		';
		
		$count = 1;
		// output data of each row 
		while($row3 = $result3->fetch_assoc()) {
			echo '
				max = max+1;
				songs_queue['.$count.']	= "'.$row3['name'].'";	
			';
			$count = $count+1;
		}
		
		echo '
			var pos = 0;
			
				function forwardsong(){
					
					if(pos>=max){
						pos = 1;
					}
					else{
						pos++;
					}
					playsong(pos);
					
				}
				
				function backwardsong(){
					if(pos==1){
						pos = max;
					}
					else{
						pos--;
					}
					playsong(pos);
				}
				
				function changesong(index){
					pos = index;
					playsong(pos);
					
				}
				
				function playsong(index_value){
					var name="database/songs/"+songs_queue[index_value]+".mp3";
					document.getElementById("songname").innerHTML = songs_queue[index_value];
					document.getElementById("audioscr").src = name;
					
					var self = $("button");
					var player = $(".player");
						audio = player.find("audio");
					
						player.removeClass("paused").addClass("playing");
						audio[0].play();
						getCurrentTime();
				}
				
				audioscr.onended = function() {
					forwardsong();
				};
				
			</script>
		';
	}
	$conn->close();		
?>
									




<!-- script -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script  src="js/index.js"></script>
<script>
$('.activesong').on('click', function(){
    $('.activesong').removeClass('selected');
    $(this).addClass('selected');
});
</script>

<!-- //script -->
</body>
</html>