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
				Teacher Notice Details
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['teacher_notice']))
					{
						$sql="SELECT A.id, A.batch_name, A.notice_name, A.message, B.fname, B.lname, B.desig 
						FROM teacher_notice A, faculty B
						WHERE A.id='".base64_decode($_GET['teacher_notice'])."'
						AND A.CreateBy=B.username" ;
					}
				
					else
						$sql="SELECT * FROM teacher_notice ORDER BY id";
				
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
						<p style="font-size:15px">Notice Name: <b><?php echo $oResultUp->rows[$i]['notice_name']?></b></p>
						<p style="font-size:15px">Batch Name: <b><?php echo $oResultUp->rows[$i]['batch_name']?></b></p>
						<p style="font-size:15px">Message: <b><?php echo $oResultUp->rows[$i]['message']?></b></p>
						
						<br/><br/>
						
						<p style="text-align:right; margin-right:10%"><?php echo $oResultUp->rows[$i]['fname'].' '.$oResultUp->rows[$i]['lname']?></p>
						<p style="text-align:right; margin-right:10%"><?php echo $oResultUp->rows[$i]['desig']?></p>
						
						
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