<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$attendent = trim(addslashes($_POST['attendent']));
		$classtest = trim(addslashes($_POST['classtest']));
		$exam = trim(addslashes($_POST['exam']));
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		
		if($_POST['btnSave']=='Update')
		{
			$sql="UPDATE result SET attendent='$attendent', classtest='$classtest', exam='$exam'
			UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Result Successfully');</script>";
			echo "<script>window.location='?Basic=SubRes'</script>";
		}
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
				Edit Student Result
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					<?php 
		
					if(isset($_GET['result']))
					{
						$sql="SELECT *
						FROM result
						WHERE id='".base64_decode($_GET['result'])."'
						" ;
					}
				
					else
						$sql="SELECT * FROM result ORDER BY id";
				
					$oResultUp=$oBasic->SqlQuery($sql);
				
				?>
					
					
					<div class="col-md-6" style="background-color:#FFFFFF">
            
					  <div class="box box-info" id="mydiv">
						
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						<b>Roll: <?php echo $oResultUp->rows[$i]['roll']?></b>
						
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									<div class="form-group">
									  <label>Attendent</label>
									  <input type="text" class="form-control" name="attendent" id="attendent" required="required" value="<?php echo $oResultUp->rows[$i]['attendent'] ?>" />
									</div>
									
									<div class="form-group">
									  <label>Class Test</label>
									  <input type="text" class="form-control" name="classtest" id="classtest" required="required" value="<?php echo $oResultUp->rows[$i]['classtest'] ?>" />
									</div>
									
									<div class="form-group">
									  <label>Exam</label>
									  <input type="text" class="form-control" name="exam" id="exam" required="required" value="<?php echo $oResultUp->rows[$i]['exam'] ?>" />
									</div>
									
									<input type="submit" value="Update" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
								</div>
							</form>
						
						<?php }?>
						<br/><br/>
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