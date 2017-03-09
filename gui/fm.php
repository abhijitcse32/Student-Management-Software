<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$allowed_filetypes = array('.jpg','.jpeg','.png','.gif','.JPG','.JPEG','.PNG','.GIF');
		$max_filesize = 10485760;
		$target = "images/faculty/"; 
		$target = $target . basename( $_FILES['image']['name']);
		
		$pic =trim(addslashes($_POST['prephoto']));
		$picpre=$pic;
		if($_FILES['image']['tmp_name']!='')
		{
			$pic =($_FILES['image']['name']);
			$ext = substr($pic, strpos($pic,'.'), strlen($pic)-1);
			if (file_exists('images/faculty/'.$pic)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['image']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('images/faculty/'.$picpre);
			move_uploaded_file($_FILES['image']['tmp_name'], $target) ;
		}
		
		$fname = trim(addslashes($_POST['fname']));
		$lname = trim(addslashes($_POST['lname']));
		$desig = trim(addslashes($_POST['desig']));
		//$dob = trim(addslashes($_POST['dtpFromDate']));
		$Sort = trim(addslashes($_POST['Sort']));
		$username = trim(addslashes($_POST['username']));
		$password = md5(trim(addslashes($_POST['password'])));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		//$createdate = date('Y-M-d');
	
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO faculty (fname,lname,desig,image,username,Status,Sort,CreateBy,CreateDate) 
				  VALUES ('$fname','$lname','$desig','$pic','$username','YES','$Sort','$CreateBy','$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			
			$sql="INSERT INTO user (name, username, password, CreateDate) 
				  VALUES ('Faculty', '$username', '$password', '$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			
			echo "<script>alert('Insert Faculty Successfully');</script>";
			echo "<script>window.location='?Basic=Faculty'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE faculty SET fname='$fname', lname='$lname', desig='$desig', image='$pic',
			UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Faculty Successfully');</script>";
			echo "<script>window.location='?Basic=Faculty'</script>";
		}
	}
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM designation WHERE id=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Delete Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=Designation';</script>");
		}
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
				Faculty Member Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM faculty WHERE id = $id";
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
									  <label>Image</label>
									  <input type="file" name="image" id="image" onchange="readURL(this);" />
									  <input type="hidden" class="form-control" name="prephoto" id="prephoto" required="required" value="<?php echo ($id?$oResultUp->row['image']:''); ?>"/>
									</div>
									<img src="#" id="blah" alt="Preview" style="width:50%"/>
									
									<div class="form-group">
									  <label>First Name</label>
									  <input type="text" class="form-control" name="fname" id="fname" required="required" value="<?php echo ($id?$oResultUp->row['fname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Last Name</label>
									  <input type="text" class="form-control" name="lname" id="lname" required="required" value="<?php echo ($id?$oResultUp->row['lname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Designation</label>
									  <select id="desig" name="desig" class="form-control" style="min-width:300px">
										<?php
										$sql="SELECT * FROM designation ORDER BY Sort";
										$oResult=$oBasic->SqlQuery($Sql);
										$oCommon->ReadAllSelectedOption($sql,'desig','desig',$id?$oResultUp->row['desig']:'','');
										?>
									  </select>
									</div>
									
									<div class="form-group">
									  <label>Order</label>
									  <input type="text" class="form-control" name="Sort" id="Sort" required="required" value="<?php echo ($id?$oResultUp->row['Sort']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Username</label>
									  <input type="text" class="form-control" name="username" id="username" required="required" value="<?php echo ($id?$oResultUp->row['username']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Password</label>
									  <input type="password" class="form-control" name="password" id="password" required="required" value="<?php echo ($id?$oResultUp->row['password']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Confirm Password</label>
									  <input type="password" class="form-control" name="cpassword" id="cpassword" required="required" value="<?php echo ($id?$oResultUp->row['password']:''); ?>" />
									</div>
									
									
									
									
									<input type="submit" value="<?php if($id) echo "Update"; else echo "Save";?>" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
								</div>
							</form>
						</div>
					</div>
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						  <h3 class="box-title">All Faculty Members</h3>
						</div>
						
						<div class="box-body" style="height:322px; overflow-y:scroll;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="0%" style="text-align:center"><b>SL#</b></td>
									<td width="0%" style="text-align:center"><b>Image</b></td>
									<td width="" style="text-align:center"><b>Name</b></td>
									<td width="" style="text-align:center"><b>Username</b></td>
									<!--<td width="" style="text-align:center"><b>Action</b></td>-->
								</tr>
							
								<?php
									$sql="SELECT * FROM faculty ORDER BY Sort";
									$oResult=$oBasic->SqlQuery($sql); 
									$num=$oResult->num_rows;
									if($num>0)
									{
										for($i=0;$i<$oResult->num_rows;$i++)
										{
											if(($i%2)==0)
												$bgcol="#33A1DE";
											else
												$bgcol="#F5F5F5";
								?>
							
							
								<tr>
									<td width="3%" style="text-align:right" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo $oResult->rows[$i]['Sort'].'&nbsp;';?></p></td>
									
									<?php 
										if($oResult->rows[$i]['image']==null)
										{
											$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" bgcolor=".$bgcol.">";
											$a.="<img src=\"images/dummy_pic.jpg\" class=\"teacher_img\" style=\"height:50px; width:50px\"/>";
											$a.="</td>";
											echo $a;
										}
										
										else
										{
											$path="images/faculty/";
											$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" bgcolor=".$bgcol.">";
											$a.="<img src=".$path.$oResult->rows[$i]['image']." class=\"teacher_img\" style=\"height:50px; width:50px\"/>";
											$a.="</td>";
											echo $a;
										}
									?>
									
									<td width="10%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['fname'].'&nbsp;'.$oResult->rows[$i]['lname'];?></p></td>
									<td width="10%" valign="middle" style="text-align:center" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['username'];?></p></td>
									<!--<td width="15%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=Faculty&id=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="Edit"></i></a>  
										<a href="#" onClick="deletecheck('<?php echo $oResult->rows[$i]['id']; ?>');"><i class="glyphicon glyphicon-trash" style="color:black" title="Delete"></i></a>
									</td>-->
								</tr>
								<?php
										}
									}
								?>
							 </table>
							 
							 
						</div>
						
						  
						
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