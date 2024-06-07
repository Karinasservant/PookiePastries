<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pastries</title>

    <style>
        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            border: 1px solid #543310; /* Light blue border */
            margin-bottom: 20px;
        }
        
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #543310; /* Light blue border */
            color: #543310; /* Dark blue text */
        }
        
        th {
            background-color: white; /* Light blue background */
            font-weight: bold;
            color: #543310; /* Dark blue text */
        }
        
        tr:hover {
            background-color: #e4cec7; /* Light blue background on hover */
        }
        
        /* Hero Area Styling */
        /* .hero_area {
            background-color: #a3d2e2; 
            padding: 40px;
        } */

        .div_center{
            margin:60px;
        }

    </style>

    @include('home.css')
</head>
<body>
   
<div class="hero_area">
   @include('home.header')


   <div class="div_center">

    <table>
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Delivery Status</th>
            <th>Image</th>
        </tr>

        @foreach($order as $order)

        <tr>
            <td>{{$order->product->title}}</td>
            <td>₱{{$order->product->price}}</td>
            <td>{{$order->status}}</td>
            <td>
                <img height="150" width="200" src="products/{{$order->product->image}}">
            </td>
        </tr>

        @endforeach

    </table>


   </div>


</div>

@include('home.footer')

</body>
</html>