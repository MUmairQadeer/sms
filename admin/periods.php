<?php include('../includes/config.php'); ?>
<?php
if(isset($_POST['submit'])){

$title =($_POST['title'])?$_POST['title']:'';
$from =($_POST['from'])?$_POST['from']:'';
$to =($_POST['to'])?$_POST['to']:'';
$status ='publish';
$type ='period';
$date_add =date('Y-m-d g:i:s');

$query = mysqli_query($db_conn,"INSERT INTO `posts` (`title` ,`status` ,`publish_date`,`type`) VALUES ('$title','$status' ,'$date_add', '$type')");
if($query){
    $item_id =mysqli_insert_id($db_conn);
}

 mysqli_query($db_conn,"INSERT INTO `metadata` (`meta_key` ,`meta_value` ,`item_id`) VALUES ('from','$from' ,'$item_id')");

 mysqli_query($db_conn,"INSERT INTO `metadata` (`meta_key` ,`meta_value` ,`item_id`) VALUES ('to','$to' ,'$item_id')");
 
 header('Location:periods.php');    
}
?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>



<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Periods</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Admin </a></li>
                    <li class="breadcrumb-item active">Periods</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->

        <div class="row">
            <div class="col-lg-8">
                <div class="card">
                    <div class="card-header py-2">
                        <div class="card-title py-2 ">
                        Periods
                        </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>S.no</th>
                                            <th> Title</th>
                                            <th>From</th>
                                            <th>To</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $count =1;
                                        $args =array(
                                            'type' =>'period',
                                            'status' =>'publish',
                                        );
                                        $periods =get_posts($args);
                             
                                foreach ($periods as  $period) 
                                {  $from =get_metadata($period->id  ,'from')[0]->meta_value;
                                    $to =get_metadata($period->id  ,'to')[0]->meta_value;?>

                           <tr>
                            <td><?=$count++?></td>
                           
                                        <td><?=$period->title?></td>
                                      

<td> <?php echo date('h:i:A',strtotime($from)) ?>  </td> <td><?php echo date('h:i:A',strtotime($to)) ?> </td>

                                        
                                        <?php }
                                ?>
                                    </tbody>
                                </table>
                            </div>


                        </div>
                   
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-header "> 
                        <div class="card-title ">
                            Add New Section 
                        </div>
 </div>
                      <div class="card-body">
                           <form action="" method= "POST">     
                                <div class="form-group">
                                    <label for="title" class="">Title</label>
                                    <input type="text" name="title" placeholder="Title" required class="form-control">
                                   
                                </div>
                               
                                <div class="form-group">
                                    <label for="title" class="">From</label>
                                    <input type="time" name="from" placeholder="from" required class="form-control">
                                   
                                </div>
                               
                                <div class="form-group">
                                    <label for="title" class="">To</label>
                                    <input type="time" name="to" placeholder="to" required class="form-control">
                                   
                                </div>
                            
                               
                                <button name="submit" class="btn btn-success float-right">
                                    Submit
                                </button></div>
                            </form>


                        
                   
                </div>
            </div>
        </div>





         </div>
            <!--/. container-fluid -->
</section>
<!-- /.content -->


<?php include('footer.php'); ?>