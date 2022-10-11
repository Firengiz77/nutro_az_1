@extends('front.layout.app')

@section('meta_title', __("static.contact_title"))
@section('meta_desciption', __("static.contact_description"))
@section('meta_keyword', __("static.contact_keyword"))

@section('container')


<section class="after-head top-block-page with-back white-curve-after section-white-text">
    <div class="overflow-back bg-orange"></div>
    <div class="content-offs-stick my-5 container">
        <div class="section-solid with-back">
            <div class="full-block">
                <img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut2.png') }}" alt="" data-size="280px" data-at="10%;bottom 35%" /><img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut1.png') }}" alt="" data-size="137px" data-at="right 5%;35%" /><img class="d-none d-lg-block z-index-3" src="{{ asset('/images/nut1.png') }}" alt="" data-size="50px" data-at="65%;0%;-25deg" />
            </div>
            <div class="z-index-4 position-relative text-center">
                <h1 class="section-title">{{ __('static.contact_title') }}</h1>
                <div class="mt-3">
                    <div class="page-breadcrumbs"><a class="content-link" href="{{ route('index') }}">Home</a><span class="mx-2">\</span><span>{{ __('static.contact_title') }}</span></div>
                </div>
            </div>
        </div>
    </div>
</section>

    



 <!--   <div class="section-map-container container" style="margin-top:50px;margin-bottom:-50px">
        <div class="text-center grid row">
            <div class="col-md-4">
                <h4 class="entity-title">{{ __('static.contact_address') }}</h4>
                <p class="mb-0 entity-subtext">{{$contact->address}}</p>
            </div>
            <div class="col-md-4">
                <h4 class="entity-title">{{ __('static.contact_email') }}</h4>
                <p class="mb-0 entity-subtext"><a href="mailto:{{$contact->email}}">{{$contact->email}}</a></p>
            </div>
            <div class="col-md-4">
                <h4 class="entity-title">{{ __('static.contact_phone') }}</h4>
                <p class="mb-0 entity-subtext">{{$contact->phone}}</p>
            </div>
        </div>
    </div>   -->


<section class="section" style="margin-top:1rem">
    <div class="section-head">
        <div class="section-icon"><span class="svg-fill-jazzberry-jam svg-content" data-svg="./assets/images/svg/title-rasberry.svg"></span></div>
        <div class="section-head-content">
            <h2 class="section-title">{{ __('static.contact_title_1') }}</h2>
            <p class="section-text">{{ __('static.contact_title_2') }}</p>
        </div>
    </div>
    <div class="container">
        <form autocomplete="off" method="post" action="{{route('sendmail')}}">
            @csrf
            <div class="row grid justify-content-center">
                <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                    <div class="input-view-flat input-gray-shadow form-group"><label class="required">{{ __('static.contact_form_1') }}</label>
                        <div class="input-group">
                        <input class="form-control" name="name" type="text" style="border-radius:20px !important" placeholder="{{ __('static.contact_form_1') }}" required="required" /></div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-lg-5 col-xl-4">
                    <div class="input-view-flat input-gray-shadow form-group"><label class="required">{{ __('static.contact_form_2') }}</label>
                        <div class="input-group">
                        <input class="form-control" name="email" type="email" style="border-radius:20px !important" placeholder="{{ __('static.contact_form_2') }}" required="required" /></div>
                    </div>
                </div>
                <div class="col-12 col-lg-10 col-xl-8">
                    <div class="input-view-flat input-gray-shadow form-group"><label class="required">{{ __('static.contact_form_3') }}</label>
                        <div class="input-group">
                        <textarea class="form-control" name="msg" style="border-radius:20px !important" placeholder="{{ __('static.contact_form_3') }}"></textarea></div>
                    </div>
                </div>
                <div class="g-recaptcha" data-sitekey="{{ config('services.recaptcha.site_key') }}"></div>
                @error('g-recaptcha-response')
                <div class="text-red-500">{{ $message }}</div>
            @enderror  

            
                <div class="col-12 text-center">
                    <button class="btn-wide mb-0 btn btn-theme" type="submit">{{ __('static.contact_form_4') }}</button>
                </div>
            </div>
        </form>
    </div>
</section>


<section class="section">
    <div class="section-head container">
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
                        <div style="width: 100%">
                        <iframe width="100%" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Azerbaijan%20Baku+(Baku)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"><a href="https://www.gps.ie/wearable-gps/">Kids wearables</a></iframe></div>
                    </div>
                </div>
                <div class="col-12 col-xl-3 pt-xl-3" id="newbox">
                    <div class="cols-sm row">
                        <div class="col-md-6 col-lg-3 col-xl-12" style="margin-bottom:30px;margin-top: 27px;">
                            <div class="entity-record short">
                                <div class="entity-record-title">{{ __('static.contact_phone') }}:</div>
                                <div class="entity-record-value">{{$contacts->phone}}</div>
                                @if($contacts->phone2 !== null)
                                <div class="entity-record-value">{{$contacts->phone2}}</div>
                                @endif
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 col-xl-12" style="margin-bottom:30px">
                            <div class="entity-record short">
                                <div class="entity-record-title">{{ __('static.contact_address') }}:</div>
                                <div class="entity-record-value">{{$contacts->address}}</div>
                             
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-3 col-xl-12" style="margin-bottom:30px">
                            <div class="entity-record short">
                                <div class="entity-record-title">{{ __('static.contact_email') }}:</div>
                                <div class="entity-record-value">{{$contacts->email}}</div>
                                   @if($contacts->email2 !== null)
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

<!-- <section class="section-solid-map white-curve-before curve-before-60 white-curve-after curve-after-90">
    <div class="section-map">
        <div style="width: 100%">
            <iframe width="100%" height="600" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
             src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=Azerbaijan%20Baku+(Baku)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed">
             <a href="https://www.gps.ie/wearable-gps/">Kids wearables</a></iframe></div>
    </div>

</section>
-->

<script src="https://www.google.com/recaptcha/api.js"></script>

6Ldy2YkgAAAAAES5mQT6sV3W7TtnfeLqnU-4STKK  ->site key

6Ldy2YkgAAAAAIpCLdwusKWBtIqOQOuAhCMHabtH  ->secret key



@endsection