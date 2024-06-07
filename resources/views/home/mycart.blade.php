<!DOCTYPE html>
<html>

<head>
  @include('home.css')

  <style>
    .div_deg {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      margin: 60px;
    }

    table {
      border: 2px solid #543310;
      text-align: center;
      width: 800px;
      margin-top: 20px;
      border-collapse: collapse;
      background-color: white;
    }

    th {
      border: 2px solid #543310;
      text-align: center;
      color: #543310;
      font-size: 20px;
      font-weight: bold;
      background-color: white;
      padding: 10px;
    }

    td {
      border: 1px solid #543310;
      padding: 10px;
    }

    .cart_value {
      text-align: center;
      margin-top: 20px;
      padding: 18px;
      font-size: 20px;
      color: #023e8a;
    }

    .order_card {
      border: 2px solid #543310;
      width: 600px;
      padding: 20px;
      margin-top: 50px;
      background-color: white;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .order_card label {
      display: inline-block;
      width: 150px;
      margin-bottom: 10px;
      color: #543310;
    }

    .order_card input,
    .order_card textarea {
      width: calc(100% - 170px);
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #543310;
      border-radius: 4px;
    }

    .order_card .btn {
      width: 100%;
      padding: 10px;
      background-color: #543310;
      color: white;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    .order_card .btn:hover {
      background-color: white;
      color: #543310;
    }

    .order_card h3 {
      margin-top: 0;
      margin-bottom: 20px;
      color: #543310;
    }
    h3 {
      color: #543310;
    }
  </style>

  <script>
    function updateTotalValue() {
      let checkboxes = document.querySelectorAll('input[name="product"]:checked');
      let totalValue = 0;

      checkboxes.forEach((checkbox) => {
        totalValue += parseFloat(checkbox.value);
      });

      document.getElementById('total_value').innerText = '₱' + totalValue.toFixed(2);
    }
  </script>
</head>

<body>
  <div class="hero_area">
    @include('home.header')
    <!-- end header section -->
  </div>

  <div class="div_deg">
    <table>
      <tr>
        <th>Select</th>
        <th>Product Title</th>
        <th>Price</th>
        <th>Image</th>
        <th>Remove</th>
      </tr>

      @foreach($cart as $cart)
      <tr>
        <td>
          <input type="checkbox" name="product" value="{{$cart->product->price}}" onchange="updateTotalValue()">
        </td>
        <td>{{$cart->product->title}}</td>
        <td>₱{{$cart->product->price}}</td>
        <td>
          <img width="150" src="/products/{{$cart->product->image}}">
        </td>
        <td>
          <a class="btn btn-danger" href="{{ url('delete_cart', $cart->id) }}">Remove</a>
        </td>
      </tr>
      @endforeach
    </table>

    <div class="cart_value">
      <h3>Total Value of Selected Products: <span id="total_value">₱0.00</span></h3>
    </div>

    <div class="order_card">
      <h3>Place Your Order</h3>
      <form action="{{url('confirm_order')}}" method="Post">
        @csrf
        <div>
          <label>Receiver Name</label>
          <input type="text" name="name" value="{{Auth::user()->name}}">
        </div>
        <div>
          <label>Receiver Address</label>
          <textarea name="address">{{Auth::user()->address}}</textarea>
        </div>
        <div>
          <label>Receiver Phone</label>
          <input type="text" name="phone" value="{{Auth::user()->phone}}">
        </div>
        <div>
          <input class="btn" type="submit" value="Place Order">
        </div>
      </form>
    </div>
  </div>

  <!-- info section -->
  @include('home.footer')

</body>

</html>
