<?php
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.fname, B.lname, B.desig, B.username, B.image
	 FROM user A, faculty B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	 $oResultAddmisson=$oBasic->SqlQuery($Sql);
	
?>

<div class="pull-left image">

	<?php 
		if($oResultAddmisson->row['image']==null)
		{
			$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\">";
			$a.="<img src=\"images/dummy_pic.jpg\" class=\"img-circle\" style=\"height:50px; width:50px\"/>";
			$a.="</td>";
			echo $a;
		}
		
		else
		{
			$path="images/faculty/";
			$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" >";
			$a.="<img src=".$path.$oResultAddmisson->row['image']." class=\"img-circle\" style=\"height:50px; width:50px\"/>";
			$a.="</td>";
			echo $a;
		}
	?>

</div>
<div class="pull-left info">
  <p><?php echo $oSession->getUserName(); ?></p>
</div>