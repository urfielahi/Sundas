<nav class="navbar-default navbar-static-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="side-menu">
            <li class="nav-header">
                <div class="dropdown profile-element text-center"> <span>
                    <center><img width="75px" class="img-responsive" alt="image" src="<?php echo base_url('file-uploads/user-account-files/avatars/'.$this->session->userdata['avatar']); ?>" /></center>
                     </span>
                    <a href="#">
                    <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?php echo $this->session->userdata['name']; ?></strong>
                     </span> <span class="text-muted text-xs block"><?php echo $this->session->userdata['designation']; ?> </span> </span> </a>
                </div>
                <div class="logo-element">
                    Sundas
                </div>
            </li>
            
            <li class="<?php if($this->uri->segment(1) == 'dashboard') echo 'active'; ?>">
                <a href=""><i class="fa fa-th-large"></i> <span class="nav-label">Dashboards</span></a>
            </li>

                <li class="<?php if($this->uri->segment(2) == 'leads') echo 'active'; ?>">
                    <a href="#"><i class="fa fa-briefcase"></i> <span class="nav-label">Leads</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">

                        <li class="<?php if($this->uri->segment(2) == 'leads' && $this->uri->segment(3) == '') echo 'active'; ?>"><a href="">View Leads<span class="label label-warning pull-right"></span></a></li>

                        <li class="<?php if($this->uri->segment(2) == 'leads' && $this->uri->segment(3) == 'add') echo 'active'; ?>"><a href="">Add Lead</a></li>

                    </ul>
                </li>

                <li class="<?php if($this->uri->segment(2) == 'contacts') echo 'active'; ?>">
                    <a href="#"><i class="fa fa-wechat"></i> <span class="nav-label">Contacts</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">

                        <li class="<?php if($this->uri->segment(2) == 'contacts' && $this->uri->segment(3) == '') echo 'active'; ?>"><a href="">View Contacts<span class="label label-warning pull-right"></span></a></li>

                        <li class="<?php if($this->uri->segment(2) == 'contacts' && $this->uri->segment(3) == 'add') echo 'active'; ?>"><a href="">Add Contact</a></li>

                    </ul>
                </li>

            <li class="<?php if($this->uri->segment(1) == 'notes') echo 'active'; ?>">
                <a href=""><i class="fa fa-pencil"></i> <span class="nav-label">Notes</span></a>
            </li>

            <li class="<?php if($this->uri->segment(1) == 'mailbox') echo 'active'; ?>">
                <a href=""><i class="fa fa-envelope"></i> <span class="nav-label">Mailbox</span></a>
            </li>

            <?php if(is_module_accessible('sms')): ?>
                <li class="<?php if($this->uri->segment(2) == 'sms') echo 'active'; ?>">
                    <a href=""><i class="fa fa-fax"></i><span class="nav-label"> SMS</span></a>
                </li>
            <?php endif; ?>

            <?php if(is_module_accessible('employees')): ?>
                <li class="<?php if($this->uri->segment(1) == 'employees') echo 'active'; ?>">
                    <a href=""><i class="fa fa-users"></i> <span class="nav-label">HR Management</span></a>
                </li> 
            <?php endif; ?>

            <?php if($this->session->userdata['designation'] !== 'Admin'): ?>
                <li class="<?php if($this->uri->segment(2) == 'personal') echo 'active'; ?>">
                    <a href="#"><i class="fa fa-user-secret"></i> <span class="nav-label">Personal</span><span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">

                        <li class="<?php if($this->uri->segment(3) == 'leaves' || $this->uri->segment(3) == 'request_leave') echo 'active'; ?>"><a href="">Requested Leaves<span class="label label-warning pull-right"><?php //echo count($this->Contact_Model->get_contacts()); ?></span></a></li>

                        <li class="<?php if($this->uri->segment(3) == 'trainings' || $this->uri->segment(3) == 'request_training') echo 'active'; ?>"><a href="">Requested Trainings<span class="label label-warning pull-right"><?php //echo count($this->Contact_Model->get_contacts()); ?></span></a></li>

                    </ul>
                </li>

            <?php endif; ?>

            <li class="<?php if($this->uri->segment(1) == 'settings') echo 'active'; ?>">
                <a href="#"><i class="fa fa-wrench"></i> <span class="nav-label">Settings</span><span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">

                    <?php if(is_function_accessible('settings', 'user', 'company_profile')): ?>
                        <li class="<?php if($this->uri->segment(3) == 'company_profile') echo 'active'; ?>"><a href="">Company Profile</a></li>
                    <?php endif; ?>

                    <li class="<?php if($this->uri->segment(3) == 'personal_profile') echo 'active'; ?>"><a href="">Personal Profile</a></li>

                    <li class="<?php if($this->uri->segment(3) == 'change_password') echo 'active'; ?>"><a href="">Change Password</a></li>

                </ul>
            </li>

        </ul>

    </div>
</nav>

