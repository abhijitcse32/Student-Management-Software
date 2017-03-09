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
		if($Basic=='ResEn')
		{
			include('gui/faculty/re.php');
		}
		
		elseif($Basic=='ResAll')
		{
			include('gui/faculty/rall.php');
		}

		elseif($Basic=='BandS')
		{
			include('gui/faculty/btcsub.php');
		}
		
		elseif($Basic=='SubRes')
		{
			include('gui/faculty/msr.php');
		}
		
		elseif($Basic=='resrpt')
		{
			include('gui/faculty/mallres.php');
		}
		
		elseif($Basic=='PassChange')
		{
			include('gui/faculty/changepass.php');
		}
		
		elseif($Basic=='TeacherNoticeEntry')
		{
			include('gui/faculty/technoten.php');
		}
		
		elseif($Basic=='TeacherNoticeShow')
		{
			include('gui/faculty/technotsh.php');
		}
		
		elseif($Basic=='NoticeToStudent')
		{
			include('gui/faculty/ntctostd.php');
		}
		
		elseif($Basic=='StdMssg')
		{
			include('gui/faculty/stdmssg.php');
		}
		
		elseif($Basic=='StudentMsgView')
		{
			include('gui/faculty/stdmssgvw.php');
		}
		
		elseif($Basic=='MyProfile')
		{
			include('gui/faculty/mprofile.php');
		}
		
		elseif($Basic=='ChangeProfile')
		{
			include('gui/faculty/cprofile.php');
		}
		
		elseif($Basic=='Journal')
		{
			include('gui/faculty/jl.php');
		}
		
		elseif($Basic=='MyJournal')
		{
			include('gui/faculty/mjl.php');
		}
		
		elseif($Basic=='OtherJournal')
		{
			include('gui/faculty/ojl.php');
		}
		
		elseif($Basic=='MyJournalView')
		{
			include('gui/faculty/mjlvw.php');
		}
		
		elseif($Basic=='EditStdRes')
		{
			include('gui/faculty/edstres.php');
		}
		
		elseif($Basic=='RptNoticeBatch')
		{
			include('gui/faculty/ntcbtch.php');
		}
		
		elseif($Basic=='MyBtchNtvView')
		{
			include('gui/faculty/mbtcthntcvw.php');
		}
		
		elseif($Basic=='RptNoticeStd')
		{
			include('gui/faculty/ntcstd.php');
		}
		
		elseif($Basic=='MyStdNtvView')
		{
			include('gui/faculty/mstdntcvw.php');
		}
	}
	
	else
	{
		include_once('gui/faculty/firstpage.php');
	}
?>