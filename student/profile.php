<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); 
 ?>
<!-- Content Header (Page header) -->
<?php 
$message ='';
$alertType ='';
if(isset($_POST['change-password'])){
    $password =$_POST['password'];
    $cpassword =$_POST['cpassword'];
    $pass_md5 = md5($password);
    if($password == $cpassword){
        mysqli_query($db_conn ,"UPDATE `accounts`  SET `password` ='$pass_md5' WHERE `id` ='$std_id' ");
        $message ="Password has been changed.";
        $alertType="success";   
        
    }
    else{
        $message ="Password do not match.";
        $alertType="warning";     
    } 
    echo $message;
echo $alertType;
    if(!empty($message) && !empty($alertType)){ 
    echo '<div class="alert alert-'.$alertType.' alert-dismissible fade show" role="alert">
 <strong>'.$alertType.'!</strong> '.$message.'
 <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>';}


}
$message ='';
$alertType =''; 
?>


<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0">Profile

                </h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#"> Student </a></li>
                    <li class="breadcrumb-item active">Profile </li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<div class="content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">

                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <img class="profile-user-img img-fluid img-circle" src="../dist/img/AdminLTELogo.png"
                                alt="User profile picture">
                        </div>
                        <h3 class="profile-username text-center"><?php echo $student->name?></h3>
                        <p class="text-muted text-center">Software Engineer</p>
                        <ul class="list-group list-group-unbordered mb-3 ">
                            <?php
                            $classid =(get_usermeta($std_id,'class'));  
                            $classname =(get_post(['id'=>$classid]))->title;
                                                    
                             $query1  =mysqli_query($db_conn ,"SELECT * FROM usermetadata WHERE `user_id` ='$std_id' AND `meta_key` ='section'");
                             $row = mysqli_fetch_assoc($query1);
                             $id =$row['meta_value'];
                            $query2 =mysqli_query($db_conn,"SELECT * FROM posts WHERE
                            `id` = '$id'");
                             $section = mysqli_fetch_assoc($query2);
                          
                          
                            ?>
                            <li class="list-group-item text-light  ">
                                <b>Class</b> <b class="float-right "><?php echo $classname;?></b>
                            </li>
                            <li class="list-group-item text-light">
                                <b>Section </b><b class="float-right "> <?=$section['title']?></b>
                            </li>
                            <li class="list-group-item text-light">
                                <b>Email </b><b class="float-right "> <?=($student->email);?></b>
                            </li>
                            <li class="list-group-item text-light">
                                <div class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                    Change Password</div>
                            </li>

                        </ul>
                    </div>

                </div>



                <!-- Modal -->
                <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-dialog modal-dialog-centered">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <form action="" method="post">
                                <div class="modal-body">
                                    <label for="password">Password</label>
                                    <div class="form-group mycontainer">

                                        <input type="password" required name="password" id="password"
                                            class="password form-control" placeholder=" Password">
                                        <i class="eye fa-regular fa-eye-slash" id="eye" class="eye"></i>
                                    </div>
                                    <label for="password">Confirm Password</label>
                                    <div class="form-group mycontainer">

                                        <input type="password" required name="cpassword" id="cpassword"
                                            class="password form-control" placeholder="Confirm Password">
                                        <i class="eye fa-regular fa-eye-slash" id="eye2" class="eye"></i>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-primary" name="change-password">Save</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- parent info -->
            </div>
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Parent's Info</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
.mycontainer {
    display: flex;
    border: 1px solid rgb(129, 118, 118);
    border-radius: 5px;

}

.mycontainer:hover {

    box-shadow: 0px 5px 15px rgb(147, 147, 206);
}

#input:hover {
    box-shadow: :none;
    box-shadow: 0px 5px 15px rgb(147, 147, 206);
}

.eye {
    position: relative;
    top: 10px;
    right: 5px;
    cursor: pointer;
}

.password {
    border: none;
    box-shadow: none;
}
</style>
<script>
var eye = document.getElementById("eye");
var password = document.getElementById("password");


eye.addEventListener("click", function() {

    if (password.type === "password") {
        eye.classList.remove("fa-eye-slash");
        eye.classList.add("fa-eye");
        password.type = "text";

    } else {
        eye.classList.remove("fa-eye");
        eye.classList.add("fa-eye-slash");
        password.type = "password";

    }
});

var eye2 = document.getElementById("eye2");
var cpassword = document.getElementById("cpassword");


eye2.addEventListener("click", function() {

    if (cpassword.type === "password") {
        eye2.classList.remove("fa-eye-slash");
        eye2.classList.add("fa-eye");
        cpassword.type = "text";

    } else {
        eye2.classList.remove("fa-eye");
        eye2.classList.add("fa-eye-slash");
        cpassword.type = "password";

    }
});
</script>