<ul class="nav nav-pills nav-stacked custom-nav">
    <li class="<?php echo active($active, 'dashboard'); ?>">
    <a href="<?php echo site_url(); ?>myshop.aspx">
    <i class="fa fa-dashboard"></i> 
    <span>Dashboard</span></a></li>
    <li class="<?php echo active(
        $active,
        'product'
    ); ?>"><a href="<?php echo site_url(); ?>product.aspx">
    <i class="fa fa-archive"></i> Produk</a></li>
    <li class="<?php echo active($active,'transaction') ?>">
        <a href="<?php echo site_url()?>toko.aspx">
            <i class="fa fa-refresh"></i> 
            <span>Transaksi</span>
        </a>
    </li>
</ul>