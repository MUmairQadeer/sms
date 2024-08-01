<?php include('header.php');?>
<section class="bg-light vh-100 d-flex">
    <div class="col-5 m-auto">
        <div class="card p-5">
            <div class="car-body">
                <div class="text-center my-3">
                 <span class="fa-stack " style="cursor: pointer;">
                 <i class="fa-solid fa-user fa-2x"></i>
                  </span>              
                </div>
                <form action="actions/login.php" method="post">
                    <div class="mb-3">
                        <label for="input" class="form-label">Email address Or Phone</label>
                        <input type="text" class="form-control" name="email" id="input" aria-describedby="emailHelp">
                        <label for="password" class="form-label">Password</label>
                        <div class="mb-3 mycontainer">
                            
                            <input type="password" name ="password" class="form-control" id="password">
                            <i class="fa-regular fa-eye-slash" id ="eye"></i>
                        </div>
            <div class="text-center">
                                        <button type="submit" name="login" class="btn btn-primary ">Login</button>

            </div>
                </form>
            </div>
        </div>
    </div>
</section>
<?php include('footer.php');?>
<style>
    .mycontainer{
        display:flex;
        border :1px solid rgb(129, 118, 118);
        border-radius: 5px;
       
    }
    .mycontainer:hover{
       
        box-shadow: 0px 5px 15px  rgb(147, 147, 206);
    }
    #input:hover{
       box-shadow: :none;
        box-shadow: 0px 5px 15px  rgb(147, 147, 206);
    }

    #eye {
        position: relative;
        top:10px;
       right:5px;
       cursor: pointer;
    }
    #password{
        border :none;
        box-shadow: none;
    }
</style>
  

<script>
 var eye =document.getElementById("eye");
 var password =document.getElementById("password");

 eye.addEventListener("click", function(){
    
    if(password.type === "password"){
        eye.classList.remove("fa-eye-slash");
        eye.classList.add("fa-eye");
        password.type ="text";
    }
    else{
        eye.classList.remove("fa-eye");
        eye.classList.add("fa-eye-slash");
        password.type ="password";
    }
 });
</script>