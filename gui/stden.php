<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	$Sqli="SELECT * FROM user";
	$oResultAddmisson=$oBasic->SqlQuery($Sqli);
	
	if (isset($_POST['btnSave']))
	{
		$allowed_filetypes = array('.jpg','.jpeg','.png','.gif','.JPG','.JPEG','.PNG','.GIF');
		$max_filesize = 10485760;
		$target = "images/student/"; 
		$target = $target . basename( $_FILES['image']['name']);
		
		$pic =trim(addslashes($_POST['prephoto']));
		$picpre=$pic;
		if($_FILES['image']['tmp_name']!='')
		{
			$pic =($_FILES['image']['name']);
			$ext = substr($pic, strpos($pic,'.'), strlen($pic)-1);
			if (file_exists('images/student/'.$pic)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['image']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('images/student/'.$picpre);
			move_uploaded_file($_FILES['image']['tmp_name'], $target) ;
		}
		
		$roll = trim(addslashes($_POST['roll']));
		$fname = trim(addslashes($_POST['fname']));
		$lname = trim(addslashes($_POST['lname']));
		$fatname = trim(addslashes($_POST['fatname']));
		//$dob = trim(addslashes($_POST['dtpFromDate']));
		$motname = trim(addslashes($_POST['motname']));
		$batch = trim(addslashes($_POST['batch']));
		$username = trim(addslashes($_POST['roll']));
		$password = md5(trim(addslashes($_POST['password'])));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		//$createdate = date('Y-M-d');
	
	
		if($_POST['btnSave']=='Save')
		{
			if($roll==$oResultAddmisson->row['username'])
			{
				echo "<script>alert('This roll Already Insert');</script>";
				echo "<script>window.location='?Basic=Student'</script>";
			}
			
			else
			{
				$sql="INSERT INTO student (roll,fname,lname,fatname,motname,batch,image,username,Status,CreateBy,CreateDate) 
				  VALUES ('$roll','$fname','$lname','$fatname','$motname','$batch','$pic','$username','YES','$CreateBy','$CreateDate')";
				$oResult=$oBasic->SqlQuery($sql);
				
				$sql="INSERT INTO user (name, username, password, CreateDate) 
					  VALUES ('Student', '$username', '$password', '$CreateDate')";
				$oResult=$oBasic->SqlQuery($sql);
				
				$sql="INSERT INTO exist_user (username, fname, lname, CreateBy, CreateDate) 
					  VALUES ('$username', '$fname', '$lname', '$CreateBy', '$CreateDate')";
				$oResult=$oBasic->SqlQuery($sql);
				
				echo "<script>alert('Insert Student Successfully');</script>";
				echo "<script>window.location='?Basic=Student'</script>";
			}

		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE faculty SET fname='$fname', lname='$lname', desig='$desig', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Faculty Successfully');</script>";
			echo "<script>window.location='?Basic=Faculty'</script>";
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
    
	<?php include('meta.php');?>
	<script>
			function deletecheck(ID)
			{
				if(confirm("Are you sure to delete?"))
				{
					window.location="?Basic=Designation&Delete="+id;
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
	
	<script "text/javascript">
		<script language="javascript" type="text/javascript">
		$(function() 
		{
			$('#dtpFromDate').datepicker({
				changeMonth: true,
				changeYear: true
			});
			$('#dtpToDate').datepicker({
				changeMonth: true,
				changeYear: true
			});
		});
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
$sql = "SELECT * FROM batch ORDER BY id";
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
	$("#batch").autocomplete({
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
	var Name=document.getElementById('batch').value;
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
				Student Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM student WHERE id = $id";
								$oResultUp=$oBasic->SqlQuery($sql);
							?>
							
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
							<form method="post" action="" enctype="multipart/form-data" id="registerform">
								<div class="box-body">
									
									<div class="form-group">
									  <label>Image</label>
									  <input type="file" name="image" id="image" onchange="readURL(this);" />
									  <input type="hidden" class="form-control" name="prephoto" id="prephoto" required="required" value="<?php echo ($id?$oResultUp->row['image']:''); ?>"/>
									</div>
									<img src="#" id="blah" alt="Preview" style="width:50%"/>
									
									<div class="form-group">
									  <label>Roll</label>
									  <input type="text" class="form-control" name="roll" id="roll" required="required" value="<?php echo ($id?$oResultUp->row['fname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>First Name</label>
									  <input type="text" class="form-control" name="fname" id="fname" required="required" value="<?php echo ($id?$oResultUp->row['fname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Last Name</label>
									  <input type="text" class="form-control" name="lname" id="lname" required="required" value="<?php echo ($id?$oResultUp->row['lname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Father Name</label>
									  <input type="text" class="form-control" name="fatname" id="fatname" required="required" value="<?php echo ($id?$oResultUp->row['fatname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Mother Name</label>
									  <input type="text" class="form-control" name="motname" id="motname" required="required" value="<?php echo ($id?$oResultUp->row['motname']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Batch</label>
									  <input type="text" class="form-control" name="batch" id="batch" required="required" value="<?php echo ($id?$oResultUp->row['motname']:''); ?>" onblur="LoadLoanInv()" />
									</div>
									
									<!--<div class="form-group">
									  <label>Batch</label>
									  <select id="batch" name="batch" class="form-control" style="min-width:300px">
										<?php
										$sql="SELECT * FROM batch ORDER BY id";
										$oResult=$oBasic->SqlQuery($Sql);
										$oCommon->ReadAllSelectedOption($sql,'batch_name','batch_name',$id?$oResultUp->row['batch_name']:'','');
										?>
									  </select>
									</div>-->
									
									
									<div class="form-group">
									  <label>Password</label>
									  <input type="password" class="form-control" name="password" id="password" required="required" value="<?php echo ($id?$oResultUp->row['password']:''); ?>" />
									</div>
									
									<div class="form-group">
									  <label>Confirm Password</label>
									  <input type="password" class="form-control" name="cpassword" id="cpassword" required="required" value="<?php echo ($id?$oResultUp->row['password']:''); ?>" />
									</div>
									
									
									
									
									<input type="submit" value="<?php if($id) echo "Update"; else echo "Save";?>" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Designation"  />
									
								</div>
							</form>
						</div>
					</div>
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						  <h3 class="box-title">All Sessions</h3>
						</div>
						
						<div class="box-body" style="height:322px; overflow-y:scroll;">
							
							 <table border="1" width="100%" cellpadding="1" cellspacing="1" style="margin-top:10px">
								<tr style="color:#000000;">
									<td width="0%" style="text-align:center"><b>Batch</b></td>
									<td width="" style="text-align:center"><b>Name</b></td>
									<td width="" style="text-align:center"><b>Action</b></td>
								</tr>
							
								<?php
									$sql="SELECT * FROM batch ORDER BY id";
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
									<td width="3%" style="text-align:center" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['batch_id'];?></p></td>
									<td width="10%" valign="middle" bgcolor="<?php echo $bgcol;?>"><p><?php echo '&nbsp;'.$oResult->rows[$i]['batch_name'];?></p></td>
									<td width="5%" bgcolor="<?php echo $bgcol;?>" align="center"><a href='<?php echo "?Basic=StudentAll&batch=".base64_encode($oResult->rows[$i]['id'])?>'><i class="glyphicon glyphicon-edit" style="color:black" title="View"></i></a>  
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