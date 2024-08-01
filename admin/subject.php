<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>

<!-- Content Wrapper. Contains page content -->
<?php
if (isset($_POST['submitSubject'])) {
    $class = $_POST['class'];
    $section = $_POST['section'];
    $subject = $_POST['subject'];
   mysqli_query($db_conn,"INSERT INTO posts(`title`,`type`,`status`)VALUE('$subject','subject','publish')");
   $insertId =mysqli_insert_id($db_conn);
   mysqli_query($db_conn,"INSERT INTO metadata(`item_id`,`meta_key`,`meta_value`)VALUE('$insertId','section','$section')");
   mysqli_query($db_conn,"INSERT INTO metadata(`item_id`,`meta_key`,`meta_value`)VALUE('$insertId','class','$class')");
   header('Location:subject.php');
}

?>

<?php include('sidebar.php'); ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Subject</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Subject</li>
                </ol>
            </div><!-- /.col -->
            <?php if (isset($_SESSION['success_msg'])) { ?>
            <div class="col-12">
                <br>
                <small class="text-success" style="font-size:14px"><?=$_SESSION['success_msg']?></small>
            </div>
            <?php unset($_SESSION['success_msg']); ?>
            <?php } ?>
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->
        <?php if (isset($_REQUEST['action'])) { ?>

        <div class="card ">
            <div class="card-header py-2">
                <h3 class="card-title">Add New Subject</h3>
            </div>
            <div class="card-body">
                <form action="" method="post">
                    <div class="form-group">
                        <label for="class">Select Class</label>
                        <select name="class" id="classOption" class="form-control">
                            <option value="">Select Class</option>
                            <?php
                                        $args = array(
                                            'type' => 'class',
                                            'status' => 'publish',
                                        );
                                        $classes = get_posts($args);
                                        foreach ($classes as $class) { ?>
                            <option value="<?php echo $class->id; ?>"><?php echo $class->title; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group" id="section-container">
                        <label for="section">Select Section</label>
                        <select name="section" id="sectionOption" class="form-control">
                        </select>

                    </div>
                    <div class="form-group">
                        <label for="subject">Subject Name</label>
                        <input type="text" name="subject" id="subject" class="form-control"
                            placeholder="Enter Subject Name" required>
                    </div>
                    <div class="form-group">
                        <input type="submit" name="submitSubject" class="btn btn-primary" value="Submit">
                    </div>
                </form>
            </div>
        </div>

        <?php } else { ?>
        <div class="row">

            <div class="col-lg">
                <div class="card">
                    <div class="card-header py-2">
                        <div class="card-title">Available Subjects</div>
                        <div class="card-tools">
                            <a href="?action=add-new" class="btn btn-success mr-2 btn-xs my-2"><i class="fa fa-plus">
                                    Add New</i></a>
                        </div>
                        </div>
                        <div class="container-fluid"> 
                        <div class="form-group">
                        <label for="class">Select Class</label>
                        <select name="class" id="classOption" class="form-control">
                            <option value="">Select Class</option>
                            <?php
                                        $args = array(
                                            'type' => 'class',
                                            'status' => 'publish',
                                        );
                                        $classes = get_posts($args);
                                        foreach ($classes as $class) { ?>
                            <option value="<?php echo $class->id; ?>"><?php echo $class->title; ?></option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group" id="section-container">
                        <label for="section">Select Section</label>
                        <select name="section" id="sectionOption" class="form-control">

                        </select>

                    </div>
                    </div>

                    
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="subjectTable">
                                <thead>
                                    <tr>
                                        <th>S.no</th>
                                        <th>Subject Name</th>
                                        <th>Class</th>
                                        <th>Section</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                        $count = 1;
                                        $args = array(
                                            'type' => 'subject',
                                            'status' => 'publish',
                                        );
                                        $subjects = get_posts($args);
                                        foreach ($subjects as $subject) { ?>
                                    <tr>
                                        <td><?=$count++?></td>
                                        <td><?=$subject->title?></td>

                                        <td>
                                            <?php  
                                            $classid =get_metadata($subject->id,'class')[0]->meta_value;
                                            $class =get_post(array('id' =>$classid))->title;
                                            
                                            ?>
                                            <?=$class?>
                                       </td>
                                        <td>  <?php  
                                            $sectionid =get_metadata($subject->id,'section')[0]->meta_value;
                                            $section =get_post(array('id' =>$sectionid))->title;
                                            
                                            ?>
                                            <?=$section?></td>
                                        <td><?=$subject->publish_date?></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>

</section>
<!-- /.content -->

<script>
jQuery('#classOption').on('change', function() {
    var classID = $(this).val();
    console.log(classID);
});
jQuery('#sectionOption').on('change', function() {
    var classID = $(this).val(); 
    console.log(classID);
    });
jQuery('#classOption').on('change', function() {
    var classID = $(this).val();

    if (classID) {

        jQuery.ajax({
            type: "post",
            url: "<?=$site_url?>admin/sectionAjax.php",
            data: 'class_id=' + classID,

            success: function(html) {
                $('#sectionOption').html(html);
            },

        });
    }
    return false;
});
</script>
<script>
let table = new DataTable('#subjectTable');
</script>
<?php include('footer.php'); ?>