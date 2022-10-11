@extends('front.layout.app')

@section('meta_title') {{ $product->meta_title }} @endsection
@section('meta_desciption') {{ $product->meta_description }} @endsection
@section('meta_keyword') {{ $product->meta_keyword }} @endsection

@section('container')

<link rel="stylesheet" href="{{asset('/tobii-production/dist/tobii.min.css')}}">
<div id="content">
     <a href="#" id="manual"></a>
</div>

<section class="after-head top-block-page with-back white-curve-after section-white-text">
    <div class="overflow-back bg-orange"></div>
    <div class="content-offs-stick my-5 container">
        <div class="section-solid with-back">
            <div class="full-block">
             <img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut2.png') }}" alt="" data-size="280px" data-at="10%;bottom 35%" /><img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut1.png') }}" alt="" data-size="137px" data-at="right 5%;35%" /><img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut1.png') }}" alt="" data-size="50px" data-at="65%;0%;-25deg" />
            </div>
            <div class="z-index-4 position-relative text-center">
                <h1 class="section-title">{{$product->name}}</h1>
                <div class="mt-3">
                    <div class="page-breadcrumbs"><a class="content-link" href="{{ route('index') }}">Home</a><span class="mx-2">\</span><span>{{$product['category']['name']}}</span><span class="mx-2">\</span><span>{{$product->name}}</span></div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section">
                <div class="entity">
                    <div class="grid col-auto px-0 row">
                        <div class="col-md-6" id="neserow2">

                            <div class="position-relative entity-image" style="width:100%;height:100%">
                                <a href="{{ $product->getFirstMediaUrl('images') }}" style="width:100%;height:100%" data-group="image-{{$product->id}}" class="lightbox"
                                  > 
                                    <img src="{{ $product->getFirstMediaUrl('images') }}" style="width:100%;height:100%"> 
                                </a>
                               
                                {{-- <img class="w-100" src="http://via.placeholder.com/720x540" alt="" /> --}}
                           
                            </div>
                        </div>
                        <div class="col" >
                        <h2 style="margin-top:30px" class="mb-2 entity-title">{{$product->name}}</h2>
                         <p >{!! $product->desc !!}</p>
                          <div class="entity-bottom-line" style="margin-top:25px;">
                             <div class="entity-action-btns"><a class="btn-sm btn btn-theme" href="mailto:{{$contacts->email}}">{{ __('static.btn2') }}</a></div>
                         </div>
                        </div>
                    </div>
                  
            </section>
        </div>



<!--   <div class="sidebar section order-lg-last">
        
<section class="section-sidebar">
                <div class="mb-4 section-head">
                    <h3 class="section-title h4"><span>{{ __('static.single_title') }}</span></h3>
                </div>
                <div class="grid row">

               @foreach ($all as $allp )
                   

                    <div class="col-md-6 col-lg-12">
                        <article class="entity">
                            <div class="grid-sm row">
                                <div class="col-sm-5"><a class="entity-preview-show-up entity-preview" href="{{route('single',['slug1' => $product['category']['slug'],'slug2'=>$allp->slug])}}"><span class="embed-responsive embed-responsive-6by4"><img class="embed-responsive-item" src="{{$allp->getFirstMediaUrl('images')}}" alt="" style="object-fit:cover" /></span></a></div>
                                <div class="col">
                                    <h4 class="h5 mb-1 entity-title"><a class="content-link" href="{{route('single',['slug1' => $product['category']['slug'],'slug2'=>$allp->slug])}}">{{$allp->name}}</a></h4>
                               
                                </div>
                            </div>
                        </article>
                    </div>
                    @endforeach
                </div>
            </section>
      
         
        </div> -->

    </div>
</div>

<div class="container">
    <div class="sidebar-container">
        <div class="content">
          
            <section class="section2" style="margin-bottom:40px">
             <h3 class="section-title h4" style="margin-bottom:20px"><span>{{ __('static.single_title') }}</span></h3>
                <div class="grid row">
  
                  @foreach ($all as $product )
                      

                    <div class="col-12 col-lg-4 d-flex">
                        <article class="entity-block entity-hover-shadow"><a class="entity-preview-show-up entity-preview" href="{{ route('single',['slug1' => $product['category']['slug'],'slug2'=>$product->slug]) }}"><span class="embed-responsive embed-responsive-4by3">
                            <img class="embed-responsive-item" src="{{$product->getFirstMediaUrl('images')}}" alt="" id="coverimg"  /></span></a>
                            <div class="fill-color-line" data-role="fill-line">
                                <div class="opacity-30 fill-line-segment bg-theme" data-role="fill-line-segment" data-min-width="10" data-preffered-width="50" data-max-width="80"></div>
                                <div class="opacity-60 fill-line-segment bg-theme" data-role="fill-line-segment" data-min-width="10" data-preffered-width="50" data-max-width="80"></div>
                                <div class="fill-line-segment bg-theme" data-role="fill-line-segment" data-min-width="10" data-preffered-width="50" data-max-width="80"></div>
                            </div>
                            <div class="entity-content">
                                <h4 class="entity-title"><a class="content-link" href="{{ route('single',['slug1' => $product['category']['slug'],'slug2'=>$product->slug]) }}">{{$product->name}}</a></h4>
                                <p class="entity-text">{{$product->short_desc}}
                                </p>
                                <div class="entity-bottom-line">
                                   
                                    <div class="entity-action-btns"><a class="btn-sm btn btn-theme" href="{{route('single',['slug1' => $product['category']['slug'],'slug2'=>$product->slug])}}">{{ __('static.btn2') }}</a></div>
                                </div>
                            </div>
                        </article>
                    </div>
                    @endforeach

                </div>
              
            </section>
        </div>
       
    </div>
</div>


<div class="image-datas">
  
    @foreach ($gallery as $article)
    @foreach ($article->getMedia('images') as $image)
  
        <a href="{{ asset($image->getUrl()) }}" 
            data-group="image-{{$product->id}}"  class="lightbox"></a>

      
    
            @endforeach
    @endforeach
    {{-- <a href="{{ $g->getMedia('images') }}" 
    data-group="image-{{$g->id}}"  class="lightbox"></a> --}}
   

    </div>
    


    <script src="{{asset('/tobii-production/dist/tobii.min.js')}}"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>

   <script>
//prepare manual executions
let manual = document.getElementById('manual')
manual.classList.add('lightbox')
manual.attributes.group = 'manual'

//init
const tobii = new Tobii()

//set events
tobii.on('open', function (e) {
 if(e.detail.group === 'events')
   console.log('event: ' + 'open', e.detail)
})
tobii.on('previous', function (e) {
 if(e.detail.group === 'events')
   console.log('event: ' + 'previous', e.detail)
})
tobii.on('next', function (e) {
 if(e.detail.group === 'events')
   console.log('event: ' + 'next', e.detail)
})
tobii.on('close', function (e) {
 if(e.detail.group === 'events')
   console.log('event: ' + 'close', e.detail)
})
</script>


@endsection