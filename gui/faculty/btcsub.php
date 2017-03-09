<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$res_name = trim(addslashes($_POST['res_name']));
		$batch_name = trim(addslashes($_POST['batch_name']));
		$sub_id = trim(addslashes($_POST['sub_id']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO init_result (res_name, batch_name, sub_id, CreateBy, CreateDate) 
				  VALUES ('$res_name', '$batch_name', '$sub_id', '$CreateBy', '$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			//print_r($oResult);
			
			echo "<script>alert('Insert Successfully');</script>";
			echo "<script>window.location='?Basic=BandS'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE trimister SET trimister_name='$trimister_name', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Trimister Successfully');</script>";
			echo "<script>window.location='?Basic=Trimister'</script>";
		}
	}
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM trimister WHERE id=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Delete Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=Trimister';</script>");
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
					window.location="?Basic=Trimister&Delete="+id;
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
				Initial Result Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM trimister WHERE id = $id";
								$oResultUp=$oBasic->SqlQuery($sql);
							?>
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									<div class="form-group">
									  <label>Result Name</label>
									  <input type="text" class="form-control" name="res_name" id="res_name" required="required" value="<?php echo ($id?$oResultUp->row['res_name']:''); ?>" />
									</div>
									
									
									<div class="form-group">
									  <label>Batch</label>
									  <select id="batch_name" name="batch_name" class="form-control" style="min-width:300px">
										<?php
										$sql="SELECT * FROM batch ORDER BY id";
										$oResult=$oBasic->SqlQuery($Sql);
										$oCommon->ReadAllSelectedOption($sql,'batch_name','batch_name',$id?$oResultUp->row['batch_name']:'','');
										?>
									  </select>
									</div>
									
									<div class="form-group">
									  <label>Subject</label>
									  <select id="sub_id" name="sub_id" class="form-control" style="min-width:300px">
										<?php
										$sql="SELECT * FROM subject ORDER BY sub_id";
										$oResult=$oBasic->SqlQuery($Sql);
										$oCommon->ReadAllSelectedOption($sql,'sub_id','sub_name',$id?$oResultUp->row['sub_id']:'','');
										?>
									  </select>
									</div>
									
									<input type="submit" value="<?php if($id) echo "Update"; else echo "Save";?>" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
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