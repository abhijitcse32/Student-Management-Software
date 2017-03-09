<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$sub_id = trim(addslashes($_POST['sub_id']));
		$sub_name = trim(addslashes($_POST['sub_name']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		//$createdate = date('Y-M-d');
	
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO subject (sub_id, sub_name, CreateBy, CreateDate) 
				  VALUES ('$sub_id', '$sub_name', '$CreateBy', '$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			//print_r($oResult);
			
			echo "<script>alert('Insert Subject Successfully');</script>";
			echo "<script>window.location='?Basic=SEntry'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE subject SET sub_id='$sub_id', sub_name='$sub_name', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Subject Successfully');</script>";
			echo "<script>window.location='?Basic=SEntry'</script>";
		}
	}
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM subject WHERE id=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Delete Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=SEntry';</script>");
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
					window.location="?Basic=SEntry&Delete="+id;
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
				Subject Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM subject WHERE id = $id";
								$oResultUp=$oBasic->SqlQuery($sql);
							?>
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									<div class="form-group">
									  <label>Subject ID</label>
									  <input type="text" class="form-control" name="sub_id" id="sub_id" required="required" value="<?php echo ($id?$oResultUp->row['sub_id']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Subject Name</label>
									  <input type="text" class="form-control" name="sub_name" id="sub_name" required="required" value="<?php echo ($id?$oResultUp->row['sub_name']:''); ?>" />
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
						  <h3 class="box-title">All Subject</h3>
						</div>
						
						<div class="box-body" style="height:322px; overflow-y:scroll;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="0%" style="text-align:center"><b>Subject ID</b></td>
									<td width="20%" style="text-align:center"><b>Subject Name</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT * FROM subject ORDER BY sub_id";
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
									<td width="3%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo $oResult->rows[$i]['sub_id'].'&nbsp;';?></p></td>
									<td width="20%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['sub_name'];?></p></td>
									<td width="5%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=SEntry&id=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="Edit"></i></a>  
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