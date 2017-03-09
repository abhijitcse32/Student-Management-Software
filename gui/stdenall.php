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
				Student List
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['batch']))
					{
						$sql="SELECT * FROM batch WHERE id='".base64_decode($_GET['batch'])."'" ;
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
									Image
								</th>
								<th style="border: 1px solid black; width:2%; text-align:center">
									Roll
								</th>
								<th style="border: 1px solid black; width:10%; text-align:center">
									Name
								</th>
								<th style="border: 1px solid black; width:10%; text-align:center">
									Father
								</th>
								<th style="border: 1px solid black; width:10%; text-align:center">
									Mother
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
								
								<?php 
										if($oResultCond->rows[$i]['image']==null)
										{
											$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" >";
											$a.="<img src=\"images/dummy_pic.jpg\" class=\"teacher_img\" style=\"height:50px; width:50px\"/>";
											$a.="</td>";
											echo $a;
										}
										
										else
										{
											$path="images/student/";
											$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" >";
											$a.="<img src=".$path.$oResultCond->rows[$i]['image']." class=\"teacher_img\" style=\"height:50px; width:50px\"/>";
											$a.="</td>";
											echo $a;
										}
									?>
								
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['roll'];
									?>
								</td>
								<td style="border: 1px solid black; width:0%;">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['fname'].'&nbsp;'.$oResultCond->rows[$j]['lname'];
								?>
								</td>
								<td style="border: 1px solid black; width:0%;">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['fatname'];
								?>
								</td>
								<td style="border: 1px solid black; width:0%;">
									<?php echo '&nbsp;'.$oResultCond->rows[$j]['motname'];
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