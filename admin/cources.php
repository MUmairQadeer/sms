
   
<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>

<!-- Content Wrapper. Contains page content -->
<?php
if(isset($_POST['submit'])){
//   echo '<pre>';
//   print_r($_FILES);
//   echo '</pre>';

  $name =$_POST['name'];
  $category =$_POST['category'];
  $duration =$_POST['duration'];
  $image =$_FILES["thumbnail"]["name"];
  $today =date('Y-m-d');

//   upload file in php
  $target_dir = "../dist/uploads/";
  $target_file = $target_dir . basename($_FILES["thumbnail"]["name"]);
  $uploadOk = 1;
  $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
  }
  // Check file size
if ($_FILES["thumbnail"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
  }

  // Allow certain file formats
if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
&& $imageFileType != "gif" ) {
  echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
  $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
  // if everything is ok, try to upload file
  } else {
    if (move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $target_file)) {
     
        mysqli_query($db_conn,"INSERT INTO cources (`name`,`category` ,`duration` ,`date`, `image` )
        VALUES ('$name' ,'$category','$duration','$today','$image')");
         

 header('Location:cources.php');
 $_SESSION['success_msg'] ='Cource has been uploaded successfuly';
    } else {
      echo "Sorry, there was an error uploading your file.";
    }
  }




}

?>
<?php include('sidebar.php'); ?>
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Cources</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Admin </a></li>
                    <li class="breadcrumb-item active">Cources</li>
                </ol>
            </div><!-- /.col -->
            <?php
            if(isset($_SESSION['success_msg'])){ ?>
            <div class="col-12">
                <br><small class="text-success" style="font-size:14px"><?=$_SESSION['success_msg']?>
            </div>
            <?php 
        unset($_SESSION['success_msg']);
     
        }?>

        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content" >
    <div class="container-fluid">
        <!-- Info boxes -->
        <?php
       if(isset($_REQUEST['action']))
       {?>
        <div class="card">
            <div class="card-header ">
                <div class="card-title ">
                    Add New Course
                </div>

                <div class="card-body">
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">

                            <label for="name" class="my-2">Cource Name</label>
                            <input type="text" name="name" placeholder="Cource Title" required class="form-control">
                            <div class="form-group">
                                <label for="Category" class="my-2">Cource Category</label>
                                <input type="text" name="Category" placeholder="Cource Title" required
                                    class="form-control">
                            </div>
                            <div class="form-group">
                                <select name="category" id="category" class="form-control">
                                    <option value="">Select Category</option>
                                    <option value="web-development">Web Design and Development</option>
                                    <option value="app-development">App Development</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="duration"> Cource Duration</label>
                                <input type="text" name="duration" placeholder="Cource Duration" id="duration"
                                    class="form-control">
                            </div>
                            <!-- // form to submit new cources -->
                            <div class="form-group">
                                <input type="file" name="thumbnail" id="thumbnail" required>
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
        <?php 
       }?>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->


<?php include('footer.php'); ?>