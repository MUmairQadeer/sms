<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>
<!-- Content Wrapper. Contains page content -->
<?php
if(isset($_POST['submit'])){
    $title= $_POST['title'];
    $section =implode(',' ,$_POST['section']);
    $added_date =date('y-m-d');

   mysqli_query($db_conn,"INSERT INTO posts (`title`,`description`,`type`,`status`, `publish_date`) VALUE ('$title','','class','publish','$added_date')") or die('DB Error');
    $insertId =mysqli_insert_id($db_conn);

     mysqli_query($db_conn ,"INSERT INTO metadata (`item_id` ,`meta_key`,`meta_value`) VALUE ('$insertId' ,'section' ,'$section')");



}

?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Classes</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Admin </a></li>
                    <li class="breadcrumb-item active">Classes</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->
        <?php
       if(isset($_REQUEST['action']))
       {?>
        <div class="card">
            <div class="card-header ">
                <div class="card-title ">
                    Add New Class
                </div>

                <div class="card-body">
                    <form action="" method="post">
                        <div class="form-group">
                            <label for="title" class="my-2">Title</label>
                            <input type="text" name="title" placeholder="Title" required class="form-control">
                            <label for="title">Section</label>
                            <?php
                           $query = mysqli_query($db_conn,"SELECT *FROM posts WHERE `type` ='section'");
                       
                     
                          $count=1;

                           while( $section = mysqli_fetch_object($query)){
                            ?>
                            <div>
                                <label for="<?=$count?>">
                                    <input type="checkbox" id="<?=$count?>" name="section[]" value=" <?=$section->id?>"
                                        placeholder="Section">
                                    <?=$section->title?>
                                </label>
                            </div>
                            <?php
                           $count++;
                           }
                           ?>
                        </div>
                        <button name="submit" class="btn btn-success">
                            Submit
                        </button>
                    </form>


                </div>
            </div>
        </div>
        <?php
         }
       else{
        ?>



        <div class="card">
            <div class="card-header py-2">
                <div class="card-title">
                    Classes
                </div>
                <div class="card-tools">
                    <a href="?action=add-new" class="btn btn-success mr-2 btn-xs my-2"><i class="fa fa-plus"> Add New
                        </i></a>
                </div>
                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>Name</th>
                                    <th>Section</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                        $count =1;
    $args =array(
        'type' =>'class',
        'status' =>'publish',
    );
 $classes =get_posts($args);
 foreach ($classes as $class) {?>
                                <tr>
                                    <td><?=$count++?></td>
                                    <td><?=$class->title?></td>
                                    
                                    <td> 
                                    <?php 

                               $class_meta = get_metadata($class->id,'section');
                               $values =($class_meta[0])->meta_value;
                               $values = explode(",", $values);
                               foreach ($values as $value) {
                                $section =get_post(array('id'=>$value));
                                
                                 echo $section->title ;
                                 echo ' ';
                               }
                               ?>
                               </td>
                               <td><?=$class->publish_date?></td>
                              </tr>


                                <?php }
                                ?>


                            </tbody>
                        </table>
                    </div>


                </div>
            </div>
        </div>
        <?php 
       }?>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->


<?php include('footer.php'); ?>