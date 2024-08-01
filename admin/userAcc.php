<?php
$error ='';
?>
<?php include('../includes/config.php') ?>
<?php
if(isset($_POST['submit'])){
    $name =$_POST['name'];
    $email =$_POST['email'];
    $password =md5(1234567890);
    $type =$_POST['type'];

    $checkquery =mysqli_query($db_conn,"SELECT * FROM accounts where email ='$email'");
    if(mysqli_num_rows($checkquery)>0){
        $error ='Email Already Exists';
    }
    else{
    mysqli_query($db_conn ,"INSERT INTO accounts(`name`,`email`,`password`,`type`) VALUES ('$name' ,'$email','$password','$type')") or die(mysqli_error());
    header('location:userAcc.php?user='.$type);
    $_SESSION['success_msg'] ='User has been successfully Registered';
}
}

?>

<?php include('header.php') ?>

<?php include('sidebar.php') ?>
<!-- Content Wrapper. Contains page content -->

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <div class="d-flex">
                    <h1 class="m-0">Manage Accounts</h1>
                    <a href="userAcc.php?user=<?php echo($_REQUEST['user'])?>&action=add-new"
                        class="btn btn-primary btn-sm mx-2">Add New</a>
                </div>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Accounts</a></li>
                    <li class="breadcrumb-item active"><?php echo ucfirst($_REQUEST['user'])?></li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>

<?php
            if(isset($_SESSION['success_msg'])){ ?>
<div class="col-12">
    <br><small class="text-success" style="font-size:14px"><?=$_SESSION['success_msg']?>
</div>
<?php 
        unset($_SESSION['success_msg']);
     
        }?>
<!-- /.content-header -->

