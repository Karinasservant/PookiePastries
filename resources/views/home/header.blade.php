<!-- header section starts -->
<header class="header_section">
  <style>
    .nav-item.active a {
      color: white; /* Change this to your desired active link color */
    }
  </style>
  <nav class="navbar navbar-expand-lg custom_nav-container">
    <a class="navbar-brand" href="{{url('/')}}">
      <img width="100px" src="images/pastry.png">
      <span style="font-size: 50px">Pookie Pastries</span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class=""></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="{{url('/')}}">Home <span class="sr-only"></span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{url('/shop')}}">Shop</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{url('/about')}}">About Us</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{url('/pnp')}}">Privacy Policy</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="{{url('/contact')}}">Contact Us</a>
        </li>
      </ul>
      <div class="user_option">
        @if (Route::has('login'))
        @auth
        <a href="{{url('myorders')}}">
          My Orders
        </a>

        <a href="{{url('mycart')}}">
          <i class="fa fa-shopping-bag" aria-hidden="true"></i>
          [{{$count}}]
        </a>

        <a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" class="btn btn-primary" style="margin-left: 10px; background-color:brown">
          Logout
        </a>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
          @csrf
        </form>
        @else
        <a href="{{url('/login')}}">
          <i class="fa fa-user" aria-hidden="true"></i>
          <span>Login</span>
        </a>

        <a href="{{url('/register')}}">
          <i class="fa fa-vcard" aria-hidden="true"></i>
          <span>Register</span>
        </a>
        @endauth
        @endif
      </div>
    </div>
  </nav>
  <script>
    // Get all the navigation links
    const navLinks = document.querySelectorAll('.nav-link');

    // Add event listener to each link
    navLinks.forEach(link => {
      link.addEventListener('click', () => {
        // Remove 'active' class from all links
        navLinks.forEach(navLink => {
          navLink.parentElement.classList.remove('active');
        });

        // Add 'active' class to the clicked link
        link.parentElement.classList.add('active');
      });
    });
  </script>
</header>
<!-- header section ends -->
