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
                <span>Director</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?Basic=Panel"><i class="fa fa-circle-o"></i> University Panel</a></li>
				<li><a href="index.php?Basic=DirPanel"><i class="fa fa-circle-o"></i> Director Panel</a></li>
			  </ul>
            </li>
			
			
            <li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Entry</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?Basic=Notice"><i class="fa fa-circle-o"></i> Notice</a></li>
				<li><a href="index.php?Basic=Designation"><i class="fa fa-circle-o"></i> Designation</a></li>
                <li><a href="index.php?Basic=Faculty"><i class="fa fa-circle-o"></i> Faculty Member</a></li>
				<li><a href="index.php?Basic=FacultySL"><i class="fa fa-circle-o"></i> Faculty Member Serial</a></li>
				<li><a href="index.php?Basic=Student"><i class="fa fa-circle-o"></i> Student</a></li>
				<li><a href="index.php?Basic=BEntry"><i class="fa fa-circle-o"></i> Batch</a></li>
                <li><a href="index.php?Basic=SEntry"><i class="fa fa-circle-o"></i> Subject</a></li>
				<li><a href="index.php?Basic=Trimister"><i class="fa fa-circle-o"></i> Trimister</a></li>
				<li><a href="index.php?Basic=Routine"><i class="fa fa-circle-o"></i> Routine</a></li>
			  </ul>
            </li>
			
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Report</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?Basic=FacultyList"><i class="fa fa-circle-o"></i> Faculty Members</a></li>
                <li><a href="index.php?Basic=BatchWiseStudent"><i class="fa fa-circle-o"></i> Batch Wise Student</a></li>
				<li><a href="index.php?Basic=AllSubjects"><i class="fa fa-circle-o"></i> All Subjects</a></li>
				<li><a href="index.php?Basic=AllRoutines"><i class="fa fa-circle-o"></i> All Routines</a></li>
				<li><a href="index.php?Basic=AllResults"><i class="fa fa-circle-o"></i> All Results(Sem Wise)</a></li>
				<li><a href="index.php?Basic=AllResTriFull"><i class="fa fa-circle-o"></i> All Results(Full)</a></li>
				
			  </ul>
            </li>
			
			<li class="treeview">
              <a href="#">
                <i class="fa fa-edit"></i>
                <span>Login</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li><a href="index.php?Basic=ControlPanel"><i class="fa fa-circle-o"></i> Control Panel</a></li>
                <li><a href="index.php?Basic=loginrpt"><i class="fa fa-circle-o"></i> Login Report</a></li>
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