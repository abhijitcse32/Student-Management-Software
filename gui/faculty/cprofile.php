<?php
	include_once ('library/Session.php');
	include_once ('model/CResult.php');
	include_once('bll/CBasic.php');
	include_once('bll/CConManager.php');
	$oSession=new Session();
	$oResult=new CResult();
	$oConmanager=new CConManager;
	$oBasic=new CBasic();
	$oCommon=new CCommon();
	
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.fname, B.lname, B.desig, B.username
	 FROM user A, faculty B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	$oResultAddmisson=$oBasic->SqlQuery($Sql);
	
	if(isset($_POST['btnSave']))
	{
		$allowed_filetypes = array('.jpg','.jpeg','.png','.gif','.JPG','.JPEG','.PNG','.GIF');
		$max_filesize = 10485760;
		$target = "images/faculty/"; 
		$target = $target . basename( $_FILES['image']['name']);
		
		$pic =trim(addslashes($_POST['prephoto']));
		$picpre=$pic;
		if($_FILES['image']['tmp_name']!='')
		{
			$pic =($_FILES['image']['name']);
			$ext = substr($pic, strpos($pic,'.'), strlen($pic)-1);
			if (file_exists('images/faculty/'.$pic)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['image']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('images/faculty/'.$picpre);
			move_uploaded_file($_FILES['image']['tmp_name'], $target) ;
		}
		
		
		$fname=$_POST['fname'];
		$lname=$_POST['lname'];
		$desig=$_POST['desig'];
		
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d');
		
		$sql="UPDATE faculty SET image='$pic', fname='$fname', lname='$lname', desig='$desig', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE username='$a'";
		$oResultAddmisson=$oBasic->SqlQuery($sql);
		
		$sql="UPDATE exist_user SET fname='$fname', lname='$lname' WHERE username='$a'";
		$oResultAddmisson=$oBasic->SqlQuery($sql);
		
		if($oResultAddmisson->IsSuccess)
		{
			echo ("<script>window.alert('Action Perform Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=ChangeProfile';</script>");
		}
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	
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
$sql = "SELECT * FROM designation ORDER BY id";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['desig'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#desig").autocomplete({
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
	var Name=document.getElementById('desig').value;
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
				Change Profile
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
						
						<script language="javascript" type="text/javascript">
							$(function() 
							{
							$('#dob').datepicker({
							changeMonth: true,
							changeYear: true
							});
							$('#ToDate').datepicker({
							changeMonth: true,
							changeYear: true
							});
							});
							
							// $( "#dob" ).datepicker({
								// dateFormat : 'yy-mm-dd'
							// });
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
									  <label>Image</label>
									  <input type="file" name="image" id="image" onchange="readURL(this);" />
									  <input type="hidden" class="form-control" name="prephoto" id="prephoto" required="required" value="<?php echo ($id?$oResultUp->row['image']:''); ?>"/>
									</div>
									<img src="#" id="blah" alt="Preview" style="width:50%"/>
									
									<div class="form-group">
										<div class="form-group">
										  <label>First Name</label>
										  <input type="text" class="form-control" name="fname" id="fname" required="required" value="<?php echo $oResultAddmisson->row['fname']?>" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-group">
										  <label>Last Name</label>
										  <input type="text" class="form-control" name="lname" id="lname" required="required" value="<?php echo $oResultAddmisson->row['lname']?>" />
										</div>
									</div>
									
									<div class="form-group">
										<div class="form-group">
										  <label>Designation</label>
										  <input type="text" class="form-control" name="desig" id="desig" required="required" value="<?php echo $oResultAddmisson->row['desig']?>" onblur="LoadLoanInv()" />
										</div>
									</div>
									
									
									
									<input type="submit" value="Update" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
									
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