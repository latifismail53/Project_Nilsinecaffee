<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<section id="home-section" class="hero">
  <div class="container">
    <div class="jumbotron-fluid" style="background-image: url(<?php echo get_theme_uri('images/bg.jpg'); ?>); background-size: cover; background-repeat: no-repeat; background-color: black; height: 550px; ">
      <div class="container">
        <div class="row slider-text justify-content-center align-items-center">
          <div class="col-md-12 ftco-animate text-center m-5 p-5">
            <h1 class="intro-title mb-4">Selamat Datang</h1>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<section id="work" class="sect-pt4 route">
  <div class="container">
    <div class="row">
      <div class="col-sm-12">
        <div class="title-box text-center">
          <h2 class="title-a">
            ARTIKEL
          </h2>
          <p class="subtitle-a">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit.
          </p>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="work-box">
          <div class="work-img">
            <img src="assets/themes/Cafe/images/kopi4.jpg" alt="" class="img-fluid rounded">
          </div>
          <div class="work-content">
            <div class="row">
              <div class="col-sm-8">
                <h2 class="w-title">Way to be happy</h2>
                <div class="w-more">
                  <span class="w-ctegory">Update</span><br><span class="w-date">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatum sequi blanditiis quaerat sunt modi quos?</span>
                </div>
              </div>
            </div>
          </div>
          </a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="work-box">
          <div class="work-img">
            <img src="assets/themes/Cafe/images/kopi5.jpg" alt="" class="img-fluid rounded">
          </div>
          <div class="work-content">
            <div class="row">
              <div class="col-sm-8">
                <h2 class="w-title">Way to be happy</h2>
                <div class="w-more">
                  <span class="w-ctegory">Update</span><br><span class="w-date">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatum sequi blanditiis quaerat sunt modi quos?</span>
                </div>
              </div>
            </div>
          </div>
          </a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="work-box">
          <div class="work-img">
            <img src="assets/themes/Cafe/images/kopi6.jpg" alt="" class="img-fluid rounded">
          </div>
          <div class="work-content">
            <div class="row">
              <div class="col-sm-8">
                <h2 class="w-title">Way to be happy</h2>
                <div class="w-more">
                  <span class="w-ctegory">Update</span><br><span class="w-date">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatum sequi blanditiis quaerat sunt modi quos?</span>
                </div>
              </div>
            </div>
          </div>
          </a>
        </div>
      </div>
      <div class="col-md-6">
        <div class="work-box">
          <div class="work-img">
            <img src="assets/themes/Cafe/images/kopi3.jpg" alt="" class="img-fluid rounded">
          </div>
          <div class="work-content">
            <div class="row">
              <div class="col-sm-8">
                <h2 class="w-title">Way to be happy</h2>
                <div class="w-more">
                  <span class="w-ctegory">Update</span><br><span class="w-date">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptatum sequi blanditiis quaerat sunt modi quos?</span>
                </div>
              </div>
            </div>
          </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
