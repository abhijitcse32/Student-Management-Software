<?php
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
			if($oResult->num_rows==1)
			{
				$sql1="INSERT INTO login (username, login_date) VALUES ('$username', '$login_date')";
				$oResultup=$oBasic->SqlQuery($sql1);
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
				echo "<script>window.location='index.php'</script>";	
	}
?>

<!DOCTYPE html>
<html>

<head>

  <?php include('meta.php');?>

</head>

<body>


	<div class="login">
  <h2>SAMS Log In</h2>
  <form method="post" name="form1">
  <fieldset>
    <input type="text" name="username" id="username" placeholder="username" />
  	<input type="password" name="password" id="password" placeholder="Password" required="required" />
	<?php
							if($flag){?>
							<div class="clearfix"></div>
                            <div style="color:red; text-decoration:blink; weight:500px">Miss your username or password.</div>
							<?php }?>
  </fieldset>
  <input type="submit" id="btnLogin" name="btnLogin" value="Log In" style="color:#FFFFFF" />
  </form>
  
</div>





</body>

</html>