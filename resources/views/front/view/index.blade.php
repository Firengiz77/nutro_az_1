@extends('front.layout.app')

@section('meta_title', __("static.index_title"))
@section('meta_desciption', __("static.index_description"))
@section('meta_keyword', __("static.index_keyword"))

@section('container')

{{-- slider section --}}
<section class="white-curve-after after-head slick-top-fix section-white-text">
    <div class="slick-view-banner slick-numeric-navigation slick-carousel" data-slider="top-side-numbers">
        <div class="slick-slides">

            @foreach ($sliders as $slider)
                
            <div class="slick-slide">
                <div class="section-white-text entity-banner content-offs section-solid justify-content-center" style="background: url('{{$slider->getFirstMediaUrl('thumbnail')}}'),#00000042; background-repeat: no-repeat;background-size: cover;background-blend-mode: color;">
                    <div class="container text-center text-lg-left flex-0 entity-content">
                        <div class="my-auto position-relative align-items-lg-center flex-0 row">
                           <!--    <div class="full-block">
                                       <img class="d-none d-lg-block z-index-3" src="{{asset('/logo/yarpaq.png')}}" alt="" data-size="51px" data-at="61%;-20%;-25deg" />
                                       <img class="d-none d-lg-block z-index-3" src="{{asset('/logo/yarpaq.png')}}" alt="" data-size="122px" data-at="29%;21%;-90deg" />
                                       <img class="d-none d-lg-block z-index-3" src="{{asset('/logo/yarpaq.png')}}" alt="" data-size="95px" data-at="47%;86%" />
                                       <img class="d-none d-lg-block z-index-3" src="{{asset('/logo/yarpaq.png')}}" alt="" data-size="137px" data-at="92%;6%" />
                                    </div>  -->
                        <!--    <div class="m-lg-auto d-flex z-index-2 position-relative col">
                            <img class="px-5 px-lg-0 m-auto col-auto mw-100" src="{{$slider->getFirstMediaUrl('images')}}" alt="" />
                            </div> -->
                            <div class="col-lg-6 mr-lg-5 mt-5 my-lg-auto order-lg-first z-index-4 position-relative">
                                <h2 class="h1 entity-title">{{$slider->title}}
                                </h2>
                                <!-- <div class="h4 mt-0 text-uppercase font-weight-medium entity-subtitle">{{$slider->desc1}}
                                 </div> -->
                                <p class="mb-4 pb-2 entity-text" id="fontp">{{$slider->desc2}}
                                </p>
                                <div class="entity-action-btns"><a class="btn-wide btn btn-theme-white-bordered" href="{{$slider->link}}">{{ __('static.btn3') }}</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach


       


        </div>
    </div>
</section>

{{-- productlar --}}

<section class="section" data-slider="featured-products">
    <div class="section-head container left">
        <div class="section-icon"><span class="svg-fill-crimson svg-content" data-svg="./assets/images/svg/title-pepper.svg"></span></div>
        <div class="section-head-content">
            <h2 class="section-title" >{{ __('static.featured') }}</h2>
        </div>
        <div class="slick-arrows">
            <div class="slick-arrow-prev"><i class="fas fa-arrow-left"></i></div>
            <div class="slick-arrow-next"><i class="fas fa-arrow-right"></i></div>
        </div>
    </div>
    <div class="container">
        <div class="slick-view-carousel slick-carousel">
            <div class="slick-slides">

                @foreach ($products as $product )
                <div class="slick-slide">
                    <article class="entity-block entity-hover-shadow"><a class="entity-preview-show-up entity-preview" href="{{ route('single',['slug1' => $product['category']['slug'],'slug2'=>$product->slug]) }}"><span class="embed-responsive embed-responsive-4by3">
                        <img class="embed-responsive-item" src="{{$product->getFirstMediaUrl('images')}}" alt="" id="coverimg" /></span></a>
                        <div class="fill-color-line" data-role="fill-line">
                            <div class="opacity-30 fill-line-segment bg-theme" data-role="fill-line-segment" data-min-width="10" data-preffered-width="50" data-max-width="80"></div>
                            <div class="opacity-60 fill-line-segment bg-theme" data-role="fill-line-segment" data-min-width="10" data-preffered-width="50" data-max-width="80"></div>
                            <div class="fill-line-segment bg-theme" data-role="fill-line-segment" data-min-width="10" data-preffered-width="50" data-max-width="80"></div>
                        </div>
                        <div class="entity-content">
                            <h4 class="entity-title"><a class="content-link" href="{{ route('single',['slug1' => $product['category']['slug'],'slug2' => $product->slug]) }}">{{$product->name}}</a></h4>
                            <p class="entity-text">{{$product->short_desc}}
                            </p>
                            <div class="entity-bottom-line">
                                <div class="entity-action-btns"><a class="btn-sm btn btn-theme" href="{{ route('single',['slug1' => $product['category']['slug'],'slug2'=>$product->slug]) }}">{{ __('static.btn2') }}</a></div>
                            </div>
                        </div>
                    </article>
                </div>
                @endforeach
            </div>
        </div>
     
    </div>
    <div class="entity-bottom-line" style="text-align: center;display: flex;align-items: center;justify-content: center;margin-top: 30px;">
        <a class="btn-sm btn btn-theme" href="{{ route('products') }}">  <div class="entity-action-btns">{{ __('static.btn1') }}</div>
        </a> </div>
