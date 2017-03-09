<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$desig = trim(addslashes($_POST['desig']));
		$Sort = trim(addslashes($_POST['Sort']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		//$createdate = date('Y-M-d');
	
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO designation (desig, Sort, CreateBy, CreateDate) 
				  VALUES ('$desig', '$Sort', '$CreateBy', '$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			//print_r($oResult);
			
			echo "<script>alert('Insert Designation Successfully');</script>";
			echo "<script>window.location='?Basic=Designation'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE designation SET desig='$desig', Sort='$Sort', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Designation Successfully');</script>";
			echo "<script>window.location='?Basic=Designation'</script>";
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
				Designation Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM designation WHERE id = $id";
								$oResultUp=$oBasic->SqlQuery($sql);
							?>
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									<div class="form-group">
									  <label>Designation</label>
									  <input type="text" class="form-control" name="desig" id="desig" required="required" value="<?php echo ($id?$oResultUp->row['desig']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Order By</label>
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
						  <h3 class="box-title">All Designation</h3>
						</div>
						
						<div class="box-body" style="height:322px; overflow-y:scroll;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="0%" style="text-align:center"><b>SL#</b></td>
									<td width="20%" style="text-align:center"><b>Designation</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT * FROM designation ORDER BY Sort";
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
									<td width="10%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['desig'];?></p></td>
									<td width="15%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=Designation&id=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="Edit"></i></a>  
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
	
	</div>
    
    

</body>
</html>