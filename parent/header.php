<?php
// session_start();
$site_url ='http://localhost/sms/';

if(isset($_SESSION['login']))
{ 
if(isset($_SESSION['user_type']) && $_SESSION['user_type'] != 'parent'){
$user_type =$_SESSION['user_type'];
header('Location:/sms/'.$user_type.'/dashboard.php');
}
}
else{
  header('Location: ../loginform.php');
}
$std_id =$_SESSION['user_id'];
$student = get_user_data($std_id);
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Parent | Dashboard</title>
<!-- jQuery -->
  <script src="../plugins/jquery/jquery.min.js"></script>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../dist/css/adminlte.min.css">
</head>
<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">