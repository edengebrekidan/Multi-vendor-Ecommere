<script>
	 function DrawCaptcha()
  {
  var a = Math.ceil(Math.random() * 6)+ '';
  var b = Math.ceil(Math.random() * 6)+ '';
  var c = Math.ceil(Math.random() * 6)+ '';
  var d = Math.ceil(Math.random() * 6)+ '';
  var e = Math.ceil(Math.random() * 6)+ '';
  var f = Math.ceil(Math.random() * 6)+ '';
  var g = Math.ceil(Math.random() * 6)+ '';
  var code = a + ' ' + b + ' ' + ' ' + c + ' ' + d + ' ' + e + ' '+ f ;
  document.getElementById("txtCaptcha").value = code
  }
  window.onload = DrawCaptcha;
   function removeSpaces(string){
  return string.split(' ').join('');
 }
</script>

<section class="page-section-logreg color get_into pat-30 pab-60 non-fixedbackground" style="background-image: url('<?php echo base_url(); ?>template/front/img/login-background.jpg');">
    <div class="container">
        <div class="row margin-top-0">
            <div class="col-lg-10 col-lg-offset-1 col-md-10 col-md-offset-1 col-sm-12 col-sm-offset-0 col-xs-12">
            	<div class="loginpageform">
            	
            		<div class="loginleft">
            			<div class="loglefticon text-center">
            				<img src="<?php echo base_url(); ?>template/front/img/loginuser-icon.png" alt="" title="Login User" />
            			</div>
            			<div class="logleft_content">
            				<h2 class="logtitles text-uppercase pab-20 mab-20"><strong>Get</strong><br/> your business<br/> online in 5 minutes</h2>
            				
            				<ul class="logleft_list">
            					<li><a><i class="fa fa-caret-right"></i>REGISTER YOUR ACCOUNT NOW</a></li>
            					<li><a><i class="fa fa-caret-right"></i>OPEN YOUR SHOP</a></li>
            					<li><a><i class="fa fa-caret-right"></i>START SELLING. GROW YOUR SALES.</a></li>
            				</ul>
            			</div>
            		</div>
            		
            		<div class="loginright">
            			<?php
		                    echo form_open(base_url() . 'home/vendor_logup/add_info/', array(
		                        'class' => 'form-login',
		                        'method' => 'post',
		                        'id' => 'sign_form'
		                    ));
		                ?>
		                <div class="logintop mab-40 regtabber">
		                	<ul class="nav nav-tabs">
								<li class="active" id="reginfotab1"><a data-toggle="tab" href="#signupinfo"><span><?php echo translate('Signup_Info');?></span></a></li>
								<li id="reginfotab2"><a><span><?php echo translate('Seller_Profile_Info');?></span></a></li>
							</ul>
            			</div>
            			
            			<div class="tab-content">
							<div id="signupinfo" class="tab-pane fade in active">
								<div class="logsection mab-30">
		            				<div class="logsectionborder_inner">
		            					<div class="logfield name">
		            						<input class="form-control required" name="name" type="text" placeholder="<?php echo translate('Name *');?>" data-toggle="tooltip" title="<?php echo translate('Name');?>">
		            					</div>
		            					<div class="logfield email">
		            						<input class="form-control emails required" name="email" type="email" placeholder="<?php echo translate('Email*');?>" data-toggle="tooltip" title="<?php echo translate('Email');?>">
		            					</div>
		            					<div class="logfield password">
		            						<input class="form-control pass1 required" type="password" name="password1" placeholder="<?php echo translate('Password*');?>" data-toggle="tooltip" title="<?php echo translate('Password');?>">
		            					</div>
		            					<div class="logfield password2">
		            						<input class="form-control pass2 required" type="password" name="password2" placeholder="<?php echo translate('Confirm_Password *');?>" data-toggle="tooltip" title="<?php echo translate('Confirm_Password');?>">
		            					</div>
		            				</div>
		            				<div class="logbtn mat-30">
		            					<button id="vrnxtbtn" type="button" class="contbtn no-border br-5 noborder whitecolor" >
			                            	<?php echo translate('Continue');?>
			                            </button>
					                </div>
		            			</div>
							</div>
							<div id="sellerprofile" class="tab-pane fade">
								<div class="logsection mab-30">
									<div class="logsectionborder_inner">
										<div class="logfield">
		            						<input class="form-control required" name="display_name" type="text" placeholder="<?php echo translate('display_name');?>" data-toggle="tooltip" title="<?php echo translate('display_name');?>">
		            					</div>
		            					<div class="logfield">
		            						<input class="form-control" name="company" type="text" placeholder="<?php echo translate('company_name');?>" data-toggle="tooltip" title="<?php echo translate('company_name');?>">
		            					</div>
		            					<div class="logfield">
		            						<input class="form-control required" name="address1" type="text" placeholder="<?php echo translate('address_line_1');?>" data-toggle="tooltip" title="<?php echo translate('address_line_1');?>">
		            					</div>
		            					<div class="logfield">
		            						<input class="form-control required" name="address2" type="text" placeholder="<?php echo translate('address_line_2');?>" data-toggle="tooltip" title="<?php echo translate('address_line_2');?>">
		            					</div>
		            					<div class="logfield halffield borderrirght">
		            						<input class="form-control required" name="city" type="text" placeholder="<?php echo translate('city');?>" data-toggle="tooltip" title="<?php echo translate('city');?>">
		            					</div>
		            					<div class="logfield halffield">
		            						<input class="form-control required" name="state" type="text" placeholder="<?php echo translate('state');?>" data-toggle="tooltip" title="<?php echo translate('state');?>">
		            					</div>
		            					<div class="logfield halffield borderrirght bbnone">
		            						<input class="form-control required" name="country" type="text" placeholder="<?php echo translate('country');?>" data-toggle="tooltip" title="<?php echo translate('country');?>">
		            					</div>
		            					<div class="logfield halffield">
		            						<input class="form-control required" name="zip" type="text" placeholder="<?php echo translate('zip');?>" data-toggle="tooltip" title="<?php echo translate('zip');?>">
		            					</div>
									</div>
									<div class="capturesection mat-20 mab-10">
			            				<div class="logsectionborder_inner">
			            					<div class="logfield catchafield prelative">
			            						<input type="text" class="form-control" id="txtCaptcha" style="background-image:url(images/cap.JPG); border:none; font-weight: bold; font-family:Modern" readonly="readonly" />
			            						<div class="realperson-regen">
			            							<span id="btnrefresh" onclick="DrawCaptcha();" class="fa fa-refresh"></span>
			            						</div>
			            					</div>
			            					<div class="logfield">
			            						<input placeholder="Please Enter the number shown above" type="text" class="form-control" required  id="txtInput" name="captchavalue"/>
			            					</div>
			            				</div>
			            				<span id="captcherror" style="color: #ff0000"></span>
			            			</div>
									<div class="logbtn mat-0">
		            					<p class="newregacc mat-0 mab-10">
						                	<input name="terms_check" id="tccheckbox" type="checkbox" value="ok">
						                	<label for="tccheckbox"><?php echo translate('i_agree_with');?></label>
						                	<a href="<?php echo base_url();?>home/legal/terms_conditions" target="_blank">
						                		<?php echo translate('terms_&_conditions');?>
						                	</a>
			                            </p>
			                            <button type="button" class="logbutton no-border br-5 login_btn noborder whitecolor logup_btn" data-ing='<?php echo translate('registering..'); ?>' data-msg="">
			                            	<?php echo translate('register');?>
			                            </button>
					                </div>
								</div>
							</div>
						</div>
            		
            		</form>
            		</div>
            		
            	</div>
            
            	
            </div>
        </div>
    </div>
