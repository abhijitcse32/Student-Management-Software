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
				Faculty Members View
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['faculty']))
					{
						$sql="SELECT *
						FROM faculty
						WHERE id='".base64_decode($_GET['faculty'])."'
						" ;
					}
				
					else
						$sql="SELECT * FROM faculty ORDER BY id";
				
					$oResultUp=$oBasic->SqlQuery($sql);
				
				?>
					
					
					<div class="col-md-6" style="background-color:#FFFFFF">
            
					  <div class="box box-info" id="mydiv">
						<?php 
							$sqlcons="SELECT * FROM bod WHERE id=1";
							$oResultCons=$oBasic->SqlQuery($sqlcons);
						?>
						<p style="text-align:center;"><img src="images/<?php echo $oResultCons->row['logo']?>" style="width:70px; height:70px; " alt=""></p>
						<b><p style="text-align:center; font-size:25px"><?php echo $oResultCons->row['dept_name']?></p></b>						
						<b><p style="text-align:center; font-size:20px"><?php echo $oResultCons->row['uv_name']?></p></b>						
						<br/>
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						
						<div style="width:100%" >
							<div style="width:50%; float:left">
								<?php 
										if($oResultUp->rows[$i]['image']==null)
										{
											$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" >";
											$a.="<img src=\"images/dummy_pic.jpg\" class=\"teacher_img\" style=\"height:50px; width:50px; margin-left:5%\"/>";
											$a.="</td>";
											echo $a;
										}
										
										else
										{
											$path="images/faculty/";
											$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" >";
											$a.="<img src=".$path.$oResultUp->rows[$i]['image']." class=\"teacher_img\" style=\"height:50%; width:50%; margin-left:5%\"/>";
											$a.="</td>";
											echo $a;
										}
									?>
							</div>
							<div style="width:50%; float:left">
								<p><b><?php echo $oResultUp->rows[$i]['fname'].' '.$oResultUp->rows[$i]['lname']?></b></p>
								<p><b><?php echo $oResultUp->rows[$i]['desig']?></b></p>
								<p><b><?php echo $oResultCons->row['dept_name']?></b></p>
								<p><b><?php echo $oResultCons->row['uv_name']?></b></p>
							</div>
						</div>
						
						<br/><br/>
						
						
						<?php }?>
						<br/><br/>
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