<?php
	$GLOBALS["url"]=""; //LT
	ini_set('max_execution_time', 1000);
	date_default_timezone_set('Asia/Dhaka');
	define('CREATE_DATE',date('Y-m-d H:i:s'));
	include_once ('../library/CCommon.php');
	include_once ('../library/Session.php');
	$oSession=new Session();   
	include_once ('../model/CResult.php');
	include_once ('../bll/CConManager.php');
	include_once ('../bll/CBasic.php');
	$oBasic=new CBasic();
	
	if(isset($_GET['Page']))
	{
		$System=$_GET["Page"];
		if($System=='Login')
		{
			include('gui/admin/website/login.php');
		}
		
	}
	elseif(isset($_GET['Basic']))
	{
		$Basic=$_GET["Basic"];
		if($Basic=='Designation')
		{
			include('gui/admin/dsg.php');
		}
		
		elseif($Basic=='Faculty')
		{
			include('gui/admin/fm.php');
		}
		
		elseif($Basic=='FacultySL')
		{
			include('gui/admin/fmsl.php');
		}
		
		elseif($Basic=='BEntry')
		{
			include('gui/admin/be.php');
		}
		
		elseif($Basic=='SEntry')
		{
			include('gui/admin/se.php');
		}
		
		elseif($Basic=='Trimister')
		{
			include('gui/admin/tmister.php');
		}
		
		elseif($Basic=='Routine')
		{
			include('gui/admin/rs.php');
		}
		
		elseif($Basic=='RoutinePrint')
		{
			include('gui/admin/rsp.php');
		}
		
		elseif($Basic=='Notice')
		{
			include('gui/admin/nce.php');
		}
		
		elseif($Basic=='Student')
		{
			include('gui/admin/stden.php');
		}
		
		elseif($Basic=='StudentAll')
		{
			include('gui/admin/stdenall.php');
		}
		
		elseif($Basic=='loginrpt')
		{
			include('gui/admin/lgnrpt.php');
		}
		
		elseif($Basic=='Panel')
		{
			include('gui/admin/dirpan.php');
		}
		
		elseif($Basic=='DirPanel')
		{
			include('gui/admin/dirpan2.php');
		}
		
		elseif($Basic=='PassChange')
		{
			include('gui/admin/changepass.php');
		}
		
		elseif($Basic=='FacultyList')
		{
			include('gui/admin/flist.php');
		}
		
		elseif($Basic=='FacultyListView')
		{
			include('gui/admin/flistvw.php');
		}
		
		elseif($Basic=='ControlPanel')
		{
			include('gui/admin/cp.php');
		}
		
		elseif($Basic=='ControlPanelAll')
		{
			include('gui/admin/cpall.php');
		}
		
		elseif($Basic=='ControlPanelCP')
		{
			include('gui/admin/cpallcp.php');
		}
		
		elseif($Basic=='AllRoutines')
		{
			include('gui/admin/allrtn.php');
		}
		
		elseif($Basic=='AllResults')
		{
			include('gui/admin/allres.php');
		}
		
		elseif($Basic=='AllResTri')
		{
			include('gui/admin/allrestri.php');
		}
		
		elseif($Basic=='AllResTriFull')
		{
			include('gui/admin/allrestrif.php');
		}
		
		elseif($Basic=='AllResTriFullVW')
		{
			include('gui/admin/allrestrifvw.php');
		}
		
		elseif($Basic=='BatchWiseStudent')
		{
			include('gui/admin/batwisestd.php');
		}
		
		elseif($Basic=='BatchWiseStudentVW')
		{
			include('gui/admin/batwisestdvw.php');
		}
		
		elseif($Basic=='BatchWiseStudentVWStd')
		{
			include('gui/admin/batwisestdvwstd.php');
		}
		
		elseif($Basic=='AllSubjects')
		{
			include('gui/admin/allsubjectslist.php');
		}
	}
	
	else
	{
		include_once('gui/admin/firstpage.php');
	}
?>