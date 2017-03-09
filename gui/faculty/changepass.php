<?php
	include_once ('library/Session.php');
	include_once ('model/CResult.php');
	include_once('bll/CBasic.php');
	include_once('bll/CConManager.php');
	$oSession=new Session();
	$oResult=new CResult();
	$oConmanager=new CConManager;
	$oBasic=new CBasic();
	if(isset($_POST['btnSave']))
	{
		$OldPass=md5(trim($_POST['txtOldPass']));
		$NewPass=trim($_POST['Password']);
		$Confirm=trim($_POST['ConPassword']);
		$Pa=$oSession->getPassWord();
		
		if($OldPass!=$Pa)
		{
			echo "<script>alert('Your Old Password is Worng')</script>";
			echo "<script>window.location='?Basic=PassChange';</script>";
		}
		else if($Confirm!=$NewPass)
		{
			echo "<script>alert('New Password and Confirm Password are not same')</script>";
			echo "<script>window.location='?Basic=PassChange';</script>";
		}
		else
		{
			$UserName=$oSession->getUserName();
			$NewPass=md5($NewPass);
			$sql="UPDATE user SET password='$NewPass' WHERE username='$UserName'";
			$oResult=$oBasic->SqlQuery($sql);
	
			if($oResult->IsSuccess)
			{
				$_SESSION['SESS_CICPASSWORD']=$NewPass;
				echo "<script>alert('Your Password Change Successfully')</script>";
				echo "<script>window.location='?Basic=PassChange';</script>";
			}
			else
			{
				echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
			}
		}
	}
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	<script>
			function deletecheck(ID)
			{
				if(confirm("Are you sure to delete?"))
				{
					window.location="?Basic=Designation&Delete="+id;
				}
			}
		</script>
		
		<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function (e) {
					$('#blah').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>
	
	<script "text/javascript">
		<script language="javascript" type="text/javascript">
		$(function() 
		{
			$('#dtpFromDate').datepicker({
				changeMonth: true,
				changeYear: true
			});
			$('#dtpToDate').datepicker({
				changeMonth: true,
				changeYear: true
			});
		});
	</script>
	
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">
		<header class="main-header">
			<?php include('header.php');?>
		</header>
		
		<aside class="main-sidebar">
			<section class="sidebar">
			  <div class="user-panel">
				<?php include('headerleft.php');?>
			  </div>
			  
			  <ul class="sidebar-menu">
				<?php include('menu.php');?>
			  </ul>
			  
			</section>
        </aside>
		
		<div class="content-wrapper">
			<section class="content-header">
			  <h1>
				Password Change
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
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									
									
									<div class="form-group">
									  <label>Old Password</label>
									  <input type="password" class="form-control" name="txtOldPass" id="txtOldPass" required="required" />
									</div>
									
									<div class="form-group">
									  <label>New Password</label>
									  <input type="Password" class="form-control" name="Password" id="Password" required="required"  />
									</div>
									
									<div class="form-group">
									  <label>Confirm Name</label>
									  <input type="password" class="form-control" name="ConPassword" id="ConPassword" required="required"  />
									</div>
									
									<input type="submit" value="Save" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
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