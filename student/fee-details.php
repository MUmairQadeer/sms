<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php');  
$success_msg =false;
$user_id =isset($_SESSION['user_id'])?$_SESSION['user_id']:'';


?>

<!-- //form data -->
<?php
if(isset($_POST['formSubmitted']) ){
 
$status =isset($_POST['status'])?$_POST['status']:'success';
$firstname =isset($_POST['firstname'])?$_POST['firstname']:'';
$amount =isset($_POST['amount'])?$_POST['amount']:'';
$email =isset($_POST['email'])?$_POST['email']:'';
$month =isset($_POST['month'])?$_POST['month']:'';



    $title =$month. '-Fee';

    $query = mysqli_query($db_conn,"INSERT INTO `posts`(`title` ,`type` ,`description` ,`status`
    , `author`) VALUES('$title' ,'payment', '' ,'$status' ,'$user_id')");

if($query){
    $item_id =mysqli_insert_id($db_conn);
}

$payment_data =array
(
    'amount' =>$amount,
    'status' => $status,
    'student_id' => $user_id ,
    'month' => $month
);

foreach ($payment_data as $key => $value) {
    mysqli_query($db_conn,"INSERT INTO `metadata` (`item_id`,`meta_key` ,`meta_value`)
    VALUES('$item_id','$key' ,'$value')"); 
    $success_msg =true;
}
}

?>
<?php
if(isset($_GET['action']) =='view'){?>
 <!-- Invoice -->
    <div class="container">
    <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <div class="invoice-title">
                            <h4 class="float-end font-size-15">Invoice #DS0204 <span class="badge bg-success font-size-12 ms-2">Paid</span></h4>
                            <div class="mb-4">
                               <h2 class="mb-1 text-muted">School fee</h2>
                            </div>
                            <div class="text-muted">
                                <p class="mb-1">3184 Spruce Drive Pittsburgh, PA 15201</p>
                                <p class="mb-1"><i class="uil uil-envelope-alt me-1"></i> sms@gmail.com</p>
                                <p><i class="uil uil-phone me-1"></i> 012-345-6789</p>
                            </div>
                        </div>
    
                        <hr class="my-4">
    
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="text-muted">
                                    <h5 class="font-size-16 mb-3">Submitted To:</h5>
                                    <h5 class="font-size-15 mb-2">Preston Miller</h5>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-sm-6">
                                <div class="text-muted text-sm-end">
                                    
                                    <div class="mt-4">
                                        <h5 class="font-size-15 mb-1">Invoice Date:</h5>
                                        <p>12 Oct, 2020</p>
                                    </div>
                                  
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                        <div class="py-2">
                            <h5 class="font-size-15">Fee Summary</h5>
    
                            <div class="table-responsive">
                                <table class="table align-middle table-nowrap table-centered mb-0">
                                    <thead>
                                        <tr>
                                            <th style="width: 70px;">No.</th>
                                            <th>class</th>
                                            <th>Fee</th>
                                            <th>Month</th>
                                            <th class="text-end" style="width: 120px;">Total</th>
                                        </tr>
                                    </thead><!-- end thead -->
                                    <tbody>
                                        <tr>
                                            <th scope="row"></th>
                                            <td>
                                                <div>
                                                    <h5 class="text-truncate font-size-14 mb-1"></h5>
                                                    <p class="text-muted mb-0"><?php
                         $classid = get_usermeta($std_id,'class');
                         echo (get_post(['id'=>$classid]))->title;
                         ?></p>
                                                </div>
                                            </td>
                                            <td>$45.50</td>
                                            <td><?php
                                            if(isset($_GET['month']) ){
                                                echo $_GET['month'];
                                            }
                                            ?></td>
                                            <td class="text-end"></td>
                                        </tr>
                                    
                                      
                                        <!-- end tr -->
                                        <tr>
                                            <th scope="row" colspan="4" class="border-0 text-end">Total</th>
                                            <td class="border-0 text-end"><h4 class="m-0 fw-semibold">$39.00</h4></td>
                                        </tr>
                                        <!-- end tr -->
                                    </tbody><!-- end tbody -->
                                </table><!-- end table -->
                            </div><!-- end table responsive -->
                            <div class="d-print-none mt-4">
                                <div class="float-end">
                                    <a href="javascript:window.print()" class="btn btn-success me-1"><i class="fa fa-print"></i></a>
                                    <a href="#" class="btn btn-primary w-md">Send</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!-- end col -->
        </div>
    </div>
<?php }
else { 
?>






<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Manage Student Fee Details</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Admin </a></li>
                    <li class="breadcrumb-item active">Manage Student Fee Details</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<?php if($success_msg){?>
<div class="alert alert-success alert-dismissible fade show" role="alert">
    <strong>Thnaks!</strong> Your Fee has been Paid.
    <button type="button" class="close btn-primary" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
    </button>
</div>
<?php } ?>

<!-- table of student details  -->
<div class="container-fluid">

    <!-- to view fee details -->
    <?php {
       
        $usermeta =get_user_metadata($user_id);
        ?>
    <div class="card">
        <div class="card-header">
            <h3 class="card-title"> Student Details</h3>

            <div class="card-body">
                <strong>Name :</strong>
                <?php echo (get_users(array("id"=>$user_id))[0]->name);?>
                <br>
                <strong>Class :</strong>
                
                <?php 
                $classid = get_usermeta($user_id,'class');
               
                echo (get_post(['id'=>$classid])->title);
                ?>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>S.No</th>
                        <th>Month</th>
                        <th>Fee Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sql = "SELECT m.meta_value as `month` FROM `posts` as p
                    JOIN `metadata` as m ON p.id = m.item_id WHERE type ='payment' AND author =$user_id
                    AND m.meta_key = 'month' AND year(p.publish_date) =2024";
                    $query =mysqli_query($db_conn,$sql);
                    $paid_fees =[];
                    while($row =mysqli_fetch_object($query)){
                        $paid_fees []=  strtolower($row->month);
                        // echo '<pre>';
                        // print_r($paid_fees);
                        // echo '</pre>';

                    }
                    ?>
                    <?php
                    //    print_r(date('F'));
                       $months =array('january','febuary','march','april','may','june','july','august','september','october','november' ,'december');
                       foreach ($months as $key => $value) { 
                        $paid =false;
                        $highlight='';
                        if(in_array($value,$paid_fees)){
                            $paid =true;
                             $highlight = 'class="bg-success"';
                        }
                        
                        ?>
                    <tr>
                        <td><?php echo ++$key?></td>
                        <td><?php echo ucwords($value)?></td>
                        <td <?php echo $highlight ?>>
                            <?php echo($paid) ?"paid" :"pending";
                                ?>
                        </td>
                        <td> <?php
                        if($paid){?>

                            <a href="?action=view-invoice&month=<?php echo $value?>&std_id=<?php echo $std_id?>" class="btn btn-sm btn-info  "><i class="fa fa-eye fa-fw"></i> View

                            </a>
                            <?php }else{ 
                        ?>



                            <a href="#" data-toggle="modal" data-month="<?php echo ucwords($value)?>"
                                data-target="#paynow-popup" class=" btn btn-sm btn-warning paynow-btn"><i
                                    class="fa fa-money-check-alt fa-fw "></i> Pay Now
                            </a>
                            <?php } ?>

                        



                    </tr>
                    <?php }?>
                </tbody>
            </table>
        </div>
    </div>

    <?php } ?>

</div>


<!-- Modal -->
<div class="modal fade" id="paynow-popup" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="paynow-popupLabel">PayNow</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="" method="post">

                    <input type="hidden" name="amount" value="500">


                    <div class="row">
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="">Full Name</label>
                                <input type="text" class="form-control" readonly name="name" value="
                        <?php echo $student->name?>">
                            </div>

                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="">Email Address</label>
                                <input type="email" class="form-control" readonly name="email"
                                    value="<?php echo $student->email?>">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="">Phone</label>
                                <input type="text" class="form-control" readonly name="phone" value="1234567890">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for=""> Payment Month</label>
                                <input type="text" class="form-control " readonly name="month" id="month" value="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label for="">Amount</label>
                                <h2>
                                    <i class="fa fa-rupee-sign"></i>5000.0
                                </h2>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <button type="submit" name="formSubmitted" class="btn btn-success">Confirm &
                                    Pay</button>
                            </div>
                        </div>

                    </div>
                </form>
            </div>

        </div>
    </div>
</div>
<script>
jQuery(document).on('click', '.paynow-btn', function() {
    var month = jQuery(this).data('month');
    console.log(month);
    jQuery('#month').val(month);
});
</script>
<!-- table of student details  -->
<?php

include('footer.php'); ?>
<?php } ?>