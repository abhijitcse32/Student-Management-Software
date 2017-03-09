<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		$nm = trim(addslashes($_POST['nm']));
		$sub_id1 = trim(addslashes($_POST['sub_id1']));
		$trimister_name =  trim(addslashes($_POST['trimister_name']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO init_result (res_name, sub_id, trimister_name, CreateBy, CreateDate) 
				  VALUES ('$nm', '$sub_id1', '$trimister_name', '$CreateBy', '$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			//print_r($oResult);
			
			echo "<script>alert('Insert Result Successfully');</script>";
			echo "<script>window.location='?Basic=ResEn'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE trimister SET trimister_name='$trimister_name', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Trimister Successfully');</script>";
			echo "<script>window.location='?Basic=Trimister'</script>";
		}
	}
	
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM designation WHERE id=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Delete Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=Designation';</script>");
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
	
	<script language="javascript" type="text/javascript">
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlLoanDetails=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	xmlLoanDetails=new ActiveXObject("Microsoft.XMLHTTP");
}

var Inv=[];
MemberNo=[
<?php 
$sql = "SELECT * FROM subject ORDER BY sub_id";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['sub_id'].'--'.$oResultMember->rows[$i]['sub_name'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#sub_id1").autocomplete({
	source: function(req, responseFn) {
			var re = $.ui.autocomplete.escapeRegex(req.term);
			var matcher = new RegExp( re, "i" );
			var a = $.grep( MemberNo, function(item,index){
				return matcher.test(item);
			});
			responseFn( a );
		}
	});
});

function LoadLoanInv()
{
	var Name=document.getElementById('sub_id1').value;
	flag=true;
}


</script>



<script language="javascript" type="text/javascript">
if (window.XMLHttpRequest)
{// code for IE7+, Firefox, Chrome, Opera, Safari
	xmlLoanDetails=new XMLHttpRequest();
}
else
{// code for IE6, IE5
	xmlLoanDetails=new ActiveXObject("Microsoft.XMLHTTP");
}

var Inv=[];
MemberNo1=[
<?php 
$sql = "SELECT * FROM trimister ORDER BY id";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['trimister_name'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#trimister_name").autocomplete({
	source: function(req, responseFn) {
			var re = $.ui.autocomplete.escapeRegex(req.term);
			var matcher = new RegExp( re, "i" );
			var a = $.grep( MemberNo1, function(item,index){
				return matcher.test(item);
			});
			responseFn( a );
		}
	});
});

function LoadLoanInv1()
{
	var Name=document.getElementById('trimister_name').value;
	flag=true;
}


</script>
	
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
						$sql="SELECT * FROM batch WHERE id='".base64_decode($_GET['batch'])."'";
					}
				
					else
						$sql="SELECT * FROM batch ORDER BY id";
				
					$oResultUp=$oBasic->SqlQuery($sql);
				
				?>
					
					
					<div class="col-md-6">
            
					  <div class="box box-info" id="mydiv">
						
						
						<?php for($i=0;$i<$oResultUp->num_rows;$i++){ ?>
						<b>Batch:</b> <input type="text" style="font-size:15px" name="batch_name" id="batch_name" required="required" readonly="readonly" value="<?php echo ($oResultUp->rows[$i]['batch_name']); ?>" />
						
						<br/>
					  
						
						<form method="post" action="" enctype="multipart/form-data" id="registerform">	
							<b>Result Name:</b><input type="text" style="font-size:15px" name="nm" id="nm" required="required" value="" />
									
							<div class="form-group">
								  <label>Subject</label>
								  <input type="text" class="form-control" name="sub_id1" id="sub_id1" required="required" value="" onblur="LoadLoanInv()" />
							</div>		
							
							<div class="form-group">
								  <label>Trimister</label>
								  <input type="text" class="form-control" name="trimister_name" id="trimister_name" required="required" value="" onblur="LoadLoanInv1()" />
							</div>
									
							
							
							
						
						<table style="border: 1px solid black;">
							<tr style="border: 1px solid black;">
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Roll
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Name
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Attendance
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Class Test
								</th>
								
								<th style="border: 1px solid black; width:2%; text-align:center">
									Exam
								</th>
								
								
								
							</tr>
							
							
							<?php 
						
						$sql="SELECT * 
						FROM student 
						WHERE batch='".$oResultUp->rows[$i]['batch_name']."' 
						ORDER BY roll";
						$a=$oResultUp->rows[$i]['batch_name'];
						$oResultCond=$oBasic->SqlQuery($sql);
						for($j=0;$j<$oResultCond->num_rows;$j++){?>
						<tr style="border: 1px solid black;">
								
								
							
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<input type="text" class="form-control" name="roll[]" id="roll" required="required" readonly="readonly" value="<?php echo ($oResultCond->rows[$j]['roll']); ?>" />
									
								</td>
								
								<td style="border: 1px solid black; width:5%; text-align:center">
									<input type="text" class="form-control" name="name[]" id="name" required="required" readonly="readonly" value="<?php echo ($oResultCond->rows[$j]['fname'].' '.$oResultCond->rows[$j]['lname']); ?>" />
									
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<input type="text" style="text-align:right" class="form-control" name="attendent[]" id="attendent" required="required" value="" />
									
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<input type="text" style="text-align:right" class="form-control" name="classtest[]" id="classtest" required="required" value="" />
									
								</td>
								
								<td style="border: 1px solid black; width:0%; text-align:center">
									<input type="text" style="text-align:right" class="form-control" name="exam[]" id="exam" required="required" value="" />
									
								</td>
								
								
							</tr>
						<?php }?>
						
						
						
						
						
							
						</table>
						<input type="submit" value="Save" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
						</form>
						
						<?php
						if (isset($_POST['btnSave']))
						{
							for($i = 0; $i <count($_POST['roll']); $i++)
							{
								$nm = trim(addslashes($_POST['nm']));
								$sub_id1 = trim(addslashes($_POST['sub_id1']));
								$CreateBy=$oSession->getUserName();
								$CreateDate=date('Y-m-d H:i:s');
								mysql_query("INSERT INTO `result`(`res_name`,`batch_name`,`sub_id`,`roll`,`attendent`,`classtest`,`exam`,`CreateBy`,`CreateDate`) VALUES('$nm','".$a."','$sub_id1','".$_POST['roll'][$i]."','".$_POST['attendent'][$i]."','".$_POST['classtest'][$i]."','".$_POST['exam'][$i]."','$CreateBy','$CreateDate');");
								
							}


						}
						?>
						
						<?php }?>
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