<?php
	include_once ('library/Session.php');
	include_once ('model/CResult.php');
	include_once('bll/CBasic.php');
	include_once('bll/CConManager.php');
	$oSession=new Session();
	$oResult=new CResult();
	$oConmanager=new CConManager;
	$oBasic=new CBasic();
	$oCommon=new CCommon();
	
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.roll, B.fname, B.lname, B.fatname, B.motname, B.batch 
	 FROM user A, student B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	$oResultAddmisson=$oBasic->SqlQuery($Sql);
	
	if(isset($_POST['btnSave']))
	{
		$fname=$_POST['fname'];
		$lname=$_POST['lname'];
		$fatname=$_POST['fatname'];
		$motname=$_POST['motname'];
		$dob=$_POST['dob'];
		
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d');
		
		$sql="UPDATE student SET fname='$fname', lname='$lname', fatname='$fatname', motname='$motname', dob=STR_TO_DATE('$dob', '%m/%d/%Y'), UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE username='$a'";
		$oResultAddmisson=$oBasic->SqlQuery($sql);
		
		$sql="UPDATE exist_user SET fname='$fname', lname='$lname' WHERE username='$a'";
		$oResultAddmisson=$oBasic->SqlQuery($sql);
		
		if($oResultAddmisson->IsSuccess)
		{
			echo ("<script>window.alert('Action Perform Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=ChngProfile';</script>");
		}
	}
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
				Change Profile
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
						
						<script language="javascript" type="text/javascript">
							$(function() 
							{
							$('#dob').datepicker({
							changeMonth: true,
							changeYear: true
							});
							$('#ToDate').datepicker({
							changeMonth: true,
							changeYear: true
							});
							});
							
							// $( "#dob" ).datepicker({
								// dateFormat : 'yy-mm-dd'
							// });
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
										<div class="form-group">
										  <label>First Name</label>
										  <input type="text" class="form-control" name="fname" id="fname" required="required" value="<?php echo $oResultAddmisson->row['fname']?>" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-group">
										  <label>Last Name</label>
										  <input type="text" class="form-control" name="lname" id="lname" required="required" value="<?php echo $oResultAddmisson->row['lname']?>" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-group">
										  <label>Father Name</label>
										  <input type="text" class="form-control" name="fatname" id="fatname" required="required" value="<?php echo $oResultAddmisson->row['fatname']?>" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-group">
										  <label>Mother Name</label>
										  <input type="text" class="form-control" name="motname" id="motname" required="required" value="<?php echo $oResultAddmisson->row['motname']?>" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-group">
										  <label>Date of Birth</label>
										  <input name="dob" id="dob" type="text" class="form-control" required="required" value="<?php echo date('Y-m-d');?>" />
										</div>
									</div>
									
									<input type="submit" value="Update" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
									
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