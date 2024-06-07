<style>
  .box {
    position: relative;
    overflow: hidden;
    transition: transform 0.3s, box-shadow 0.3s;
    background-color: #fff;
    border-radius: 10px;
    padding: 20px;
    margin-bottom: 20px;
  }

  .box:hover {
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
  }

  .img-box {
    position: relative;
  }

  .img-box img {
    width: 100%;
    transition: transform 0.3s;
    border-radius: 10px;
  }

  .box:hover .img-box img {
    transform: scale(1.1);
  }

  .detail-box {
    text-align: center;
    margin-top: 10px;
  }

  .hover-content {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    opacity: 0;
    transition: opacity 0.3s;
    display: flex;
    justify-content: center;
    gap: 20px;
  }

  .box:hover .hover-content {
    opacity: 1;
  }

  .hover-content a {
    color: white;
    font-size: 20px;
    margin: 5px;
    transition: color 0.3s, transform 0.3s;
  }

  .hover-content a:hover {
    color: brown;
    transform: scale(1.2);
  }

  .hover-content a i {
    background-color: transparent;
    padding: 10px;
    border-radius: 50%;
  }
</style>

<section class="shop_section layout_padding">
  <div class="container">
    <div class="heading_container heading_center">
    <h2 style="color: black; text-align: center; padding-top: 40px;">
        Products
      </h2>
    </div>
    <div class="row">
      @foreach($product as $product)
      <div class="col-sm-6 col-md-4 col-lg-3">
        <div class="box">
          <div class="img-box">
            <img src="products/{{$product->image}}" alt="">
            <div class="hover-content">
              <a href="{{url('product_details', $product->id)}}" title="Details">
                <i class="fas fa-info-circle"></i>
              </a>
              <a href="{{url('add_cart', $product->id)}}" title="Add to Cart">
                <i class="fas fa-shopping-cart"></i>
              </a>
            </div>
          </div>
          <div class="detail-box">
            <h6>{!! Str::limit($product->title, 11) !!}</h6>
            <h6> Price
              <span>₱{{$product->price}}</span>
            </h6>
          </div>
        </div>
      </div>
      @endforeach
    </div>
  </div>
</section>