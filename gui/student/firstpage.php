<!DOCTYPE html>
<html>
  <head>
    <?php include('gui/meta.php');?>
    
  </head>
  <body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">

      <?php include('header.php')?>
      <aside class="main-sidebar">
        <section class="sidebar">
          <div class="user-panel">
            <?php include('gui/headerleft.php')?>
          </div>
          
          <ul class="sidebar-menu">
            <?php include('menu.php')?>
          </ul>
        </section>
        
      </aside>

      <div class="content-wrapper">
        <section class="content-header">
			<?php 
				$sqlcons="SELECT * FROM bod WHERE id=1";
				$oResultCons=$oBasic->SqlQuery($sqlcons);
			?>
          <h1>
            <?php echo $oResultCons->row['dept_name']?>
            <small><?php echo $oResultCons->row['uv_name']?></small>
          </h1>
          
        </section>
		<h1 class="content-header" style="text-align:center">WELCOME TO SAMS</h1>
		<h1 class="content-header" style="text-align:center">You are logged as <span style="font-size:25px">'<?php echo $oSession->getUserName(); ?>'</span><br>
		<section class="content-header">
        <h1><a href="file/juproj.apk">Download Mobile Apps</a></h1>
		</section>
        
      </div>
      <footer class="main-footer">
        <?php include('gui/footer.php');?>
      </footer>

      
      <div class="control-sidebar-bg"></div>
    </div>

    
  </body>
</html>
