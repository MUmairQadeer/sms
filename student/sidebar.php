  Navbar
  <nav class="main-header navbar navbar-expand navbar-dark">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
          <li class="nav-item">
              <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
          </li>
          <li class="nav-item d-none d-sm-inline-block">
              <a href="index3.html" class="nav-link">Home</a>
          </li>
          <li class="nav-item d-none d-sm-inline-block">
              <a href="#" class="nav-link">Contact</a>
          </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
          <!-- Navbar Search -->
          <li class="nav-item">
              <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                  <i class="fas fa-search"></i>
              </a>
              <div class="navbar-search-block">
                  <form class="form-inline">
                      <div class="input-group input-group-sm">
                          <input class="form-control form-control-navbar" type="search" placeholder="Search"
                              aria-label="Search">
                          <div class="input-group-append">
                              <button class="btn btn-navbar" type="submit">
                                  <i class="fas fa-search"></i>
                              </button>
                              <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                  <i class="fas fa-times"></i>
                              </button>
                          </div>
                      </div>
                  </form>
              </div>
          </li>

          <!-- Messages Dropdown Menu -->
          <li class="nav-item dropdown">
              <a class="nav-link" data-toggle="dropdown" href="#">
                  <i class="far fa-comments"></i>
                  <span class="badge badge-danger navbar-badge">3</span>
              </a>
              <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                  <a href="#" class="dropdown-item">
                      <!-- Message Start -->
                      <div class="media">
                          <img src="<?=$site_url?>dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                          <div class="media-body">
                              <h3 class="dropdown-item-title">
                                  Brad Diesel
                                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                              </h3>
                              <p class="text-sm">Call me whenever you can...</p>
                              <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                          </div>
                      </div>
                      <!-- Message End -->
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                      <!-- Message Start -->
                      <div class="media">
                          <img src="<?=$site_url?>dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                          <div class="media-body">
                              <h3 class="dropdown-item-title">
                                  John Pierce
                                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                              </h3>
                              <p class="text-sm">I got your message bro</p>
                              <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                          </div>
                      </div>
                      <!-- Message End -->
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                      <!-- Message Start -->
                      <div class="media">
                          <img src="<?=$site_url?>dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
                          <div class="media-body">
                              <h3 class="dropdown-item-title">
                                  Nora Silvester
                                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                              </h3>
                              <p class="text-sm">The subject goes here</p>
                              <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
                          </div>
                      </div>
                      <!-- Message End -->
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
              </div>
          </li>
          <!-- Notifications Dropdown Menu -->
          <li class="nav-item dropdown">
              <a class="nav-link" data-toggle="dropdown" href="#">
                  <i class="far fa-bell"></i>
                  <span class="badge badge-warning navbar-badge">15</span>
              </a>
              <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                  <span class="dropdown-item dropdown-header">15 Notifications</span>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                      <i class="fas fa-envelope mr-2"></i> 4 new messages
                      <span class="float-right text-muted text-sm">3 mins</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                      <i class="fas fa-users mr-2"></i> 8 friend requests
                      <span class="float-right text-muted text-sm">12 hours</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item">
                      <i class="fas fa-file mr-2"></i> 3 new reports
                      <span class="float-right text-muted text-sm">2 days</span>
                  </a>
                  <div class="dropdown-divider"></div>
                  <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
              </div>
          </li>
          <li class="nav-item">
              <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                  <i class="fas fa-expand-arrows-alt"></i>
              </a>
          </li>
          <li class="nav-item">
              <a href="../logout.php" class="nav-link" title="Logout"> Logout
                  <i class="fa fa-sign-out-alt"></i>
              </a>
          </li>
      </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="<?=$site_url?>/admin/dashboard.php" class="brand-link">
          <img src="../dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
              style="opacity: .8">
          <span class="brand-text font-weight-light">Student Panel</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">

          <!-- Sidebar Menu -->
          <nav class="mt-2">
              <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                  data-accordion="false">
                   <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library  -->
                  <li class="nav-item ">
                      <a href="<?=$site_url?>student/dashboard.php" class="nav-link">
                          <i class="nav-icon fas fa-tachometer-alt"></i>
                          <p>
                              Dashboard
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                  </li>
                  <li class="nav-item menu">
                      <a href="" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                              Manage Classes
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                      
                         
                          <li class="nav-item">
                              <a href="<?=$site_url?>student/cources.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Cources</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="<?=$site_url?>student/subject.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Subjects</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="<?=$site_url?>student/lesson.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Lessons</p>
                              </a>
                          </li>
                      </ul>
                  </li>
</li>
               <li class="nav-item menu">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                              Manage Classes Routines
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                          <li class="nav-item">
                              <a href="<?=$site_url?>student/periods.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Periods</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="<?=$site_url?>student/timetable.php"  class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Time Table</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/inline.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Librarian</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/uplot.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>uPlot</p>
                              </a>
                          </li>
                      </ul>
                  </li>
               <li class="nav-item menu">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                              Manage Examination
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                  </li>
</li>
               <li class="nav-item menu">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                              Manage Attendance
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                          <li class="nav-item">
                              <a href="<?=$site_url?>student/attendance.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Attendance</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/flot.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Student</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/inline.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Librarian</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/uplot.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>uPlot</p>
                              </a>
                          </li>
                      </ul>
                  </li>
</li>
<li class="nav-item menu">
                      <a href="student-material.php" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                            Study Materials
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                  </li> 
<li class="nav-item menu">
                      <a href="fee-details.php" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                              Fee Details
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                  </li>   
               <li class="nav-item menu">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                              Manage Events
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                          <li class="nav-item">
                              <a href="profile.php" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Profile</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/flot.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Student</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/inline.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>Librarian</p>
                              </a>
                          </li>
                          <li class="nav-item">
                              <a href="pages/charts/uplot.html" class="nav-link">
                                  <i class="far fa-circle nav-icon"></i>
                                  <p>uPlot</p>
                              </a>
                          </li>
                      </ul>
                  </li>
</li>
          
 
                  <li class="nav-item menu">
                      <a href="#" class="nav-link">
                          <i class="nav-icon fas fa-chart-pie"></i>
                          <p>
                             Communications
                              <i class="right fas fa-angle-left"></i>
                          </p>
                      </a>
                  </li>
                </nav> 
           <!-- /.sidebar-menu  -->
      </div>
      <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">