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
				<li><a href="index.php?Basic=MyProfile"><i class="fa fa-circle-o"></i> My Profile</a></li>
                <li><a href="index.php?Basic=ChangeProfile"><i class="fa fa-circle-o"></i> Change Profile</a></li>
				<li><a href="index.php?Basic=Journal"><i class="fa fa-circle-o"></i> Journal</a></li>
			  </ul>
            </li>
			
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Result</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=BandS"><i class="fa fa-circle-o"></i> Batch & Subject</a></li>
                <li><a href="index.php?Basic=ResEn"><i class="fa fa-circle-o"></i> Entry</a></li>
			  </ul>
            </li>
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Notice</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=TeacherNoticeEntry"><i class="fa fa-circle-o"></i> Notice to Batch</a></li>
				<li><a href="index.php?Basic=NoticeToStudent"><i class="fa fa-circle-o"></i> Notice to Student</a></li>
                
			  </ul>
            </li>
			
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Report</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
				<li><a href="index.php?Basic=SubRes"><i class="fa fa-circle-o"></i> My Subject Result</a></li>
				<li><a href="index.php?Basic=MyJournal"><i class="fa fa-circle-o"></i> My Journal</a></li>
				<li><a href="index.php?Basic=OtherJournal"><i class="fa fa-circle-o"></i> Other Journal</a></li>
				<li><a href="index.php?Basic=RptNoticeBatch"><i class="fa fa-circle-o"></i> Notice to Batch</a></li>
				<li><a href="index.php?Basic=RptNoticeStd"><i class="fa fa-circle-o"></i> Notice to Student</a></li>
                <li><a href="index.php?Basic=StdMssg"><i class="fa fa-circle-o"></i> Student Message</a></li>
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