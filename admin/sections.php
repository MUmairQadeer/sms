<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>

<?php
if(isset($_POST['submit'])){
    $title= $_POST['title'];
    mysqli_query($db_conn,"INSERT INTO posts (`title`,`type`,`status`) 
    VALUE ('$title','section','publish')");
}
?>
<!-- Content Wrapper. Contains page content -->

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Section</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Admin </a></li>
                    <li class="breadcrumb-item active">Sections</li>
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
                            Sections
                        </div>
                        </div>
                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>S.no</th>
                                            <th> Title</th>
                                            
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $count =1;
                                        $args =array(
                                            'type' =>'section',
                                            'status' =>'publish',
                                        );
                                     $sections =get_posts($args);
                             
                                foreach ($sections as $section) 
                                {?>

                           <tr>
                            <td><?=$count++?></td>
                                        <td><?=$section->title?></td>
                                      
                                        </tr>

                                        
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