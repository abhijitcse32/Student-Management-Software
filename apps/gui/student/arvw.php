<?php
	$a=$oSession->getUserName();
	
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}
?>
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
		
					if(isset($_GET['trimister']))
					{
						$sql="SELECT A.id, A.trimister_name, B.batch_name, c.fname, c.lname, c.roll
						FROM trimister A, routine_set B, student c
						WHERE A.id='".base64_decode($_GET['trimister'])."'
						AND A.trimister_name=B.trimister_name
						AND B.batch_name=c.batch
						AND c.username='$a'
						" ;
					}
				
					else
						$sql="SELECT * FROM trimister ORDER BY id";
				
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
						<p style="font-size:15px">Name: <b><?php echo $oResultUp->rows[$i]['fname'].' '.$oResultUp->rows[$i]['lname']?></b></p>
						<p style="font-size:15px">Roll: <b><?php echo $oResultUp->rows[$i]['roll']?></b></p>
						<p style="font-size:15px">Batch: <b><?php echo $oResultUp->rows[$i]['batch_name']?></b></p>
						<p style="font-size:15px">Semester: <b><?php echo $oResultUp->rows[$i]['trimister_name']?></b></p>
							<table style="border: 1px solid black;">
							<tr style="border: 1px solid black;">
								<th style="border: 1px solid black; width:10%; text-align:center">
									Subject
								</th>
								
								<th style="border: 1px solid black; width:10%; text-align:center">
									Marks
								</th>
								
								<th style="border: 1px solid black; width:10%; text-align:center">
									Grade
								</th>
								
								<th style="border: 1px solid black; width:10%; text-align:center">
									CGPA
								</th>
								
							</tr>
							
							<?php
							$sql="SELECT A.id, A.trimister_name, B.batch_name, D.sub_id, E.sub_name,
							(D.attendent+D.classtest+D.exam) marks
						FROM trimister A, routine_set B, student c, result D, subject E, init_result F
						WHERE A.id='".$oResultUp->rows[$i]['id']."'
						AND A.trimister_name=B.trimister_name
						AND B.batch_name=c.batch
						AND B.batch_name=D.batch_name
						AND D.sub_id=E.sub_id
						AND A.trimister_name=F.trimister_name
						AND D.res_name=F.res_name
						AND c.username='$a'
						AND c.username=D.roll
						" ;
						$oResultCond=$oBasic->SqlQuery($sql);
							$sum=0;
							if($oResultCond->num_rows==0)
								$rows=1;
							else		
								$rows=$oResultCond->num_rows;
							for($j=0;$j<$oResultCond->num_rows;$j++){?>
							
							<tr style="border: 1px solid black;">
								<td style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $oResultCond->rows[$j]['sub_name'];?>
								</td>
								
								<td style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $oResultCond->rows[$j]['marks'];?>
								</td>
								
								<?php 
									
									$total=$oResultCond->rows[$j]['marks'];
									
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
								
								<td style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $grade;?>
								</td>
								
								<td style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $gpa;?>
								</td>
								
							</tr>
							
						<?php }?>
						
							</table>
						
						<h3>Total CGPA: <span style="color:red">
						<?php 
						$tgpa=$sum/$rows;
						echo round($tgpa,2)?></span></h3>
						
						<?php }?>
						
						
						<br/><br/>
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