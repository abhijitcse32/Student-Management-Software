<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('meta.php');?>
	
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
				Results
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
						<p style="text-align:center;"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
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
								
								
								<?php 
								$sql="SELECT DISTINCT A.trimister_name
								FROM init_result A, result B 
								WHERE B.batch_name='".$oResultUp->rows[$i]['batch_name']."' 
								AND A.res_name=B.res_name
								ORDER BY A.trimister_name";
								$oResultSec=$oBasic->SqlQuery($sql);
								for($m=0;$m<$oResultSec->num_rows;$m++){?>
								<th style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $oResultSec->rows[$m]['trimister_name'].' Sem'?>
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
								
								$sql="SELECT trimister_name, TRUNCATE((grade/nosub),2) grade FROM(
										SELECT trimister_name, SUM(grade) grade, COUNT(sub_id) nosub FROM(
										SELECT A.trimister_name, (attendent+classtest+exam) marks, D.sub_id,
										(CASE when ((attendent+classtest+exam)>0 and (attendent+classtest+exam)<40) then '0.00'
										 when ((attendent+classtest+exam)>=40 and (attendent+classtest+exam)<50) then '2.00'
										 when ((attendent+classtest+exam)>=50 and (attendent+classtest+exam)<60) then '2.50'
										 when ((attendent+classtest+exam)>=60 and (attendent+classtest+exam)<65) then '3.00'
										 when ((attendent+classtest+exam)>=65 and (attendent+classtest+exam)<70) then '3.25'
										 when ((attendent+classtest+exam)>=70 and (attendent+classtest+exam)<75) then '3.50'
										 when ((attendent+classtest+exam)>=75 and (attendent+classtest+exam)<80) then '3.75'
												 ELSE  '4.00'
											   END) AS grade
										FROM trimister A, routine_set B, student c, result D, subject E, init_result F 
										WHERE A.trimister_name=B.trimister_name 
										AND B.batch_name='".$oResultUp->rows[$i]['batch_name']."'
										AND B.batch_name=c.batch 
										AND B.batch_name=D.batch_name 
										AND D.sub_id=E.sub_id 
										AND A.trimister_name=F.trimister_name 
										AND D.res_name=F.res_name 
										AND c.username='".$oResultCond->rows[$j]['roll']."'
										AND c.username=D.roll 
										ORDER BY A.trimister_name 
											) s
											GROUP BY trimister_name
											) m
											ORDER BY trimister_name
									";
								$oResultCondRes1=$oBasic->SqlQuery($sql);
								$sum=0;
								if($oResultCondRes1->num_rows==0)
								$rows=1;
								else		
								$rows=$oResultCondRes1->num_rows;
								for($k=0;$k<$oResultCondRes1->num_rows;$k++){?>
								
								<?php
									$total=$oResultCondRes1->rows[$k]['grade'];
									$sum=$sum+$total;
								?>
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo '&nbsp;'.$oResultCondRes1->rows[$k]['grade'];?>
								</td>
								
								
								<?php } ?>
								<td style="border: 1px solid black; width:0%; text-align:center;">
									<?php 
									$tgpa=$sum/$rows;
									echo round($tgpa,2);
									?>
								</td>
								
						</tr/>
								<?php }?>
						
						
						
						</table>
						
						
						<?php }?>
						<br/><br/>
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=2";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center; margin-left:60%"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:50px; height:50px; " alt=""></p>
						<p style="text-align:right; font-size:15px; margin-right:5%"><?php echo $oResultCons->row['dir_name']?></p>
						<p style="text-align:right; font-size:15px; margin-right:4%"><?php echo $oResultCons->row['dir_desig']?></p>
					
					</div>
					  
					  <input type="submit" value="Print" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onclick="PrintElem('#mydiv')" />
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