
    <table class="table table-bordered carter_table" style="background: #fff;">
        <thead>
            <tr>
                <th class="hidden-sm hidden-xs"><?php echo translate('image');?></th>
                <th><?php echo translate('product_details');?></th>
                <th><?php echo translate('unit_price');?></th>
                <th><?php echo translate('tax');?></th>
                <th><?php echo translate('shipping');?></th>
                <th style="text-align:center;"><?php echo translate('quantity');?></th>
                <th><?php echo translate('subtotal');?></th>
                <th></th>
            </tr>
        </thead>
        <tbody>
            <?php 
            $tax1=0;
            $shippincost1=0;
                $carted = $this->cart->contents(); 
                foreach ($carted as $items){ 
            ?>
            <tr data-rowid="<?php echo $items['rowid']; ?>" >
                <td class="image hidden-sm hidden-xs" align="center">
                    <!--<a class="media-link" href="<?php echo $this->crud_model->product_link($items['id']); ?>">
                        <i class="fa fa-plus"></i>
                        <img src="<?php echo $items['image']; ?>" width="60" alt=""/>
                    </a>-->
                    <?php
                    $color = $this->crud_model->is_added_to_cart($items['id'],'option','color'); 
                    if($color){
                        $colorvalue1=$this->db->query("select * from product where product_id=200 ")->row()->color;
                        $colorimage=$this->db->query("select * from product where product_id=200 ")->row()->pcimage;
                        $resultjeson = json_decode ($colorvalue1, true);
                        $keys1 = array_values($resultjeson);
                        $key2 = array_search($color, $keys1);
                        $cimage=$colorimage;
                        $mpimage=explode(',', $cimage);
                        //echo $mpimage[$key2];
                    ?>
                    <a class="media-link" href="<?php echo $this->crud_model->product_link($items['id']); ?>">
                        <!--<i class="fa fa-plus"></i>-->
                        <img src="<?php echo base_url();?>product_color/<?php echo $mpimage[$key2]; ?>" width="60" alt=""/>
                    </a>
                    <?php }else{ ?>
                      <a class="media-link" href="<?php echo $this->crud_model->product_link($items['id']); ?>">
                        <!--<i class="fa fa-plus"></i>-->
                        <img src="<?php echo $items['image']; ?>" width="60" alt=""/>
                    </a>  
                    <?php } ?>    
                </td>
                <td class="description">
                    <h4 style="">
                        <a href="<?php echo $this->crud_model->product_link($items['id']); ?>">
                            <?php echo $items['name']; ?>
                        </a>
                    </h4>
                    <hr class="mr0">
                    <?php 
                        $color = $this->crud_model->is_added_to_cart($items['id'],'option','color'); 
                        if($color){ 
                    ?>
                    Color: <span style="background:<?php echo $color; ?>; height:15px; width:15px;border-radius:50%; display: inline-block;"></span>
                    <hr class="mr0">
                    <?php
                        }
                    ?>
                    
                    <?php
                        $all_o = json_decode($items['option'],true);
                        foreach ($all_o as $l => $op) { 
                            if($l !== 'color' && $op['value'] !== '' && $op['value'] !== NULL){ 
                    ?> 
                            <span style="font-size:13px;"><?php echo $op['title']; ?></span>
                    : 
                    <?php 
                        if(is_array($va = $op['value'])){ 
					?>
                    <span style="font-size:13px !important;"><?php echo $va = join(', ',$va); ?></span>
                    <?php
                        } else {
					?>
                    <span style="font-size:13px !important;"><?php echo $va; ?></span>
                    <?php
                        }
                    ?>
                    <hr class="mr0">
                    <?php
                            }
                        }
                    ?>
                    <?php
                    if ($this->db->get_where('product', array('product_id' => $items['id']))->row()->is_bundle == 'no') {
                    ?>
                    <a href="<?php echo $this->crud_model->product_link($items['id']); ?>" class="change_choice_btn">
                        <?php echo translate('change_choices'); ?>
                    </a>
                    <?php
                    }
                    ?>
                    <?php
                    if ($this->db->get_where('product', array('product_id' => $items['id']))->row()->is_bundle == 'yes') {
                    ?>
                    <div style="padding: 5px">
                        <?php echo translate('products_:');?> <br>
                        <?php
                            $products = $this->db->get_where('product', array('product_id' => $items['id']))->row()->products;
                            $products = json_decode($products, true);
                            foreach ($products as $product) { ?>
                                <!-- echo $product['product_id'].'<br>'; -->
                                <a style="text-decoration:underline; font-size: 12px; padding-right: 5px;" href="<?php echo $this->crud_model->product_link($product['product_id']); ?>">
                                    <?php echo $this->db->get_where('product', array('product_id' => $product['product_id']))->row()->title;?>
                                </a>
                        <?php
                            }
                        ?>
                    </div>
                    <?php
                    }
                    ?>
                </td>
                <td class="quantity pric">
                    <?php echo currency($items['price']); ?>
                </td>
                <td class="quantity pric">
                <?php
                $luserid=$this->session->userdata('user_id');
                if($luserid !=""){
                	$protid=$items['id'];
					$queryvid = $this->db->query("select * from product where product_id=$protid");
                	$rowvid = $queryvid->row();
					$jsonvids=$rowvid->added_by;
					if($jsonvids !='{"type":"admin","id":"1"}'){
						$jsonvid=json_decode($rowvid->added_by);
					 $vendorid=$jsonvid->id;
					 $querystate = $this->db->query("select * from vendor_select_state where vid=$vendorid");
					$rowvstate = $querystate->row();
					$vstate=$rowvstate->sname;
					$queryuserstate = $this->db->query("select * from user where user_id=$luserid");
					$rowuserstate = $queryuserstate->row();
					$ustate=$rowuserstate->state;
					if($vstate==$ustate){
					$queryutax = $this->db->query("select * from shiping_state where sname='$ustate'");
					$rowtax = $queryutax->row();
					$taxcheck=$rowtax->scost;
					$taxprice=$items['price'];
					$tax1+=$taxprice*$taxcheck/100*$items['qty'];
					 echo $totaltax=currency( number_format((float)$taxprice*$taxcheck/100*$items['qty'], 2, '.', ''));
						}else{
							echo $totaltax=currency( "0.00");
						}
					}else{
						$queryuserstate = $this->db->query("select * from user where user_id=$luserid");
					$rowuserstate = $queryuserstate->row();
					$ustate=$rowuserstate->state;
					if($ustate!=''){
				$queryutax = $this->db->query("select * from shiping_state where sname='$ustate'");
					$rowtax = $queryutax->row();
					$taxcheck=$rowtax->scost;
					$taxprice=$items['price'];
					$tax1+=$taxprice*$taxcheck/100*$items['qty'];
					 echo $totaltax=currency( number_format((float)$taxprice*$taxcheck/100*$items['qty'], 2, '.', ''));
						}else{
							echo $totaltax=currency( "0.00");
						}
					}
				
			
				}
                ?>
                </td>
 				<td class="quantity pric">
 					<?php
 					$spro=$items['id'];
					$queryspro = $this->db->query("select * from product where product_id=$spro");
                	$rowspro = $queryspro->row();
					$shippincost=$rowspro->shipping_cost*$items['qty'];
					$shippincost1+=$shippincost*$items['qty'];
					if($shippincost !="0"){
						echo currency($shippincost);
					}else{
						echo $shippincost=currency("0.00");
					}
 					?>
                </td>
                <td class="quantity product-single" style="text-align:center;">
					<?php
                        if(!$this->crud_model->is_digital($items['id'])){
                    ?>
                    <span class="buttons">
                        <div class="quantity product-quantity">
                            <button type='button' class="btn in_xs quantity-button minus"  value='minus' >
                                <i class="fa fa-minus"></i>
                            </button>
                            <input  type="number" class="form-control qty in_xs quantity-field quantity_field" data-rowid="<?php echo $items['rowid']; ?>" data-limit='no' value="<?php echo $items['qty']; ?>" id='qty1' onblur="check_ok(this);" />
                            <button type='button' class="btn in_xs quantity-button plus"  value='plus' >
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </span>
                    <?php
						}
					?>
                </td>
                <td class="total">
                    <span class="sub_total">
                        <?php echo currency($items['subtotal']); ?> 
                    </span>
                </td>
                <td class="total">
                    <span class="close" style="color:#f00;">
                        <i class="fa fa-trash"></i>
                    </span>
                </td>
            </tr>
            <?php
                }
               // echo $items['qty'];
             	$totaltax=$tax1;
                //echo $shippincost1;
            ?>
            <input type="hidden" value="<?php echo number_format((float)$totaltax, 2, '.', ''); ?>" name="taxvalue">
            <input type="hidden" value="<?php echo number_format((float)$shippincost1, 2, '.', ''); ?>" name="shippingvalue">
        </tbody>
    </table>

