<!-- PAGE -->
<!--compose-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css'>
<style>

    p {
        font-weight: 400;
    }

    a {
        text-decoration: none;
    }

    label {
        cursor: pointer;
    }

    .modal-btn {
        position: relative;
        width: 110px;
        height: 35px;
        background-color: #2c3e50;
        box-shadow: 0 0 40px rgba(0, 0, 0, 0.3);
        border-radius: 5px;
        font-size: 21px;
        color: white;
        text-align: center;
        /* line-height: 1.75; */
        transition: box-shadow 250ms ease;
    }
    .modal-btn:hover {
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
    }

    .modal-bg {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        opacity: 0;
        z-index: 10;
        visibility: hidden;
        transition: background-color 250ms linear;
    }

    .modal-content {
        position: absolute;
        top: 35%;
        left: 55%;
        width: 40%;
        height: auto;
        margin-top: -18%;
        margin-left: -25%;
        padding: 30px;
        background-color: white;
        border-radius: 4px;
        box-shadow: 0 0 50px rgba(0, 0, 0, 0.5);
        transform: scale(0);
        transition: transform 250ms ease;
        visibility: hidden;
        z-index: 20;
    }
    .modal-content .close {
        position: relative;
        float: right;
        font-size: 18px;
        transition: transform 500ms ease;
        z-index: 11;
    }
    .modal-content .close:hover {
        color: #3498db;
        transform: rotate(540deg);
    }
    .modal-content header {
        position: relative;
        display: block;
        border-bottom: 1px solid #eee;
    }
    .modal-content header h2 {
        margin: 0 0 10px;
        padding: 0;
        font-size: 28px;
    }
    .modal-content article {
        position: relative;
        display: block;
        margin: 0;
        padding: 0;
        font-size: 16px;
        /*line-height: 1.75;*/
    }
    .modal-content footer {
        position: relative;
        display: flex;
        align-items: center;
        justify-content: flex-end;
        width: 100%;
        margin: 0;
        padding: 10px 0 0;

    }
    .modal-content footer .button {
        position: relative;
        padding: 7px 10px 7px 10px;
        border-radius: 3px;
        font-size: 14px;
        font-weight: 400;
        color: white;


        overflow: hidden;
    }
    .modal-content footer .button:before {
        position: absolute;
        content: '';
        top: 0;
        left: 0;
        width: 0;
        height: 100%;
        background-color: rgba(255, 255, 255, 0.2);
        transition: width 250ms ease;
        z-index: 0;
    }
    .modal-content footer .button:hover:before {
        width: 100%;
    }
    .modal-content footer .button.success {
        margin-right: 5px;
        background-color: #2ecc71;
    }
    .modal-content footer .button.danger {
        background-color: #e74c3c;
    }

    #modal {
        display: none;
    }
    #modal:checked ~ .modal-bg {
        visibility: visible;
        background-color: black;
        opacity: 0.7;
        transition: background-color 250ms linear;
    }
    #modal:checked ~ .modal-content {
        visibility: visible;
        transform: scale(1);
        transition: transform 250ms ease;
        z-index: 111;
    }
    .button {
        background-color:#4CAF50; /* Green */
        border: none;
        color: white;
        padding: 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }
    .button_danger{
        background-color: #e74c3c;
        border: none;
        color: white;
        padding: 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
    }

    .button1 {border-radius: 2px;}

</style>
<!--compose-->
<!--compose-->
<input type="checkbox" id="modal" />
<label for="modal" class="modal-bg"></label>
<div class="modal-content">
    <label for="modal" class="close">
        <i class="fa fa-times" aria-hidden="true"></i>
    </label>
    <?php
    echo form_open(base_url() . 'home/ticket_message_add_1/', array('class' => 'form-login','method' => 'post','enctype' => 'multipart/form-data'));
    ?>
    <header>
        <h3>New conversation
            <?php echo $this->crud_model->get_type_name_by_id('category',$row['added_by'],'category_name');?>
        </h3>
        <input class="form-control" name="vendor_name" type="text"  value = ""><hr style = "margin-top: 10px;">
    </header>
    <article class="content">
        <input class="form-control" name="sub" type="text" placeholder="Subject" style = "margin-top:-10px;">
        <textarea maxlength="5000" rows="7" class="form-control" name="send_message" id="comment" style="height: 138px;    margin-top: 10px;" placeholder="Message"></textarea>
    </article>
    <footer>
        <label for="modal" class="button button_danger">Cancel</label>&nbsp;&nbsp;
        <button target="_parent" class="button button1" style="padding: 11px 18px;">Send</button>

    </footer>
    </form>
