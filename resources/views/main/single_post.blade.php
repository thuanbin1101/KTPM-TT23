@extends('main.home_master')
@section('content')
    <section class="single-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i></a></li>
                        <li>
                            <a href="{{ route('cate.post', ['id' => $post->category_id, 'category_en' => $post->category_en]) }}">
                                {{ session()->get('lang') == 'eng' ? $post->category_en : $post->category_vn  }}
                            </a>
                        </li>
                        <li>
                            <a href="{{ route('subcate.post', ['id' => $post->subcategory_id, 'category_en' => $post->subcategory_en]) }}">{{ session()->get('lang') == 'eng' ? $post->subcategory_en : $post->subcategory_vn }}</a>
                        </li>
                    </ol>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <header class="headline-header margin-bottom-10">
                        @if (session()->get('lang') == 'eng')
                            <h1 class="headline">{{ $post->title_en }}</h1>
                        @else
                            <h1 class="headline">{{ $post->title_vn }}</h1>
                        @endif
                    </header>
                    <div class="article-info margin-bottom-20">
                        <div class="row">
                            <div class="col-md-6 col-sm-6">
                                <ul class="list-inline">
                                    <li>
                                        {{session()->get('lang') === 'eng' ? 'LOOK AT' : 'Ngày đăng'}}

                                    </li>
                                    <li><i class="fa fa-clock-o"></i> {{ $post->post_date }}</li>
                                </ul>
                            </div>
                            <div class="col-md-6 col-sm-6 pull-right">
                                <div class="sharethis-inline-share-buttons"></div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ******** -->
            <div class="row">
                <div class="col-md-8 col-sm-8">
                    <div class="single-news">
                        <img src="{{ asset($post->image) }}" alt=""/>
                        <h4 class="caption">
                            {{session()->get('lang') === 'eng' ? $post->title_en : $post->title_vn}}
                        </h4>
                        {!!session()->get('lang') === 'eng' ? $post->details_en : $post->details_vn !!}
                    </div>
                    <!-- ********* -->

                    <div class="fb-comments" data-href="{{request()->url()}}" data-width=""
                         data-numposts="5"></div>
                    <br><br>
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="heading">
                                {{session()->get('lang') === 'eng' ? 'Related News' : 'Tin tức liên quan'}}
                            </h2>
                        </div>
                        @foreach ($relatePost as $item)
                            <div class="col-md-4 col-sm-4">
                                <div class="top-news sng-border-btm">
                                    <a href="{{ route('single.post', $item->id) }}"><img src="{{ asset($item->image) }}"
                                                                                         alt="Notebook"></a>
                                    <h4 class="heading-02">
                                        <a href="{{ route('single.post', $item->id) }}">
                                            {{session()->get('lang') === 'eng' ? $post->title_en : $post->title_vn}}
                                        </a>
                                    </h4>
                                </div>
                            </div>
                        @endforeach

                    </div>
                </div>
                <div class="col-md-4 col-sm-4">
                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add">
                                <img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt=""/>
                            </div>
                        </div>
                    </div><!-- /.add-close -->
                    @include('main.body.tab')
                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add">
                                <img src="{{ asset('frontend/assets/img/add_01.jpg') }}" alt=""/>
                            </div>
                        </div>
                    </div><!-- /.add-close -->
                </div>
            </div>
        </div>
    </section>
@endsection
