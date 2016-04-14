<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login | SUNDAS</title>

    <link href="<?php echo base_url(); ?>assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<?php echo base_url(); ?>assets/css/animate.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
    <script src="<?php echo base_url(); ?>assets/js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>

</head>

<body class="gray-bg">

    <div class="middle-box text-center loginscreen  animated fadeInDown">
        <div>
            <div>

                <h1 class="logo-name text-center">SUN</h1>

            </div>
            <h3>Welcome to Sundas Enterprise</h3>
            <p>Sundas is a collection of tools for planning, monitoring and controlling management activities and measuring business performance.
                <!--Continually expanded and constantly improved Inspinia Admin Them (IN+)-->
            </p>
            <form class="m-t" role="form" action="<?php echo base_url('login/login/validate_user'); ?>" method="post">
                <div class="login-form" id="login_view">
                    <p>LOGIN IN.</p>
                    
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="USERNAME">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="PASSWORD">
                    </div>
                    <button type="submit" class="btn btn-primary block full-width m-b">Login</button>

                    <a href="javascript: void(0);" onclick="manage_login('login_view', 'fp_view');"><small>Forgot password?</small></a>
                </div>
            </form>
            <form class="m-t" role="form" action="#" method="post">
                <div class="login-form" id="fp_view" style="display: none;">
                    <p>Forgot Password</p>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="EMAIL-ID">
                    </div>
                    <button type="submit" class="btn btn-primary block full-width m-b">Restore</button>
                    <div class="forgot">                       
                        <a href="javascript: void(0);" onclick="manage_login('fp_view', 'login_view');"><small>I remember my password!</small></a>
                    </div>
                </div>
            </form>
            <p class="m-t"> <small>Sundas Enterprise &copy; 2016</small> </p>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script type="text/javascript">
        function manage_login(login_type1, login_type2)
        {
            $('#'+login_type1).hide();
            $('#'+login_type2).show();
            return true;
        }
    </script>

</body>

</html>
