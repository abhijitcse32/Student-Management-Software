<?php
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
		
		
		<div class="content-wrapper">
			<section class="content-header">
			  <h1>
				My Subject Result List
			  </h1>
			</section>
			
			<section class="content">
				<div class="row">
					
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						
						
						<div class="box-body" style="height:322px;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#FFFFFF;">
									<td width="" style="text-align:center"><b>Result Name</b></td>
									<td width="" style="text-align:center"><b>Subject Name</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT a.id, a.sub_id, b.sub_name, a.res_name
									FROM init_result a, subject b
									where a.CreateBy='$a' 
									and a.sub_id=b.sub_id
									ORDER BY a.id";
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
									
									<td width="10%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['res_name'];?></p></td>
									<td width="10%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['sub_name'];?></p></td>
									<td width="5%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=resrpt&init_result=".base64_encode($oResult->rows[$i]['id'])?>'>View</a>  
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