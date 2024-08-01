<?php
include('header.php');
include('includes/config.php');
// include('actions/login.php');
?>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <!-- Container wrapper -->
    <div class="container-fluid">
        <!-- Toggle button -->
        <button data-mdb-collapse-init class="navbar-toggler" type="button" data-mdb-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Navbar brand -->


            </ul> <a class="navbar-brand mt-2 mt-lg-0" href="#">
                <li style="list-style-type:none;">Sms</li>
            </a>
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">Dashboard</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Team</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Projects</a>
                </li>
            </ul>
            <!-- Left links -->
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->

        <div class="d-flex align-items-center">
            <!-- Avatar -->
            <div class="dropdown">
                <?php if(isset($_SESSION['login'])){ 
           $user_type = $_SESSION['user_type'];
           ?>

                <ul class="d-flex my-0">
                    <a class="btn btn-success text-muted mx-2" href="<?=$user_type?>/dashboard.php"
                        role="button" aria-expanded="false">

                        <i class="fa-solid fa-user"> </i>&nbsp; Account</a>
                    <a class="btn btn-secondary text-muted" href="logout.php"><i class="fa-solid fa-arrow-left"></i> &nbsp;Logout</a>
                </ul>

                <?php  } else {?>

                <a href="loginform.php" class="nav-link text-muted">
                    <i class="fa-solid fa-user"></i>&nbsp; Login
                </a>
            </div>
            <?php }?>
            <!-- Right elements -->
        </div>
        <!-- Container wrapper -->
</nav>
<!-- Navbar -->

<!-- First Section -->

<div class="d-flex shadow" style="height:500px; background:linear-gradient(-45deg, navy 50%, transparent 50%);">
    <div class="container-fluid my-auto">
        <div class="row">
            <div class="col-lg-6 my-auto">
                <h1 class="display-3"> <b>
                        School Management System </b></h1>

                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nesciunt inventore, quibusdam, nisi dolorum
                    sapiente, ea deleniti aperiam magnam quod itaque dolorem sed quos?</p>
                <a href="" type="buton" class="btn btn-lg btn-primary">Call to Action</a>
            </div>

            <div class="col-lg-6">
                <form action="" method="post">

                    <div class="col-lg-8 mx-auto card shadow">
                        <h1 class="my-2 mx-2 text-center">Query Form </h1>
                        <div class="card-body">
                            <div class="form-outline my-3" data-mdb-input-init>
                                <input type="text" id="form12" class="form-control" />
                                <label class="form-label" for="form12">Your Name</label>
                            </div>

                            <div class="form-outline my-3" data-mdb-input-init>
                                <input type="email" id="email" class="form-control" />
                                <label class="form-label" for="email">Your Email</label>
                            </div>

                            <div class="form-outline my-3" data-mdb-input-init>
                                <input type="text" id="mobile" class="form-control" />
                                <label class="form-label" for="mobile">Your Query</label>
                            </div>
                            <div class="form-outline my-3" data-mdb-input-init>
                                <input type="text"  id="class" class="form-control" />
                                <label class="form-label" for="class">Query Description</label>
                            </div>
                            <buton class=" btn btn-primary btn-block my-2">Submit Form</buton>
                        </div>
                    </div>

                </form>
            </div>
        </div>
    </div>
</div>
<!-- First Section -->


<!-- About Section -->
<div class="container">

    <section class="py-5">
        <div class="row">
            <div class="col-lg-6 py-5">
                <h2 style="font-weight: bold;"> About <br> School Management System</h2>
                <div class="pr-5">
                    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Doloribus blanditiis corporis, nemo
                        laboriosam
                        possimus officiis, repellat adipisci excepturi quas temporibus minima eius nesciunt iure in.
                        Praesentium
                        odit quia doloribus explicabo soluta voluptate veritatis suscipit est repellat nulla ratione, ex
                        possimus
                        impedit consequatur maxime!</p>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cumque enim provident, eius animi, quos
                        eaque,
                        nesciunt quam et eligendi impedit repudiandae hic quasi accusamus adipisci! Nisi perferendis
                        voluptatibus
                        ullam mollitia.</p>
                </div>
                <a href="about-us.php" class="btn btn-secondary ">Know More</a>
            </div>

            <div class="col-lg-6" style="background: url(./img/2.jpg);">

            </div>
        </div>
    </section>

</div>

<!-- About Section -->

