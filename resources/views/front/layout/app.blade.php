<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

        <title>@yield('meta_title')</title>
        <meta name="description" content='@yield('meta_desciption')'  />
        <meta name="keyword" content='@yield('meta_keyword')' />

        <!-- Bootstrap -->
        <link href="{{ asset('/front/assets/bootstrap/css/bootstrap.css') }}" rel="stylesheet" type="text/css" />
        <!-- Animate.css -->
        <link href="{{ asset('/front/assets/animate.css/animate.css') }}" rel="stylesheet" type="text/css" />
        <!-- Font Awesome iconic font -->
        <link href="{{ asset('front/assets/fontawesome/css/all.css') }}" rel="stylesheet" type="text/css" />
        <!-- Slick carousel -->
        <link href="{{ asset('/front/assets/slick/slick.css') }}" rel="stylesheet" type="text/css" />
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;700&display=swap" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
        <!-- Theme styles -->
        <link href="{{ asset('/front/assets/css/theme.css') }}" rel="stylesheet" type="text/css">

        @toastr_css

        <style>
#coverimg{
    object-fit:cover;
}
.scroll {
background-color:white;
height: 100px;
box-shadow: 4px 1px 3px grey
}
#navbar{
    position:fixed;
}


@media screen and (max-width: 375px){
.header-colorfull .navbar-brand .logo-element-line .logo-text img{
width: 99%;
height: 47px;
margin-left: -24px;
}
.scroll {
background-color:white;
height: 86px;
box-shadow: 4px 1px 3px grey;
}
#navbar2{
height:5rem !important;
}
#whitecolor{
color:#276955 ;
}
.entity-bottom-line{
display:flex;
justify-content:center;
}
.entity-image{
padding:0px !important;
}
#neserow{
text-align:center;
}
#neserow2{
    padding-left: 18px;
    margin-left: 0px;
}
}
@media (min-width: 376px) and (max-width: 571px){
.header-colorfull .navbar-brand .logo-element-line .logo-text img{
    width: 99%;
    height: 54px;
    margin-left: -18px;
}
.scroll {
background-color:white;
height: 100px;
box-shadow: 4px 1px 3px grey
}
#navbar2{
height:5rem !important;
}
#whitecolor{
color:#276955  ;
}
.entity-bottom-line{
display:flex;
justify-content:center;
}
.entity-image{
padding:0px !important;
}
#neserow{
text-align:center;
}
#neserow2{
    padding-left: 18px;
    margin-left: 0px;
}
}
@media (min-width: 572px) and (max-width: 970px){
.header-colorfull .navbar-brand .logo-element-line .logo-text img{
    width: 99%;
    height: 54px;
    margin-left: -18px;
}
.scroll {
background-color:white;
height: 100px;
box-shadow: 4px 1px 3px grey
}
#whitecolor{
color:#276955 ;
}
.entity-bottom-line{
display:flex;
justify-content:center;
}
#neserow{
text-align:center;
}
#neserow2{
    padding-left: 18px;
    margin-left: 0px;
}

}


@media screen and (min-width: 971px){
.header-colorfull .navbar-brand .logo-element-line .logo-text img{
width:100%;
height:60px;
}
.scroll {
background-color: white;
height: 100px;
box-shadow: 4px 1px 3px grey
}
#whitecolor{
color:#276955  ;
}
.header-horizontal .navbar-nav > .nav-item,
.header-view-side .navbar-info-value{
color:white ;
}

