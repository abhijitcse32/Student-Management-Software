<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	
	<script type="text/javascript">

            function PrintElem(elem) {
                Popup($(elem).html());
            }

            function Popup(data) {
                var mywindow = window.open('', 'my div', 'height=400,width=600');
                mywindow.document.write('<html><head><title>my div</title>');
                mywindow.document.write('</head><body >');
                mywindow.document.write(data);
                mywindow.document.write('</body></html>');
				mywindow.document.close();
                mywindow.focus();
				mywindow.print();
                mywindow.close();

                return true;
            }

</script>
	<style>
	.dontprint
{ display: none; }
	</style>
	
</head>

<body class="hold-transition skin-blue sidebar-mini" style="background:#FFFFFF">

	<div class="wrapper">
		
		
		<div class="content-wrapper">
			<section class="content-header">
			  <h1>
				Students
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['batch']))
					{
						$sql="SELECT *
								FROM batch
						WHERE id='".base64_decode($_GET['batch'])."'
						" ;
					}
				
					else
						$sql="SELECT * FROM batch ORDER BY id";
				
					$oResultUp=$oBasic->SqlQuery($sql);
				
				?>
					
					
					<div class="col-md-6">
            
					  <div class="box box-info" id="mydiv">
						
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=1";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center;"><img src="../images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						<p style="font-size:15px">Batch: <b><?php echo $oResultUp->rows[$i]['batch_name']?></b></p>
						
						
						<table style="border: 1px solid black;">
							<tr style="border: 1px solid black;">
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Roll
								</th>
								<th style="border: 1px solid black; width:10%; text-align:center">
									Name
								</th>
								
								<th style="border: 1px solid black; width:10%; text-align:center">
									Action
								</th>
								
								
							</tr>
							
							<?php 
						$sql="SELECT * 
						FROM student 
						WHERE batch='".$oResultUp->rows[$i]['batch_name']."' 
						ORDER BY roll";
						$oResultCond=$oBasic->SqlQuery($sql);
						for($j=0;$j<$oResultCond->num_rows;$j++){?>
						<tr style="border: 1px solid black;">
								
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['roll'];
									?>
								</td>
								<td style="border: 1px solid black; width:0%;">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['fname'].'&nbsp;'.$oResultCond->rows[$j]['lname'];
								?>
								</td>
								
								<td width="5%" style="font-weight:bold" align="center"><a href='<?php echo "?Basic=BatchWiseStudentVWStd&student=".base64_encode($oResultCond->rows[$j]['id'])?>' style="color:#000000; font-weight:bold">View</a>  
						</tr>
						<?php }?>
							
						</table>
						
						
						<?php }?>
						<br/><br/>
					</div>
					  
					</div>
					
				</div>
			</section>
		</div>
		
		

      
      <div class="control-sidebar-bg"></div>
	
	</div>
    <ul class="menu">
		<li><a href="index.php?Basic=BatchWiseStudent">Back</a></li>
		<li><a href="index.php">Main Menu</a></li>
		<li><a href="signout.php">Logout</a></li>
	</ul>
    

</body>
</html>