<section class="content">
    <div class="container-fluid" id="form-container">
        <!-- Info boxes -->
        <?php if(isset($_GET['action'])){
        ?>

        <div class="card">
            <div class="card-body">
                <?php if($_GET['action'] =='add-new'){?>
                <form action="" id="student_registration" method="post">



                    <!-- Student information form -->

                    <fieldset class="border border-secondary p-3 form-group">
                        <legend class="d-line  w-auto h6">Student Information

                        </legend>
                        <div class="form-group">
                            <label for="">Full Name</label>
                            <input type="text" name="name" placeholder="Full Name" class="form-control" id="">
                        </div>
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="">DOB</label>
                                    <input type="date" required name="DOB" placeholder="Date Of Birth"
                                        class="form-control" id="">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="">Mobile</label>
                                    <input type="number" name="mobile" placeholder="Mobile Number" class="form-control"
                                        id="">
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="form-group">
                                    <label for="">Email</label>
                                    <input type="email" name="email" required placeholder="Email Address"
                                        class="form-control" id="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="">Address</label>
                            <input type="text" name="address" placeholder="Address" class="form-control" id="">
                        </div>

                    </fieldset>
                    <!-- Parent information form -->

                    <fieldset class="border border-secondary p-3 form-group">
                        <legend class="d-line  w-auto h6">Parents Information

                        </legend>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="">Father's Name</label>
                                    <input type="text" name="father_name" placeholder="Father's Name"
                                        class="form-control" id="">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="">Father's Mobile</label>
                                    <input type="number" name="father_mobile" placeholder="Father's Mobile"
                                        class="form-control" id="">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="">Mother's Name</label>
                                    <input type="text" name="mother_name" placeholder="Mother's Name"
                                        class="form-control" id="">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="form-group">
                                    <label for="">Mother's Mobile</label>
                                    <input type="text" name="mother_mobile" placeholder="Mother's Mobile"
                                        class="form-control" id="">
                                </div>
                            </div>


                            <div class="form-group col-lg-12">
                                <label for="">Address</label>
                                <input type="text" name="parent_address" placeholder="Address" class="form-control"
                                    id="">
                            </div>


                    </fieldset>
                    <!-- Last Qualification information form -->

                    <fieldset class="border border-secondary p-3 form-group">
                        <legend class="d-line  w-auto h6">Last Qualification

                        </legend>

                        <div class="form-group col-lg-12">
                            <label for="">School Name</label>
                            <input type="text" name="previous_school_name" placeholder="School Name"
                                class="form-control" id="">
                        </div>

                        <div class="row">
                            <div class="col-lg">
                                <div class="form-group">
                                    <label for="">Class</label>
                                    <input type="text" name="previous_class" placeholder="Class" class="form-control"
                                        id="">
                                </div>
                            </div>

                            <div class="col-lg">
                                <div class="form-group">
                                    <label for="">Percentage </label>
                                    <input type="text" name="previous_percentage" placeholder="Percentage"
                                        class="form-control" id="">
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <!-- Admission Details information form -->

                    <fieldset class="border border-secondary p-3 form-group">
                        <legend class="d-line  w-auto h6">Admission Details

                        </legend>
                        <div class="row">
                            <div class="form-group col-lg">
                                <label for="">Class Name</label>
                                <select name="class" id="class" class="form-control">
                                    <option value="" disabled>Select Class</option>
                                    <?php
                                    $args = array(
                                        'type'=>'class',
                                        'status' =>'publish',
                                    );
                                    $classes =get_posts($args);
                                    foreach ($classes as $class) {
                                        echo '<option value ="'.$class->id.'">'.$class->title.'</option>';
                                    }
                                    ?>
                                </select>
                            </div>


                            <div class="col-lg">
                                <div class="form-group">
                                    <label for="">Section</label>

                                    <select name="section" id="section" class="form-control">
                                        <option value="" disabled>Select Section</option>
                                        <?php
                                    $args = array(
                                        'type'=>'section',
                                        'status' =>'publish',
                                    );
                                    $sections =get_posts($args);
                                    foreach ($sections as $section) {
                                        echo '<option value ="'.$section->id.'">'.$section->title.'</option>';
                                    }
                                    ?>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg">
                            <div class="form-group">
                                <label for="">Date of Admission</label>
                                <input type="date" name="doa" placeholder="Date of Admission" class="form-control"
                                    id="">
                            </div>
                        </div>

            </div>
        </div>
        </fieldset>
        <fieldset class="border border-secondary  p-3 form-group d-flex">
                        <legend class="d-line  w-auto h6">Payment method

                        </legend>
                        
        <div class="form-group col-lg-4">
            <label for="online-payment">
                <input type="radio" name="payment_method" id="online-payment" value="online-payment"> Online
                Payment</label>  </div>
                <div class="form-group col-lg-4"> 
            <label for="offline-payment">
                <input type="radio" name="payment_method" id="offline-payment" value="offline-payment"> Offline
                Payment</label>
            </div>

<div class="form-group col-lg-4"> 

        <input type="hidden" name="type" value="<?=($_REQUEST['user'])?>">
        <button type="submit" name="submit" class="btn btn-primary        col-lg-4 form-group " >Register
            <i class="fas fa-circle-notch fa-spin" id="loader" style="display:none;"></i></button></div>
<div>
            </fieldset>
   
    </div>
    </form>
    </div>


    </div>
    </div>
    <?php }
      else if ($_GET['action'] =='fee-payment'){?>
    <form action="" id="registration-fee" method="POST">
        <div class="row">
            <div class="col-lg-4">
                <div class="form-group">
                    <label for="">Reciept Number</label>
                    <input type="text" name="reciept_number" placeholder="Reciept Number" class="for-control">
                </div>
            </div>
            <div class="col-lg-4">
                <div class="form-group">
                    <label for="">Registration Fee</label>
                    <input type="text" name="registration_fee" placeholder="Registration Fee" class="for-control">
                </div>
            </div>

        </div>
        <input type="hidden" name="std_id" value="<?php echo isset($_GET['std_id'])?$_GET['std_id']:''?>">
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    <?php } }else { ?>

    <div class="table-responsive">
        <table class="table table-bordered" id="myTable">
            <thead>
                <tr>
                    <th>S.no</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Action</th>
                </tr>
            </thead>
            <?php
                    
          $count =1; 
        $user_query = 'SELECT * from accounts WHERE `type` = "'.$_REQUEST['user'].'"';
        $user_result =mysqli_query($db_conn ,$user_query);
        while ($users =mysqli_fetch_object($user_result)) {?>
            <tbody>
                <tr>
                    <td><?=$count++?>
                    </td>

                    <td>
                        <?=$users->name?>
                    </td>
                    <td>
                        <?=$users->email?>
                    </td>
                    <td>
                        <?=$users->email?>
                    </td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
    </div>
    <?php } ?>

    <!--/. container-fluid -->
</section>
<script>
jQuery(document).ready(function() {
    jQuery('#userstable').DataTable({
        ajax: {
            url: 'ajax.php';
            type: 'POST'
        },
        columns: [{
                data: 'serial'
            } {
                data: 'name'
            } {
                data: 'email'
            } {
                data: 'action'
            }


        ],
        processing: true,
        severSide: true,
    });
})
</script>

<script>
jQuery('#student_registration').on('submit', function() {
    if (true) {

        var formdata = jQuery(this).serialize();
        jQuery.ajax({
            type: "post",
            url: "<?=$site_url?>actions/student_registration.php",
            data: formdata,
            dataType: 'json',
            beforeSend: function() {
                jQuery('#loader').show();
            },
            success: function(response) {
                console.log(response);


                if (response.success == true) {
                    location.href =
                        'http://localhost/sms/admin/userAcc.php?user=student&action=fee-payment&std_id=' +
                        response.std_id + '&payment_method=' + response.payment_method;
                }
            },
            complete: function() {
                jQuery('#loader').hide();
            }
        });

    }

    return false;
});
</script>
<script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script>
let table = new DataTable('#myTable');
</script>

<?php include('footer.php'); ?>