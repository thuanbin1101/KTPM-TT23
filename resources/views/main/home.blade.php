@extends('main.home_master')
@section('content')
    @php
    $firstSectionBig = DB::table('posts')
        ->where('first_section_thumbnail', 1)
        ->orderBy('id', 'DESC')
        ->first();
    $firstSection = DB::table('posts')
        ->where('first_section', 1)
        ->orderBy('id', 'DESC')
        ->limit(8)
        ->get();
    $firstCategory = DB::table('categories')->first();
    $firstCategoryBig = DB::table('posts')
        ->where('category_id', $firstCategory->id)
        ->where('bigthumbnail', 1)
        ->first();
    $firstCategorySmall = DB::table('posts')
        ->where('category_id', $firstCategory->id)
        ->where('bigthumbnail', null)
        ->get();
    $secondCategory = DB::table('categories')
        ->skip(1)
        ->first();
    $secondCategoryBig = DB::table('posts')
        ->where('category_id', $secondCategory->id)
        ->where('bigthumbnail', 1)
        ->first();
    $secondCategorySmall = DB::table('posts')
        ->where('category_id', $secondCategory->id)
        ->where('bigthumbnail', null)
        ->get();
    $photoBig = DB::table('photos')
        ->where('type', 1)
        ->first();
    $photoSmall = DB::table('photos')
        ->where('type', 0)
        ->get();
    @endphp
    <!-- 1st-news-section-start -->
    <section class="news-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-9 col-sm-8">
                    <div class="row">
                        <div class="col-md-1 col-sm-1 col-lg-1"></div>
                        <div class="col-md-10 col-sm-10">
                            <div class="lead-news">
                                <div class="service-img"><a href="#"><img src="{{ asset($firstSectionBig->image) }}"
                                            width="800px" alt="Notebook"></a></div>
                                <div class="content">
                                    <h4 class="lead-heading-01">
                                        @if (session()->get('lang') == 'eng')
                                            <a href="{{ route('single.post', $firstSectionBig->id) }}">{{ $firstSectionBig->title_en }}
                                            </a>
                                        @else
                                            <a href="#">{{ $firstSectionBig->title_vn }} </a>
                                        @endif
                                    </h4>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="row">
                        @foreach ($firstSection as $row)
                            <div class="col-md-3 col-sm-3">
                                <div class="top-news">
                                    <a href="{{ route('single.post', $row->id) }}"><img src="{{ asset($row->image) }}"
                                            alt="Notebook"></a>
                                    <h4 class="heading-02">
                                        @if (session()->get('lang') == 'eng')
                                            <a href="{{ route('single.post', $row->id) }}">{{ $row->title_en }} </a>
                                        @else
                                            <a href="{{ route('single.post', $row->id) }}">{{ $row->title_vn }} </a>
                                        @endif
                                    </h4>
                                </div>
                            </div>
                        @endforeach
                    </div>

                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="add"><img src="{{ asset('frontend/assets/img/top-ad.jpg') }}"
                                    alt="" />
                            </div>
                        </div>
                    </div><!-- /.add-close -->

                    <!-- news-start -->
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="bg-one">
                                <div class="cetagory-title"><a href="">{{ $firstCategory->category_en }} <span>More <i
                                                class="fa fa-angle-double-right" aria-hidden="true"></i></span></a>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="top-news">
                                            <a href="#"><img src="{{ asset($firstCategoryBig->image) }}"
                                                    alt="Notebook"></a>
                                            <h4 class="heading-02"><a
                                                    href="{{ route('single.post', $firstCategoryBig->id) }}">{{ $firstCategoryBig->title_en }}</a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        @foreach ($firstCategorySmall as $row)

                                        @endforeach
                                        <div class="image-title">
                                            <a href="#"><img src="{{ $row->image }}" alt="Notebook"></a>
                                            <h4 class="heading-03"><a href="#">{{ $row->title_en }}</a> </h4>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="bg-one">
                                <div class="cetagory-title"><a href="#">{{ $secondCategory->category_en }} <span>More <i
                                                class="fa fa-angle-double-right" aria-hidden="true"></i></span></a>
                                </div>
                                <div class="row">
                                    <div class="col-md-6 col-sm-6">
                                        <div class="top-news">
                                            <a href="#"><img src="{{ asset($secondCategoryBig->image) }}"
                                                    alt="Notebook"></a>
                                            <h4 class="heading-02"><a href="#">{{ $secondCategoryBig->title_en }}</a>
                                            </h4>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6">
                                        @foreach ($secondCategorySmall as $row)
                                            <div class="image-title">
                                                <a href="#"><img src="{{ $row->image }}" alt="Notebook"></a>
                                                <h4 class="heading-03"><a href="#">{{ $row->title_en }}</a> </h4>
                                            </div>
                                        @endforeach

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-3">
                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add"><img src="{{ asset('frontend/assets/img/add_01.jpg') }}"
                                    alt="" />
                            </div>
                        </div>
                    </div><!-- /.add-close -->

                    <!-- youtube-live-start -->
                    <div class="cetagory-title-03">Live TV</div>
                    <div class="photo">
                        <div class="embed-responsive embed-responsive-16by9 embed-responsive-item"
                            style="margin-bottom:5px;">

                            <iframe width="729" height="410" src="https://www.youtube.com/embed/S81Kte7X9uk" frameborder="0"
                                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                                allowfullscreen></iframe>
                        </div>
                    </div><!-- /.youtube-live-close -->

                    <!-- facebook-page-start -->
                    <div class="cetagory-title-03">Facebook </div>
                    <div class="fb-root">
                        facebook page here
                    </div><!-- /.facebook-page-close -->

                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add">
                                <img src="frontend/assets/img/add_01.jpg" alt="" />
                            </div>
                        </div>
                    </div><!-- /.add-close -->
                </div>
            </div>
        </div>
    </section><!-- /.1st-news-section-close -->

    <!-- 2nd-news-section-start -->
    <section class="news-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="bg-one">
                        <div class="cetagory-title-02"><a href="#"> <i class="fa fa-angle-right" aria-hidden="true"></i>
                                <span><i class="fa fa-plus" aria-hidden="true"></i>All
                                    News </span></a></div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="top-news">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-02"><a href="#">Armenia, Azerbaijan accused of breaking
                                            truce</a> </h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Armenia, Azerbaijan accused of breaking
                                            truce</a> </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Armenia, Azerbaijan accused of breaking
                                            truce</a> </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Armenia, Azerbaijan accused of breaking
                                            truce</a> </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="bg-one">
                        <div class="cetagory-title-02"><a href="#">Politics <i class="fa fa-angle-right"
                                    aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>All
                                    News </span></a></div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="top-news">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-02"><a href="#">BNP introduced culture of impunity:
                                            Quader</a> </h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">BNP introduced culture of impunity:
                                            Quader</a> </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">BNP introduced culture of impunity:
                                            Quader</a> </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">BNP introduced culture of impunity:
                                            Quader</a> </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ******* -->
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="bg-one">
                        <div class="cetagory-title-02"><a href="#">Biz-Econ<i class="fa fa-angle-right"
                                    aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> All
                                    News </span></a></div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="top-news">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-02"><a href="#">Israel sends treaty delegation to Bahrain
                                            with Trump aides</a> </h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain
                                            with Trump aides</a> </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain
                                            with Trump aides</a> </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Israel sends treaty delegation to Bahrain
                                            with Trump aides</a> </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="bg-one">
                        <div class="cetagory-title-02"><a href="#">Education <i class="fa fa-angle-right"
                                    aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i> All
                                    News </span></a></div>
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <div class="top-news">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-02"><a href="#">Students won't get form fill-up fee back</a>
                                    </h4>
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-6">
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a>
                                    </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a>
                                    </h4>
                                </div>
                                <div class="image-title">
                                    <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                    <h4 class="heading-03"><a href="#">Students won't get form fill-up fee back</a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- add-start -->
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <div class="add"><img src="frontend/assets/img/top-ad.jpg" alt="" /></div>
                </div>
                <div class="col-md-6 col-sm-6">
                    <div class="add"><img src="frontend/assets/img/top-ad.jpg" alt="" /></div>
                </div>
            </div><!-- /.add-close -->

        </div>
    </section><!-- /.2nd-news-section-close -->

    <!-- 3rd-news-section-start -->
    <section class="news-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-9 col-sm-9">
                    <div class="cetagory-title-02"><a href="#">Feature <i class="fa fa-angle-right"
                                aria-hidden="true"></i> all district news tab here <span><i class="fa fa-plus"
                                    aria-hidden="true"></i> All News </span></a></div>

                    <div class="row">
                        <div class="col-md-4 col-sm-4">
                            <div class="top-news">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-02"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="image-title">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="image-title">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                            <div class="image-title">
                                <a href="#"><img src="frontend/assets/img/news.jpg" alt="Notebook"></a>
                                <h4 class="heading-03"><a href="#">Achieving SDG-4 during COVID-19 Pandemic</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                    <!-- ******* -->
                    <br />
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="cetagory-title-02"><a href="#">Sci-Tech<i class="fa fa-angle-right"
                                        aria-hidden="true"></i> <span><i class="fa fa-plus" aria-hidden="true"></i>
                                        সব খবর </span></a></div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="bg-gray">
                                <div class="top-news">
                                    <a href="#"><img src="{{ asset('frontend/assets/img/news.jpg') }}"
                                            alt="Notebook"></a>
                                    <h4 class="heading-02"><a href="#">Facebook Messenger gets shiny new logo </a>
                                    </h4>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="news-title">
                                <a href="#">Facebook Messenger gets shiny new logo </a>
                            </div>
                            <div class="news-title">
                                <a href="#">Facebook Messenger gets shiny new logo </a>
                            </div>
                            <div class="news-title">
                                <a href="#">Facebook Messenger gets shiny new logo</a>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="news-title">
                                <a href="#">Facebook Messenger gets shiny new logo </a>
                            </div>
                            <div class="news-title">
                                <a href="#">Facebook Messenger gets shiny new logo </a>
                            </div>
                            <div class="news-title">
                                <a href="#">Facebook Messenger gets shiny new logo </a>
                            </div>
                        </div>
                    </div><br><br>

                    <div class="row">
                        @php
                            $districts = DB::table('districts')->get();
                        @endphp
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <div class="col-md-12 col-sm-12">
                            <div class="cetagory-title-02"><a href="#">Search By Districts</a></div>
                        </div>
                        <form action="{{ route('searchby.districts') }}" method="GET">
                            @csrf
                            <div class="col-md-12 col-sm-12">
                                <div class="col-lg-4 col-sm-4">
                                    <select name="district_id" id="" class="form-control">
                                        <option value="">--- SELECT DISTRICT ---</option>
                                        @foreach ($districts as $district)
                                            <option value="{{ $district->id }}">
                                                {{ $district->district_en . ' - ' . $district->district_vn }}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="col-lg-4 col-sm-4">
                                    <select name="subdistrict_id" id="subdistrict_id" class="form-control">
                                        <option value="">--- SELECT SUBDISTRICT ---</option>
                                    </select>
                                </div>
                                <div class="col-lg-4 col-sm-4">
                                    <button class="btn btn-success btn-block">
                                        Search
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add">
                                <img src="{{ asset('frontend/assets/img/top-ad.jpg') }}" alt="" />
                            </div>
                        </div>
                    </div><!-- /.add-close -->


                </div>
                <div class="col-md-3 col-sm-3">
                    <div class="tab-header">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs nav-justified" role="tablist">
                            <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21"
                                    role="tab" data-toggle="tab" aria-expanded="false">Latest</a></li>
                            <li role="presentation"><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab"
                                    aria-expanded="true">Popular</a></li>
                            <li role="presentation"><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab"
                                    aria-expanded="true">Popular1</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content ">
                            <div role="tabpanel" class="tab-pane in active" id="tab21">
                                <div class="news-titletab">
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab22">
                                <div class="news-titletab">
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab23">
                                <div class="news-titletab">
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Both education and life must be
                                                saved</a> </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Namaj Times -->
                    <div class="cetagory-title-03">Prayer Time </div>
                    Prayer Times count option here
                    <!-- Namaj Times -->
                    <div class="cetagory-title-03">Old News </div>
                    <form action="" method="post">
                        <div class="old-news-date">
                            <input type="text" name="from" placeholder="From Date" required="">
                            <input type="text" name="" placeholder="To Date">
                        </div>
                        <div class="old-date-button">
                            <input type="submit" value="search ">
                        </div>
                    </form>
                    <!-- news -->
                    <br><br><br><br><br>
                    <div class="cetagory-title-04"> Important Website</div>
                    <div class="">
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved</a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                        <div class="news-title-02">
                            <h4 class="heading-03"><a href="#"><i class="fa fa-check" aria-hidden="true"></i>
                                    Both education and life must be saved </a> </h4>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section><!-- /.3rd-news-section-close -->









    <!-- gallery-section-start -->
    <section class="news-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8 col-sm-7">
                    <div class="gallery_cetagory-title"> Photo Gallery </div>

                    <div class="row">
                        <div class="col-md-8 col-sm-8">
                            <div class="photo_screen">
                                <div class="myPhotos" style="width:100%">
                                    <img src="{{ asset($photoBig->photo) }}" alt="Avatar">
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4">
                            <div class="photo_list_bg">
                                @foreach ($photoSmall as $row)

                                    <div class="photo_img photo_border active">
                                        <img src="{{ $row->photo }}" alt="image" onclick="currentDiv(1)">
                                        <div class="heading-03">
                                            {{ $row->title }}
                                        </div>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>

                    <!--=======================================
                                                                                                                                                                                    Video Gallery clickable jquary  start
                                                                                                                                                                                ========================================-->

                    <script>
                        var slideIndex = 1;
                        showDivs(slideIndex);

                        function plusDivs(n) {
                            showDivs(slideIndex += n);
                        }

                        function currentDiv(n) {
                            showDivs(slideIndex = n);
                        }

                        function showDivs(n) {
                            var i;
                            var x = document.getElementsByClassName("myPhotos");
                            var dots = document.getElementsByClassName("demo");
                            if (n > x.length) {
                                slideIndex = 1
                            }
                            if (n < 1) {
                                slideIndex = x.length
                            }
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }
                            for (i = 0; i < dots.length; i++) {
                                dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                            }
                            x[slideIndex - 1].style.display = "block";
                            dots[slideIndex - 1].className += " w3-opacity-off";
                        }
                    </script>

                    <!--=======================================
                                                                                                                                                                                    Video Gallery clickable  jquary  close
                                                                                                                                                                                =========================================-->

                </div>
                <div class="col-md-4 col-sm-5">
                    <div class="gallery_cetagory-title"> photo Gallery </div>

                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="video_screen">
                                <div class="myVideos" style="width:100%">
                                    <div class="embed-responsive embed-responsive-16by9 embed-responsive-item">
                                        <iframe width="853" height="480"
                                            src="https://www.youtube.com/embed/AWM8164ksVY?list=RDAWM8164ksVY"
                                            frameborder="0"
                                            allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
                                            allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">

                            <div class="gallery_sec owl-carousel">

                                <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                                    <img src="frontend/assets/img/news.jpg" alt="Avatar">
                                    <div class="heading-03">
                                        <div class="content_padding">
                                            Kumar Sanu tests positive for coronavirus
                                        </div>
                                    </div>
                                </div>

                                <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                                    <img src="frontend/assets/img/news.jpg" alt="Avatar">
                                    <div class="heading-03">
                                        <div class="content_padding">
                                            Kumar Sanu tests positive for coronavirus
                                        </div>
                                    </div>
                                </div>

                                <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                                    <img src="frontend/assets/img/news.jpg" alt="Avatar">
                                    <div class="heading-03">
                                        <div class="content_padding">
                                            Kumar Sanu tests positive for coronavirus
                                        </div>
                                    </div>
                                </div>

                                <div class="video_image" style="width:100%" onclick="currentDivs(1)">
                                    <img src="frontend/assets/img/news.jpg" alt="Avatar">
                                    <div class="heading-03">
                                        <div class="content_padding">
                                            Kumar Sanu tests positive for coronavirus
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                    <script>
                        var slideIndex = 1;
                        showDivss(slideIndex);

                        function plusDivs(n) {
                            showDivss(slideIndex += n);
                        }

                        function currentDivs(n) {
                            showDivss(slideIndex = n);
                        }

                        function showDivss(n) {
                            var i;
                            var x = document.getElementsByClassName("myVideos");
                            var dots = document.getElementsByClassName("demo");
                            if (n > x.length) {
                                slideIndex = 1
                            }
                            if (n < 1) {
                                slideIndex = x.length
                            }
                            for (i = 0; i < x.length; i++) {
                                x[i].style.display = "none";
                            }
                            for (i = 0; i < dots.length; i++) {
                                dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
                            }
                            x[slideIndex - 1].style.display = "block";
                            dots[slideIndex - 1].className += " w3-opacity-off";
                        }
                    </script>
                    <script type="text/javascript">
                        $(document).ready(function() {
                            $('select[name="district_id"]').on('change', function() {
                                var district_id = $(this).val();
                                if (district_id) {
                                    $.ajax({
                                        url: "{{ url('/get/subdistrict/frontend') }}/" + district_id,
                                        type: "GET",
                                        dataType: "json",
                                        success: function(data) {
                                            $("#subdistrict_id").empty();
                                            $.each(data, function(key, value) {
                                                $("#subdistrict_id").append('<option value="' + value
                                                    .id +
                                                    '">' + value.subdistrict_en + '</option>');
                                            });
                                        },
                                    });
                                } else {
                                    alert('danger');
                                }
                            });
                        });
                    </script>
                </div>
            </div>
        </div>
    </section><!-- /.gallery-section-close -->

@endsection
