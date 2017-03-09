<?php 
	include_once ('bll/CConManager.php');
	include_once ('bll/CBasic.php');
	include_once ('library/Session.php');
	include_once ('model/CResult.php');
	$oSession=new Session();
	$oConmanager=new CConManager;
	$oCommon=new CCommon();
	$oBasic=new CBasic;
	$oResult=new CResult;
	$flag = false;
	if (isset($_POST['btnLogin']))
	{ 
	    $username = $_POST['username'];
	    $password = md5($_POST['password']);
		$login_date=date('Y-m-d H:i:s');
		$sql = "SELECT * FROM user WHERE username= '$username' AND password='$password'";
		$oResult=$oBasic->SqlQuery($sql);
		
			
		if($oResult->IsSuccess)
		{
			$sql1="INSERT INTO login (username, login_date) VALUES ('$username', '$login_date')";
				$oResultup=$oBasic->SqlQuery($sql1);
			if($oResult->num_rows==1)
			{
				$_SESSION['SESS_USERNAME']=$oResult->row['username'];
				$_SESSION['SESS_PASSWORD']=$oResult->row['password'];
				$_SESSION['SESS_ID']=$oResult->row['id'];
				$_SESSION['SESS_NAME']=$oResult->row['name'];
				echo "<script>window.location='index.php'</script>";
				exit;
			}
			else
			{
				$flag = true;
			}
				

			
		}
		else
		{
			echo "<script>window.location='index.php'</script>";
		}
		
		
	}
?>    

<!DOCTYPE html>
<html >
  <head>
	<meta charset="UTF-8">
	<title>IIT,JU</title>
	<link rel="icon" href="images/ju_trns1.png">
	<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>

  <body>

    <div class="wrapper">
	<div class="container">
		
		<img src="images/ju_trns.png" style="width:15%; height:40%; margin-top:-10%"/>
		<h1>IIT,JU</h1>
		<h2>Student and Administration Management System</h2>
		
		
		<form class="form" name="form1" id="form1" action="" method="post" enctype="multipart/form-data" autocomplete="on">
			<input type="text" placeholder="Username" id="username" name="username" required="required">
			<input type="password" placeholder="Password" id="password" name="password" required="required">
			<?php
				if($flag){?>
				<div class="clearfix"></div>
				<div style="color:red; text-decoration:blink; weight:500px; font-weight:bold">Miss your username or password.</div>
			<?php }?>
			<!--<input type="submit" value="Login" id="btnLogin" name="btnLogin" />-->
			<button type="submit" id="btnLogin" name="btnLogin">Login</button>
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
<script src='js/jquery.min.js'></script>
<script src="js/index.js"></script>

    
    
    
  </body>
</html>