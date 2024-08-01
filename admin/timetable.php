<?php include('../includes/config.php'); ?>

<?php
if(isset($_POST['submit'])){
$class_id = isset($_POST['class_id'])?$_POST['class_id']:'';
$section_id = isset($_POST['section_id'])?$_POST['section_id']:'';
$teacher_id = isset($_POST['teacher_id'])?$_POST['teacher_id']:'';
$period_id = isset($_POST['period_id'])?$_POST['period_id']:'';
$day_name = isset($_POST['day_name'])?$_POST['day_name']:'';
$subject_id = isset($_POST['subject_id'])?$_POST['subject_id']:'';
$date_add =date('Y-m-d g:i:s');
$status='publish';
$author =1;
$type ='timetable';

$query =mysqli_query($db_conn,"INSERT INTO posts(`type` ,`author` ,`status`,`publish_date`)
 VALUES('$type','$author' ,'$status','$date_add')");
if($query){
    $item_id =mysqli_insert_id($db_conn);
}
$metadata =array(
    'class_id' => $class_id ,
    'section_id' => $section_id ,
    'teacher_id' => $teacher_id ,
    'day_name' => $day_name ,
    'subject_id' => $subject_id ,
    'period_id' => $period_id ,
);
foreach ($metadata as $key => $value) {
    echo $value;
    mysqli_query($db_conn,"INSERT INTO metadata(`item_id` ,`meta_key` ,`meta_value`) VALUES('$item_id',
    '$key' ,'$value')");
}
 header('Location:timetable.php');
}?>

<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>



<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">




        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Time Table
                    <a href="?action=add " class="btn btn-success btn-sm mx-2">Add New</a>
                </h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Admin </a></li>
                    <li class="breadcrumb-item active">Time Table</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid">

        <?php if(isset($_GET['action'])  && ($_GET['action']=='add')){?>

        <div class="card">
            <div class="card-body">
                <form action="" method="POST">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="form-group">
                                <label for="class_id">Select Class</label>
                                <select required name="class_id" id="class_id" class="form-control">
                                    <option value="" disabled selected required>Select Class</option>
                                    <?php $args =array(
                                         'type' =>'class',
                                         'status' =>'publish',);


                        $classes =get_posts($args);
                        foreach ($classes as $key => $class) { ?>
                                    <option value="<?php echo $class->id?>"> <?php echo $class->title?></option>

                                    <?php }?>


                                </select>
                            </div>

                        </div>
                        <div class="col-lg-4">
                            <div class="form-group" id="section-container">
                                <label for="section_id">Select Section</label>
                                <select required name="section_id" id="section_id" class="form-control">
                                    <option value="" disabled selected>Select Section</option>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group" id="section-container">
                                <label for="teacher_id">Select Teacher</label>
                                <select required name="teacher_id" id="teacher_id" class="form-control">
                                    <option value="" disabled selected>Select Teacher</option>

                                    <?php
                                 $teachers =get_users(array('type'=>'teacher'));
                                foreach ($teachers as $teacher) {

                                   echo '<option value="'.$teacher->id.'"> '.$teacher->name.'</option>';
                                }
                                 ?>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group" id="section-container">
                                <label for="period_id">Select Period</label>
                                <select required name="period_id" id="period_id" class="form-control">
                                    <option value="" disabled selected>Select Period</option>
                                    <?php $args =array(
        'type' =>'period',
        'status' =>'publish',
    );


                        $periods =get_posts($args);
                        foreach ($periods as $key => $period) { ?>
                                    <option value="<?php echo $period->id?>"> <?php echo $period->title?></option>

                                    <?php }?>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group" id="section-container">
                                <label for="day_name">Select Day</label>
                                <select required name="day_name" id="day_name" class="form-control">
                                    <option value="" disabled selected>Select Day</option>
                                    <?php
                                    $days = ['monday' ,'tuesday','wednesday' ,'thursday','friday','saturday' ,'sunday'];
                                    foreach ($days as $key => $day) { ?>
                                    <option value="<?php echo $day?>"> <?php echo ucwords($day)?></option>

                                    <?php }?>

                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="form-group" id="section-container">
                                <label for="subject_id">Select Subject</label>
                                <select required name="subject_id" id="subject_id" class="form-control">
                                    <option value="" disabled selected>Select Subject</option>
                                    <?php
                                    
                                    $subject_id =get_posts(array(
                                        'type' => 'subject',
                                        'status' => 'publish',
                                    ));
                                    foreach ($subject_id as $subject ) {
                                        echo'
                                   <option value="'.$subject->id.'">'.$subject->title.'</option>';
                                       }?>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg">
                            <label for=""></label>
                            <input type="submit" value="submit" name="submit" class=" btn form-control btn-success ">
                        </div>
                    </div>
                </form>
            </div>
        </div>


        <?php }else{?>

        <div class="card">
            <div class="card-body">
                <form action="">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="class">Select Class</label>
                                <select require name="class" id="class_id" class="form-control">
                                    <option value="">Select Class</option>
                                    <?php $args =array(
                                    'type' =>'class',
                                    'status' =>'publish',
                                     );


                        $classes =get_posts($args);
                        foreach ($classes as $key => $class) { ?>
                                    <option value="<?php echo $class->id?>"> <?php echo $class->title?></option>

                                    <?php }?>


                                </select>
                            </div>

                        </div>
                        <div class="col-lg-6">
                            <div class="form-group" id="section-container">
                                <label for="section">Select Section</label>
                                <select require name="section" id="section_id" class="form-control">
                                    <option value="">Select Section</option>

                                </select>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

        </div>
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Timing</th>
                            <th>Monday</th>
                            <th>Tuesday</th>
                            <th>Wednesday</th>
                            <th>Thursday</th>
                            <th>Friday</th>
                            <th>Saturday</th>
                            <th>Sunday</th>

                        </tr>
                    </thead>
                    <tbody>
                        <?php
$args =array(
        'type' =>'period',
        'status' =>'publish',
    );


                        $periods =get_posts($args); 
                        foreach ($periods as $period) { 
                          $from =get_metadata($period->id  ,'from')[0]->meta_value;
                          $to =get_metadata($period->id  ,'to')[0]->meta_value;
                            ?>

                        <tr>
                            <td> <?php echo date('h:i:A',strtotime($from)) ?> -
                                <?php echo date('h:i:A',strtotime($to))
                                ?> </td>
                            <?php 
    $days = ['monday' ,'tuesday','wednesday' ,'thursday','friday','saturday' ,'sunday'];
    foreach ($days as $day) {
        $query = mysqli_query($db_conn, "
    SELECT * 
    FROM posts as p 
    INNER JOIN metadata as md ON (md.item_id = p.id) 
    INNER JOIN metadata as mp ON (mp.item_id = p.id) 
    WHERE p.type = 'timetable' 
    AND p.status = 'publish'
    AND md.meta_key = 'day_name' 
     AND md.meta_value = '$day' 
     AND mp.meta_key = 'period_id' 
     AND mp.meta_value = '$period->id'

     ");

    $args =array(
        'type' =>'timetable',
        'status' =>'publish',
    );


                        $timetables =get_posts($args);


if(mysqli_num_rows($query) > 0){
    
    while($timetable =mysqli_fetch_object($query)){ 
        
        ?>
                            <td>

                                <p>
                                    <b>Teacher:</b><?php 
                                
            $teacher_id= (get_metadata($timetable->item_id,'teacher_id'))[0]->meta_value;
                                    
       
                                       echo (get_user_data($teacher_id))->name;
                                       ?>
                                    <br>
                                    <b>Class:</b>
                                    <?php 
            $class_id= (get_metadata($timetable->item_id,'class_id'))[0]->meta_value;
                $args =array(
                    'id'=> $class_id,
                    'type'=>'class',
                    'status'=>'publish',
                );
                  echo (get_post($args)->title);
                  
                  
                                                 ?>

                                    <br>
                                    <b>Section:</b>
                                    <?php 
            $section_id= (get_metadata($timetable->item_id,'section_id')[0]->meta_value);
                                  
                                       echo get_post(array('id'=>$section_id))->title;
                                       ?>
                                    <br>
                                    <b>Subject:</b>

                                    <?php 
            $subject_id= (get_metadata($timetable->item_id,'subject_id')[0]->meta_value);
            $args =array(
                'id'=>$subject_id,
                'type'=>'subject'
            );
                                 
                                       echo 
                                       (get_post($args)->title);
                                       ?> <br>
                                </p>
                            </td>
                            <?php} ?>
                            <?php   ?>

                            <?php } } else {?>

                            <td>
                                Unseduled

                            </td>
                            <?php}?>
                            <?php }?>

                            <?php } ?>

                            <?php } ?>


                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <?php } ?>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<script>
jQuery(document).ready(function() {
    jQuery('#class_id').change(function() {
        // alert(jQuery(this).val());
        jQuery.ajax({
            url: 'ajax.php',
            dataType: 'json',
            type: 'POST',
            data: {
                'class_id': jQuery(this).val()
            },
            success: function(response) {
                // console.log(response);
                if (response.count > 0) {
                    jQuery('#section-container').show();

                } else {
                    jQuery('#section-container').hide();

                }
                jQuery('#section_id').html(response.options);
            }
        })
    })
})
jQuery('#class_id').on('change', function() {
    var classID = $(this).val();
    if (classID) {
        jQuery.ajax({
            type: "post",
            url: "<?=$site_url?>admin/sectionAjax.php",
            data: 'class_id=' + classID,

            success: function(html) {
                $('#section_id').html(html);
            },
        });
    }
    return false;
});
</script>
<?php include('footer.php'); ?>