</section>
<script>
	$(document).ready(function(){
		$("#vrnxtbtn").click(function(){
			$('.logfield').removeClass('error1');
			var name = $('input[name="name"]').val();
			var email = $('input[name="email"]').val();
			var password = $('input[name="password1"]').val();
			var password2 = $('input[name="password2"]').val();
			var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
			//alert(name);
			if(name !="" && email !="" && password !="" && password2 !="" && password==password2 && emailReg.test( email ) ){
			$('#reginfotab2').addClass('active');
			$('#reginfotab1').removeClass('active');
			$("#signupinfo").removeClass('in active');
			$("#sellerprofile").addClass('in active');
			$("#reginfotab2 a").attr("data-toggle", "tab").attr("href", "#sellerprofile");	
			}else{
				$('input[name="name"]').addClass('error').attr('placeholder','Please Enter Name');
				$('input[name="email"]').addClass('error').attr('placeholder','Please Enter Email');
				$('input[name="password"]').addClass('error').attr('placeholder','Please Enter Password');
				$('input[name="password2"]').addClass('error').attr('placeholder','Please Enter Password');
				if(name ==""){
					$('.name').addClass('error1');
				} 
				if (email ==""){
					$('.email').addClass('error1');
				}
				 if (password ==""){
					$('.password').addClass('error1');
				}
				 if (password2 ==""){
					$('.password2').addClass('error1');
				}
				if (password !=password2){
					$('.password2').addClass('error1');
				}
				if(!emailReg.test( email )){
					$('.email').addClass('error1');
				}
				
			}
			
		});
	});
</script>
<style>
	.get_into .terms a{
		margin:5px auto;
		font-size: 14px;
		line-height: 24px;
		font-weight: 400;
		color: #00a075;
		cursor:pointer;
		text-decoration:underline;
	}
	
	.get_into .terms input[type=checkbox] {
		margin:0px;
		width:15px;
		height:15px;
		vertical-align:middle;
	}
.error1 {
  border-bottom: 1px solid #f00 !important;
}
.logfield .form-control.error::-webkit-input-placeholder { /* Chrome/Opera/Safari */
	color: #f00;
}
.logfield .form-control.error::-moz-placeholder { /* Firefox 19+ */
	color: #f00;
}
.logfield .form-control.error:-ms-input-placeholder { /* IE 10+ */
  	color: #f00;
}
.logfield .form-control.error:-moz-placeholder { /* Firefox 18- */
  	color: #f00;
}
</style>