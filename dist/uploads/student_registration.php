
<?php
include('../includes/config.php');
if(isset($_POST['type']) && $_POST['type'] == 'student'
 && isset($_POST['email']) && !empty($_POST['email']));
{
    //getting student details from post into variables
// STUDENT 
    $name   =isset($_POST['name'])?$_POST['name']:'';
    $dob    =isset($_POST['DOB'])?$_POST['DOB']:'';
    $mobile =isset($_POST['mobile'])?$_POST['mobile']:'';
    $email  =isset($_POST['email'])?$_POST['email']:'';
    $address =isset($_POST['address'])?$_POST['address']:'';
    $country =isset($_POST['country'])?$_POST['country']:'';
    $state   =isset($_POST['state'])?$_POST['state']:'';
    $zip     =isset($_POST['zip'])?$_POST['zip']:'';
    $password =date('d-m-y' ,strtotime($dob));
    $md_password =md5($password);
//  PARENT 
    $father_name =isset($_POST['father_name'])?$_POST['father_name']:'';
    $mother_name =isset($_POST['mother_name'])?$_POST['mother_name']:'';
    $mother_mobile =isset($_POST['mother_mobile'])?$_POST['mother_mobile']:'';
    $parent_address =isset($_POST['parent_address'])?$_POST['parent_address']:'';
    $parent_country =isset($_POST['parent_country'])?$_POST['parent_country']:'';
    $parent_state =isset($_POST['parent_state'])?$_POST['parent_state']:'';
    $parent_zip =isset($_POST['parent_zip'])?$_POST['parent_zip']:'';
// PREVIOUS 
    $previous_school_name =isset($_POST['previous_school_name'])?$_POST['previous_school_name']:'';
    $previous_class =isset($_POST['previous_class'])?$_POST['previous_class']:'';
    $previos_status =isset($_POST['previos_status'])?$_POST['previos_status']:'';
    $pevious_total_marks =isset($_POST['pevious_total_marks'])?$_POST['pevious_total_marks']:'';
    $previous_obtain_marks =isset($_POST['previous_obtain_marks'])?$_POST['previous_obtain_marks']:'';
    $previous_percentage=isset($_POST['previous_percentage'])?$_POST['previous_percentage']:'';
    
    $class =isset($_POST['class'])?$_POST['class']:'';
    $section =isset($_POST['section'])?$_POST['section']:'';
    $subject_streem =isset($_POST['subject_streem'])?$_POST['subject_streem']:'';
    $doa =isset($_POST['doa'])?$_POST['doa']:'';
    $type =isset($_POST['type'])?$_POST['type']:'';
    // $date_add =date(Y-m-d);
    $payment_method =isset($_POST['payment_method'])?$_POST['payment_method']:'';

//checking if email already exist or not 
$check_query =mysqli_query($db_conn ,"SELECT * FROM accounts WHERE email ='$email'
");
if(mysqli_num_rows($check_query)>0){
// $error = 'Email already exists';
echo 'Email already exists';die;
}

else{ 
    //inserting student details in data base 
    $query =mysqli_query($db_conn,"INSERT INTO accounts (`name`, `email`,
    `password` ,`type`) VALUES('$name' ,'$email','$md_password' ,'$type')")
    or die(mysqli_error($db_conn));
    if($query)
    {
  $user_id =mysqli_insert_id($db_conn);
    }}

    $usermetadata =array(
        'dob' => $dob,
        'mobile' =>$mobile,
        'payment_method' =>$payment_method,
    );
    foreach($usermetadata as $key => $value){
mysqli_query($db_conn,"INSERT INTO usermetadata(`user_id`,`meta_key`,`meta_value`) VALUES('$user_id','$key' ,'$value')")
or die(mysqli_error($db_conn));
    }

    $response =array(
        'success' =>true,
        'payment_method' => $payment_method,
        'std_id' =>$user_id,
        'class' =>$class,
    );
    echo json_encode($response);die;
}?>