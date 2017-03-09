<?php
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.roll, B.fname, B.lname, B.fatname, B.motname, B.batch 
	 FROM user A, student B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	 $oResultAddmisson=$oBasic->SqlQuery($Sql);
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">
		<header class="main-header">
			<?php include('header.php');?>
		</header>
		
		<aside class="main-sidebar">
			<section class="sidebar">
			  <div class="user-panel">
				<?php include('gui/headerleft.php');?>
			  </div>
			  
			  <ul class="sidebar-menu">
				<?php include('menu.php');?>
			  </ul>
			  
			</section>
        </aside>
		
		<div class="content-wrapper">
			<section class="content-header">
			  <h1>
				My Full Result
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							
							
							<script language="javascript">
							function checkValid()
							{
								if(registerform.password.value != registerform.cpassword.value)
								{
								window.alert("Your Password and Confirm Password are not Same");
								registerform.password.focus();
								return false;
								}
								
							}

						</script>
						
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=1";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center;"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						
						
						
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									
									  <div class="form-group">
											<p style="font-size:15px">Name: <b><?php echo $oResultAddmisson->row['fname'].'&nbsp;'.$oResultAddmisson->row['lname']; ?></b></p>
											<p style="font-size:15px">Roll: <b><?php echo $oResultAddmisson->row['username']; ?></b></p>
											<p style="font-size:15px">Batch: <b><?php echo $oResultAddmisson->row['batch']; ?></b></p>
											
											<table style="border: 1px solid black;">
												<tr style="border: 1px solid black;">
													<th style="border: 1px solid black; width:10%; text-align:center">
														Trimister
													</th>
													
													
													<th style="border: 1px solid black; width:10%; text-align:center">
														CGPA
													</th>
													
												</tr>
												
												<?php
												$sql="SELECT trimister_name, TRUNCATE((grade/nosub),2) grade FROM(
														SELECT trimister_name, SUM(grade) grade, COUNT(sub_id) nosub FROM(
														SELECT A.trimister_name, D.sub_id, 
														(D.attendent+D.classtest+D.exam) marks,
														(CASE when ((attendent+classtest+exam)>0 and (attendent+classtest+exam)<40) then '0.00'
														when ((attendent+classtest+exam)>=40 and (attendent+classtest+exam)<50) then '2.00'
														when ((attendent+classtest+exam)>=50 and (attendent+classtest+exam)<60) then '2.50'
														when ((attendent+classtest+exam)>=60 and (attendent+classtest+exam)<65) then '3.00'
														when ((attendent+classtest+exam)>=65 and (attendent+classtest+exam)<70) then '3.25'
														when ((attendent+classtest+exam)>=70 and (attendent+classtest+exam)<75) then '3.50'
														when ((attendent+classtest+exam)>=75 and (attendent+classtest+exam)<80) then '3.75'
														ELSE  '4.00'
														END) AS grade
														FROM trimister A, routine_set B, student C, result D, subject E, init_result F
														WHERE A.trimister_name=B.trimister_name
														AND B.batch_name=C.batch
														AND B.batch_name=D.batch_name
														AND D.sub_id=E.sub_id
														AND A.trimister_name=F.trimister_name
														AND D.res_name=F.res_name
														AND C.username='$a'
														AND C.username=D.roll
															) s
															GROUP BY trimister_name
															) m
															ORDER BY trimister_name";
													$oResultCond=$oBasic->SqlQuery($sql);
													$sum=0;
													if($oResultCond->num_rows==0)
														$rows=1;
													else		
														$rows=$oResultCond->num_rows;	
													for($j=0;$j<$oResultCond->num_rows;$j++){?>													
													<tr style="border: 1px solid black;">
														<td style="border: 1px solid black; width:10%; text-align:center">
															<?php echo $oResultCond->rows[$j]['trimister_name'];?>
														</td>
														
														<td style="border: 1px solid black; width:10%; text-align:center">
															<?php echo $oResultCond->rows[$j]['grade'];?>
														</td>
														
														<?php 
															$total=$oResultCond->rows[$j]['grade'];
															$sum=$sum+$total;
														?>
													</tr>
													
													<?php }?>
												
												
											</table>
											<h3>Total CGPA: <span style="color:red">
											<?php 
											$tgpa=$sum/$rows;
											echo round($tgpa,2)?></span></h3>
										</div>
									
									
									
									
									
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