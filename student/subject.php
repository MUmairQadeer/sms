<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>


<?php include('sidebar.php'); ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Subjects</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">student</a></li>
                    <li class="breadcrumb-item active">Subject</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->
       
        <div class="row">

            <div class="col-lg">
                <div class="card">
                    <div class="card-header py-2">
                        <div class="card-title">Available Subjects</div>
                       
                        </div>
                        <div class="container-fluid"> 
                       

                    
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
                                 
                                  $class =null ;
                                  foreach ($stdmeta as $meta ) {
                                   if($meta->meta_key == 'class'){ 
                                   $class =$meta->meta_value;
                                   $classname =(get_post(['id'=>$class]))->title;
                                  
                                   }}
                                        $count = 1;
                                        $args = array(
                                            'type' => 'subject',
                                            'status' => 'publish',
                                        );
                                        $subjects = get_posts($args);
                                        foreach ($subjects as $subject) { ?>
                                    <tr>
                                          <?php  
                                            $classid =get_metadata($subject->id,'class')[0]->meta_value;
                                            $class =get_post(array('id' =>$classid))->title;
                                            if($class==$classname){
                                        
                                            ?>
                                        <td><?=$count++?></td>
                                        <td><?=$subject->title?></td>

                                        <td>
                                          
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
                                    <?php } ?>
                                            
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     
    </div>

</section>

<script>
let table = new DataTable('#subjectTable');
</script>
<?php include('footer.php'); ?>