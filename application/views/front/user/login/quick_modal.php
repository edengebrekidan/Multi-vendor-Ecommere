<div class="modal_wrap">
    <div class="row get_into" id="login">
    
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <script>
 window.onload = DrawCaptcha1;
  //alert(window.onload);
	 function DrawCaptcha1()
  {
  var a = Math.ceil(Math.random() * 6)+ '';
  var b = Math.ceil(Math.random() * 6)+ '';
  var c = Math.ceil(Math.random() * 6)+ '';
  var d = Math.ceil(Math.random() * 6)+ '';
  var e = Math.ceil(Math.random() * 6)+ '';
  var f = Math.ceil(Math.random() * 6)+ '';
  var g = Math.ceil(Math.random() * 6)+ '';
  var code1 = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f ;
  //alert(code1);
  document.getElementById("txtCaptcha").value = code1
  }

  function removeSpaces(string){
  return string.split(' ').join('');
 } 
   $(document).ready(function(){
  // we call the function
  DrawCaptcha1();
  removeSpaces();
 
}); 
</script>
            <?php
                echo form_open(base_url() . 'home/login/do_login/', array(
                    'class' => 'form-login',
                    'method' => 'post',
                    'id' => ''
                ));
                $fb_login_set = $this->crud_model->get_type_name_by_id('general_settings','51','value');
                $g_login_set = $this->crud_model->get_type_name_by_id('general_settings','52','value');
                $guest_checkout_set = $this->crud_model->get_type_name_by_id('general_settings','85','value');
            ?>
                <div class="modalbox row">
                    <div class="popheader col-sm-12">
                    	<h3 class="logintoptitle mat-0 pab-15 mab-10"><span><?php echo translate('sign_in');?></span></h3>
                        
                        <!--<div class="option">
                            <?php echo translate('not_a_member_yet_?');?>
                            <a href="<?php echo base_url(); ?>home/login_set/registration"> 
                                <?php echo translate('sign_up_now!');?>
                            </a>
                        </div>-->
                    </div>
                    <div class="col-sm-12">
	                    <div class="logsection mab-30">
	                    	<div class="logsectionborder_inner">
	        					<div class="logfield">
	        						<input class="form-control" type="email" name="email" placeholder="<?php echo translate('email');?>">
	        					</div>
	        					<div class="logfield">
	        						<input class="form-control" type="password" name="password" placeholder="<?php echo translate('password');?>">
	        					</div>
	        					
	        				</div>
	                    </div>
                    </div>
                    <div class="col-sm-12">
           				<div class="logsectionborder_inner">
           					<div class="logfield catchafield prelative">
           						<input type="text" class="form-control" id="txtCaptcha" style="background-image:url(images/cap.JPG); border:none; font-weight: bold; font-family:Modern" readonly="readonly" />
           						<div class="realperson-regen">
           							<span id="btnrefresh" onclick="DrawCaptcha1();" class="fa fa-refresh"></span>
           						</div>
            				</div>
        					<div class="logfield">
        						<input placeholder="Please Enter the number shown above" type="text" class="form-control" required  id="txtInput" name="captchavalue"/>
        					</div>
            			</div>
            			<span id="captcherror" style="color: #ff0000"></span>
            		</div>
            		<div class="col-sm-12">
	            		<div class="logbtn mat-20">
	            			<input type="button" class="logbutton no-border br-5 login_btn snbtn noborder whitecolor" value="<?php echo translate('login');?>">
		                	<?php if ($page == 'guest_checkout' and $guest_checkout_set == 'ok') {?>
		                	<!--<input type="button" class="logbutton no-border br-5 login_btn guest_btn noborder whitecolor" value="<?php echo translate('guest_checkout');?>">-->
		                	<?php } ?>
		                	<p class="newregacc">Do not have an account? <a href="<?php echo base_url(); ?>home/login_set/registration">Create Account</a> || <a onClick="set_html('login','forget')" class="forgot-password"><?php echo translate('forget_your_password_?');?></a></p>
		                </div>
	                </div>
                    <!--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 text-right pull-right">
                        <span class="forgot-password" style="cursor:pointer;" onClick="set_html('login','forget')">
                            <?php echo translate('forget_your_password_?');?>
                        </span>
                    </div>-->
                    <!--<div class="<?php if ($page == 'guest_checkout' and $guest_checkout_set == 'ok') {?>col-lg-6 col-md-6 col-sm-6 col-xs-6<?php } else {?>col-lg-12 col-md-12 col-sm-12 col-xs-12<?php } ?>">
                        <span class="btn btn-theme-sm btn-block btn-theme-dark pull-right login_btn snbtn">
                            <?php echo translate('login');?>
                        </span>
                    </div>-->
                    <!--<?php
                     if ($page == 'guest_checkout' and $guest_checkout_set == 'ok') {?>
                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <span class="btn btn-theme-sm btn-block btn-theme-dark pull-right guest_btn">
                            <?php echo translate('guest_checkout');?>
                        </span>
                    </div>
                    <?php } ?>-->
                    <?php if($fb_login_set == 'ok' || $g_login_set == 'ok'){ ?>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h2 class="login_divider"><span>or</span></h2>
                        </div>
                    <?php if($fb_login_set == 'ok'){ ?>
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 <?php if($g_login_set !== 'ok'){ ?>mr_log<?php } ?>">
                            <?php if (@$user): ?>
                                <a class="btn btn-theme btn-block btn-icon-left facebook" href="<?= $url ?>">
                                    <i class="fa fa-facebook"></i>
                                    <?php echo translate('sign_in_with_facebook');?>
                                </a>
                            <?php else: ?>
                                <a class="btn btn-theme btn-block btn-icon-left facebook" href="<?= $url ?>">
                                    <i class="fa fa-facebook"></i>
                                    <?php echo translate('sign_in_with_facebook');?>
                                </a>
                            <?php endif; ?>
                        </div>
                    <?php } if($g_login_set == 'ok'){ ?>  
                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 <?php if($fb_login_set !== 'ok'){ ?>mr_log<?php } ?>">
                            <?php if (@$g_user): ?>
                                <a class="btn btn-theme btn-block btn-icon-left google" style="background:#ce3e26" href="<?= $g_url ?>">
                                    <i class="fa fa-google"></i>
                                    <?php echo translate('sign_in_with_google');?>
                                </a>
                           <?php else: ?>
                                <a class="btn btn-theme btn-block btn-icon-left google" style="background:#ce3e26" href="<?= $g_url ?>">
                                    <i class="fa fa-google"></i>
                                    <?php echo translate('sign_in_with_google');?>
                                </a>
                            <?php endif; ?>
                        </div>
                    <?php
                            }
                        }
                    ?>
                </div>
            </form>
        </div>
    </div>
  
    <div class="row" id="forget" style="display:none">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <?php
                echo form_open(base_url() . 'home/login/forget/', array(
                    'class' => 'form-login',
                    'method' => 'post',
                    'id' => 'forget_form'
                ));
            ?>
                <div class="box_shape2 row">
                	<div class="col-sm-12">
	                	<div class="logsectionborder_inner">
	    					<div class="logfield">
	    						<input class="form-control" type="email" name="email" placeholder="<?php echo translate('email_address');?>">
	    					</div>
	    				</div>
    				</div>
                    <!--<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="form-group">
                            <input class="form-control" type="email" name="email" placeholder="<?php echo translate('email_address');?>">
                        </div>
                    </div>-->
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    	<div class="logbtn mab-20">
                    		<button type="button" class="logbutton no-border br-5 forget_btn noborder whitecolor"><?php echo translate('submit');?></button>
                    		<p class="newregacc"><a onClick="set_html('forget','login')"><?php echo translate('back_to_login');?></a></p>
                    	</div>
                        <!--<span class="forgot-password pull-left" >
                            <?php echo translate('back_to_login');?>
                        </span>
                        <span class="btn btn-primary btn-sm forget_btn">
                            <?php echo translate('submit');?>
                        </span>-->
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
function set_html(hide,show){
	$('#'+show).show('fast');
	$('#'+hide).hide('fast');
}
window.addEventListener("keydown", checkKeyPressed, false);
function checkKeyPressed(e) {
	if (e.keyCode == "13") {
		$('.snbtn').click();
	}
}
$('.guest_btn').click(
    function(){
        load_orders();
        $('.closeModal').click();
});
</script>
<style>
.g-icon-bg {
	background: #ce3e26;
}
.g-bg {
	background: #de4c34;
	height: 37px;
	margin-left: 41px;
	width: 166px;
}
.modal_wrap{
    padding: 20px 0px;
}
.get_into hr {
    border: 1px solid #e8e8e8  !important;
    height: 0px !important;
    background-image: none !important;
}
.box_shape2 {
    padding: 15px;
    border: solid 1px #e9e9e9;
    background-color: #ffffff;
    margin: -25px 20px;
}
</style>