<div class="nxtcbtns">
    <span class="contunie__checkout__btn themebgcolor noborder mar-5" onclick="load_address_form();">
        <?php echo translate('Continue To Checkout');?>
    </span>
    <a class="cancelorder__btn blackbg" href="<?php echo base_url(); ?>home/cancel_order">
        <?php echo translate('cancel_order');?>
    </a>
</div>
<?php
    echo form_open('', array(
    'method' =>
    'post', 'id' => 'coupon_set' )); 
?> 
<input type="hidden" id="coup_frm" name="code">
</form>
<script type="text/javascript">
    $( document ).ready(function() {
    	        
        
//Tax and shipping send to controller

    		
		$('body').on('click','.close', function(){
			var here = $(this);
			var rowid = here.closest('tr').data('rowid');
			var thetr = here.closest('tr');
			var list1 = $('#total');
			$.ajax({
				url: base_url+'home/cart/remove_one/'+rowid,
				beforeSend: function() {
					list1.html('...');
				},
				success: function(data) {
					list1.html(data).fadeIn();
					notify(cart_product_removed,'success','bottom','right');
					//sound('cart_product_removed');
					reload_header_cart();
					others_count();
					thetr.hide('fast');
					
					if(data == 0){
						location.replace('<?php echo base_url();?>');	
					}
					location.reload();
				},
				error: function(e) {
					console.log(e)
				}
			});
		});
		
        //update_calc_cart();
 
    });
     $( document ).ready(function() {
    var taxvalue = $('input[name="taxvalue"]').val();        
var shippingvalue = $('input[name="shippingvalue"]').val(); 
$.ajax({
            type: "POST",
            url: "https://ryants.com/store/home/cart/calcs/full",
            data: "taxvalue=" + taxvalue + "&shippingvalue="+ shippingvalue,
            success: function(data){
            	 var splitted = data.split("-");
                //alert(splitted);
                $("#shipping").html(splitted[1]);
                $("#tax").html(splitted[2]);
                $("#grand").html(splitted[3]);
                //For insert Totla value
                $("#total1").val(splitted[0]);
                $("#shipping1").val(splitted[1]);
                $("#tax1").val(splitted[2]);
                $("#grand_total1").val(splitted[3]);
                }
        });

 
//alert(taxvalue);
//alert(shippingvalue);
$(".quantity-button").click(function(){
 	location.reload();
 }); 
});
</script>



