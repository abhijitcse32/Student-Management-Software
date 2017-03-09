<!DOCTYPE html>
<head>
	<?php include('gui/meta.php');?>
</head>

<body>



<div class="login">

	<div style="width:100%">
		<h3>Student and Administration Management System</h3>
		<?php 
			$sqlcons="SELECT * FROM bod WHERE id=1";
			$oResultCons=$oBasic->SqlQuery($sqlcons);
		?>
		<h3 style="text-align:center"><?php echo $oResultCons->row['dept_name']?></h3>
		<h3 style="text-align:center"><?php echo $oResultCons->row['uv_name']?></h3>
		<h2 style="text-align:center">Welcome <span style="color:white">'<?php echo $oSession->getUserName(); ?>'</span></h2>	
	</div>
	

	<div id="widget">
	<h1><span class="highlight">Menu</span></h1>
	
	<ul class="menu">
		<li><a href="index.php?Basic=FacultyList">Faculty Members</a></li>
		<li><a href="index.php?Basic=BatchWiseStudent">Batch Wise Student</a></li>
		<li><a href="index.php?Basic=AllSubjects">All Subjects</a></li>
		<li><a href="index.php?Basic=AllRoutines">All Routines</a></li>
		<li><a href="index.php?Basic=AllResults">All Results(Sem Wise)</a></li>
		<li><a href="index.php?Basic=AllResTriFull">All Results(Full)</a></li>
		<li><a href="signout.php">Logout</a></li>
	</ul>
	
	<!-- Just some controls. You can add more :) 
	<ul class="controls">
		<li class="call"><a href="javascript:void(0);">✆</a></li>
	</ul>-->
</div>
	<h3>Developer: Abhijit Chanda (PMIT-Jan 2016 Batch)</h3>
	
	
</div>

</body>