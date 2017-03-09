<?php
	$GLOBALS["url"]=""; //LT
	ini_set('max_execution_time', 1000);
	date_default_timezone_set('Asia/Dhaka');
	define('CREATE_DATE',date('Y-m-d H:i:s'));
	include_once ('library/CCommon.php');
	include_once ('library/Session.php');
	$oSession=new Session();   
	include_once ('model/CResult.php');
	include_once ('bll/CConManager.php');
	include_once ('bll/CBasic.php');
	$oBasic=new CBasic();
	
	if(isset($_GET['Page']))
	{
		$System=$_GET["Page"];
		if($System=='Login')
		{
			include('gui/website/login.php');
		}
		
	}
	elseif(isset($_GET['Basic']))
	{
		$Basic=$_GET["Basic"];
		if($Basic=='Designation')
		{
			include('gui/dsg.php');
		}
		
		elseif($Basic=='Faculty')
		{
			include('gui/fm.php');
		}
		
		elseif($Basic=='FacultySL')
		{
			include('gui/fmsl.php');
		}
		
		elseif($Basic=='BEntry')
		{
			include('gui/be.php');
		}
		
		elseif($Basic=='SEntry')
		{
			include('gui/se.php');
		}
		
		elseif($Basic=='Trimister')
		{
			include('gui/tmister.php');
		}
		
		elseif($Basic=='Routine')
		{
			include('gui/rs.php');
		}
		
		elseif($Basic=='RoutinePrint')
		{
			include('gui/rsp.php');
		}
		
		elseif($Basic=='Notice')
		{
			include('gui/nce.php');
		}
		
		elseif($Basic=='Student')
		{
			include('gui/stden.php');
		}
		
		elseif($Basic=='StudentAll')
		{
			include('gui/stdenall.php');
		}
		
		elseif($Basic=='loginrpt')
		{
			include('gui/lgnrpt.php');
		}
		
		elseif($Basic=='Panel')
		{
			include('gui/dirpan.php');
		}
		
		elseif($Basic=='DirPanel')
		{
			include('gui/dirpan2.php');
		}
		
		elseif($Basic=='PassChange')
		{
			include('gui/changepass.php');
		}
		
		elseif($Basic=='FacultyList')
		{
			include('gui/flist.php');
		}
		
		elseif($Basic=='FacultyListView')
		{
			include('gui/flistvw.php');
		}
		
		elseif($Basic=='ControlPanel')
		{
			include('gui/cp.php');
		}
		
		elseif($Basic=='ControlPanelAll')
		{
			include('gui/cpall.php');
		}
		
		elseif($Basic=='ControlPanelCP')
		{
			include('gui/cpallcp.php');
		}
		
		elseif($Basic=='AllRoutines')
		{
			include('gui/allrtn.php');
		}
		
		elseif($Basic=='AllResults')
		{
			include('gui/allres.php');
		}
		
		elseif($Basic=='AllResTri')
		{
			include('gui/allrestri.php');
		}
		
		elseif($Basic=='AllResTriFull')
		{
			include('gui/allrestrif.php');
		}
		
		elseif($Basic=='AllResTriFullVW')
		{
			include('gui/allrestrifvw.php');
		}
		
		elseif($Basic=='BatchWiseStudent')
		{
			include('gui/batwisestd.php');
		}
		
		elseif($Basic=='BatchWiseStudentVW')
		{
			include('gui/batwisestdvw.php');
		}
		
		elseif($Basic=='BatchWiseStudentVWStd')
		{
			include('gui/batwisestdvwstd.php');
		}
		
		elseif($Basic=='AllSubjects')
		{
			include('gui/allsubjectslist.php');
		}
	}
	
	else
	{
		include_once('gui/firstpage.php');
	}
?>