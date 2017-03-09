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
		$NewPass=trim($_POST['Password']);
		
			$UserName=$oSession->getUserName();
			$NewPass=md5($NewPass);
			$sql="UPDATE user SET password='$NewPass' WHERE username='$UserName'";
			$oResult=$oBasic->SqlQuery($sql);
	
			if($oResult->IsSuccess)
			{
				$_SESSION['SESS_CICPASSWORD']=$NewPass;
				echo "<script>alert('Your Password Change Successfully')</script>";
				echo "<script>window.location='?Basic=ControlPanel';</script>";
			}
			else
			{
				echo ("<script>window.alert(\"Error-".$oResult->message." ".$oResult->error."\");</script>");
			}
		
	}
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('meta.php');?>
	
	<script type="text/javascript">

            function PrintElem(elem) {
                Popup($(elem).html());
            }

            function Popup(data) {
                var mywindow = window.open('', 'my div', 'height=400,width=600');
                mywindow.document.write('<html><head><title>my div</title>');
                mywindow.document.write('</head><body >');
                mywindow.document.write(data);
                mywindow.document.write('</body></html>');
				mywindow.document.close();
                mywindow.focus();
				mywindow.print();
                mywindow.close();

                return true;
            }

</script>
	<style>
	.dontprint
{ display: none; }
	</style>
	
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
				Student Change Password
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['student']))
					{
						$sql="SELECT A.roll, A.username, B.password 
						FROM student A, user B
						WHERE A.id='".base64_decode($_GET['student'])."'
						AND A.roll=B.username" ;
					}
				
					else
						$sql="SELECT * FROM student ORDER BY id";
				
					$oResultUp=$oBasic->SqlQuery($sql);
				
				?>
					
					
					<div class="col-md-6">
            
					  <div class="box box-info" id="mydiv">
						
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=1";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center;"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						<p style="font-size:15px">Username: <b><?php echo $oResultUp->rows[$i]['username']?></b></p>
						Password: <b><?php echo $oResultUp->rows[$i]['password']?>
						
						<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									<div class="form-group">
									  <label>New Password</label>
									  <input type="Password" class="form-control" name="Password" id="Password" required="required"  />
									</div>
									
									
									<input type="submit" value="Save" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
								</div>
							</form>
						
						
						
						
						
						<?php }?>
						<br/><br/>
					</div>
					  
					</div>
					
				</div>
			</section>
		</div>
		
		<footer class="main-footer">
			<?php include('footer.php');?>
		</footer>

      
      <div class="control-sidebar-bg"></div>
	
	</div>
    
    

</body>
</html>