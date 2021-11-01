<form action="<?php echo site_url('filter_product.aspx') ?>" class="form-horizontal" method="post">
    <?php echo form_hidden('search', '1'); ?>
    <div class="form-group">
        <label class="col-sm-4">Nama Produk</label>
        <div class="col-sm-8">
            <input type="text" placeholder="Masukkan Nama Produk" autocomplete="off" maxlength="30" class="form-control" name="product">
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-4">Kategori</label>
        <div class="col-sm-8">
            <select name="category" class="form-control">
                <option value="">Pilih Kategori</option>
                <?php foreach ($category as $value => $row): ?>
                    <option value="<?php echo $row->id_category ?>"><?php echo $row->category ?></option>
                <?php endforeach ?>
            </select>
        </div>
    </div>
    <center>
        <button type="submit" class="btn btn-default"><i class="fa fa-search"></i> Cari</button>
    </center>
</form>