<section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div class="col-md-12 heading-section text-center ftco-animate">
        <h2 class="mb-4">MENU</h2>
        <span class="subheading">Produk Terbaru</span>
      </div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <?php if (count($products) > 0) : ?>
        <?php foreach ($products as $product) : ?>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="product card">
              <!-- card -->
              <a href="<?php echo site_url('shop/product/' . $product->id . '/' . $product->sku . '/'); ?>" class="img-prod">
                <img class="img-fluid" src="<?php echo base_url('assets/uploads/products/' . $product->picture_name); ?>" alt="<?php echo $product->name; ?>" style="max-height: 250px; width: fit-content;">
                <?php if ($product->current_discount > 0) : ?>
                  <span class="status">Disc <?php echo count_percent_discount($product->current_discount, $product->price, 0); ?>%</span>
                <?php endif; ?>
                <div class="overlay"></div>
              </a>
              <div class="text py-3 pb-4 px-3 text-center">
                <h3 class="font-weight-bold"><a href="<?php echo site_url('shop/product/' . $product->id . '/' . $product->sku . '/'); ?>"><?php echo $product->name; ?></a></h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price">
                      <?php if ($product->current_discount > 0) : ?>
                        <span class="mr-2 price-dc text-danger">Rp<?php echo format_rupiah($product->price); ?></span><span class="price-sale text-dark">Rp <?php echo format_rupiah($product->price - $product->current_discount); ?></span>
                      <?php else : ?>
                        <span class="mr-2"><span class="price-sale text-dark"> Rp <?php echo format_rupiah($product->price - $product->current_discount); ?></span>
                        <?php endif; ?>
                    </p>
                  </div>
                </div>
                <div class="bottom-area d-flex px-3">
                  <div class="m-auto d-flex">
                    <a href="<?php echo site_url('shop/product/' . $product->id . '/' . $product->sku . '/'); ?>" class="buy-now d-flex justify-content-center align-items-center text-center">
                      <span><i class="ion-ios-menu"></i></span>
                    </a>
                    <a href="#" class="add-to-chart add-cart d-flex justify-content-center align-items-center mx-1" data-sku="<?php echo $product->sku; ?>" data-name="<?php echo $product->name; ?>" data-price="<?php echo ($product->current_discount > 0) ? ($product->price - $product->current_discount) : $product->price; ?>" data-id="<?php echo $product->id; ?>">
                      <span><i class="ion-ios-cart"></i></span>
                    </a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      <?php else : ?>
      <?php endif; ?>
    </div>
    <span>
      <h5 class="text-center">
        <p>Ada potongan harga loh! Sebelum checkout produk kamu <br>input kode Voucher "COBAKUY" Potongan hingga <span class="text-danger">50%</span> Mari kita coba!
      </h5>
    </span>
  </div>
</section>
<section class="ftco-section" id="products">
  <div class="container">
    <div class="heading-section text-center ftco-animate">
      <h2 class="mb-1">PELAYANAN</h2>
      <p><?php echo get_settings('store_tagline'); ?></p>
    </div>
    <div class="row no-gutters ftco-services pt-3">
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0">
          <div class="icon bg-info active d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-heartbeat"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">Inherit</h3>
            <span>Pelayanan Sepenuh Hati</span>
          </div>
        </div>
      </div>
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0">
          <div class="icon bg-info d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-credit-card"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">PEMBAYARAN MUDAH</h3>
            <span>Tersedia Pembayaran Debit / Kartu kredit</span>
          </div>
        </div>
      </div>
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0">
          <div class="icon bg-info d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-shipping-fast"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">GRATIS ONGKIR</h3>
            <span>Belanja minimal Rp <?php echo format_rupiah(get_settings('min_shop_to_free_shipping_cost')); ?></span>
          </div>
        </div>
      </div>
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0">
          <div class="icon bg-info d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-user"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">Bantuan</h3>
            <span>Bantuan 24 Jam Selalu Online</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<div class="container">
  <section class="ftco-section img" style="background-image: url(<?php echo get_theme_uri('images/bg_5.png'); ?>);">
    <div class="container">
      <div class="row justify-content-end">
        <div class="col-md-6 heading-section1 ftco-animate deal-of-the-day ftco-animate text-dark">
          <span class="subheading ml-1">Produk dengan Harga Terbaik</span>
          <h1>Kesegaran Akhir Pekan!</h1>
          <h2 class="mb-2"> Deal of the day</h2>
          <p><?php echo $best_deal->description; ?></p>
          <h3><a href="" class="text-dark"><?php echo $best_deal->name; ?></a></h3>
          <span class="price text-danger">Rp<del> <?php echo format_rupiah($best_deal->price); ?></del> <a href="#">sekarang hanya Rp <?php echo format_rupiah($best_deal->price - $best_deal->current_discount); ?></a></span>
          <div id="timer" class="d-flex mt-5">
            <div class="time pl-3">
              <a href="#" class="btn btn-dark add-cart" data-sku="<?php echo $best_deal->sku; ?>" data-name="<?php echo $best_deal->name; ?>" data-price="<?php echo ($best_deal->current_discount > 0) ? ($best_deal->price - $best_deal->current_discount) : $best_deal->price; ?>" data-id="<?php echo $best_deal->id; ?>"><i class="ion-ios-cart"></i></a>
            </div>
            <div class="time pl-3">
              <a class="btn btn-info" href="<?php echo site_url('shop/product/' . $product->id . '/' . $product->sku . '/'); ?>" class="buy-now d-flex justify-content-center align-items-center text-center">
                <span><i class="ion-ios-menu text-white"></i></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
