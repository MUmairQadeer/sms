
   
<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>

<!-- Content Wrapper. Contains page content -->
<?php include('sidebar.php'); ?>
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Available  Cources</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">  </a></li>
                    <li class="breadcrumb-item active">Student</li>
                </ol>
            </div><!-- /.col -->
          

        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content" >
    <div class="container-fluid">
        <!-- Info boxes -->
       



        <div class="card">
            <div class="card-header py-2">
                <div class="card-title">
                   
                </div>
                
                <div class="card-body">

                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>S.no</th>
                                    <th>Name</th>
                                    <th>Image</th>
                                    <th>Category</th>
                                    <th>Duration</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                        $count =1;
                                $cource_query =mysqli_query($db_conn, 'SELECT * FROM cources');
                                while($cource =mysqli_fetch_object($cource_query)){?>

                                <tr>
                                    <td>
                                        <?=$count++?>
                                    </td>
                                    <td>
                                        <img src="../dist/uploads/<?=$cource->image?>" height="100"
                                            alt="<?=$cource->image?>" class="border">
                                    </td>
                                    <td><?=$cource->name?></td>
                                    <td><?=$cource->category?></td>
                                    <td><?=$cource->duration?></td>
                                    <td><?=$cource->date?></td>
                                </tr>


                                <?php }
                                ?>
                            </tbody>
                        </table>
                    </div>


                </div>
            </div>
        </div>
        
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->


<?php include('footer.php'); ?>