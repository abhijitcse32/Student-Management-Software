<?php
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.roll, B.fname, B.lname, B.fatname, B.motname, B.batch 
	 FROM user A, student B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	 $oResultAddmisson=$oBasic->SqlQuery($Sql);
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">
		<header class="main-header">
			<?php include('header.php');?>
		</header>
		
		<aside class="main-sidebar">
			<section class="sidebar">
			  <div class="user-panel">
				<?php include('gui/headerleft.php');?>
			  </div>
			  
			  <ul class="sidebar-menu">
				<?php include('menu.php');?>
			  </ul>
			  
			</section>
        </aside>
		
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
						<p style="text-align:center;"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						
						
						
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									
									  <div class="form-group">
							<p style="font-size:15px">Roll: <b><?php echo $oResultAddmisson->row['username']; ?></b></p>
							<p style="font-size:15px">Name: <b><?php echo $oResultAddmisson->row['fname'].'&nbsp;'.$oResultAddmisson->row['lname']; ?></b></p>
							<p style="font-size:15px">Father Name: <b><?php echo $oResultAddmisson->row['fatname']; ?></b></p>
							<p style="font-size:15px">Mother Name: <b><?php echo $oResultAddmisson->row['motname']; ?></b></p>
							<p style="font-size:15px">Batch: <b><?php echo $oResultAddmisson->row['batch']; ?></b></p>
						</div>
									
									
									
									
									
								</div>
							</form>
						</div>
					</div>
					
					
				</div>
			</section>
		</div>
		
		<footer class="main-footer">
			<?php include('gui/footer.php');?>
		</footer>

      
      <div class="control-sidebar-bg"></div>
	
	</div>
    
    

</body>
</html>