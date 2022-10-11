@extends('front.layout.app')

@section('meta_title') {{ $category->meta_title }} @endsection
@section('meta_desciption') {{ $category->meta_description }} @endsection
@section('meta_keyword') {{ $category->meta_keyword }} @endsection

@section('container')

<section class="after-head top-block-page with-back white-curve-after section-white-text">
    <div class="overflow-back bg-orange"></div>
    <div class="content-offs-stick my-5 container">
        <div class="section-solid with-back">
            <div class="full-block">
     <img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut2.png') }}" alt="" data-size="280px" data-at="10%;bottom 35%" /><img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut1.png') }}" alt="" data-size="137px" data-at="right 5%;35%" /><img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut1.png') }}" alt="" data-size="50px" data-at="65%;0%;-25deg" />
            </div>
            <div class="z-index-4 position-relative text-center">
                <h1 class="section-title">{{$category->name}}</h1>
                <div class="mt-3">
                    <div class="page-breadcrumbs"><a class="content-link" href="{{ route('index') }}">Home</a><span class="mx-2">\</span><span>{{$category->name}}</span></div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="sidebar-container">
        <div class="content">
            <section class="section">
                <div class="grid row">

                  @foreach ($products as $product )
                      

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

   
@endsection