<!-- Cources Section -->


<section class="py-5">
    <div>
        <h1 class="text-center"><b> Our Cources</b> </h1>
        <p class="mb-5 text-center text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum fugiat
            quasi
            reprehenderit, nam quae qui eaque error recusandae ullam, suscipit molestias, tempora eos?</p>
    </div>
    <div class="container">
        <div class="row">
            <?php 
        $query =mysqli_query($db_conn,"SELECT * FROM cources ORDER BY id DESC LIMIT 0 ,8");
        while ($cources = mysqli_fetch_object($query)) {
           ?>
            <div class="col-lg-3 mb-4">
                <div class="card">
                    <div>
                        <img src="dist/uploads/<?=$cources->image?>" height="" width="" alt=""
                            class="img-fluid rounded-top "
                            style="height:170px; object-fit:cover; object-position:center">
                    </div>
                    <div class="cardbody">
                        <b><?=$cources->name?></b>
                        <p class="card-text">
                            <b>Duration : </b><?=$cources->duration?> <br>
                            <b>Price: </b> 4000/- Rs
                        </p>
                        <button class="btn btn-primary btn-block btn-sm">Enroll Now</button>
                    </div>
                </div>
            </div>
            <?php }
        ?>

        </div>
</section>

<!-- Cources Section -->

<!--Teachers Section -->
<section class="py-5 bg-secondary">
    <div>
        <h1 class="text-center"><b> Our Teachers</b> </h1>
        <p class="mb-5 text-center text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum fugiat
            quasi
            reprehenderit, nam quae qui eaque error recusandae ullam, suscipit molestias, tempora eos?</p>
    </div>
    <div class="container">
        <div class="row">
            <?php
        for ($i=0; $i < 8; $i++) { ?>
            <div class="col-lg-3 mb-5 mt-5">
                <div class="card">
                    <div class="col-lg-7" style="position:absolute; top: -50px;">
                        <img src="img/2.jpg" alt="" class="mw-100 border rounded-circle">
                    </div>
                    <div class="card-body pt-5 mt-5">
                        <h4 class="card-title mt-0">Teacher's Name</h4><i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <i class="fa fa-star text-warning"></i>
                        <p class="card-text"> <b>Cources :</b>5 </p>
                        <b>Ratings:</b>
                    </div>
                </div>
            </div>


            <?php }?>
        </div>
    </div>
    </div>
    </div>

</section>
<!-- TeachersSection -->

<!-- Acheivements Section -->

<section class="py-5" style="background-color:rgb(0, 0, 128) ; color: white;">
    <div>

        <div class="container">
            <div class="row">
                <!-- left column -->
                <div class="col-lg-6 ">
                    <h2 style="font-weight: bold;">Acheivements</h2>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio nesciunt, iure assumenda cum
                        quisquam, laboriosam consequatur sed necessitatibus modi nisi nemo laborum tempora deleniti.
                        Dicta porro
                        laboriosam culpa ullam sapiente.</p>
                    <img src="./img/2.jpg" alt="" class="img-fluid rounded">
                </div>
                <!-- right column -->
                <div class="col-lg-6 my-auto">
                    <div class="row">
                        <div class="col-lg-6 py-3">
                            <div class=" border rounded py-3">
                                <div class="card-body text-center">
                                    <span>
                                        <i class="fas fa-graduation-cap fa-2x text-warning"></i> </span>
                                    <h2 class="my-2 " style="font-weight: bold;"> 334 </h2>
                                    <hr class="border-warning">
                                    <h3> Graduates</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 py-3">
                            <div class=" border rounded py-3">
                                <div class="card-body text-center">
                                    <span>
                                        <i class="fas fa-graduation-cap fa-2x text-warning"></i> </span>
                                    <h2 class="my-2 " style="font-weight: bold;"> 334 </h2>
                                    <hr class="border-warning">
                                    <h3> Graduates</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-6 py-3">
                            <div class=" border rounded py-3">
                                <div class="card-body text-center">
                                    <span>
                                        <i class="fas fa-graduation-cap fa-2x text-warning"></i> </span>
                                    <h2 class="my-2 " style="font-weight: bold;"> 334 </h2>
                                    <hr class="border-warning">
                                    <h3> Graduates</h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 py-3">
                            <div class=" border rounded py-3">
                                <div class="card-body text-center">
                                    <span>
                                        <i class="fas fa-graduation-cap fa-2x text-warning"></i> </span>
                                    <h2 class="my-2 " style="font-weight: bold;"> 334 </h2>
                                    <hr class="border-warning">
                                    <h3> Graduates</h3>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</section>
