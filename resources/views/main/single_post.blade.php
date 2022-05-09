@extends('main.home_master')
@section('content')
    @php
    $relatePost = DB::table('posts')
        ->where('id', '!=', $post->id)
        ->where('category_id', $post->category_id)
        ->orderBy('id', 'DESC')
        ->limit(6)
        ->get();
    @endphp
    <section class="single-page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i></a></li>
                        <li><a href="#">{{ $post->category_en }}</a></li>
                        <li><a href="#">{{ $post->subcategory_en }}</a></li>
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


                                    <li>LOOK AT </li>
                                    <li><i class="fa fa-clock-o"></i> {{ $post->post_date }}</li>
                                </ul>

                            </div>
                            <div class="col-md-6 col-sm-6 pull-right">
                                <ul class="social-nav">
                                    <li><a href=""
                                            onclick="window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent('#'),'facebook-share-dialog','width=626,height=436'); return false;"
                                            target="_blank" title="Facebook" rel="nofollow" class="facebook"><i
                                                class="fa fa-facebook"></i></a></li>
                                    <li><a target="_blank" href=""
                                            onclick="javascript:window.open('https://twitter.com/share?text=‘#'); return false;"
                                            title="Twitter" rel="nofollow" class="twitter"><i
                                                class="fa fa-twitter"></i></a></li>
                                    <li><a target="_blank" href=""
                                            onclick="window.open('https://plus.google.com/share?url=#'); return false;"
                                            title="Google plus" rel="nofollow" class="google"><i
                                                class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#" target="_blank" title="Print" rel="nofollow" class="print"><i
                                                class="fa fa-print"></i></a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ******** -->
            <div class="row">
                <div class="col-md-8 col-sm-8">
                    <div class="single-news">
                        <img src="{{ asset($post->image) }}" alt="" />
                        <h4 class="caption"> APEC economic leaders’ meeting to be held virtually in November </h4>
                        @if (session()->get('lang') == 'eng')
                            {!! $post->details_en !!}

                        @else
                            {!! $post->details_vn !!}

                        @endif
                    </div>
                    <!-- ********* -->
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="heading">Related News</h2>
                        </div>
                        @foreach ($relatePost as $item)

                            <div class="col-md-4 col-sm-4">
                                <div class="top-news sng-border-btm">
                                    <a href="{{ route('single.post', $item->id) }}"><img src="{{ asset($item->image) }}"
                                            alt="Notebook"></a>
                                    <h4 class="heading-02"><a href="#">{{ $item->title_en }}</a>
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
                            <div class="sidebar-add"><img src="assets/img/add_01.jpg" alt="" /></div>
                        </div>
                    </div><!-- /.add-close -->
                    <div class="tab-header">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs nav-justified" role="tablist">
                            <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21" role="tab"
                                    data-toggle="tab" aria-expanded="false">Latest</a></li>
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
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab22">
                                <div class="news-titletab">
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> educational institutions</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> educational institutions</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> ducational institutions</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> educational institutions</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> educational institutions</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> educational institutions</a> </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#"> educational institutions</a> </h4>
                                    </div>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane fade" id="tab23">
                                <div class="news-titletab">
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                    <div class="news-title-02">
                                        <h4 class="heading-03"><a href="#">Shutdown of educational institutions</a>
                                        </h4>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add"><img src="assets/img/add_01.jpg" alt="" /></div>
                        </div>
                    </div><!-- /.add-close -->
                </div>
            </div>
        </div>
    </section>
@endsection