</div>
<!--compose-->

<!---->
<?php
$thumbs = $this->crud_model->file_view('product',$row['product_id'],'','','thumb','src','multi','all');
$mains = $this->crud_model->file_view('product',$row['product_id'],'','','no','src','multi','all');
?>
<section class="page-section">
    <div class="container">
        <div class="row product-single productdtls_page" style="margin-top: 0px">
            <div class="col-md-7 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-md-12 col-sm-12 zoom">
                        <div class="badges">
                            <?php if($row['featured'] == 'ok'){ ?>
                                <div class="hot"><?php echo translate('featured'); ?></div>
                            <?php } ?>
                            <?php if($row['deal'] == 'ok'){ ?>
                                <div class="new"><?php echo translate("today's_deal"); ?></div>
                            <?php } ?>
                        </div>
                        <img class="img-responsive main-img zoom" id="set_image" src="" alt=""/>
                    </div>
                    <div class="col-md-12 col-sm-12 col-xs-12 others-img">
                        <?php
                        $i=1;
                        foreach ($thumbs as $id=>$row1) {
                            ?>
                            <div class="related-product " id="main<?php echo $i; ?>">
                                <img class="img-responsive img" data-src="<?php echo $mains[$id]; ?>" src="<?php echo $row1; ?>" alt=""/>
                            </div>
                            <?php
                            $i++;
                        }
                        ?>
                    </div>
                </div>
            </div>


            <div class="col-md-5 col-sm-12 col-xs-12">
                <h3 class="product-title"><?php echo $row['title'];?></h3>
                <?php
                if ($this->db->get_where('product', array('product_id' => $row['product_id']))->row()->is_bundle == 'no') {
                    ?>
                    <div class="product-info">
                        <p>
                            <a href="<?php echo base_url(); ?>home/category/<?php echo $row['category']; ?>">
                                <?php echo $this->crud_model->get_type_name_by_id('category',$row['category'],'category_name');?>
                            </a>
                        </p>
                        ||
                        <p>
                            <a href="<?php echo base_url(); ?>home/category/<?php echo $row['category']; ?>/<?php echo $row['sub_category']; ?>">
                                <?php echo $this->crud_model->get_type_name_by_id('sub_category',$row['sub_category'],'sub_category_name');?>
                            </a>
                        </p>
                        ||
                        <p>
                            <a href="<?php echo base_url(); ?>home/category/<?php echo $row['category']; ?>/<?php echo $row['sub_category']; ?>-<?php echo $row['brand']; ?>">
                                <?php echo $this->crud_model->get_type_name_by_id('brand',$row['brand'],'name');?>
                            </a>
                        </p>
                    </div>
                    <?php
                }
                ?>
                <?php
                if ($this->db->get_where('product', array('product_id' => $row['product_id']))->row()->is_bundle == 'yes') {
                    ?>
                    <div class="product-info">
                        <?php //echo translate('products_:');?>
                        <?php
                        $products = json_decode($row['products'], true);
                        foreach ($products as $product) { ?>
                            <!-- echo $product['product_id'].'<br>'; -->
                            <P>
                                <a href="<?php echo $this->crud_model->product_link($product['product_id']); ?>">
                                    <?php echo $this->db->get_where('product', array('product_id' => $product['product_id']))->row()->title . '<br>';?>
                                </a>
                            </P>
                            <?php
                        }
                        ?>
                    </div>
                    <?php
                }
                ?>
                <?php if ($this->db->get_where('general_settings', array('general_settings_id' => '58'))->row()->value == 'ok'and $this->db->get_where('general_settings', array('general_settings_id' => '81'))->row()->value == 'ok'){ ?>
                    <!--<div class="added_by">
                    <?php echo translate('sold_by_:');?>
                    <p>
                        <?php //echo $this->crud_model->product_by($row['product_id'],'with_link');?>
                    </p>
                </div>-->
                <?php } ?>
                <div class="product-rating clearfix">
                    <div class="rating ratings_show" data-original-title="<?php echo $rating = $this->crud_model->rating($row['product_id']); ?>"
                         data-toggle="tooltip" data-placement="left">
                        <?php
                        $r = $rating;
                        $i = 6;
                        while($i>1){
                            $i--;
                            ?>
                            <span class="star <?php if($i<=$rating){ echo 'active'; } $r++; ?>"></span>
                            <?php
                        }
                        ?>
                    </div>

                    <div class="rating inp_rev list-inline" style="display:none;" data-pid='<?php echo $row['product_id']; ?>'>
                        <span class="star rate_it" id="rating_5" data-rate="5"></span>
                        <span class="star rate_it" id="rating_4" data-rate="4"></span>
                        <span class="star rate_it" id="rating_3" data-rate="3"></span>
                        <span class="star rate_it" id="rating_2" data-rate="2"></span>
                        <span class="star rate_it" id="rating_1" data-rate="1"></span>
                    </div>
                    <!--<a class="reviews ratings_show" href="#">
                        <?php echo $row['rating_num']; ?>
                        <?php echo translate('review(s)'); ?>
                    </a> -->
                    <?php
                    if($this->session->userdata('user_login') == 'yes'){
                        $user_id = $this->session->userdata('user_id');
                        $user_products = $this->db->select('product_details')->from('sale')->where('buyer', $user_id)->get()->result_array();

                        foreach ($user_products as $user_prod) {
                            foreach($user_prod as $prods){
                                $prods = json_decode($prods, true);
                                foreach($prods as $prod){
                                    //echo $prod['id'];
                                    if($prod['id'] == $row['product_id']){
                                        //echo $prod['id'];
                                        $is_review = 'yes';
                                    }
                                }
                            }
                        }
                        $rating_user = json_decode($row['rating_user'],true);
                        if(!in_array($user_id,$rating_user)){
                            if ($is_review == 'yes') {
                                ?>
                                <a class="add-review rev_show ratings_show" href="#">
                                    | <?php echo translate('add_your_review');?>
                                </a>
                                <?php
                            }
                        }
                    }
                    ?>
                </div>

                <hr class="page-divider"/>
                <div class="product-price prodtlsprice">
                    <?php //echo translate('price_:');?>
                    <?php if($row['discount'] > 0){ ?>
                        <ins>
                            <?php echo currency($this->crud_model->get_product_price($row['product_id'])); ?>
                            <!--<span><?php //echo ' /'.$row['unit'];?></span>-->
                        </ins>
                        <del><?php echo currency($row['sale_price']); ?></del>
                        <span class="disscounttxt themecolor">
                        <?php

                        if($row['discount_type']=='percent'){
                            $perp= '%';
                        }
                        else{
                            $perp= currency();
                        }
                        echo translate('(').$row['discount'].$perp.translate(')').translate('Off');
                        ?>
                        </span>
                    <?php } else { ?>
                        <ins>
                            <?php echo currency($row['sale_price']); ?>
                            <!--<span><?php //echo ' /'.$row['unit'];?></span>-->
                        </ins>
                    <?php }?>
                    <p class="additionalchargr_txt mab-0">Additional tax may apply; charged at checkout</p>
                </div>
                <hr class="page-divider"/>
                <?php
                include 'order_option.php';
                ?>
                <?php
                $vid=$row['product_id'];

                $query = $this->db->query("SELECT * FROM product WHERE product_id=$vid");

                $vrow = $query->row();

                $vids=json_decode($vrow->added_by);
                $vidss=$vrow->added_by;
                $number=$vids->id;

                /* $length=strlen($vids);
                //$number = substr($vids,-4,2);
                if($length=="25"){
                $number = substr($vids,-3,1);
                }elseif($length=="27"){
                $number = substr($vids,-4,2);
                }elseif($length=="26"){
                $number = substr($vids,-4,3);
                }*/
                $vdetails=$this->db->query("SELECT * FROM vendor WHERE vendor_id=$number");
                $vdet=$vdetails->row();
                //echo "SELECT COUNT(*)  FROM product WHERE added_by='$vids'";
                $countproduct=$this->db->query("SELECT * FROM product WHERE added_by='$vidss'");
                $count=$countproduct->num_rows();


                if($vids !='{"type":"admin","id":"1"}'){
                    $rating = $this->crud_model->vendor_rating($number);
                    if($rating=="1.00"){
                        $star="1star.png";
                    }elseif($rating=="2.00"){
                        $star="2star.png";
                    }if($rating=="3.00"){
                        $star="3star.png";
                    }if($rating=="4.00"){
                        $star="4star.png";
                    }if($rating=="5.00"){
                        $star="5star.png";
                    }else{
                        $star="0star.png";
                    }
                    //echo "SELECT SUM(rating_num) FROM product WHERE added_by='$vids'";


                    ?>
                    <?php  ?>
                    <div class="vendorinformation_dtls">
                        <table>
                            <tr>
                                <td class="tabletoptitle">SELLER INFORMATION</td>
                                <td><span class="vendorreviewstar"><img src="<?php echo base_url(); ?>template/front/img/<?php echo $star; ?>" alt="Home"/></span></td>
                                <td class="text-center tabletoptitle">0</td>
                                <td class="text-center tabletoptitle"><?php echo $count; ?></td>
                            </tr>
                            <tr>

                                <td>Sold By: <?php echo $this->crud_model->product_by($row['product_id'],'with_link');?></td>
                                <td class="text-left">Location:  <?php echo $vdet->address1 ; ?></td>
                                <td class="text-center">Reviews</td>
                                <td class="text-center">Products</td>
                            </tr>
                        </table>
                    </div>
                <?php }  ?>
            </div>
            <div class = "col-md-12 col-sm-12 col-xs-12">
                <div  style = "  border-radius: 5px;    padding: 10px;width: 57%;    margin-top: 20px;    background-color: #ece9de;" >
                    <p style = "margin-bottom: 0px;">Have a question about the item?
                    <div>
                        <label for="modal" class="" style="    float: right;    margin-top: -22px;      margin-right: 225px;">
                            <div class="" style = " font-size: 13px;    margin-left: 30px;    text-transform: initial;     text-decoration-line: underline;">Send the seller a message.</div>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>




</section>

<!-- /PAGE -->

<script>
    $(".img").click(function(){
        var src = $(this).data('src');
        $("#set_image").attr("src", src);
        $(".related-product").removeClass("selected");
        $(this).closest(".related-product").addClass("selected");
    });
    $(document).ready(function() {
        $("#main1").addClass("selected");
        var src=$("#main1").find(".img").data('src');
        $("#set_image").attr("src", src);
    });

    $(function(){
        //setTimeout(function(){
        $('.zoom').zoome({hoverEf:'transparent',showZoomState:true,magnifierSize:[200,200]});
        //}, 3000);

    });

    function destroyZoome(obj){
        if(obj.parent().hasClass('zm-wrap'))
        {
            obj.unwrap().next().remove();
        }
    }
</script>
<script>
    $('body').on('click', '.rev_show', function(){
        $('.ratings_show').hide('fast');
        $('.inp_rev').show('slow');
    });
</script>
<style>
    .rate_it{
        display:none;
    }

    .product-single .badges div{
        padding: 0 5px !important;
    }

    .product-price del {
        font-weight: 400;
        font-size: 24px;
    }
</style>
<!--compose-->
<!--<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js'></script>-->
<script src="js/index.js"></script>
<!---->