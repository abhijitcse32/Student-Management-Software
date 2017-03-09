<?php
	$oCommon=new CCommon();
	$ID=FALSE;
	if(isset($_GET['ID']))
	{
		$ID= base64_decode($_GET['ID']);
	}

	if (isset($_POST['btnSave']))
	{
		$routine_id = trim(addslashes($_POST['routine_id']));
		$routine_name = trim(addslashes($_POST['routine_name']));
		$batch_name = trim(addslashes($_POST['batch_name']));
		$trimister_name = trim(addslashes($_POST['trimister_name']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO routine_set (routine_id,routine_name,batch_name,trimister_name,CreateBy,CreateDate) 
				  VALUES ('$routine_id','$routine_name','$batch_name','$trimister_name','$CreateBy','$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			
			
			echo "<script>alert('Insert Routine Successfully');</script>";
			echo "<script>window.location='?Basic=Routine'</script>";
		}
		
		
	}
	if(isset($_GET['Delete']))
	{
		
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
	<script type="text/javascript" src="jquery.js"></script>
	
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">
		
		
		<div class="content-wrapper">
			<section class="content-header">
			  <h1>
				Routine Check
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						
						
						<div class="box-body" >
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#FFFFFF;">
									<td width="0%" style="text-align:center"><b>Routine ID</b></td>
									<td width="" style="text-align:center"><b>Routine Name</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT * FROM routine_set ORDER BY id";
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
									<td width="8%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo $oResult->rows[$i]['routine_id'].'&nbsp;';?></p></td>
									<td width="15%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['routine_name'];?></p></td>
									<td width="5%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=RoutinePrint&routine_set=".base64_encode($oResult->rows[$i]['id'])?>' style="color:black">View</a>  
										
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
					<ul class="menu">
						<li><a href="index.php">Main Menu</a></li>
						<li><a href="signout.php">Logout</a></li>
					</ul>
					
					
				</div>
			</section>
		</div>
		
		
      <div class="control-sidebar-bg"></div>
	
	</div>
    
    

</body>
</html>