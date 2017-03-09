<?php 
	if (!isset($no_visible_elements) || !$no_visible_elements) 
	{ 
	?>
<li class="active treeview">
              <a href="./">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span></i>
              </a>
            </li>
			
           
		   <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Profile</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=profile"><i class="fa fa-circle-o"></i> My Profile</a></li>
                <li><a href="index.php?Basic=ChngProfile"><i class="fa fa-circle-o"></i> Change Profile</a></li>
			  </ul>
            </li>
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Entry</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=MessageToTeacher"><i class="fa fa-circle-o"></i> Message to Teacher</a></li>
				<li><a href="index.php?Basic=NoticeEntry"><i class="fa fa-circle-o"></i> Notice Entry</a></li>
                
			  </ul>
            </li>
			
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Report</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=DirectorMsg"><i class="fa fa-circle-o"></i> Director Message</a></li>
				<li><a href="index.php?Basic=TeacherJournal"><i class="fa fa-circle-o"></i> Teacher Journal</a></li>
				<li><a href="index.php?Basic=MyNtsc"><i class="fa fa-circle-o"></i> My Notice</a></li>
				<li><a href="index.php?Basic=MyClsmateNtsc"><i class="fa fa-circle-o"></i> My Classmate Notice</a></li>
				<li><a href="index.php?Basic=AllNotice"><i class="fa fa-circle-o"></i> All Notice</a></li>
				<li><a href="index.php?Basic=TeacherNotice"><i class="fa fa-circle-o"></i> Teacher Notice</a></li>
				<li><a href="index.php?Basic=TeacherIndNotice"><i class="fa fa-circle-o"></i> Teacher Individual Notice</a></li>
				<li><a href="index.php?Basic=TeacherInfo"><i class="fa fa-circle-o"></i> Teacher Information</a></li>
				<li><a href="index.php?Basic=MRtn"><i class="fa fa-circle-o"></i> My Routine</a></li>
				<li><a href="index.php?Basic=MyResult"><i class="fa fa-circle-o"></i> My Result</a></li>
				<li><a href="index.php?Basic=MyFullResult"><i class="fa fa-circle-o"></i> My Full Result</a></li>
                
			  </ul>
            </li>
			
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Extra</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=Query"><i class="fa fa-circle-o"></i> My Query</a></li>
				<li><a href="index.php?Basic=JourneyToJU"><i class="fa fa-circle-o"></i> Journey to JU</a></li>
			  </ul>
            </li>
			
			
			<div id="fb-root"></div>
			<script>(function(d, s, id) {
				  var js, fjs = d.getElementsByTagName(s)[0];
				  if (d.getElementById(id)) return;
				  js = d.createElement(s); js.id = id;
				  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.3";
				  fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));
			</script>
					
			<div class="fb-page" data-href="https://www.facebook.com/juiit/" data-height="400" data-hide-cover="false" data-show-facepile="true" data-show-posts="true">
				<div class="fb-xfbml-parse-ignore">
					<blockquote cite="https://www.facebook.com/juiit/">
						<a href="https://www.facebook.com/juiit/">JU, IIT</a>
					</blockquote>
				</div>
			</div>
			
			
           
	<?php }?>