<?php
	$oCommon=new CCommon();
	$id=FALSE;
	if(isset($_GET['id']))
	{
		$id= base64_decode($_GET['id']);
	}

	if (isset($_POST['btnSave']))
	{
		
		$allowed_filetypes = array('.pdf','.PDF');
		$max_filesize = 10485760;
		$target = "file/student/"; 
		$target = $target . basename( $_FILES['file']['name']);
		
		$pic =trim(addslashes($_POST['prephoto']));
		$picpre=$pic;
		if($_FILES['file']['tmp_name']!='')
		{
			$pic =($_FILES['file']['name']);
			$ext = substr($pic, strpos($pic,'.'), strlen($pic)-1);
			if (file_exists('file/student/'.$pic)) 
			{
				echo ("<script>window.alert('The file ". basename( $_FILES['file']['name']). " already exists.');</script>");
			}
			
			if(!in_array($ext,$allowed_filetypes))
				die('The file you attempted to upload is not allowed.');
			@unlink('file/student/'.$picpre);
			move_uploaded_file($_FILES['file']['tmp_name'], $target) ;
		}
		
		$message = trim(addslashes($_POST['message']));
		$CreateBy=$oSession->getUserName();
		$CreateDate=date('Y-m-d H:i:s');
		$UpdateBy=$oSession->getUserName();
		$UpdateeDate=date('Y-m-d H:i:s');
		
	
	
		if($_POST['btnSave']=='Save')
		{
			$sql="INSERT INTO std_notice (message,file,CreateBy,CreateDate) 
				  VALUES ('$message','$pic','$CreateBy','$CreateDate')";
			$oResult=$oBasic->SqlQuery($sql);
			
			echo "<script>alert('Insert Notice Successfully');</script>";
			echo "<script>window.location='?Basic=NoticeEntry'</script>";
		}
		
		elseif($_POST['btnSave']=='Update')
		{
			$sql="UPDATE std_notice SET file='$pic', message='$message', UpdateBy='$UpdateBy', UpdateeDate='$UpdateeDate' WHERE id = '$id'";
			$oResult=$oBasic->SqlQuery($sql);
			echo "<script>alert('Update Notice Successfully');</script>";
			echo "<script>window.location='?Basic=NoticeEntry'</script>";
		}
	}
	if(isset($_GET['Delete']))
	{
		$Delete=$_GET['Delete'];
		$sql="DELETE FROM std_notice WHERE id=$Delete";
		$oBasic->SqlQuery($sql);
		$oResult=$oBasic->SqlQuery($sql);
		if($oResult->IsSuccess)
		{
			echo ("<script>window.alert('Delete Successfully!!!');</script>");
			echo ("<script>window.location='?Basic=NoticeEntry';</script>");
		}
	}
	
	
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
	<script language="javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
	<script language="javascript" src="js/scripts.js"></script>
	<script>
			function deletecheck(id)
			{
				if(confirm("Are you sure to delete?"))
				{
					window.location="?Basic=NoticeEntry&Delete="+id;
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
$sql = "SELECT * FROM faculty ORDER BY username";
$oResultMember = $oBasic->SqlQuery($sql);
for($i=0;$i<$oResultMember->num_rows;$i++)
{
	echo '"'.$oResultMember->rows[$i]['username'].'--'.$oResultMember->rows[$i]['fname'].' '.$oResultMember->rows[$i]['lname'].'"';
	if($i!=$oResultMember->num_rows-1)
		echo ",";
}
?>];

	
	
$(function() 
{
	$("#teacher_id").autocomplete({
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
	var Name=document.getElementById('teacher_id').value;
	flag=true;
	
	
}


</script>
	
	<script language="javascript" src="tinymce/jscripts/tiny_mce/tiny_mce.js"></script>
	<script language="javascript" src="js/scripts.js"></script>
	
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
				Notice Entry
			  </h1>
			  
			</section>
			
			<section class="content">
				<div class="row">
					<div class="col-md-6">
						<div class="box box-primary">
						
							<?php 
								$sql="SELECT * FROM notice WHERE id = $id";
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
									  <label>File(only PDF allowed)</label>
									  <input type="file" name="file" id="file" onchange="readURL(this);" />
									  <input type="hidden" class="form-control" name="prephoto" id="prephoto" required="required" value="<?php echo ($id?$oResultUp->row['file']:''); ?>"/>
									</div>
									
									
									<div class="form-group">
									  <label>Message</label>
									  <textarea class="form-control" style="width: 100%; height: 125px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;" id="message" name="message"><?php echo $oResultUp->row['message']; ?></textarea>
									</div>
									
									
									
									<input type="submit" value="<?php if($id) echo "Update"; else echo "Save";?>" id="btnSave" name="btnSave"  style="margin-right:10px; background:#3c8dbc;" class="btn btn-success" onClick="return checkValid();"/>
									<input type="reset" value="Reset" id="reset" name="reset" style="background:#3c8dbc;" class="btn btn-success" onClick="?Basic=Notice"  />
									
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
	<script>WeSeeTextArea()</script>
	</div>
    
    

</body>
</html>