</div>
  <!-- Main Footer -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2024-2025 <a href="https://adminlte.io">School Management System</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 1.0
    </div>
  </footer>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->


<!-- Bootstrap -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>

<!-- PAGE PLUGINS --> 
<!-- jQuery Mapael -->
<!-- <script src="../plugins/jquery-mousewheel/jquery.mousewheel.js"></script> -->
<!-- <script src="../plugins/raphael/raphael.min.js"></script> -->
<!-- <script src="../plugins/jquery-mapael/jquery.mapael.min.js"></script> -->
<!-- <script src="../plugins/jquery-mapael/maps/usa_states.min.js"></script> -->
<!-- ChartJS -->
<!-- <script src="../plugins/chart.js/Chart.min.js"></script> -->

 <!-- AdminLTE for demo purposes  -->
<!-- <script src="../dist/js/demo.js"></script> -->
 <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="../dist/js/pages/dashboard2.js"></script> -->

<script>
(function my() {
    var path = window.location.href;
    $(".nav-link").each(function () {
        var href = $(this).attr('href');
        // console.log(href);
        if (path === decodeURIComponent(href)) {
          console.log('href=path');
            $(this).addClass('active');
            var parent =$(this).closest('.menu');
            // console.log(parent);
            parent.addClass('menu-open');
            $(parent).find('.nav-link').first().addClass('active');

        };
    });
})();




</script>

</body>
</html>