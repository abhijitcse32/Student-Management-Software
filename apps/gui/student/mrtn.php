<?php
	$oCommon=new CCommon();
	$ID=FALSE;
	if(isset($_GET['ID']))
	{
		$ID= base64_decode($_GET['ID']);
	}

	$a=$oSession->getUserName();
	
	
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
				My Routine
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						 
						</div>
						
						<div class="box-body" >
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#FFFFFF;">
									<td width="" style="text-align:center"><b>Trimister</b></td>
									<td width="0%" style="text-align:center"><b>Routine ID</b></td>
									<td width="" style="text-align:center"><b>Routine Name</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT A.id, A.routine_id,A.routine_name,A.batch_name,
										A.trimister_name
									FROM routine_set A, student B
									WHERE A.batch_name=B.batch
									AND B.username='$a'
									ORDER BY A.trimister_name,A.id";
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
									<td width="10%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['trimister_name'];?></p></td>
									<td width="20%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo $oResult->rows[$i]['routine_id'].'&nbsp;';?></p></td>
									<td width="35%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['routine_name'];?></p></td>
									<td width="5%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=MyRoutinePrint&routine_set=".base64_encode($oResult->rows[$i]['id'])?>' style="color:#000000">View</a>  
										
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