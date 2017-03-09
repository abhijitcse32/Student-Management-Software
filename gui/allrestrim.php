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
						
						<table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
							<tr style="color:#000000;">
								<td width="0%" style="text-align:center"><b>Trimister</b></td>
								<td width="" style="text-align:center"><b>Action</b></td>
							</tr>
							<?php
							for($i=0;$i<$oResultUp->num_rows;$i++){?>
							<tr style="color:#000000;">
								<td style="border: 1px solid black; width:0%; text-align:center">
									<?php echo $oResultUp->rows[$i]['trimister_name'];
									?>
								</td>
							</tr>
							<?php } ?>
						</table>
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