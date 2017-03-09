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
				Routine Check
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['routine_set']))
					{
						$sql="SELECT * FROM routine_set WHERE id='".base64_decode($_GET['routine_set'])."'" ;
					}
				
					else
						$sql="SELECT * FROM routine_set ORDER BY routine_id";
				
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
						<p style="font-size:15px">Routine Name: <b><?php echo $oResultUp->rows[$i]['routine_name']?></b></p>
						<p style="font-size:15px">Batch: <b><?php echo $oResultUp->rows[$i]['batch_name']?></b></p>
						<p style="font-size:15px">Trimister: <b><?php echo $oResultUp->rows[$i]['trimister_name']?></b></p>
						
						<table style="border: 1px solid black;">
							<tr style="border: 1px solid black;">
								<th style="border: 1px solid black; width:10%; text-align:center">
									Time
								</th>
								<th style="border: 1px solid black; width:20%; text-align:center">
									Subject
								</th>
								
								<th style="border: 1px solid black; width:20%; text-align:center">
									Teacher
								</th>
							</tr>
						
						<?php 
						$sql="SELECT A.routine_id, A.faculty_member,A.sub_code,B.sub_name,A.cls_time, C.fname, C.lname 
						FROM routine A, subject B, faculty C  
						WHERE A.routine_id='".$oResultUp->rows[$i]['routine_id']."' 
						AND A.sub_code=B.sub_id
						AND A.faculty_member=C.username
						ORDER BY A.id";
						$oResultCond=$oBasic->SqlQuery($sql);
						
						
						
						
						for($j=0;$j<$oResultCond->num_rows;$j++){?>
						
							<tr style="border: 1px solid black;">
								<td style="border: 1px solid black; width:10%; text-align:center">
									<?php echo $oResultCond->rows[$j]['cls_time'];?>
								</td>
								<td style="border: 1px solid black; width:20%;">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['sub_name'].'<br/>&nbsp;('
										.$oResultCond->rows[$j]['sub_code'].')';
									?>
								</td>
								<td style="border: 1px solid black; width:20%;">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['fname'].'&nbsp;'.$oResultCond->rows[$j]['lname'].'<br/>&nbsp;('
									.$oResultCond->rows[$j]['faculty_member'].')';
								?>
								</td>
							</tr>
						<?php }?>
						</table>
						<?php }?>
						<br/><br/>
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=2";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center; margin-left:60%"><img src="../images/<?php echo $oResultCons->row['logo']?>" style="width:50px; height:50px; " alt=""></p>
						<p style="text-align:right; font-size:15px; margin-right:5%"><?php echo $oResultCons->row['dir_name']?></p>
						<p style="text-align:right; font-size:15px; margin-right:4%"><?php echo $oResultCons->row['dir_desig']?></p>
					
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