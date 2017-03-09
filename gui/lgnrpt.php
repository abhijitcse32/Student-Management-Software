<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$trimister_name = trim(addslashes($_POST['trimister_name']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		//$createdate = date('Y-M-d');
	
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO trimister (trimister_name, CreateBy, CreateDate,Type) 
				  VALUES ('$trimister_name', '$CreateBy', '$CreateDate','')";
			$oResult=$oBasic->SqlQuery($sql);
			//print_r($oResult);
			
			echo "<script>alert('Insert Trimister Successfully');</script>";
			echo "<script>window.location='?Basic=Trimister'</script>";
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
    
	<?php include('meta.php');?>
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
			
			
			<section class="content">
				<div class="row">
					
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						  <h3 class="box-title">Login Report</h3>
						</div>
						
						<div class="box-body" >
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="" style="text-align:center"><b>User Name</b></td>
									<td width="" style="text-align:center"><b>Name</b></td>
									<td width="" style="text-align:center"><b>No of Login</b></td>
								</tr>
							
								<?php
									$sql="SELECT A.username, B.fname, B.lname, count(A.id) nof_log 
									FROM login A, exist_user B 
									WHERE A.username=B.username
									group BY username
									order by A.username desc";
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
									<td width="3%"  valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['username'].'&nbsp;';?></p></td>
									<td width="3%"  valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['fname'].'&nbsp;'.$oResult->rows[$i]['lname'];?></p></td>
									<td width="2%" style="text-align:right" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['nof_log'];?></p></td>
									
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