<!-- Acheivements Section -->

<!-- Testimonials -->
<section class="py-5">

    <div>
        <h1 class="text-center"><b> What People Says</b> </h1>
        <p class="mb-5 text-center text-muted">Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum fugiat
            quasi
            reprehenderit, nam quae qui eaque error recusandae ullam, suscipit molestias, tempora eos?</p>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-lg-6 position-relative">
                <div class="border rounded "><i class="fa fa-quote-left fa-2x"
                        style="opacity: 0.4; position: absolute; left: 1rem; top: 1rem;"></i>
                    <div class="p-4 text-center mt-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat
                        dignissimos inventore doloribus. Ea eligendi iure sit eaque eum numquam sunt est dolor aperiam
                        ab
                        excepturi quidem, cupiditate, tempora laborum asperiores.</div>
                </div>

                <div class="text-center">
                    <img src="./img/2.jpg" alt="" class=" border img-fuild rounded pt-4" width="100" height="100">
                    <h6 class="mb-0 pt-3 " style="font-weight: bold;">Name of Candidates</h6>
                    <p><i>Designation</i></p>
                </div>
            </div>

            <div class="col-lg-6 position-relative">
                <div class="border rounded "><i class="fa fa-quote-left fa-2x"
                        style="opacity: 0.4; position: absolute; left: 1rem; top: 1rem;"></i>
                    <div class="p-4 text-center mt-3">Lorem ipsum dolor sit amet consectetur adipisicing elit. Repellat
                        dignissimos inventore doloribus. Ea eligendi iure sit eaque eum numquam sunt est dolor aperiam
                        ab
                        excepturi quidem, cupiditate, tempora laborum asperiores.</div>
                </div>

                <div class="text-center">
                    <img src="./img/2.jpg" alt="" class=" border img-fuild rounded pt-4" width="100" height="100">
                    <h6 class="mb-0 pt-3" style="font-weight: bold;">Name of Candidates</h6>
                    <p><i>Designation</i></p>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- Testimonials -->

<footer style="background:url(./img/2.jpg) center/cover no-repeat;">
    <div class="py-5 text-white" style="background-color:#000000bb">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4">
                    <h5>Useful Links</h5>
                    <ul class="fa-ul ml-4">
                        <li> <a href="" class="text-light"> <i class="fa-li fa fa-angle-right"></i>Home</a> </li>
                        <li> <a href="" class="text-light"> <i class="fa-li fa fa-angle-right"></i>About </a> </li>
                        <li> <a href="" class="text-light"> <i class="fa-li fa fa-angle-right"></i>Contact </a> </li>
                        <li> <a href="" class="text-light"> <i class="fa-li fa fa-angle-right"></i>Admissions </a> </li>
                    </ul>
                </div>
                <div class="col-lg-4">
                    <h5>Social Presence </h5>
                    <div>
                        <span class="fa-stack" style="cursor: pointer;">
                            <!-- <i class="fa fa-circle fa-stack-2x "></i> -->
                            <i class="fa-brands fa-facebook fa-2x"></i>
                        </span>
                        <span class="fa-stack" style="cursor: pointer;">
                            <!-- <i class="fa fa-circle fa-stack-2x"></i> -->
                            <i class="fa-brands fa-instagram fa-2x "></i>
                        </span>
                        </span>
                        <span class="fa-stack" style="cursor: pointer;">
                            <!-- <i class="fa fa-circle fa-stack-2x"></i> -->
                            <i class="fa-brands fa-twitter fa-2x"></i>
                        </span>
                        </span>
                        <span class="fa-stack" style="cursor: pointer;">
                            <!-- <i class="fa fa-circle fa-stack-2x" ></i> -->
                            <i class="fa-brands fa-whatsapp fa-2x "></i>
                        </span>
                    </div>
                </div>
                <div class="col-lg-3">
                    <form action="">
                        <h5 class="text-center">Subscribe Now</h5>

                        <label for="email"></label>

                        <input type="email" id="email" class="form-control" placeholder="Your Email">


                        <button class="btn btn-primary btn-sm btn-block mt-3">Submit</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

</footer>

<?php
include('footer.php');
?>