<?php include('../includes/config.php'); ?>

<?php
if(isset($_POST['submit'])){
//   echo '<pre>';
//   print_r($_FILES);
//   echo '</pre>';

  $title =$_POST['title'];
  $description =$_POST['description'];
  $class =$_POST['class'];
  $subject =$_POST['subject'];
  $file =$_FILES["attachment"]['name'];
  $today =date('Y-m-d');

//   upload file in php
  $target_dir = "../dist/uploads/";
  $target_file = $target_dir . basename($_FILES["attachment"]["name"]);
  $uploadOk = 1;
  $FileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

// Check if file already exists
if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
  }
  // Check file size
if ($_FILES["attachment"]["size"] > 500000) {
    echo "Sorry, your file is too large.";
    $uploadOk = 0;
  }

  // Allow certain file formats
// if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
// && $imageFileType != "gif" ) {
//   echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
//   $uploadOk = 0;
// }
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
  // if everything is ok, try to upload file
  } else {
    if (move_uploaded_file($_FILES["attachment"]["tmp_name"], $target_file)) {
     
        // mysqli_query($db_conn,"INSERT INTO cources (`name`,`category` ,`duration` ,`date`, `image` )
        // VALUES ('$name' ,'$category','$duration','$today','$image')");

       $query = mysqli_query($db_conn,"INSERT INTO `posts` (`title`,`description` ,`type` ,`status`, `parent` ,`author` )
        VALUES ('$title' ,'$description','study-material','publish','0' ,'1')");
         
         if($query){
            $item_id =mysqli_insert_id($db_conn);
        }
        
        $meta_data =array
        (
            'class' =>$class,
            'subject' => $subject,
            'file_attachment' => $file 
            
        );
        
        foreach ($meta_data as $key => $value) {
            mysqli_query($db_conn,"INSERT INTO `metadata` (`item_id`,`meta_key` ,`meta_value`)
            VALUES('$item_id','$key' ,'$value')"); 
            $success_msg =true;
        }

 header('Location:study-material.php');
 $_SESSION['success_msg'] ='Cource has been uploaded successfuly';
    } else {
      echo "Sorry, there was an error uploading your file.";
    }
  }




}

?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>

<?php
    if(isset($_GET['action']) && $_GET['action'] == 'add-new'){

    
    ?>
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Study Materials</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Teacher </a></li>
                    <li class="breadcrumb-item active">Study Materials</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid">
        <?php
        $classes =get_posts([
            'type' =>'class',
            'status' => 'publish'
        ]);
        $subjects =get_posts([
            'type' =>'subject',
            'status' => 'publish'
        ]);
        // echo '<pre>';
        // print_r($classes);
        // echo '</pre>';
        ?>
        <div class="card">
            <div class="card-header ">
                <div class="card-title ">
                    Add New Study Materials
                </div>

                <div class="card-body">
                    <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="name">Title</label>
                            <input type="text" name="title" class="form-control" placeholder="Enter the Title">
                        </div>
                        <div class="form-group">
                            <label for="name">Description</label>
                            <textarea type="text" placeholder="Enter the Description"name="description" class="form-control"
                                >
    </textarea>
                        </div>
                        <div class="form-group">

                            <label for="name" class="my-2">Select Class</label>
                            <select name="class" id="" class="form-control">
                                <option value="">Select Class</option>
                                <?php
                                foreach ($classes as $key => $class) {
                                    echo '<option value="'.$class->id.'"> '.$class->title .' </option>';
                                }
                                ?>
                            </select>

                            <div class="form-group">
                                <label for="" class="my-2">Cource Category</label>
                                <select name="subject" class="form-control" id="subject">
                                    <option value="">Select Subject</option>
                                    <?php
                                foreach ($subjects as $key => $subject) {
                                    echo '<option value="' .$subject->id.'"> '.$subject->title .' </option>';
                                }
                                ?>
                                </select>
                            </div>
                         

                            <!-- // form to submit new cources -->
                            <div class="form-group">
                                <input type="file" name="attachment" id="attachment" required>
                            </div>



                            <button name="submit" class="btn btn-success">
                                Submit
                            </button>
                    </form>


                </div>
            </div>
        </div>
    </div>
  
    <?php }else{?>
        <div class="card">
            <div class="card-header py-2">
                <div class="card-title">
                    Study Material
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
                                    <th>Title</th>
                                    <th>Attachment</th>
                                    <th>Class</th>
                                    <th>Subject</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                        $count =1;
                                $query =mysqli_query($db_conn, "SELECT * FROM `posts` WHERE `type` ='study-material' AND author =1");
                                while($att =mysqli_fetch_object($query)){
                                    $class_id =get_metadata($att->id ,'class')[0]->meta_value;
                                    $class =get_post(['id'=>$class_id]);

                                    $subject_id =get_metadata($att->id ,'subject')[0]->meta_value;
                                    $subject =get_post(['id'=>$subject_id]);

                                    $file_attachment =get_metadata($att->id ,'file_attachment')[0]->meta_value;
                                    // $file_attachment =get_post(['id'=>$file_attachment]);

                                    ?>
                                <tr>
                                    <td>
                                        <?=$count++?>
                                    </td>
                                     <td><?=$att->title?></td>
                                     <td>
                                        <a href="<?="../dist/uploads/".$file_attachment?>">Download File
                                </a>
                                     </td>
                                     <td><?=$class->title?></td>
                                     <td><?=$subject->title?></td>
                                    <td><?=$att->publish_date?></td>
                                  
                                </tr>


                                <?php }
                                ?>
                            </tbody>
                        </table>
                    </div>


                </div>
            </div>
        </div>
        <?php } ?>

    
</section>
<?php include('footer.php'); ?>