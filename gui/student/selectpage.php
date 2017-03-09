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
		if($Basic=='ChngProfile')
		{
			include('gui/student/cngpfl.php');
		}
		
		elseif($Basic=='profile')
		{
			include('gui/student/pfl.php');
		}

		elseif($Basic=='PassChange')
		{
			include('gui/student/changepass.php');
		}
		
		elseif($Basic=='MRtn')
		{
			include('gui/student/mrtn.php');
		}
		
		elseif($Basic=='AllNotice')
		{
			include('gui/student/allnsc.php');
		}
		
		elseif($Basic=='TeacherNotice')
		{
			include('gui/student/teachnsc.php');
		}
		
		elseif($Basic=='TeacherIndNotice')
		{
			include('gui/student/teachindnsc.php');
		}
		
		elseif($Basic=='TeacherNoticeView')
		{
			include('gui/student/teachnscvw.php');
		}
		
		elseif($Basic=='TeacherIndNoticeView')
		{
			include('gui/student/teachindnscvw.php');
		}
		
		elseif($Basic=='Query')
		{
			include('gui/student/mq.php');
		}
		
		elseif($Basic=='MessageToTeacher')
		{
			include('gui/student/msgtotchr.php');
		}
		
		elseif($Basic=='MyRoutinePrint')
		{
			include('gui/student/mrtnprint.php');
		}
		
		elseif($Basic=='MyResult')
		{
			include('gui/student/mresult.php');
		}
		
		elseif($Basic=='AllResultView')
		{
			include('gui/student/arvw.php');
		}
		
		elseif($Basic=='JourneyToJU')
		{
			include('gui/student/jtju.php');
		}
		
		elseif($Basic=='MyFullResult')
		{
			include('gui/student/mfullres.php');
		}
		
		elseif($Basic=='TeacherInfo')
		{
			include('gui/student/teacinfo.php');
		}
		
		elseif($Basic=='TeacherInfoVW')
		{
			include('gui/student/teacinfovw.php');
		}
		
		elseif($Basic=='TeacherJournal')
		{
			include('gui/student/teacjnl.php');
		}
		
		elseif($Basic=='FacJournalView')
		{
			include('gui/student/teacjnlvw.php');
		}
		
		elseif($Basic=='NoticeEntry')
		{
			include('gui/student/ntceentry.php');
		}
		
		elseif($Basic=='MyNtsc')
		{
			include('gui/student/mynotice.php');
		}
		
		elseif($Basic=='MyNtscView')
		{
			include('gui/student/mynoticevw.php');
		}
		
		elseif($Basic=='MyClsmateNtsc')
		{
			include('gui/student/myclsnotice.php');
		}
		
		elseif($Basic=='MyClsNtscView')
		{
			include('gui/student/myclsnoticevw.php');
		}
		
		elseif($Basic=='DirectorMsg')
		{
			include('gui/student/dirmsg.php');
		}
		
		
	}
	
	else
	{
		include_once('gui/student/firstpage.php');
	}
?>