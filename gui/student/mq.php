<?php  
$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.roll, B.fname, B.lname, B.fatname, B.motname, B.batch 
	 FROM user A, student B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	 $oResultAddmisson=$oBasic->SqlQuery($Sql);

 if (isset($_POST["message"]))
 {	 
 	$subject = 'Feedback from '.$_POST["roll"].' IIT, JU';
	$msg = $_POST["message"];
    mail("abhijitcse32@gmail.com",$subject,$msg);
	echo ("<script>window.alert('Thanks, your feedback message has been successfully submitted.');</script>");
	echo "<script>window.location='?Basic=Query'</script>";
 }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    
	<?php include('gui/meta.php');?>
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
	
</head>

<body class="hold-transition skin-blue sidebar-mini">

	<div class="wrapper">
		<header class="main-header">
			<?php include('gui/header.php');?>
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
			  
			</section>
			
			<section class="content">
				<div class="row">
					
					
					<div class="col-md-6">
            
					  <div class="box box-info">
						<div class="box-header with-border">
						  <h3 class="box-title">My Query</h3>
						</div>
						
						<div class="box-body" style="height:500px; ">
							
							 <style>
					

					html{    background:#FFFFFF;
					  background-size: cover;
					  height:100%;
					}

					#feedback-page{
						text-align:right;
					}

					#form-main{
						width:100%;
						float:left;
						padding-top:0px;
					}

					#form-div {
						background-color:#3B8471;
						padding-left:35px;
						padding-right:35px;
						padding-top:35px;
						padding-bottom:50px;
						width: 450px;
						float: left;
						position: absolute;
						-moz-border-radius: 7px;
						-webkit-border-radius: 7px;
					}

					.feedback-input {
						color:#3D9140;
						font-family: Helvetica, Arial, sans-serif;
					  font-weight:500;
						font-size: 18px;
						border-radius: 0;
						line-height: 22px;
						background-color: #fbfbfb;
						padding: 13px 13px 13px 54px;
						margin-bottom: 10px;
						width:100%;
						-webkit-box-sizing: border-box;
						-moz-box-sizing: border-box;
						-ms-box-sizing: border-box;
						box-sizing: border-box;
					  border: 3px solid rgba(0,0,0,0);
					}

					.feedback-input:focus{
						background: #fff;
						box-shadow: 0;
						border: 3px solid #3498db;
						color: #03A89E;
						outline: none;
					  padding: 13px 13px 13px 54px;
					}

					.focused{
						color:#30aed6;
						border:#30aed6 solid 3px;
					}

					#name{
						background-image: url(images/name.svg);
						background-size: 30px 30px;
						background-position: 11px 8px;
						background-repeat: no-repeat;
					}

					#name:focus{
						background-image: url(images/name.svg);
						background-size: 30px 30px;
						background-position: 8px 5px;
						background-position: 11px 8px;
						background-repeat: no-repeat;
					}

					#email{
						background-image: url(images/email.svg);
						background-size: 30px 30px;
						background-position: 11px 8px;
						background-repeat: no-repeat;
					}

					#email:focus{
						background-image: url(images/email.svg);
						background-size: 30px 30px;
					  background-position: 11px 8px;
						background-repeat: no-repeat;
					}

					#message{
						background-image: url(images/comment.svg);
						background-size: 30px 30px;
						background-position: 11px 8px;
						background-repeat: no-repeat;
					}

					textarea {
						width: 100%;
						height: 150px;
						line-height: 150%;
						resize:vertical;
					}

					input:hover, textarea:hover,
					input:focus, textarea:focus {
						background-color:white;
					}

					#submit{
						font-family: 'Montserrat', Arial, Helvetica, sans-serif;
						float:left;
						width: 100%;
						border: #fbfbfb solid 4px;
						cursor:pointer;
						background-color: #004F00;
						color:white;
						font-size:24px;
						padding-top:22px;
						padding-bottom:22px;
						-webkit-transition: all 0.3s;
						-moz-transition: all 0.3s;
						transition: all 0.3s;
					  margin-top:-4px;
					  font-weight:700;
					}

					#submit:hover{
						background-color: rgba(0,0,0,0);
						color: #004F00;
					}
						
					.submit:hover {
						color: #3498db;
					}
						
					.ease {
						width: 0px;
						height: 74px;
						background-color: #fbfbfb;
						-webkit-transition: .3s ease;
						-moz-transition: .3s ease;
						-o-transition: .3s ease;
						-ms-transition: .3s ease;
						transition: .3s ease;
					}

					.submit:hover .ease{
					  width:100%;
					  background-color:white;
					}

					@media only screen and (max-width: 580px) {
						#form-div{
							left: 3%;
							margin-right: 3%;
							width: 88%;
							margin-left: 0;
							padding-left: 3%;
							padding-right: 3%;
						}
					}
					</style>
					
					<div style="width:50%; float:left">
						<div id="form-main">
							<div id="form-div" style="box-shadow:5px 5px 5px 5px #888888">
								<form class="form" id="form" action="" method="post">
									<p class="name">
										<input name="name" type="text" class="validate[required,custom[onlyLetter],length[0,100]] feedback-input" required="required" id="name" readonly="readonly" value="<?php echo $oResultAddmisson->row['fname'].' '.$oResultAddmisson->row['lname']; ?>" />
									</p>
      
									<p class="text">
										<input name="roll" type="roll" class="validate[required,custom[email]] feedback-input" id="roll" required="required" readonly="readonly" value="<?php echo $oResultAddmisson->row['username']; ?>" />
									</p>
      
									<p class="text">
										<textarea name="message" class="validate[required,length[6,300]] feedback-input" id="message" required="required" placeholder="Message"></textarea>
									</p>
      
									<div class="submit">
										<input type="submit" value="SEND" id="submit" name="submit"/>
										
										<div class="ease"></div>
									</div>
								</form>
							</div>
						</div>
					
					</div>
						</div>
						
						  
						
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