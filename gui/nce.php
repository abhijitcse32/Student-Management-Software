<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$allowed_filetypes = array('.pdf','.PDF');
		$max_filesize = 10485760;
		$target = "file/"; 
		$target = $target . basename( $_FILES['file']['name']);
		
		$pic =trim(addslashes($_POST['prephoto']));
		$picpre=$pic;
		if($_FILES['file']['tmp_name']!='')
		{
			$pic =($_FILES['file']['name']);
			$ext = substr($pic, strpos($pic,'.'), strlen($pic)-1);
			if (file_exists('file/'.$pic)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['file']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('file/'.$picpre);
			move_uploaded_file($_FILES['file']['tmp_name'], $target) ;
		}
		
		$notice_name = trim(addslashes($_POST['notice_name']));
		$message = trim(addslashes($_POST['message']));
		$Sort = trim(addslashes($_POST['Sort']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		
	
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO notice (notice_name,message,file,Sort,CreateBy,CreateDate) 
				  VALUES ('$notice_name','$message','$pic','$Sort','$CreateBy','$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			
			echo "<script>alert('Insert Notice Successfully');</script>";
			echo "<script>window.location='?Basic=Notice'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE notice SET notice_name='$notice_name',message='$message', Sort='$Sort',file='$pic', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Notice Successfully');</script>";
			echo "<script>window.location='?Basic=Notice'</script>";
		}
	}
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM notice WHERE id=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Delete Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=Notice';</script>");
		}
	}
	
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('meta.php');?>
	<script language="javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
	<script language="javascript" src="js/scripts.js"></script>
	<script>
			function deletecheck(id)
			{
				if(confirm("Are you sure to delete?"))
				{
					window.location="?Basic=Notice&Delete="+id;
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
				Notice Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM notice WHERE id = $id";
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
									  <label>File(only PDF allowed)</label>
									  <input type="file" name="file" id="file" onchange="readURL(this);" />
									  <input type="hidden" class="form-control" name="prephoto" id="prephoto" required="required" value="<?php echo ($id?$oResultUp->row['file']:''); ?>"/>
									</div>
									<img src="#" id="blah" alt="Preview" style="width:50%"/>
									
									
									<div class="form-group">
									  <label>Notice Name</label>
									  <input type="text" class="form-control" name="notice_name" id="notice_name" required="required" value="<?php echo ($id?$oResultUp->row['notice_name']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Message</label>
									  <textarea class="form-control" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" id="message" name="message"><?php echo $oResultUp->row['message']; ?></textarea>
									</div>
									
									<div class="form-group">
									  <label>Order</label>
									  <input type="text" class="form-control" name="Sort" id="Sort" required="required" value="<?php echo ($id?$oResultUp->row['Sort']:''); ?>" />
									</div>
									
									<input type="submit" value="<?php if($id) echo "Update"; else echo "Save";?>" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Notice"  />
									
								</div>
							</form>
						</div>
					</div>
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						  <h3 class="box-title">All Notice</h3>
						</div>
						
						<div class="box-body" style="height:322px; overflow-y:scroll;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="0%" style="text-align:center"><b>SL#</b></td>
									<td width="0%" style="text-align:center"><b>File Name</b></td>
									<td width="" style="text-align:center"><b>File</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT * FROM notice ORDER BY Sort";
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
									<td width="10%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['notice_name'];?></p></td>
									<td width="10%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><a href="file/<?php echo $oResult->rows[$i]['file'];?>" target="_new"><img src="file/pdf_img.gif" style="width:50px; height:50px"/></a></td>
									<td width="15%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=Notice&id=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="Edit"></i></a>  
										<a href="#" onClick="deletecheck('<?php echo $oResult->rows[$i]['id']; ?>');"><i class="glyphicon glyphicon-trash" style="color:black" title="Delete"></i></a>
									</td>
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
	<script>WeSeeTextArea()</script>
	</div>
    
    

</body>
</html>