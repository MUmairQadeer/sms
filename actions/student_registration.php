<?php
include('../includes/config.php');
if(isset($_POST['type']) && $_POST['type'] == 'student'
 && isset($_POST['email']) && !empty($_POST['email']))
{
    //getting student details from post into variables
// STUDENT 
    $name   =isset($_POST['name'])?$_POST['name']:'';
    $dob    =isset($_POST['DOB'])?$_POST['DOB']:'';
    $mobile =isset($_POST['mobile'])?$_POST['mobile']:'';
    $email  =isset($_POST['email'])?$_POST['email']:'';
    $address =isset($_POST['address'])?$_POST['address']:'';
   
    $password =date('d-m-y' ,strtotime($dob));
    $md_password =md5($password);
//  PARENT 
    $father_name =isset($_POST['father_name'])?$_POST['father_name']:'';
    $mother_name =isset($_POST['mother_name'])?$_POST['mother_name']:'';
    $father_mobile =isset($_POST['father_mobile'])?$_POST['father_mobile']:'';
    $mother_mobile =isset($_POST['mother_mobile'])?$_POST['mother_mobile']:'';
    $parent_address =isset($_POST['parent_address'])?$_POST['parent_address']:'';
   
// PREVIOUS 
    $previous_school_name =isset($_POST['previous_school_name'])?$_POST['previous_school_name']:'';
    $previous_class =isset($_POST['previous_class'])?$_POST['previous_class']:'';
   
    $previous_percentage=isset($_POST['previous_percentage'])?$_POST['previous_percentage']:'';
    
    $class =isset($_POST['class'])?$_POST['class']:'';
    $section =isset($_POST['section'])?$_POST['section']:'';
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
        'class' => $class,
        'adddress' => $address,
       
        'father_name' =>$father_name,
        'father_mobile'=> $father_mobile ,
        'mother_name' => $mother_name,
        'mother_mobile' => $mother_mobile,
        'parents_address'=> $parent_address,
       
        'previous_class'=>$previous_class,
        'previous_percentage' => $previous_percentage,
        'section' =>$section,
     
        'doa' =>$doa ,
    );
    foreach($usermetadata as $key => $value){
mysqli_query($db_conn,"INSERT INTO usermetadata(`user_id`,`meta_key`,`meta_value`) VALUES('$user_id','$key' ,'$value')")
or die(mysqli_error($db_conn));
    }

    $months =array('january','febuary','march','april','may','june','july','august','september','october','november' ,'december');
                      $att_data =[];
    for ($i=1; $i<=31 ; $i++) { 
                        $att_data[$i] =[
                            'signin_at' =>'',
                            'signout_at' => '',
                        ];
                      }
    $att_data =serialize($att_data);
    foreach ($months as $key => $value){
        mysqli_query($db_conn,"INSERT INTO attendance(`attendance_month`,`attendance_value`,`std_id`) VALUES('$value','$att_data' ,'$user_id')");
    }
   
    //parent registration 
    //checking if email already exist or not 
$check_query =mysqli_query($db_conn ,"SELECT * FROM accounts WHERE email ='$father_mobile'
");
if(mysqli_num_rows($check_query)>0){
    $parent =mysqli_fetch_object(mysqli_query($db_conn,"SELECT * FROM `accounts` as a JOIN
     `usermetadata` as m ON a.id =m.user_id WHERE a.type= 'parent' AND a.email = '$father_mobile' AND m.meta_key = 'children';"));

// $error = 'Email already exists';
// echo 'Email already exists';die;
$children =unserialize($parent->meta_value);
$children[] =$user_id;
$children =serialize($children);
$query =mysqli_query($db_conn , "UPDATE `usermetadata` set `  bvmeta_value` = '$children' WHERE meta_key = 'children'") or die(mysqli_error($db_conn));
}

else{ 
    //inserting student details in data base 
    $md_password =md5($father_mobile);
    $query =mysqli_query($db_conn,"INSERT INTO accounts (`name`, `email`,
    `password` ,`type`) VALUES('$father_name' ,'$father_mobile','$md_password' ,'parent')")
    or die(mysqli_error($db_conn));
    if($query)
    {
  $parent_id =mysqli_insert_id($db_conn);
    }}
    $chld = [$user_id];
    $child = serialize[$chld];
    mysqli_query($db_conn,"INSERT INTO usermetadata(`user_id`,`meta_key`,`meta_value`) VALUES('$parent_id','children' ,'$value')")
or die(mysqli_error($db_conn));
    $response = array(
        'success' => true,
        'payment_method' => $payment_method,
        'std_id'=>$user_id,                                                                     'class' =>$class,
    );
    echo json_encode($response);die;
}?>