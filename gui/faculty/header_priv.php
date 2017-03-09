<?php
	$a=$oSession->getUserName();
	$Sql="SELECT A.username, B.fname, B.lname, B.desig, B.username, B.image
	 FROM user A, faculty B 
	 WHERE A.username='$a'
	 and A.username=B.username";
	 $oResultAddmisson=$oBasic->SqlQuery($Sql);
	
?>

<header class="main-header">
        <a href="index.php" class="logo">
          <span class="logo-mini"><b>IIT</b></span>
          <span class="logo-lg"><b>IIT</b>,JU</span>
        </a>
        <nav class="navbar navbar-static-top" role="navigation">
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				
					<?php 
						if($oResultAddmisson->row['image']==null)
						{
							$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\">";
							$a.="<img src=\"images/dummy_pic.jpg\" class=\"User Image\" style=\"height:50px; width:50px\"/>";
							$a.="</td>";
							echo $a;
						}
						
						else
						{
							$path="images/faculty/";
							$a="<td width=\"5%\" style=\"text-align:center\" valign=\"middle\" >";
							$a.="<img src=".$path.$oResultAddmisson->row['image']." class=\"User Image\" style=\"height:50px; width:50px\"/>";
							$a.="</td>";
							echo $a;
						}
					?>
				
				
                  <!--<img src="images/dummy_pic.jpg" class="user-image" alt="User Image">-->
                  <span class="hidden-xs"><?php echo $oSession->getUserName(); ?></span>
                </a>
                <ul class="dropdown-menu">
                  <li class="user-header">
					
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
				  
					<p>
                      <?php echo $oSession->getUserName(); ?>
                      
                    </p>
                  </li>
                  
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="index.php?Basic=PassChange" class="btn btn-default btn-flat">Change Password</a>
                    </div>
                    <div class="pull-right">
                      <a href="signout.php" class="btn btn-default btn-flat">Sign out</a>
                    </div>
                  </li>
                </ul>
              </li>
              
            </ul>
          </div>
        </nav>
      </header>