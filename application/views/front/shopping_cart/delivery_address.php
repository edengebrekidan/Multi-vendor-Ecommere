<?php 
  if($this->session->userdata('user_login')== "yes"){ 
    $user       = $this->session->userdata('user_id'); 
    $user_data  = $this->db->get_where('user',array('user_id'=>$user))->row(); 
    $username   = $user_data->username;
    $surname    = $user_data->surname;  
    $email      = $user_data->email; 
    $phone      = $user_data->phone; 
    $address1   = $user_data->address1; 
    $address2   = $user_data->address2; 
    $state   = $user_data->state; 
    $langlat    = $user_data->langlat; 
    $address    = $address1.$address2;
    $zip        = $user_data->zip; 
  } 
?>

<div class="logsection mab-30">
	<div class="logsectionborder_inner">
		<div class="logfield halffield borderrirght">
			<input class="form-control required firstname" value="<?php echo $username ;?>" name="firstname" type="text" placeholder="<?php echo translate('first_name');?>">
		</div>
		<div class="logfield halffield">
			<input class="form-control required lastname" value="<?php echo $surname ;?>" name="lastname" type="text" placeholder="<?php echo translate('last_name');?>">
		</div>
		<div class="logfield halffield borderrirght">
			<input class="form-control required address address1" name="address1" value="<?php echo $address1; ?>" type="text" placeholder="<?php echo translate('address_line_1');?>">
		</div>
		<div class="logfield halffield">
			<input class="form-control address" name="address2" value="<?php echo $address2; ?>" type="text" placeholder="<?php echo translate('address_line_2');?>">
		</div>
		<div class="logfield">
		<select class="form-control required" name="state" id="statevalue" disabled="disabled" title="If you want to change go to order option">
		<option value=""><?php echo translate('state');?></option>	
		<?php 
		$this->db->where('action','Y');
		$statelist=$this->db->get('shiping_state')->result_array(); 
		foreach($statelist as $srow){
		?>
		<option value="<?php echo $srow['sname'];?>" <?php if($srow['sname'] == $state) echo"selected"; ?>><?php echo $srow['sname'];?></option>
		<?php } ?>
	</select>
			<!--<input class="form-control address" name="state" value="<?php echo $state; ?>" type="text" placeholder="<?php echo translate('stste');?>">-->
		</div>
		<div class="logfield onethirdfield borderrirght bbnone">
			<input class="form-control required zip"  name="zip" type="text" value="<?php echo $zip; ?>" placeholder="<?php echo translate('postcode/ZIP');?>">
		</div>
		<div class="logfield onethirdfield borderrirght bbnone">
			<input class="form-control required email" value="<?php echo $email ;?>" name="email" type="text" placeholder="<?php echo translate('email');?>">
		</div>
		<div class="logfield onethirdfield bbnone">
			<input class="form-control required phone" value="<?php echo $phone ;?>" name="phone" type="text" placeholder="<?php echo translate('phone_number');?>">
		</div>
	</div>
</div>
<div class="row ">
   
    <div class="col-sm-12" id="lnlat" style="display:none;">
        <div class="form-group">
            <div class="col-sm-12">
                <input id="langlat" value="" type="text" placeholder="langitude - latitude" name="langlat" class="form-control" readonly>
            </div>
        </div>
    </div>
    
    <!--<div class="col-sm-12" id="maps" style="height:400px;">
        <div class="form-group">
            <div id="map-canvas" style="height:400px;">
            </div>
        </div>
    </div>-->
    <div class="col-md-12" style="display:none;">
        <div class="checkbox">
            <label>
                <input type="checkbox"> 
                <?php echo translate('ship_to_different_address_for_invoice');?>
            </label>
        </div>
    </div>
    <div class="col-md-12 nxtcbtns">
        <span class="contunie__checkout__btn themebgcolor noborder mar-5" onclick="load_payments();">
            <?php echo translate('Continue_To_Checkout');?>
        </span>
        <a class="cancelorder__btn blackbg" href="<?php echo base_url(); ?>home/cancel_order">
	        <?php echo translate('cancel_order');?>
	    </a>
    </div>

</div>
<input type="hidden" id="first" value="yes"/>

<script type="text/javascript">
    $(document ).ready(function() {      
      
set_cart_map();        
    });
    
</script>