<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<section id="home-section" class="hero">
  <div class="home-slider owl-carousel">
    <div class="slider-item" style="background-image: url(<?php echo get_theme_uri('images/NILSINE.png'); ?>);">
      <div class="overlay"></div>
      <div class="container">
        <div class="row slider-text justify-content-center align-items-center" data-scrollax-parent="true">
          <div class="col-md-12 ftco-animate text-center" style="margin-top: 560px;">
           <p><a href="#products" class="btn btn-primary">Belanja Sekarang</a></p>
         </div>
       </div>
     </div>
   </div>
 </div>
</section>

<section id="Home-sect" class="ftco-section img mt-5" style="background-image: url(<?php echo get_theme_uri('images/bg_4.jpg'); ?>); height: 100px;">
  <h1 class="display-4 text-center" style="margin-top: -60px; text-shadow: 2px, 2px, 2px, black">Selamat Datang di Website kami. <br>  Dapatkan koupon untuk 100 orang pertama!</h1> 
</section>

<section class="ftco-section" id="products">
  <div class="container">
    <div class="row no-gutters ftco-services">
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0 mb-4">
          <div class="icon bg-color-1 active d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-heartbeat"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">Inherit</h3>
            <span>Pelayanan Sepenuh Hati</span>
          </div>
        </div>      
      </div>
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0 mb-4">
          <div class="icon bg-color-2 d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-credit-card"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">PEMBAYARAN MUDAH</h3>
            <span>Tersedia Pembayaran Debit / Kartu kredit</span>
          </div>
        </div>    
      </div>
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0 mb-4">
          <div class="icon bg-color-3 d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-shipping-fast"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">GRATIS ONGKIR</h3>
            <span>Belanja minimal Rp <?php echo format_rupiah(get_settings('min_shop_to_free_shipping_cost')); ?></span>
          </div>
        </div>      
      </div>
      <div class="col-md-3 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services mb-md-0 mb-4">
          <div class="icon bg-color-4 d-flex justify-content-center align-items-center mb-2">
            <span class="fa fa-user"></span>
          </div>
          <div class="media-body">
            <h3 class="heading">Bantuan</h3>
            <span>Bantuan 24/7 Selalu Online</span>
          </div>
        </div>      
      </div>
    </div>
  </div>
</section>


<section class="ftco-section">
  <div class="container">
    <div class="row justify-content-center mb-3 pb-3">
      <div class="col-md-12 heading-section text-center ftco-animate">
        <span class="subheading">Produk Terbaru</span>
        <h2 class="mb-4"><?php echo get_store_name(); ?></h2>
        <p><?php echo get_settings('store_tagline'); ?></p>
      </div>
    </div>   		
  </div>

  <div class="container">
    <div class="row">
      <?php if ( count($products) > 0) : ?>
        <?php foreach ($products as $product) : ?>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="product">
              <a href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>" class="img-prod">
                <img class="img-fluid" src="<?php echo base_url('assets/uploads/products/'. $product->picture_name); ?>" alt="<?php echo $product->name; ?>" style="border-radius: 20px;">
                <?php if ($product->current_discount > 0) : ?>
                  <span class="status"><?php echo count_percent_discount($product->current_discount, $product->price, 0); ?>%</span>
                <?php endif; ?>
                <div class="overlay"></div>
              </a>
              <div class="text py-3 pb-4 px-3 text-center">
                <h3><a href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>"><?php echo $product->name; ?></a></h3>
                <div class="d-flex">
                  <div class="pricing">
                    <p class="price">
                      <?php if ($product->current_discount > 0) : ?>
                        <span class="mr-2 price-dc">Rp <?php echo format_rupiah($product->price); ?></span><span class="price-sale">Rp <?php echo format_rupiah($product->price - $product->current_discount); ?></span>
                        <?php else : ?>
                          <span class="mr-2"><span class="price-sale">Rp <?php echo format_rupiah($product->price - $product->current_discount); ?></span>
                        <?php endif; ?>
                      </p>
                    </div>
                  </div>
                  <div class="bottom-area d-flex px-3">
                    <div class="m-auto d-flex">
                      <a href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>" class="buy-now d-flex justify-content-center align-items-center text-center">
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
      </div>
    </section>

    <section class="ftco-section img" style="background-image: url(<?php echo get_theme_uri('images/bg_5.png'); ?>);">
      <div class="container">
        <div class="row justify-content-end">
          <div class="col-md-6 heading-section1 ftco-animate deal-of-the-day ftco-animate text-dark">
            <span class="subheading ml-1">Produk dengan Harga Terbaik</span>
            <h5 class="display-4">Kesegaran Akhir Pekan!</h5>
            <h2 class="mb-2"> Deal of the day</h2>
            <p><?php echo $best_deal->description; ?></p>
            <h3><a href="#"><?php echo $best_deal->name; ?></a></h3>
            <span class="price text-danger">Rp<del> <?php echo format_rupiah($best_deal->price); ?></del> <a href="#">sekarang hanya Rp <?php echo format_rupiah($best_deal->price - $best_deal->current_discount); ?></a></span>
            <div id="timer" class="d-flex mt-5">
              <div class="time pl-3">
                <a href="#" class="btn btn-dark add-cart" data-sku="<?php echo $best_deal->sku; ?>" data-name="<?php echo $best_deal->name; ?>" data-price="<?php echo ($best_deal->current_discount > 0) ? ($best_deal->price - $best_deal->current_discount) : $best_deal->price; ?>" data-id="<?php echo $best_deal->id; ?>"><i class="ion-ios-cart"></i></a>
              </div>
              <div class="time pl-3">
                <a class="btn btn-info" href="<?php echo site_url('shop/product/'. $product->id .'/'. $product->sku .'/'); ?>" class="buy-now d-flex justify-content-center align-items-center text-center">
                  <span><i class="ion-ios-menu text-white"></i></span>
                </a>
              </div>
            </div>
          </div>
        </div>   		
      </div>
    </section>