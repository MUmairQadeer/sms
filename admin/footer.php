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




<!-- Bootstrap -->
<script src="../plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- overlayScrollbars -->
<script src="../plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="../dist/js/adminlte.js"></script>



<script>
(function my() {
    var path = window.location.href;
    $(".nav-link").each(function () {
        var href = $(this).attr('href');
        // console.log(href);
        if (path === decodeURIComponent(href)) {
          // console.log('href=path');
            $(this).addClass('bg-secondary');
            var parent =$(this).closest('.menu');
            // console.log(parent);
            parent.addClass('menu-open');
            $(parent).find('.nav-link').first().addClass('bg-secondary');

        };
    });
})();




</script>

<script>
  jQuery(document).ready(function(){
    jQuery('#class').change(function(){
      // alert(jQuery(this).val());
      jQuery.ajax({
        url:'ajax.php',
        dataType:'json',
        type:'POST',
        data: {'class_id':jQuery(this).val() },
        success:function(response){
          // console.log(response);
          if(response.count> 0){
            jQuery('#section-container').show();
 
          }
          else{
            jQuery('#section-container').hide();

          }
             jQuery('#section').html(response.options);
            }
      })
    })
  })

</script>
</body>
</html>