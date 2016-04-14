                    </div>
                </div>
                <div class="footer">
                    <div class="pull-right">
                        10GB of <strong>250GB</strong> Free
                    </div>
                    <div>
                        SUNDAS &copy; 2016 | Sundas Enterprise | All rights reserved
                    </div>
                </div>
            </div>
        </div>

        </div>
    </div>

    <!-- Mainly scripts -->
    
    <script src="<?php echo base_url(); ?>assets/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="<?php echo base_url(); ?>assets/js/inspinia.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/plugins/pace/pace.min.js"></script>   

    <!-- iCheck -->
    <script src="<?php echo base_url(); ?>assets/js/plugins/iCheck/icheck.min.js"></script>

    <!-- Chosen -->
    <script src="<?php echo base_url(); ?>assets/js/plugins/chosen/chosen.jquery.js"></script>

    <!-- Data Tables -->
    <script src="<?php echo base_url(); ?>assets/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/plugins/dataTables/dataTables.tableTools.min.js"></script>

    <!-- Date Range -->
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/moment.min.js"></script>
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/plugins/daterangepicker/daterangepicker.js"></script>
    <link href="<?php echo base_url();?>assets/js/plugins/records-range/records-range.css" rel="stylesheet">
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/js/plugins/records-range/records-range.js"></script>

    <script type="text/javascript">

        $(document).ready(function(){
            $('.i-checks').iCheck({
                checkboxClass: 'icheckbox_square-green',
                radioClass: 'iradio_square-green',
            });           
        });
        

        $('.datepicker').datepicker({ });

        $('.input-daterange').datepicker({
            keyboardNavigation: false,
            forceParse: false,
            autoclose: true
        });

        var date = new Date();
        date.setDate(date.getDate());

        $('.date-picker-disable-future-dates').datepicker({ 
            endDate: date
        });

        $('.date-picker-disable-past-dates').datepicker({ 
            startDate: date
        });


        $('.only-numbers').keypress(function(e) {
            var a = [];
            var k = e.which;

            for (i = 48; i < 58; i++)
                a.push(i);

            if (!(a.indexOf(k)>=0))
            {
                if(k != 45){
                    e.preventDefault();
                }
            }
        });


        $(function() 
        {
            $('.only-alphabets').bind('keyup input',function()
            {       
                if (this.value.match(/[^a-zA-Z áéíóúÁÉÍÓÚüÜ]/g)) 
                {
                    this.value = this.value.replace(/[^a-zA-Z áéíóúÁÉÍÓÚüÜ]/g, '');
                }
            });
        });

        
        $(document).ready(function() {
            $('.dataTables-example').dataTable({
                responsive: true,
                "dom": 'T<"clear">lfrtip',
                "tableTools": {
                    "sSwfPath": "<?php echo base_url(); ?>assets/js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
                }
            });
        });

        var config = {
                    '.chosen-select'           : {},
                    '.chosen-select-deselect'  : {allow_single_deselect:true},
                    '.chosen-select-no-single' : {disable_search_threshold:11},
                    '.chosen-select-no-results': {no_results_text:'Oops, nothing found!'},
                    '.chosen-select-width'     : {width:"95%"}
                }
        for (var selector in config) {
            $(selector).chosen(config[selector]);
        }

        $(document).ready(function() {
            $('.helper').delay(4000).fadeOut('slow');
            return true;
        });

    </script>


    <?php if($this->input->post('startdate') && $this->input->post('enddate')): ?>
        <script type="text/javascript">
            $(function(){        
                /* reportrange */
                if($("#reportrange").length > 0){   
                    $("#reportrange").daterangepicker({                    
                        ranges: {
                           'Till Today': [moment('01/01/2016'), moment()],
                           'Today': [moment(), moment()],
                           'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                           'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                           'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                           'This Month': [moment().startOf('month'), moment().endOf('month')],
                           'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                        },
                        opens: 'left',
                        buttonClasses: ['btn btn-default'],
                        applyClass: 'btn-small btn-primary',
                        cancelClass: 'btn-small',
                        format: 'MMM.DD.YYYY',
                        separator: ' to ',
                        startDate: "<?php echo date('M d, Y', strtotime($this->input->post('startdate'))); ?>",
                        endDate: "<?php echo date('M d, Y', strtotime($this->input->post('enddate'))); ?>"            
                      },function(start, end) {
                          $('#reportrange span').html(start.format('MMM D, YYYY') + ' - ' + end.format('MMM D, YYYY'));
                    });
                    
                    $("#reportrange span").html("<?php echo date('M d, Y', strtotime($this->input->post('startdate'))); ?>" + ' - ' + "<?php echo date('M d, Y', strtotime($this->input->post('enddate'))); ?>");
                }
                /* end reportrange */   
                
            });
        </script>
    <?php endif; ?>

    <style type="text/css">
        body.DTTT_Print {
            background: #fff;

        }
        .DTTT_Print #page-wrapper {
            margin: 0;
            background:#fff;
        }

        button.DTTT_button, div.DTTT_button, a.DTTT_button {
            border: 1px solid #e7eaec;
            background: #fff;
            color: #676a6c;
            box-shadow: none;
            padding: 6px 8px;
        }
        button.DTTT_button:hover, div.DTTT_button:hover, a.DTTT_button:hover {
            border: 1px solid #d2d2d2;
            background: #fff;
            color: #676a6c;
            box-shadow: none;
            padding: 6px 8px;
        }

        .dataTables_filter label {
            margin-right: 5px;

        }
    </style>

</body>
</html>