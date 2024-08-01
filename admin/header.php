<?php
$site_url ='http://localhost/sms/';

if(isset($_SESSION['login'])){
  
    if(isset($_SESSION['user_type']) && $_SESSION['user_type'] != 'admin'){
    $user_type =$_SESSION['user_type'];
    header('Location: /sms/'.$user_type.'/dashboard.php');
    }
    
   
}
else{
  header('Location: ../loginform.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SmS</title>
    <!-- jQuery -->
    <script src="../plugins/jquery/jquery.min.js"></script>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome Icons -->
    <link rel="stylesheet" href="../plugins/fontawesome-free/css/all.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="../plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- data tables -->
        <!-- data tables -->
        <link rel="stylesheet" href="//cdn.datatables.net/1.13.6/css/jquery.dataTables.min.css">
        <script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <!-- Theme style -->
    <link rel="stylesheet" href="../dist/css/adminlte.min.css">


</head>

<body class="hold-transition dark-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">