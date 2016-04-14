<!DOCTYPE html>
<html>
	
<head>
	<title><?php echo $title; ?> | Garage Software</title>
		<meta charset="utf-8">
		<link href="<?php echo base_url();?>assets/css/login.css" rel='stylesheet' type='text/css' />
		<link href="<?php echo base_url();?>assets/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!--webfonts-->
		<link href='//fonts.googleapis.com/css?family=Open+Sans:600italic,400,300,600,700' rel='stylesheet' type='text/css'>
		<!--//webfonts-->
		<link rel="icon" href="<?php echo base_url(); ?>assets/img/favicon.ico" type="image/x-icon" />
</head>
<body>
	
	<div class="container">
		<!-- LOGIN FORM STARTS -->
		<div class="login-form" id="login_view">
			<h1>ACTIVATE ACCOUNT</h1>
			<div class="login-logo"><img src="<?php echo base_url();?>assets/img/logo.png"></div>

			<form onsubmit="return checkMatchPass();" action="<?php echo base_url('login/login/activate_account/'.$id);?>" method="POST" autocomplete="off">

				<div id="warning"></div>

				<?php echo $this->session->flashdata('notification');?>	
				
				<li>
					<input type="password" value="" name="password1" id="password1" autocomplete="off" placeholder="ENTER PASSWORD" required><span class="icon lock"></span>
				</li>
				<li>
					<input type="password" value="" name="password2" id="password2" placeholder="CONFIRM PASSWORD" required><span class="icon lock"></span>
				</li>
				
				 <div class="forgot">
					<input type="submit" class="dim" value="SUBMIT" > <span href="javascript:void(0);" class=" icon arrow"></span>
				</div>
			</form>
		</div>
		<!-- LOGIN FORM ENDS -->
	</div>
			
	<!--FOOTER START-->
	<div class="copy-right">
		<p> &copy; 2016 <a href="javascript:void(0);">Garage Software</a> | All rights reserved | Powered by <a href="javascript:void(0);">Insights Communications</a></p> 
	</div>
	<!--FOOTER ENDS-->
	
	<script type="text/javascript" src="<?php echo base_url();?>assets/js/plugins/jquery/jquery.min.js"></script>
	<script src="<?php echo base_url();?>assets/js/plugins/bootstrap/bootstrap.js"></script>   

	<script type="text/javascript">

        function checkMatchPass()
        {
            var pass1 = document.getElementById('password1').value;
            var pass2 = document.getElementById('password2').value;

            if( pass1 == pass2 )
            {
                return true;
            }      
            else
            { 
                document.getElementById('warning').innerHTML='<div class="alert alert-danger helper"><button class="close" data-dismiss="alert">×</button>Entered passwords do not match, please check and submit again.</div>';       
                hide_notification();
                return false;
            }
       
        }


    	function hide_notification()
        {
            $('.helper').delay(2500).fadeOut('slow');
            return true;
        }

        hide_notification();

    </script>

</body>
</html>