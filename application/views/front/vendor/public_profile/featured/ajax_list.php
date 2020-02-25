<div class="row products grid">
<?php
	foreach($products as $row){
?>
    <div class="col-md-3 col-sm-6 col-xs-6">
        <?php echo $this->html_model->product_box($row, 'grid', '1'); ?>
    </div>
<?php
	}
?>
</div>
<div class="pagination-wrapper">  
	<?php echo $this->ajax_pagination->create_links();  ?>
</div>
<style type="text/css">
	h4.caption-title {
		height: 61px;
	}
	.products.list .thumbnail .price {
	    float: none;
	    margin-bottom: 0;
	}
</style>
<script>
	$(document).ready(function() {
		load_iamges();
	});	
</script>


<script>
    chkpwd = function (validate){

        var str = document.getElementById('pass').value;
        if(str.length >8)
        {
            document.getElementById('demo').innerHTML = "password length must be 8 char";
            document.getElementById('demo').style.color = "Red";
            return('too_short');

        }
        else if (str.search(/[0-9]/ == -1)){
            document.getElementById('demo').innerHTML = "At least 1 numeric value must be 8 enter";
            document.getElementById('demo').style.color = "Red";
            return('no_number');
        }

        else if (str.search(/[a-z]/ == -1)){
            document.getElementById('demo').innerHTML = "At least 1 small letter must be 8 enter";
            document.getElementById('demo').style.color = "Red";
            return('no_letter');
        }

        else if (str.search(/[A-Z]/ == -1)){
            document.getElementById('demo').innerHTML = "At least 1 Upper letter must be 8 enter";
            document.getElementById('demo').style.color = "Red";
            return('no_Uletter');
        }

        else if (str.search(/[!\@\#\$\%\^\&\(\)\_\+\.\,\;\:]/ == -1)){
            document.getElementById('demo').innerHTML = "At least 1 Special letter must be 8 enter";
            document.getElementById('demo').style.color = "Green";
            return('ok');
        }

        document.getElementById('demo').innerHTML = "Successful";
        document.getElementById('demo').style.color = "Red";

    }
</script>

<p id = 'demo'> </p>
<input id = "pass" type="text" size="0" maxlength="8"><input>
<input type="button" value = "validate" onclick="chkpwd()"><input>