</section>


{{-- 3lu yer --}}

<section class="bg-bittersweet white-curve-before curve-before-50 white-curve-after curve-after-20 section-solid section-white-text">
    
    <div class="full-block">
        <div class="container h-100 position-relative" data-size="60%"><img class="z-index-4 d-none d-xl-block mw-100" src="{{ asset('/images/nut2.png') }}" alt="" data-size="205px" data-at="-15%;bottom 70px" /><img class="z-index-4 d-none d-xl-block mw-100" src="{{ asset('/images/nut1.png') }}" alt="" data-size="150px" data-at="115%;15px;-17deg" /></div>
    </div>
    <div class="section-head container left">
        <div class="section-head-content">
            <h2 class="section-title" id="newh2">{{ __('static.why_title1') }}</h2>
            <p class="section-text" id="newp">{{ __('static.why_title2') }}</p>
        </div>
    </div>
    <div class="container">
        <div class="cols-lg row">
            <div class="col-md-3">
                <div class="entity text-center">
                    <div class="entity-icon"> <svg xmlns="http://www.w3.org/2000/svg" style="height: 47px;width: 48px;" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" class="servicesImage svgImage replaced-svg">
                        <g>
                            <g>
                                <path d="M155.999,370.002c-5.52,0-10,4.48-10,10c0,5.52,4.48,10,10,10s10-4.48,10-10    C165.999,374.482,161.519,370.002,155.999,370.002z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M450.143,190.001l58.929-58.929c2.479-2.479,3.478-6.075,2.635-9.477c-0.843-3.403-3.407-6.115-6.757-7.149L361.45,70.156    c-12.936-41.581-51.384-70.154-95.451-70.154c-40.964,0-77.6,24.965-92.763,62.625L7.022,114.455    c-3.341,1.042-5.895,3.756-6.732,7.155c-0.837,3.398,0.163,6.988,2.638,9.463l60.479,60.479l-38.144,63.575    c-1.561,2.601-1.856,5.77-0.804,8.615c1.052,2.845,3.339,5.058,6.217,6.017l55.323,18.44v153.802c0,4.168,2.586,7.899,6.489,9.363    c33.827,12.684,159.512,59.822,160.187,60.061c1.984,0.699,4.219,0.794,6.398,0.089c0.029-0.01,0.059-0.016,0.088-0.026l180-60    c4.083-1.361,6.838-5.183,6.838-9.487v-157.92l58.998-18.54c3.336-1.048,5.882-3.762,6.715-7.158    c0.832-3.396-0.169-6.98-2.641-9.453L450.143,190.001z M365.999,100.002c0-2.541-0.107-5.076-0.298-7.603l117.494,36.265    l-49.897,49.896l-81.528-27.173C361.002,135.956,365.999,118.15,365.999,100.002z M190.326,73.974    c11.101-32.282,41.512-53.972,75.673-53.972c36.801,0,68.719,24.892,77.618,60.532c1.581,6.333,2.382,12.883,2.382,19.468    c0,18.574-6.164,35.983-17.828,50.352c-15.277,18.842-37.938,29.648-62.172,29.648c-26.196,0-50.767-12.858-65.733-34.404    c-9.333-13.406-14.267-29.174-14.267-45.596C185.999,91.071,187.454,82.314,190.326,73.974z M28.764,128.625l138.3-43.124    c-0.694,4.778-1.065,9.618-1.065,14.5c0,16.101,3.814,31.696,11.084,45.767L78.7,178.56L28.764,128.625z M48.827,254.727    l31.62-52.702l160.563,53.521l-31.619,52.702C192.246,302.533,67.133,260.828,48.827,254.727z M245.999,487.572l-140-52.5V294.866    c110.15,36.522,104.771,35.407,107.838,35.407c3.438,0,6.73-1.779,8.577-4.856l23.585-39.311V487.572z M255.999,239.461    l-148.376-49.458l80.794-26.93c18.91,23.247,47.377,36.929,77.582,36.929c27.942,0,54.203-11.499,73.092-31.759l65.284,21.759    L255.999,239.461z M425.999,434.794l-160,53.333v-209.62l35.451,44.31c2.579,3.223,6.872,4.529,10.807,3.293l113.742-35.743    V434.794z M312.791,304.979l-40.024-50.026l160.531-53.51l49.964,49.964L312.791,304.979z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M219.511,392.198l-22.24-8.34c-5.171-1.938-10.935,0.681-12.875,5.852c-1.939,5.172,0.681,10.936,5.852,12.875l22.24,8.34    c5.182,1.942,10.939-0.69,12.875-5.852C227.302,399.902,224.682,394.137,219.511,392.198z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M219.51,434.918l-60-22.5c-5.171-1.939-10.935,0.681-12.875,5.852c-1.94,5.171,0.681,10.936,5.852,12.875l60,22.5    c1.157,0.434,2.343,0.64,3.51,0.64c4.049,0,7.859-2.477,9.365-6.492C227.302,442.621,224.682,436.857,219.51,434.918z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M323.071,62.93c-3.905-3.906-10.237-3.905-14.143,0l-52.929,52.93l-12.929-12.929c-3.905-3.905-10.237-3.905-14.143,0    c-3.906,3.905-3.905,10.237,0,14.143l20.001,19.999c3.905,3.905,10.237,3.905,14.143,0l60-60    C326.976,73.168,326.976,66.836,323.071,62.93z"></path>
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        </svg></div>
                    <h4 class="entity-title" id="fontiszeh4">{{ __('static.packaking_title1') }}</h4>
                    <p class="mb-0 entity-text" style="text-align:left;color:black">{{ __('static.packaking_title2') }}
                    </p><img class="d-none d-lg-block mw-100" src="./assets/images/parts/arrow-curved-up.png" alt="" data-size="50px" data-at="right 5px;40px;25deg" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="entity text-center">
                    <div class="entity-icon"> 
                         <svg xmlns="http://www.w3.org/2000/svg" height="512pt" style="height: 47px;width: 48px;" viewBox="0 -4 512.00201 512" width="512pt" class="servicesImage svgImage replaced-svg"><path d="m482.285156 350.507812c-6.867187 0 5.734375-1.757812-178.371094 44.113282-1.488281-5.109375-4.238281-9.933594-8.25-13.945313l-55.289062-55.289062c-6.855469-6.855469-15.972656-10.632813-25.667969-10.632813h-110.289062c-2.078125-19.011718-18.238281-33.855468-37.792969-33.855468h-28.601562c-20.96875 0-38.023438 17.054687-38.023438 38.023437v133.566406c0 20.972657 17.054688 38.035157 38.023438 38.035157h28.601562c20.957031 0 38.023438-17.0625 38.023438-38.035157v-13.320312c18.265624 3.882812 39.6875 4.214843 68.601562 18.359375 57.195312 28.253906 59.339844 28.382812 69.433594 34.890625 25.234375 16.261719 57.652344 16.453125 83.105468.425781l143.203126-72.605469c3.707031-1.882812 5.191406-6.414062 3.3125-10.121093-1.882813-3.707032-6.414063-5.1875-10.121094-3.308594-149.75 75.9375-143.574219 72.757812-144.160156 73.132812-20.539063 13.070313-46.785157 12.964844-67.183594-.179687-11.285156-7.273438-14.808594-7.984375-70.972656-35.757813-31.578126-15.453125-55.214844-15.867187-75.21875-20.117187v-94.074219h110.058593c5.671875 0 11.011719 2.207031 15.027344 6.222656l55.28125 55.289063c10.890625 10.878906 3.566406 29.152343-11.515625 29.152343-4.496094 0-8.730469-1.757812-11.921875-4.9375l-49.800781-49.820312c-2.941406-2.941406-7.710938-2.941406-10.652344 0s-2.941406 7.710938 0 10.648438l49.8125 49.820312c17.957031 17.898438 48.863281 8.78125 53.699219-16.222656l176.046875-44.3125c8.761718-.949219 16.261718 5.953125 16.261718 14.617187 0 9.527344-7.800781 12.816407-7.902343 12.917969-3.707031 1.878906-5.1875 6.410156-3.308594 10.117188 1.878906 3.710937 6.410156 5.191406 10.121094 3.3125l1.726562-.878907c7.535157-3.800781 14.421875-14.066406 14.421875-25.46875-.003906-16.410156-13.335937-29.761719-29.71875-29.761719zm-392.695312 101.984376c0 12.667968-10.308594 22.976562-22.964844 22.976562h-28.601562c-12.65625 0-22.964844-10.308594-22.964844-22.976562v-133.570313c0-12.65625 10.308594-22.96875 22.964844-22.96875h28.601562c11.230469 0 20.617188 8.121094 22.585938 18.804687.570312 3.082032.378906 137.625.378906 137.734376zm0 0"></path><path d="m62.417969 411.453125c-3.816407-1.640625-8.246094.125-9.890625 3.941406-1.644532 3.820313.121094 8.25 3.941406 9.890625 10.492188 4.511719 7.175781 20.167969-4.144531 20.167969-7.121094 0-12.160157-6.949219-10.019531-13.6875 1.257812-3.964844-.933594-8.199219-4.894532-9.457031-3.96875-1.257813-8.195312.9375-9.457031 4.898437-5.238281 16.5 7.15625 33.304688 24.371094 33.304688 14.097656 0 25.566406-11.46875 25.566406-25.566407 0-10.226562-6.074219-19.449218-15.472656-23.492187zm0 0"></path><path d="m86.945312 192.84375c4.078126-.824219 6.710938-4.800781 5.882813-8.875-3.621094-17.859375 10.101563-34.402344 28.101563-34.40625 4.160156 0 7.527343-3.371094 7.527343-7.527344v-19.003906c0-7.617188 6.199219-13.8125 13.8125-13.8125h19.058594c4.160156 0 7.527344-3.371094 7.527344-7.527344 0-.050781 0-.101562 0-.15625.058593-15.765625 12.902343-28.570312 28.679687-28.570312 15.789063 0 28.640625 12.828125 28.675782 28.613281v.113281c0 4.15625 3.371093 7.527344 7.527343 7.527344h19.054688c7.621093 0 13.820312 6.195312 13.820312 13.8125v12.117188c-12.820312 2.21875-24.585937 10.253906-31.144531 22.636718-.132812.25-.246094.503906-.347656.757813-3 5.925781-4.703125 12.617187-4.703125 19.695312 0 4.910157.820312 9.628907 2.320312 14.039063.0625.253906.136719.503906.226563.753906 5.371094 14.953125 18.554687 25.660156 33.648437 28.292969v12.230469c0 7.621093-6.199219 13.820312-13.820312 13.820312h-12.164063c-3.550781-20.574219-21.523437-36.273438-43.09375-36.273438-21.554687 0-39.519531 15.675782-43.089844 36.273438h-12.175781c-7.617187 0-13.8125-6.199219-13.8125-13.820312v-19.109376c0-4.15625-3.371093-7.527343-7.527343-7.527343-5.191407 0-10.273438-1.402344-14.699219-4.050781-3.570313-2.132813-8.191407-.976563-10.328125 2.59375-2.136719 3.566406-.976563 8.191406 2.59375 10.328124 4.59375 2.75 9.648437 4.621094 14.902344 5.535157v12.234375c0 15.921875 12.953124 28.875 28.871093 28.875h19.058594c4.15625 0 7.527344-3.4375 7.527344-7.59375 0-15.8125 12.863281-28.679688 28.679687-28.679688 15.808594 0 28.671875 12.867188 28.671875 28.746094 0 4.15625 3.371094 7.527344 7.527344 7.527344h19.058594c8.449219 0 16.0625-3.648438 21.347656-9.449219 5.285156 5.800781 12.894531 9.449219 21.339844 9.449219h19.058593c4.160157 0 7.53125-3.4375 7.53125-7.59375 0-15.8125 12.863282-28.679688 28.679688-28.679688 15.8125 0 28.679688 12.867188 28.679688 28.746094 0 4.15625 3.367187 7.527344 7.527343 7.527344h19.058594c15.917969 0 28.867187-12.953125 28.867187-28.875v-19.109375c0-4.15625-3.378906-7.527344-7.535156-7.527344-15.816406 0-28.679687-12.867187-28.679687-28.683594 0-15.8125 12.863281-28.679687 28.679687-28.679687h.007813c4.160156 0 7.527343-3.371094 7.527343-7.527344v-19c0-15.917969-12.949218-28.867188-28.867187-28.867188h-19.058594c-4.15625 0-7.523437 3.363282-7.527343 7.519532-.019532 15.789062-12.886719 28.636718-28.679688 28.636718s-28.660156-12.847656-28.679688-28.640624c-.007812-4.152344-3.375-7.515626-7.53125-7.515626h-19.054687c-8.445313 0-16.058594 3.644532-21.339844 9.445313-5.285156-5.800781-12.898437-9.445313-21.347656-9.445313h-12.167969c-3.558594-20.566406-21.527344-36.257812-43.09375-36.257812-21.570312 0-39.539062 15.691406-43.097656 36.257812h-12.167969c-15.917969 0-28.867187 12.949219-28.867187 28.867188v12.121094c-24.097656 4.203125-40.242188 27.597656-35.332032 51.808594.820313 4.035156 4.753907 6.714843 8.875 5.882812zm187.199219-43.28125c4.160157 0 7.527344-3.371094 7.527344-7.527344v-19.003906c0-7.617188 6.195313-13.8125 13.8125-13.8125h12.1875c3.601563 20.515625 21.558594 36.160156 43.082031 36.160156 21.523438 0 39.476563-15.644531 43.078125-36.160156h12.1875c7.617188 0 13.8125 6.195312 13.8125 13.8125v12.117188c-20.546875 3.578124-36.21875 21.539062-36.21875 43.089843s15.667969 39.511719 36.21875 43.089844v12.226563c0 7.621093-6.195312 13.820312-13.8125 13.820312h-12.167969c-3.550781-20.574219-21.523437-36.273438-43.097656-36.273438-21.558594 0-39.523437 15.675782-43.09375 36.273438h-12.175781c-7.617187 0-13.8125-6.199219-13.8125-13.820312 0-11.59375 0-6.941407 0-19.109376 0-3.960937-3.109375-7.511718-7.648437-7.53125-5.960938-.023437-12.039063-1.925781-17.234376-5.875-21.738281-16.589843-10.035156-51.476562 17.355469-51.476562zm0 0"></path><path d="m248.515625 296.183594v19.242187c0 4.15625 3.371094 7.527344 7.527344 7.527344 4.160156 0 7.53125-3.371094 7.53125-7.527344v-19.242187c0-4.160156-3.371094-7.53125-7.53125-7.53125-4.15625 0-7.527344 3.371094-7.527344 7.53125zm0 0"></path><path d="m256.042969 34.300781c4.160156 0 7.53125-3.367187 7.53125-7.527343v-19.242188c0-4.160156-3.371094-7.53125-7.53125-7.53125-4.15625 0-7.527344 3.371094-7.527344 7.53125v19.242188c0 4.160156 3.371094 7.527343 7.527344 7.527343zm0 0"></path><path d="m33.613281 143.132812h19.242188c4.160156 0 7.53125-3.371093 7.53125-7.53125 0-4.15625-3.371094-7.527343-7.53125-7.527343h-19.242188c-4.160156 0-7.53125 3.371093-7.53125 7.527343 0 4.160157 3.371094 7.53125 7.53125 7.53125zm0 0"></path><path d="m93.605469 37.445312c14.035156 11.101563 14.925781 14.132813 19.578125 14.132813 7.003906 0 10.214844-8.789063 4.84375-13.296875l-14.742188-12.367188c-3.1875-2.675781-7.933594-2.257812-10.609375.925782-2.671875 3.183594-2.253906 7.933594.929688 10.605468zm0 0"></path><path d="m54.277344 258.042969c2.515625 0 2.453125-.589844 20.664062-7.644531 3.863282-1.539063 5.75-5.917969 4.210938-9.78125-1.535156-3.863282-5.914063-5.746094-9.773438-4.210938l-17.882812 7.109375c-7.664063 3.046875-5.492188 14.527344 2.78125 14.527344zm0 0"></path><path d="m472.382812 153.113281h19.242188c4.160156 0 7.53125-3.371093 7.53125-7.527343 0-4.160157-3.371094-7.53125-7.53125-7.53125h-19.242188c-4.160156 0-7.527343 3.371093-7.527343 7.53125 0 4.15625 3.367187 7.527343 7.527343 7.527343zm0 0"></path><path d="m437.328125 288.578125 14.742187 12.371094c3.199219 2.683593 7.945313 2.242187 10.605469-.929688 2.671875-3.183593 2.257813-7.933593-.925781-10.605469l-14.746094-12.371093c-3.183594-2.671875-7.933594-2.257813-10.605468.929687-2.671876 3.183594-2.257813 7.933594.929687 10.605469zm0 0"></path><path d="m392.824219 45.085938 15.160156-11.851563c3.277344-2.5625 3.859375-7.292969 1.296875-10.566406-2.5625-3.277344-7.289062-3.855469-10.566406-1.296875l-15.164063 11.851562c-3.273437 2.558594-3.855469 7.289063-1.292969 10.566406 2.566407 3.285157 7.296876 3.851563 10.566407 1.296876zm0 0"></path></svg>
                        </div>
                    <h4 class="entity-title" id="fontiszeh4">{{ __('static.track_title1') }}</h4>
                    <p class="mb-0 entity-text" style="text-align:left;color:black">{{ __('static.track_title2') }}</p><img class="d-none d-lg-block mw-100" src="./assets/images/parts/arrow-curved.png" alt="" data-size="50px" data-at="right -21px;85px;-36deg" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="entity text-center">
                    <div class="entity-icon"> <svg xmlns="http://www.w3.org/2000/svg" style="height: 47px;width: 48px;" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 480 480" style="enable-background:new 0 0 480 480;" xml:space="preserve" class="servicesImage svgImage replaced-svg">
                        <g>
                            <g>
                                <path d="M456,208H296c-13.255,0-24,10.745-24,24v224c0,13.255,10.745,24,24,24h160c13.255,0,24-10.745,24-24V232    C480,218.745,469.255,208,456,208z M368,464h-72c-4.418,0-8-3.582-8-8v-56h80V464z M368,384h-80v-64h80V384z M464,456    c0,4.418-3.582,8-8,8h-72v-64h80V456z M464,384h-80v-64h80V384z M464,304H288v-72c0-4.418,3.582-8,8-8h160c4.418,0,8,3.582,8,8    V304z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M440,240H312c-4.418,0-8,3.582-8,8v32c0,4.418,3.582,8,8,8h128c4.418,0,8-3.582,8-8v-32C448,243.582,444.418,240,440,240z     M432,272H320v-16h112V272z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <polygon points="336,344 336,328 320,328 320,344 304,344 304,360 320,360 320,376 336,376 336,360 352,360 352,344   "></polygon>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="400" y="344" width="48" height="16"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <polygon points="350.624,421.656 339.312,410.344 328,421.656 316.688,410.344 305.376,421.656 316.688,432.968 305.376,444.28     316.688,455.592 328,444.28 339.312,455.592 350.624,444.28 339.312,432.968   "></polygon>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="400" y="424" width="48" height="16"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="416" y="444" width="16" height="8"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="416" y="412" width="16" height="8"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M320,0H88v0.072c-2.112-0.025-4.148,0.793-5.656,2.272l-80,80C0.863,83.851,0.045,85.887,0.072,88H0v376    c0,8.837,7.163,16,16,16h240v-16h-48v-24h16c4.418,0,8-3.582,8-8v-40c0-4.418-3.582-8-8-8h-16v-24h16c4.418,0,8-3.582,8-8v-40    c0-4.418-3.582-8-8-8h-0.208c20.243-15.048,32.184-38.777,32.208-64c0.086-44.183-35.662-80.069-79.844-80.155    S96.086,195.507,96,239.689c-0.049,25.327,11.897,49.181,32.208,64.311H64c-4.418,0-8,3.582-8,8v32H40c-4.418,0-8,3.582-8,8v40    c0,4.418,3.582,8,8,8h16v24H40c-4.418,0-8,3.582-8,8v32H16V96h64c8.837,0,16-7.163,16-16V16h224v176h16V16    C336,7.163,328.837,0,320,0z M216,400v24H72v-24H216z M112,240c0-35.346,28.654-64,64-64c35.346,0,64,28.654,64,64    c0,35.346-28.654,64-64,64C140.67,303.96,112.04,275.33,112,240z M72,320h144v24H72V320z M48,384v-24h144v24H64H48z M48,440h144    v24H48V440z M80,80H27.312L80,27.312V80z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M176,216h24v-16h-16v-8h-16v9.472c-12.473,4.393-19.023,18.066-14.629,30.539c3.38,9.596,12.455,16.009,22.629,15.989    c4.418,0,8,3.582,8,8s-3.582,8-8,8h-24v16h16v8h16v-9.472c12.473-4.393,19.023-18.066,14.629-30.539    c-3.38-9.596-12.455-16.009-22.629-15.989c-4.418,0-8-3.582-8-8S171.582,216,176,216z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M448,40h-16c0-4.418-3.582-8-8-8h-8V8c0-4.418-3.582-8-8-8h-32c-4.418,0-8,3.582-8,8v24h-8c-4.418,0-8,3.582-8,8v152h16    V48h48v144h16V56h16v104h16V56C464,47.163,456.837,40,448,40z M400,32h-16V16h16V32z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="120" y="64" width="136" height="16"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="32" y="112" width="272" height="16"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="32" y="144" width="96" height="16"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="232" y="144" width="72" height="16"></rect>
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        </svg></div>
                    <h4 class="entity-title" id="fontiszeh4">{{ __('static.pricings_title1') }}</h4>
                    <p class="mb-0 entity-text" style="text-align:left;color:black">{{ __('static.pricings_title2') }}
                    </p><img class="d-none mw-100" src="./assets/images/parts/arrow-curved.png" alt="" data-size="50px" data-at="100%;50%" />
                </div>
            </div>
            <div class="col-md-3">
                <div class="entity text-center">
                    <div class="entity-icon">       <svg xmlns="http://www.w3.org/2000/svg"  style="height: 47px;width: 48px;" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 512 512" style="enable-background:new 0 0 512 512;" xml:space="preserve" class="servicesImage svgImage replaced-svg">
                        <g>
                            <g>
                                <path d="M119.467,337.067c-28.237,0-51.2,22.963-51.2,51.2c0,28.237,22.963,51.2,51.2,51.2s51.2-22.963,51.2-51.2    C170.667,360.03,147.703,337.067,119.467,337.067z M119.467,422.4c-18.825,0-34.133-15.309-34.133-34.133    c0-18.825,15.309-34.133,34.133-34.133s34.133,15.309,34.133,34.133C153.6,407.091,138.291,422.4,119.467,422.4z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M409.6,337.067c-28.237,0-51.2,22.963-51.2,51.2c0,28.237,22.963,51.2,51.2,51.2c28.237,0,51.2-22.963,51.2-51.2    C460.8,360.03,437.837,337.067,409.6,337.067z M409.6,422.4c-18.825,0-34.133-15.309-34.133-34.133    c0-18.825,15.309-34.133,34.133-34.133c18.825,0,34.133,15.309,34.133,34.133C443.733,407.091,428.425,422.4,409.6,422.4z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M510.643,289.784l-76.8-119.467c-1.57-2.441-4.275-3.917-7.177-3.917H332.8c-4.719,0-8.533,3.823-8.533,8.533v213.333    c0,4.719,3.814,8.533,8.533,8.533h34.133v-17.067h-25.6V183.467h80.674l72.926,113.442v82.825h-42.667V396.8h51.2    c4.719,0,8.533-3.814,8.533-8.533V294.4C512,292.77,511.531,291.157,510.643,289.784z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M375.467,277.333V217.6h68.267v-17.067h-76.8c-4.719,0-8.533,3.823-8.533,8.533v76.8c0,4.719,3.814,8.533,8.533,8.533h128    v-17.067H375.467z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <path d="M332.8,106.667H8.533C3.823,106.667,0,110.49,0,115.2v273.067c0,4.719,3.823,8.533,8.533,8.533H76.8v-17.067H17.067v-256    h307.2v256H162.133V396.8H332.8c4.719,0,8.533-3.814,8.533-8.533V115.2C341.333,110.49,337.519,106.667,332.8,106.667z"></path>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="8.533" y="345.6" width="51.2" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="179.2" y="345.6" width="145.067" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="469.333" y="345.6" width="34.133" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="34.133" y="140.8" width="298.667" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="110.933" y="379.733" width="17.067" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="401.067" y="379.733" width="17.067" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect x="34.133" y="72.533" width="119.467" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                            <g>
                                <rect y="72.533" width="17.067" height="17.067"></rect>
                            </g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        <g>
                        </g>
                        </svg></div>
                    <h4 class="entity-title" id="fontiszeh4">{{ __('static.solutions_title1') }}</h4>
                    <p class="mb-0 entity-text" style="text-align:left;color:black">{{ __('static.solutions_title2') }}
                    </p><img class="d-none mw-100" src="./assets/images/parts/arrow-curved.png" alt="" data-size="50px" data-at="100%;50%" />
                </div>
            </div>

        </div>
    </div>
