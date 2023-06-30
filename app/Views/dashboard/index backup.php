<?php
include('header.php');
?>

<div class="container">
    <div class="sidebar" id="sidebar">
        <?php include('sidebar.php'); ?>
    </div>
    <div class="content" id="content">
        <!-- <?php include('body.php') ?> -->
        <div id="konten"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
<script>
    function loadView(halaman) {
        $.ajax({
            url: 'http://localhost:8080/' + halaman,
            type: 'GET',
            datatype: 'html',
            success: function(response) {
                $('#konten').html(response);
                console.log(response);
            },
            error: function(xhr, status, error) {
                console.log(xhr.responseText);
            }
        });
    }
</script>
<?php include('footer.php'); ?>