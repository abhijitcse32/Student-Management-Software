<?php
	$oCommon=new CCommon();
	$ID=FALSE;
	if(isset($_GET['ID']))
	{
		$ID= base64_decode($_GET['ID']);
	}

	if (isset($_POST['btnSave']))
	{
		$routine_id = trim(addslashes($_POST['routine_id']));
		$routine_name = trim(addslashes($_POST['routine_name']));
		$batch_name = trim(addslashes($_POST['batch_name']));
		$trimister_name = trim(addslashes($_POST['trimister_name']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO routine_set (routine_id,routine_name,batch_name,trimister_name,CreateBy,CreateDate) 
				  VALUES ('$routine_id','$routine_name','$batch_name','$trimister_name','$CreateBy','$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			
			
			echo "<script>alert('Insert Routine Successfully');</script>";
			echo "<script>window.location='?Basic=Routine'</script>";
		}
		
		
	}
	
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('meta.php');?>
	<script>
			function deletecheck(ID)
			{
				if(confirm("Are you sure to delete?"))
				{
					window.location="?Basic=SEntry&Delete="+id;
				}
			}
		</script>
		
		<script type="text/javascript">
		function readURL(input) {
			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function (e) {
					$('#blah').attr('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
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
MemberNo=[
<?php 
$sql = "SELECT * FROM batch ORDER BY batch_id";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['batch_name'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#batch_name").autocomplete({
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
	var Name=document.getElementById('batch_name').value;
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
MemberNo2=[
<?php 
$sql = "SELECT * FROM faculty ORDER BY id";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['username'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#holidayreason_").autocomplete({
	source: function(req, responseFn) {
			var re = $.ui.autocomplete.escapeRegex(req.term);
			var matcher = new RegExp( re, "i" );
			var a = $.grep( MemberNo2, function(item,index){
				return matcher.test(item);
			});
			responseFn( a );
		}
	});
});

function LoadLoanInv2()
{
	var Name=document.getElementById('holidayreason_').value;
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
MemberNo3=[
<?php 
$sql = "SELECT * FROM subject ORDER BY id";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['sub_id'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#field_").autocomplete({
	source: function(req, responseFn) {
			var re = $.ui.autocomplete.escapeRegex(req.term);
			var matcher = new RegExp( re, "i" );
			var a = $.grep( MemberNo3, function(item,index){
				return matcher.test(item);
			});
			responseFn( a );
		}
	});
});

function LoadLoanInv3()
{
	var Name=document.getElementById('field_').value;
	flag=true;
	
	
}


</script>

	
	<script type="text/javascript" src="jquery.js"></script>
	
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
				Routine Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									<div class="form-group">
									  <label>Routine Id</label>
									  <input type="text" class="form-control" name="routine_id" id="routine_id" required="required" value="" />
									</div>
									
									<div class="form-group">
									  <label>Routine Name</label>
									  <input type="text" class="form-control" name="routine_name" id="routine_name" required="required" value="" />
									</div>
									
									<div class="form-group">
									  <label>Batch Name</label>
									  <input type="text" class="form-control" name="batch_name" id="batch_name" required="required" value="" onblur="LoadLoanInv()" />
									</div>
									
									
									<div class="form-group">
									  <label>Trimister</label>
									  <input type="text" class="form-control" name="trimister_name" id="trimister_name" required="required" value="" onblur="LoadLoanInv1()" />
									</div>
									
									
									
									<script type="text/javascript">
										var counter = 0;
										$(function(){
										 $('p#add_field').click(function(){
										 counter += 1;
										 $('#container').append(
										 '<strong style="font-size:12px">Class No. ' + counter + '</strong><br />'
										 + '<input class="form-control" id="field_'  + counter + '"  name="dynfields[]' + '" type="text" placeholder="Subject Code" onblur="LoadLoanInv3()" style="width:240px; height:40px; margin-bottom:6px; font-size:15px" />'
										+ '<input class="form-control" id="holidayreason_' + counter + '" name="holireason[]' + '" type="text" placeholder="Faculty Code" onblur="LoadLoanInv2()" style="width:300px; height:40px; margin-bottom:6px; font-size:15px" />'
										+ '<input class="form-control" id="timereason_' + counter + '" name="timereason[]' + '" type="text" placeholder="Time" style="width:300px; height:40px; margin-bottom:6px; font-size:15px" /><br/>'							 );
										 
										 });
										});
									</script>
                        
								<?php
									if (isset($_POST['btnSave'])) 
									{
										if (($_POST['dynfields'])&&($_POST['holireason'])) 
										{
											$no = count($_POST['dynfields']);
											for($i=0;$i<$no;$i++)
											{
												$routine_id = trim(addslashes($_POST['routine_id']));
												$CreateBy=$oSession->getUserName();
												$CreateDate=date('Y-m-d H:i:s');
												$UpdateBy=$oSession->getUserName();
												$UpdateeDate=date('Y-m-d H:i:s');
												$values = mysql_real_escape_string($_POST['dynfields'][$i]);
												$values2 = mysql_real_escape_string($_POST['holireason'][$i]);
												$values3 = mysql_real_escape_string($_POST['timereason'][$i]);
												$query = mysql_query("INSERT INTO routine (routine_id,faculty_member,sub_code,cls_time,CreateBy,CreateDate) 
													VALUES ('$routine_id','$values2','$values','$values3','$CreateBy','$CreateDate')");
												
											}
										}
										echo "<i><h2><strong>" . count($_POST['dynfields']) . "</strong> Products Added</h2></i>";
										mysql_close();
										}
										?>
										<?php if (!isset($_POST['submit_val'])) { ?>
										
										<div id="container">
            <p id="add_field"><a href="#"><span>Click To Add</span></a></p>
        </div>
								<?php } ?>

                        <input type="submit" value="Save" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
						<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
								</div>
							</form>
						</div>
					</div>
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						  <h3 class="box-title">All Routines</h3>
						</div>
						
						<div class="box-body" style="height:322px; overflow-y:scroll;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="0%" style="text-align:center"><b>Routine ID</b></td>
									<td width="" style="text-align:center"><b>Routine Name</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT * FROM routine_set ORDER BY id";
									$oResult=$oBasic->SqlQuery($sql); 
									$num=$oResult->num_rows;
									if($num>0)
									{
										for($i=0;$i<$oResult->num_rows;$i++)
										{
											if(($i%2)==0)
												$bgcol="#33A1DE";
											else
												$bgcol="#F5F5F5";
								?>
							
							
								<tr>
									<td width="8%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo $oResult->rows[$i]['routine_id'].'&nbsp;';?></p></td>
									<td width="15%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['routine_name'];?></p></td>
									<td width="5%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=RoutinePrint&routine_set=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="View"></i></a>  
										
									</td>
								</tr>
								<?php
										}
									}
								?>
							 </table>
							 
							 
						</div>
						
						  
						
					  </div>
					  
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