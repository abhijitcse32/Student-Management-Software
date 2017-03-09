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
				Student Message Details
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['std_teacher_notice']))
					{
						$sql="SELECT A.id, A.teacher_id, A.message, A.CreateBy, B.fname techfname, B.lname techlname, C.fname, C.lname, C.roll, C.batch, A.CreateDate
									FROM std_teacher_notice A, faculty B, student C
									WHERE A.id='".base64_decode($_GET['std_teacher_notice'])."'
									AND A.CreateBy=C.roll
									AND A.teacher_id=B.username";
					}
				
					else
						$sql="SELECT * FROM std_teacher_notice ORDER BY id";
				
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
						<p style="font-size:15px">From: <b><?php echo $oResultUp->rows[$i]['fname'].' '.$oResultUp->rows[$i]['lname'].'['.$oResultUp->rows[$i]['roll'].']--'.$oResultUp->rows[$i]['batch']?></b></p>
						<p style="font-size:15px">To: <b><?php echo $oResultUp->rows[$i]['techfname'].' '.$oResultUp->rows[$i]['techlname']?></b></p>
						<p style="font-size:15px">Message: <b><?php echo $oResultUp->rows[$i]['message']?></b></p>
						
						<br/><br/>
						
						
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