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
				Result Check
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['init_result']))
					{
						$sql="SELECT * 
						FROM init_result a, subject b
						WHERE a.id='".base64_decode($_GET['init_result'])."'
						and a.sub_id=b.sub_id" ;
						
					}
				
					else
						$sql="SELECT * FROM init_result ORDER BY id";
				
					$oResultUp=$oBasic->SqlQuery($sql);
				
				?>
					
					
					<div class="col-md-6">
            
					  <div class="box box-info" id="mydiv">
						
						
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						
						<b>Result Name:</b> <p><?php echo ($oResultUp->rows[$i]['res_name']); ?></p>
						<b>Subject Name:</b> <p><?php echo ($oResultUp->rows[$i]['sub_name']); ?></p>
						
						
						
						<table style="border: 1px solid black;">
							<tr style="border: 1px solid black;">
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Roll
								</th>
								<th style="border: 1px solid black; width:2%; text-align:center">
									Attendance
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Class Test
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Exam
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Total
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Grade
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									CGPA
								</th>
								<th style="border: 1px solid black; width:2%; text-align:center">
									Action
								</th>
								
								
								
							</tr>
							
							<form method="post" action="" enctype="multipart/form-data" id="registerform">	
							
							<?php 
						
						$sql="SELECT * 
						FROM result 
						WHERE res_name='".$oResultUp->rows[$i]['res_name']."' 
						ORDER BY roll";
						$oResultCond=$oBasic->SqlQuery($sql);
						for($j=0;$j<$oResultCond->num_rows;$j++){?>
						<tr style="border: 1px solid black;">
								
								
							
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo ($oResultCond->rows[$j]['roll']); ?>
									
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:right">
									<?php echo ($oResultCond->rows[$j]['attendent']); ?>
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:right">
									<?php echo ($oResultCond->rows[$j]['classtest']); ?>
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:right">
									<?php echo ($oResultCond->rows[$j]['exam']); ?>
								</td>
								<?php 
									$total=$oResultCond->rows[$j]['attendent']+$oResultCond->rows[$j]['classtest']+$oResultCond->rows[$j]['exam'];
									
									if($total<40)
									{
										$grade='F';
										$gpa=0.00;
									}
									else if($total>0 && $total<40)
									{
										$grade='F';
										$gpa=0.00;
									}
									else if($total>=40 && $total<50)
									{
										$grade='C';
										$gpa=2.00;
									}
									else if($total>=50 && $total<60)
									{
										$grade='C+';
										$gpa=2.50;
									}
									else if($total>=60 && $total<65)
									{
										$grade='B';
										$gpa=3.00;
									}
									else if($total>=65 && $total<70)
									{
										$grade='B+';
										$gpa=3.25;
									}
									else if($total>=70 && $total<75)
									{
										$grade='A-';
										$gpa=3.50;
									}
									else if($total>=75 && $total<80)
									{
										$grade='A';
										$gpa=3.75;
									}
									else
									{
										$grade='A+';
										$gpa=4.00;
									}
								?>
								<td style="border: 1px solid black; width:0%; text-align:right">
									<?php echo ($total); ?>
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo ($grade); ?>
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo ($gpa); ?>
								</td>
								<td width="5%"  align="center"><a href='<?php echo "?Basic=EditStdRes&result=".base64_encode($oResultCond->rows[$j]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="Edit"></i></a>  
									</td>
								
							</tr>
						<?php }?>
						
						
						
						
						
							
						</table>
						</form>
						
						<?php
						if (isset($_POST['btnSave']))
						{
							for($i = 0; $i <count($_POST)-3; $i++)
							{
								$CreateBy=$oSession->getUserName();
								$CreateDate=date('Y-m-d H:i:s');
								mysql_query("INSERT INTO `result`(`res_name`,`batch_name`,`sub_id`,`roll`,`attendent`,`classtest`,`exam`,`CreateBy`,`CreateDate`) VALUES('".$c."','".$a."','".$b."','".$_POST['roll'][$i]."','".$_POST['attendent'][$i]."','".$_POST['classtest'][$i]."','".$_POST['exam'][$i]."','$CreateBy','$CreateDate');");
							}


						}
						?>
						
						<?php }?>
						
					</div>
					  
					  <input type="submit" value="Print" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onclick="PrintElem('#mydiv')" />
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