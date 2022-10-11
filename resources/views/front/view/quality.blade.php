@extends('front.layout.app')

@section('meta_title', __("static.quality_title"))
@section('meta_desciption', __("static.quality_description"))
@section('meta_keyword', __("static.quality_keyword"))

@section('container')

<style>
#contentid{
    padding-top:0px !important;
    padding-bottom:3rem !important;
}
</style>


<section class="after-head top-block-page with-back white-curve-after section-white-text">
    <div class="overflow-back">
        <div class="overflow-back cover-image mw-100" data-background="{{ asset('/Quality/qcover.jpg') }}"></div>
        <div class="overflow-back bg-crimson opacity-50"></div>
    </div>
    <div class="content-offs-stick my-5 container">
        <div class="section-solid">
            <div class="z-index-4 position-relative">
                <h1 class="section-title">{{ __('static.quality_title') }}</h1>
                <div class="mt-3">
                    <div class="page-breadcrumbs"><a class="content-link" href="{{route('index')}}">Home</a><span class="mx-2">\</span><span>{{ __('static.quality_title') }}</span></div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="section">
    <div class="container">
        <div class="row"> 
        <div class="col-md-12"> 
            <div class="entity-image" data-aos="fade-up"><img class="w-100" src="{{ asset('/Quality/then.jpg') }}" alt="" /></div>
           
        </div>
        <div class="col-md-12" data-aos="fade-up"> <article class="entity-side-image ">
              
            <div class="entity-content" id="contentid">
                <h2 class="entity-title">{{ __('static.quality_title_1') }}</h2>
                <p class="entity-text">{{ __('static.quality_title_2') }}
                </p>
            </div>
        </article>
     </div>
     <div class="col-md-12">
        <div class="entity-image" data-aos="fade-up"><img class="w-100" src="{{ asset('/Quality/quality control1.jpg') }}" alt="" /></div>
</div>
     <div class="col-md-12" data-aos="fade-up"> 
        <article class="entity-side-image">
            <div class="entity-content" id="contentid">
                <h2 class="entity-title">{{ __('static.quality_title_3') }}</h2>
            
                <p class="entity-text">{{ __('static.quality_title_4') }}
                </p>
            </div>
        </article>
    </div>
     

        <div class="col-md-12"> 
            <div class="entity-image" data-aos="fade-up"><img class="w-100" src="{{ asset('/Quality/production process.jpg') }}" alt="" /></div>
        </div>
        <div class="col-md-12" data-aos="fade-up">
            <article class="entity-side-image entity-image-left">
              
                <div class="entity-content" id="contentid" >
                    <h2 class="entity-title">{{ __('static.quality_title_5') }}</h2>
                    <p class="entity-text">{{ __('static.quality_title_6') }} </p>
                    <p class="entity-text">{{ __('static.quality_title_7') }}  </p>
                    <p class="entity-text">{{ __('static.quality_title_8') }}  </p>
                    <p class="entity-text">{{ __('static.quality_title_9') }}  </p>
                    <p class="entity-text">{{ __('static.quality_title_10') }}  </p>
                </div>
            </article> </div>

        </div>
    </div>

     
    </div>
</section>




 <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
@endsection