#fontp{
font-size:19px;
}
#newimg{
    margin-left:-20px !important;
}
}
#newbox{
    border: 1px solid #80808026;
    border-radius: 18px;
    box-shadow: 0 0 0.5rem rgb(0 0 0 / 10%);
}
.yeniklas li{
    color:black !important;
}
.yeniklas2 p{
    color:black ;
}
.yeniimg2{
    filter:invert(1) brightness(2.5);
}


        </style>
     
          <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
    </head>

    <body class="body">
        <div class="page-loader cube-loader">
            <div class="loader-wrap">
                <div class="loader-1 loader-element"></div>
                <div class="loader-2 loader-element"></div>
                <div class="loader-4 loader-element"></div>
                <div class="loader-3 loader-element"></div>
            </div>
        </div>
        <header class="header-colorfull header-horizontal header-over header-view-side" id="navbar">
            <div class="container">
                <nav class="navbar" id="navbar2"><a class="navbar-brand" href="{{ route('index') }}">
                <span class="logo-element-line"><span class="logo-icon">
                <span class="svg-content svg-fill-theme" data-svg="./assets/images/svg/logo-part.svg"></span></span>
                <span class="logo-text" id="yeniimg">
                 <img src="{{ asset('/logo/logo_transparent_background.png') }}"  alt="err"></span></span></a>
                    <button class="navbar-toggler" type="button"><i class="fas fa-bars nav-show"></i><i class="fas fa-times nav-hide"></i></button>
                    <div class="navbar-collapse">
                        <div class="container">
                            <ul class="navbar-nav"  id="nav-item">
                                <li class="nav-item">
                    
                                    <a class="nav-link"
                                    @if(Request::segment(1) === 'about') id="whitecolor" @endif href="{{ route('about') }}">{{ __('static.about') }}</a>
                               
                               </li>
                             
                                </li>
                                
                                <li class="nav-item nav-item-arrow-down nav-hover-show-sub" style="z-index:99999"  >

                                    <a class="nav-link" href="{{route('products')}}"   @if(Request::segment(1) === 'products' || Request::segment(1) === 'single') id="whitecolor" @endif data-role="nav-toggler">{{ __('static.products') }}<span class="nav-arrow"><i class="fas fa-chevron-down"></i></span></a>

                                    <ul class="collapse nav">
                                    @foreach ($categories as $category)
                                      @if($category->category_id === null)
                                         @php
                                          $cat2 = \App\Models\Category::where('category_id',$category->id)->get();
                                         @endphp
                                        <li class="nav-item nav-item-arrow-down nav-hover-show-sub"><a class="nav-link" href="{{route('category',['slug'=> $category->slug])}}" data-role="nav-toggler">{{$category->name}}<span class="nav-arrow"><i class="fas fa-chevron-down"></i></span></a>
                                         <ul class="collapse nav">
                                         @foreach($cat2 as $c2)
                                           @if($c2->category_id !== null)
                                                <li class="nav-item nav-item-arrow-down nav-hover-show-sub"><a class="nav-link" href="#" data-role="nav-toggler">{{$c2->name}}<span class="nav-arrow"><i class="fas fa-chevron-down"></i></span></a>
                                                  @php
                                              $products = \App\Models\Product::where('category_id',$c2->id)->get();
                                            @endphp
                                               <ul class="collapse nav">
                                                     @foreach ( $products as $product)
                                                      <li class="nav-item" ><a class="nav-link"  href="{{route('single',[ 'slug1'=>$product['category']['slug'], 'slug2'=>$product->slug])}}">{{$product->name}}</a></li>
                                                @endforeach
                                                    </ul>
                                                </li>
                                                   @endif
                                                @endforeach
                                             
                                                 @php
                                              $products2 = \App\Models\Product::where('category_id',$category->id)->get();
                                          @endphp
                                        
                                                @foreach ( $products2 as $product2)

                                                <li class="nav-item" ><a class="nav-link"  href="{{route('single',[ 'slug1'=>$product2['category']['slug'], 'slug2'=>$product2->slug])}}">{{$product2->name}}</a></li>
                                                @endforeach
                                            

                                            </ul>
                                       
                                       
                              @endif
                           <!--    <li class="nav-item nav-item-arrow-down nav-hover-show-sub"><a class="nav-link" href="{{route('category',['slug'=> $category->slug])}}" data-role="nav-toggler">{{$category->name}}<span class="nav-arrow"><i class="fas fa-chevron-down"></i></span></a>
                                       
                                          @php
                                              $products = \App\Models\Product::where('category_id',$category->id)->get();
                                          @endphp
                                            <ul class="collapse nav">
                                                @foreach ( $products as $product)

                                                <li class="nav-item" ><a class="nav-link"  href="{{route('single',[ 'slug1'=>$product['category']['slug'], 'slug2'=>$product->slug])}}">{{$product->name}}</a></li>
                                                @endforeach
                                            </ul>
                                          
                                        </li> -->
                                     


                                      

                                        @endforeach
                                    </ul>
                                </li>

                                <li class="nav-item" ><a class="nav-link"  @if(Request::segment(1) === 'keyfiyyet') id="whitecolor" @endif href="{{ route('quality') }}">{{ __('static.quality') }}</a></li>
                                <li class="nav-item" ><a class="nav-link"   @if(Request::segment(1) === 'contact') id="whitecolor" @endif  href="{{ route('contact') }}">{{ __('static.contact') }}</a></li>
                            </ul>
                            <div class="navbar-extra">
                                <div class="navbar-info">
                                    <div class="navbar-info-title"><i class="fa fa-phone" aria-hidden="true" style="font-size:18px"></i></div>
                                    <a href="tel:{{$contacts->phone}}"  target="_blank"> 
                                      <div class="navbar-info-value" style="font-size:20px" id="qaratel"> <p>{{$contacts->phone}}  </p> </div></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </nav>
            </div>
        </header>


        @yield('container')


