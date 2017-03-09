<?php
	if (isset($_POST['btnSave']))
	{
		$allowed_filetypes = array('.jpg','.jpeg','.png','.gif','.JPG','.JPEG','.PNG','.GIF');
		$max_filesize = 10485760;
		$target = "images/"; 
		$target = $target . basename( $_FILES['logo']['name']);
		
		$pic1 =trim(addslashes($_POST['prephoto1']));
		$picpre1=$pic1;
		if($_FILES['logo']['tmp_name']!='')
		{
			$pic1 =($_FILES['logo']['name']);
			$ext = substr($pic1, strpos($pic1,'.'), strlen($pic1)-1);
			if (file_exists('images/'.$pic1)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['logo']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('images/'.$picpre1);
			move_uploaded_file($_FILES['logo']['tmp_name'], $target) ;
		}
		
		
		$dir_name =trim(addslashes($_POST['dir_name']));
		$dir_msg =trim(addslashes($_POST['dir_msg']));
		$dir_desig =trim(addslashes($_POST['dir_desig']));
		$UpdateBy=$oSession->getUserName();
		$UpdateDate=date('Y-m-d H:i:s');
		$sql="UPDATE bod SET dir_name='$dir_name',dir_msg='$dir_msg',dir_desig='$dir_desig',
		logo='$pic1', UpdateBy='$UpdateBy', UpdateDate='$UpdateDate' WHERE id=2";
		$oResult=$oBasic->SqlQuery($sql);
		
		echo "<script>alert('Insert Panel Successfully');</script>";
		echo "<script>window.location='?Basic=DirPanel'</script>";
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('meta.php');?>
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
	
	<script language="javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
	<script language="javascript" src="js/scripts.js"></script>
	
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
				Director Panel
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM bod WHERE id = 2";
								$oResultUp=$oBasic->SqlQuery($sql);
							?>
							
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
									  <label>Sign</label>
									  <input type="file" name="logo" id="logo" onchange="readURL(this);" />
									  <input type="hidden" class="form-control" name="prephoto1" id="prephoto1" required="required" value="<?php echo $oResultUp->row['logo']; ?>"/>
									</div>
									
									
									<div class="form-group">
									  <label>Director Name</label>
									  <input type="text" class="form-control" name="dir_name" id="dir_name" required="required" value="<?php echo $oResultUp->row['dir_name']; ?>" />
									</div>
									
									<div class="form-group">
									  <label>Director Message</label>
									  <textarea class="form-control" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" id="dir_msg" name="dir_msg"><?php echo $oResultUp->row['dir_msg']; ?></textarea>
									</div>
									
									<div class="form-group">
									  <label>Director Designation</label>
									  <input type="text" class="form-control" name="dir_desig" id="dir_desig" required="required" value="<?php echo $oResultUp->row['dir_desig']; ?>" />
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
			<?php include('footer.php');?>
		</footer>

      
      <div class="control-sidebar-bg"></div>
	<script>WeSeeTextArea()</script>
	</div>
    
    

</body>
</html>