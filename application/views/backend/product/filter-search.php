<form action="<?php echo site_url('filter_product.aspx') ?>" class="form-horizontal" method="post">
    <?php echo form_hidden('search', '1'); ?>
    <div class="form-group">
        <label class="col-sm-4">Nama Produk</label>
        <div class="col-sm-8">
            <input type="text" placeholder="Masukkan Nama Produk" autocomplete="off" maxlength="20" class="form-control" name="product" value="<?php echo $this->session->userdata('product'); ?>">
            <button type="submit" class="btn btn-default"><i class="fa fa-search"></i> Cari</button>
        </div>
    </div>
</form>