<div class="scroll-top">
<i class="fas fa-long-arrow-alt-up"></i>
</div>
<div class="scroll-top" style="margin-bottom: 56px;">
<a href="tel:{{$contacts->phone}}" target="_blank"><i style="color:white" class="fab fa-whatsapp" aria-hidden="true"></i></a>
</div>

<div class="scroll-top" style="margin-bottom: 112px;">
<a href="mailto:{{$contacts->email}}"  target="_blank"><i  style="color:white" class="fa fa-envelope"></i> </a>
</div>



 <footer class="white-curve-before curve-before-80 page-footer footer-view-links section-white-text">
            <div class="overflow-back bg-vegetables-pattern-white opacity-3"></div>
            <div class="footer-body">
                <div class="container">
                    <nav class="footer-navbar">
                        <div class="grid row">
                            <div class="col-md-4 col-lg-4"><a class="navbar-brand" href="{{ route('index') }}"><span class="logo-element-line"><span class="logo-icon"><span class="svg-content svg-fill-theme" data-svg="./assets/images/svg/logo-part.svg"></span></span>
                            <span class="logo-text" id="newimg"><img src="{{ asset('/logo/white_logo_transparent_background.png') }}" alt="err" width="100%" height="60px"></span></span></a>
                                <p class="footer-text">{{ __('static.footer2') }} </p>
                      
                            </div>
                           
                                    <div class="col-md-2">
                                        <h5 class="footer-title">{{ __('static.site_map') }}</h5>
                                        <ul class="nav">
                                            <li class="nav-item"><a class="nav-link" href="{{ route('contact') }}">{{ __('static.about') }}</a></li>
                                            <li class="nav-item"><a class="nav-link" href="{{ route('products') }}">{{ __('static.products') }}</a></li>
                                            <li class="nav-item"><a class="nav-link" href="{{ route('quality') }}">{{ __('static.quality') }}</a></li>
                                            <li class="nav-item"><a class="nav-link" href="{{ route('contact') }}">{{ __('static.contact') }}</a></li>
                                        </ul>
                                    </div>
                               
                                    <div class="col-md-2">
                                        <h5 class="footer-title">Products</h5>
                                        <ul class="nav">
                                            @php
                                            $category = App\Models\Category::get();

                                            @endphp
                                            @foreach ($category as $cat)
                                            @if($cat->id !== 1)
                                                
                                            <li class="nav-item"><a class="nav-link" href="{{ route('category',['slug'=> $cat->slug]) }}">{{ $cat->name }}</a></li>
                                               @endif
                                            @endforeach
                                    
                                        </ul>
                               
                         
                            </div>
                            <div class="col-md-4 col-lg-4 order-lg-last">
                                <h5 class="footer-title">{{ __('static.our_info') }}</h5>
                                <p class="footer-text-info"><i class="fa fa-phone" aria-hidden="true"></i> &nbsp; <a href="tel:{{ $contacts->phone }}" style="color:white" target="_blank" > {{ $contacts->phone }} </a><br />
                                @if($contacts->phone2 !== null)
                                <i class="fa fa-phone" aria-hidden="true"></i> &nbsp; <a href="tel:{{ $contacts->phone2 }}" style="color:white" target="_blank" > {{ $contacts->phone2 }} </a><br />
                                @endif
                                @if($contacts->email2 !== null)
                                   <i class="fa fa-envelope" aria-hidden="true"></i> &nbsp;  <a href="mailto:{{ $contacts->email2 }}" style="color:white" target="_blank" > {{ $contacts->email2 }} </a> <br /> 
                              
                                @endif

                                 <i class="fa fa-envelope" aria-hidden="true"></i> &nbsp;  <a href="mailto:{{ $contacts->email }}" style="color:white" target="_blank" > {{ $contacts->email }} </a> <br /> 
                                 <i class="fa fa-map-marker" aria-hidden="true"></i> &nbsp; {{ $contacts->address }}
                                </p>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="footer-copy">
                <div class="container"><div style="display: flex; justify-content: space-between;">
                    <p> &copy; {{ __('static.footer1') }} </p> 
                    <a href="https://jedai.az/az/saytlarin-hazirlanmasi" target="_blank">
                        Site By 
                        <img src="{{ asset('/logo/jedai (2).png') }}" height="15px" style="filter: invert(1) brightness(2.5);">
                     </a>  </div>
                     
            
                </div>
            </div>
        
        </footer>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>



        <script>
    var myNav = document.getElementById("navbar");
    var myNav2 = document.getElementById("nav-item");
    var qaratel = document.getElementById("qaratel");
    var yeniimg = document.getElementById("yeniimg");

   window.onscroll = function() {
      "use strict";
      if (document.body.scrollTop >= 280 || document.documentElement.scrollTop >= 280) {
        myNav.classList.add("scroll");
        document.getElementById("navbar2").style.height = "7rem";
        myNav2.classList.add('yeniklas');
        qaratel.classList.add('yeniklas2');
        yeniimg.classList.remove('yeniimg2');
        
     } else {
      myNav.classList.remove("scroll");
      myNav2.classList.remove('yeniklas');
      qaratel.classList.remove('yeniklas2');
      yeniimg.classList.add('yeniimg2');

  }
};

            </script>

        <!-- jQuery library -->
        <script src="{{ asset('/front/assets/jquery/jquery-3.3.1.js') }}"></script>
        <!-- Bootstrap -->
        <script src="{{ asset('/front/assets/bootstrap/js/bootstrap.js') }}"></script>
        <!-- Shuffle -->
        <script src="{{ asset('/front/assets/shuffle/shuffle.min.js') }}"></script>
        <!-- Waypoints -->
        <script src="{{ asset('/front/assets/waypoints/jquery.waypoints.min.js') }}"></script>
        <!-- Slick carousel -->
        <script src="{{ asset('/front/assets/slick/slick.min.js') }}"></script>
        <!-- JavaScript Cookie -->
        <script src="{{ asset('/front/assets/js-cookie/js.cookie.js') }}" type="text/javascript"></script>
        <!-- Google maps styles -->
        <script src="{{ asset('/front/assets/js/gmap/silver.js') }}"></script>
        <!-- Inits product scripts -->
        <script src="{{ asset('/front/assets/js/script.js') }}"></script>
        <!-- Google maps -->
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap"></script>

        @toastr_js
        @toastr_render



    </body>
</html>