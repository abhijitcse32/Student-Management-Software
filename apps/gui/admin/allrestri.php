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
				Results
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['batch']))
					{
						$sql="SELECT DISTINCT A.batch_name, B.trimister_name
								FROM batch A, init_result B, result C
						WHERE A.id='".base64_decode($_GET['batch'])."'
						AND A.batch_name=C.batch_name
						AND B.res_name=C.res_name
						ORDER BY B.trimister_name
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
						<!--<p style="text-align:center;"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						-->
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						<p style="font-size:15px">Batch: <b><?php echo $oResultUp->rows[$i]['batch_name']?></b></p>
						<p style="font-size:15px">Trimister: <b><?php echo $oResultUp->rows[$i]['trimister_name']?></b></p>
						
						
						<table style="border: 1px solid black;">
							<tr style="border: 1px solid black;">
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Roll
								</th>
								<th style="border: 1px solid black; width:10%; text-align:center">
									Name
								</th>
								
								
								<?php 
								$sql="SELECT A.sub_code 
								FROM routine A, routine_set B 
								WHERE B.batch_name='".$oResultUp->rows[$i]['batch_name']."' 
								AND B.trimister_name='".$oResultUp->rows[$i]['trimister_name']."'
								AND A.routine_id=B.routine_id
								ORDER BY A.sub_code";
								$oResultSec=$oBasic->SqlQuery($sql);
								for($j=0;$j<$oResultSec->num_rows;$j++){?>
								<th style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $oResultSec->rows[$j]['sub_code']?>
								</th>
								<?php } ?>
								
								<th style="border: 1px solid black; width:10%; text-align:center">
									Total
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
								
								<?php
								$sql="SELECT D.sub_id, (D.attendent+D.classtest+D.exam) marks
								FROM trimister A, routine_set B, student c, result D, subject E, init_result F
								WHERE A.trimister_name=B.trimister_name
								AND B.batch_name='".$oResultUp->rows[$i]['batch_name']."'
								AND A.trimister_name='".$oResultUp->rows[$i]['trimister_name']."'
								AND B.batch_name=c.batch
								AND B.batch_name=D.batch_name
								AND D.sub_id=E.sub_id
								AND A.trimister_name=F.trimister_name
								AND D.res_name=F.res_name
								AND c.username='".$oResultCond->rows[$j]['roll']."'
								AND c.username=D.roll
								ORDER BY D.sub_id";
								$oResultCondRes1=$oBasic->SqlQuery($sql);
								$sum=0;
								if($oResultCondRes1->num_rows==0)
								$rows=1;
								else		
								$rows=$oResultCondRes1->num_rows;
								for($k=0;$k<$oResultCondRes1->num_rows;$k++){?>
								
								<?php 
									
									$total=$oResultCondRes1->rows[$k]['marks'];
									
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
									
									$sum=$sum+$gpa;
								?>
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php //echo '&nbsp;'.$oResultCondRes1->rows[$k]['marks'];?>
									<?php echo $gpa;?>
								</td>
								
								
								<?php } ?>
								
								<td style="border: 1px solid black; width:0%; text-align:center;">
									<?php 
									$tgpa=$sum/$rows;
									echo round($tgpa,2);
									?>
								</td>
						</tr>
						<?php }?>
							
						</table>
						
						
						<?php }?>
						<br/><br/>
					</div>
					  
					</div>
					<ul class="menu">
						<li><a href="index.php?Basic=AllResults">Back</a></li>
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