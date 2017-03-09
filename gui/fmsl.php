<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		
		$Sort = trim(addslashes($_POST['Sort']));
		
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
			$sql="UPDATE faculty SET Sort='$Sort',
			UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Faculty Successfully');</script>";
			echo "<script>window.location='?Basic=FacultySL'</script>";
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
									  <label>First Name</label>
									  <input type="text" class="form-control" name="fname" id="fname" required="required" value="<?php echo ($id?$oResultUp->row['fname']:''); ?>" readonly="readonly" />
									</div>
									
									<div class="form-group">
									  <label>Last Name</label>
									  <input type="text" class="form-control" name="lname" id="lname" required="required" value="<?php echo ($id?$oResultUp->row['lname']:'');  ?>" readonly="readonly" />
									</div>
									
									
									<div class="form-group">
									  <label>Order</label>
									  <input type="text" class="form-control" name="Sort" id="Sort" required="required" value="<?php echo ($id?$oResultUp->row['Sort']:''); ?>" />
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
									<td width="" style="text-align:center"><b>Action</b></td>
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
									<td width="15%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=FacultySL&id=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="Edit"></i></a>  
										<a href="#" onClick="deletecheck('<?php echo $oResult->rows[$i]['id']; ?>');"></a>
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
	
	</div>
    
    

</body>
</html>