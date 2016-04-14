<?php include_once( APPPATH.'views/includes/header.php' ); ?>

<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-9">
        <h2><i class="<?php echo $icon; ?>"></i> <?php echo $title; ?></h2>
        <ol class="breadcrumb">
            <li>
                <a href="<?php echo base_url('dashboard'); ?>">Home</a>
            </li>
            <li class="active">
                <strong><a href="">HR Management</a></strong>
            </li>
        </ol>
    </div>
</div>
    
<div class="wrapper wrapper-content">
    <div class="row">

        <div class="col-md-12 animated fadeInRight">

            	<div class="col-md-3">
                    <div class="widget navy-bg p-lg text-center pointer" onclick="">
                        <div class="m-b-md">
                            <i class="fa fa-user-secret fa-4x"></i>
                            <h3 class="font-bold no-margins">
                                Manage Products
                            </h3>
                            <small>User Management</small>
                        </div>
                    </div>
                </div>

        </div>
    </div>
</div>    

<?php include_once( APPPATH.'views/includes/footer.php' ); ?>

