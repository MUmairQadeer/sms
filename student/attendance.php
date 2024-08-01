<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php');  ?>


<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Student Attendance</h1>
            </div>
        <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student </a></li>
                    <li class="breadcrumb-item active">Attendance</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- table -->
<div class="container-fluid">

    <!-- to view fee details -->
    <?php {
       
        $usermeta =get_user_metadata($std_id);
        $class =null ;
        foreach ($usermeta as $meta ) {
         if($meta->meta_key == 'class'){ 
         $class =$meta->meta_value;
         $classname =(get_post(['id'=>$class]))->title;
       
         }}
        ?>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"> Student Details</h3>

            <div class="card-body">
                <strong>Name :</strong>
                <?php echo (get_users(array("id"=>$std_id))[0]->name);?>
                <br>
                <strong>Class :</strong>
                <?php echo $classname ?>
            </div>
           <table class="table table-bordered">
            <thead>
            <tr>
                
                <th>Date</th>
                <th>Status</th>
                <th>Sign-in Time</th>
                <th>Sign-out Time</th>
            </tr>
            </thead>
            <tbody>
                <?php
                 $current_month =strtolower(date('F'));
                 $current_year =date('Y');
                 $sql ="SELECT * FROM `attendance` WHERE `attendance_month` ='$current_month'
                 AND year(current_session) =$current_year 
                 AND `std_id` =$std_id";
                    $query = mysqli_query($db_conn,$sql);
                    $row =mysqli_fetch_object($query);
                 
                    foreach(unserialize($row->attendance_value)as $date => $value) {
                       
                
                                 ?>
            <tr>
            
                <th><?php echo $date ?></th>
                <th><?php echo ($value['signin_at'])? 'Present' : 'absent';?></th>
                <th><?php echo ($value['signin_at'])? date('d-m-yyy h:i:s' ,$value['signin_at']) : '';?></th>
                <th><?php echo ($value['signout_at'])? date('d-m-yyy h:i:s' ,$value['signout_at']) : '';?></th>
               
            </tr>
            <?php } ?>
            </tbody>
           </table>
        </div>
    </div>

    <?php } ?>

</div>




<?php include('footer.php'); ?>