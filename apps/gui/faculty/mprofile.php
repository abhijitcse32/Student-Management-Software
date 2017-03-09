<?php
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.fname, B.lname, B.desig, B.username
	 FROM user A, faculty B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	 $oResultAddmisson=$oBasic->SqlQuery($Sql);
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	
</head>

<body class="hold-transition skin-blue sidebar-mini" style="background:#FFFFFF">

	<div class="wrapper">
		
		
		<div class="content-wrapper">
			<section class="content-header">
			  <h1>
				My Profile
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							
							
							<script language="javascript">
							function checkValid()
							{
								if(registerform.password.value != registerform.cpassword.value)
								{
								window.alert("Your Password and Confirm Password are not Same");
								registerform.password.focus();
								return false;
								}
								
							}

						</script>
						
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=1";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center;"><img src="../images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						
						
						
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									
									  <div class="form-group">
							<p style="font-size:15px">Name: <b><?php echo $oResultAddmisson->row['fname'].'&nbsp;'.$oResultAddmisson->row['lname']; ?></b></p>
							<p style="font-size:15px">Designation: <b><?php echo $oResultAddmisson->row['desig']; ?></b></p>
							<p style="font-size:15px">Username: <b><?php echo $oResultAddmisson->row['username']; ?></b></p>
							
						</div>
									
									
									
									
									
								</div>
							</form>
						</div>
					</div>
					<ul class="menu">
						<li><a href="index.php">Main Menu</a></li>
						<li><a href="signout.php">Logout</a></li>
					</ul>
					
				</div>
			</section>
		</div>
		
		
      
      <div class="control-sidebar-bg"></div>
	
	</div>
    
    

</body>
</html>