</section>



<section class="section-solid">
    <div class="container">
        <div class="entity-simple">
            <div class="cols-lg row">
                <div class="col-lg-6 d-flex">
                    <div class="m-auto col-auto entity-image"><img class="mw-100" src="{{ asset('/images/about3.jpeg') }}" alt="" /></div>
                </div>
                <div class="col">
                    <h4 class="text-theme font-weight-medium h1 entity-title">{{ __('static.about_title') }}</h4>
                    <div class="text-title display-4 font-weight-bold entity-subtitle">{{ __('static.about_title_1') }}</div>
                    <p class="entity-text">{{ __('static.about_title_2') }} </p>
           
                    <div class="entity-bottom-line" style="text-align: center;display: flex;margin-top: 30px;">
                        <a class="btn-sm btn btn-theme" href="{{ route('about') }}">  <div class="entity-action-btns">{{ __('static.btn3') }}</div>
                        </a> </div>
              </div>
            </div>
        </div>
    </div>
</section>


<section class="bg-orange white-curve-before curve-before-60 white-curve-after curve-after-90 section-solid section-white-text">

    <div class="full-block">
        <div class="container h-100 position-relative" data-size="60%"><img class="z-index-4 d-none d-xl-block mw-100" src="{{ asset('/images/nut2.png') }}" alt="" data-size="145px" data-at="-5%;15px" /><img class="z-index-4 d-none d-xl-block mw-100" src="{{ asset('/images/nut1.png') }}" alt="" data-size="205px" data-at="110%;bottom 40px" /></div>
    </div>
    <div class="container">
    <div class="section-head container left">
        <div class="section-head-content">
            <h2 class="section-title">{{ __('static.nutro_in_numbers') }}</h2>
           
        </div>
    </div>
        <div class="cols-lg row" id="neserow">
            <div class="col-lg-4">
                <div class="entity line">
                    <div class="my-auto entity-icon"><img class="mw-100" src="./assets/images/parts/icons/100/white/in-love.png" alt="" /></div>
                    <div class="ml-4 my-auto entity-content">
                        <div class="h1 mb-1 entity-value" data-waypoint-counter="2000" data-waypoint-counter-extra="false"></div>
                        <p class="mb-0 entity-text">{{ __('static.3values_of_1') }}
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="entity line">
                    <div class="my-auto entity-icon"><img class="mw-100" src="./assets/images/parts/icons/100/white/handshake.png" alt="" /></div>
                    <div class="ml-4 my-auto entity-content">
                        <div class="h1 mb-1 entity-value" data-waypoint-counter="12" data-waypoint-counter-extra="false" ></div>
                        <p class="mb-0 entity-text">{{ __('static.3values_of_2') }}
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="entity line">
                    <div class="my-auto entity-icon"><img class="mw-100" src="./assets/images/parts/icons/100/white/guarantee.png" alt="" /></div>
                    <div class="ml-4 my-auto entity-content">
                        <div class="h1 mb-1 entity-value" data-waypoint-counter="10" data-waypoint-counter-extra="+"></div>
                        <p class="mb-0 entity-text">{{ __('static.3values_of_3') }}
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="section">
    <div class="section-head container left">
        <div class="section-icon"><span class="svg-fill-jazzberry-jam svg-content" data-svg="./assets/images/svg/title-rasberry.svg"></span></div>
        <div class="section-head-content">
            <h2 class="section-title">{{ __('static.contact1') }}</h2>
            <p class="section-text">{{ __('static.contact2') }}</p>
        </div>
    </div>
    <div class="container">
        <div class="row"></div>
        <div class="entity">
            <div class="cols-lg row">
                <div class="col-12 col-xl">
                    <div class="frame-block p-2">
                        <div style="width: 100%"><iframe width="100%" height="340" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Azerbaijan%20Baku+(Baku)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a href="https://www.gps.ie/wearable-gps/">Kids wearables</a></iframe></div>
                    </div>
                </div>
                <div class="col-12 col-xl-3 pt-xl-3" id="newbox">
                    <div class="cols-sm row">
                        <div class="col-md-6 col-lg-3 col-xl-12" style="margin-bottom:25px">
                            <div class="entity-record short">
                                <div class="entity-record-title">{{ __('static.contact_phone') }}:</div>
                                <div class="entity-record-value">{{$contacts->phone}}</div>
                            @if($contacts->email2 !== null)
                             <div class="entity-record-value">{{$contacts->phone2}}</div>
                            @endif
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 col-xl-12" style="margin-bottom:25px">
                            <div class="entity-record short">
                                <div class="entity-record-title">{{ __('static.contact_address') }}:</div>
                                <div class="entity-record-value">{{$contacts->address}}</div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 col-xl-12" style="margin-bottom:25px">
                            <div class="entity-record short">
                                <div class="entity-record-title">{{ __('static.contact_email') }}:</div>
                                <div class="entity-record-value">{{$contacts->email}}</div>
                               @if($contacts->email2)
                                 <div class="entity-record-value">{{$contacts->email2}}</div>
                               @endif
                            </div>
                        </div>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


@endsection