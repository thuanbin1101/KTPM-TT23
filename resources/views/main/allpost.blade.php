@extends('main.home_master')
@section('content')
    <!-- archive_page-start -->
    <section class="single_page">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="single_info">
                        <span>
                            <a href="{{url('/')}}"><i class="fa fa-home" aria-hidden="true"></i> /
                            </a>
{{--                            @if (isset($catePosts))--}}
                            {{--                                {{$category_en}}--}}
                            {{--                            @elseif(isset($subcatePosts))--}}
                            {{--                                {{$subcategory_en}}--}}
                            {{--                            @endif--}}
                        </span>
                    </div>
                </div>
                <div class="col-md-9 col-sm-8">
                    @if (isset($subcatePosts))
                        @foreach ($subcatePosts as $row)
                            <div class="archive_post_sec_again">
                                <div class="row">
                                    <div class="col-md-4 col-sm-5">
                                        <div class="archive_img_again">
                                            <a href="{{route('single.post',$row->id)}}"><img
                                                    src="{{ asset($row->image) }}" alt="Notebook"></a>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-7">
                                        <div class="archive_padding_again">
                                            <div class="archive_heading_01">
                                                <a href="#">{{ $row->title_en }}</a>
                                            </div>
                                            <div class="archive_dtails">
                                                {!! Str::limit($row->details_en, 200, '...') !!}
                                            </div>
                                            <div class="dtails_btn"><a
                                                    href="{{ route('single.post', $row->id) }}">Read
                                                    More...</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @elseif(isset($catePosts))
                        @foreach ($catePosts as $row)
                            <div class="archive_post_sec_again">
                                <div class="row">
                                    <div class="col-md-4 col-sm-5">
                                        <div class="archive_img_again">
                                            <a href="{{route('single.post',$row->id)}}"><img
                                                    src="{{ asset($row->image) }}" alt="Notebook"></a>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-7">
                                        <div class="archive_padding_again">
                                            <div class="archive_heading_01">
                                                <a href="#">{{ $row->title_en }}</a>
                                            </div>
                                            <div class="archive_dtails">
                                                {!! Str::limit($row->details_en, 200, '...') !!}
                                            </div>
                                            <div class="dtails_btn"><a
                                                    href="{{ route('single.post', $row->id) }}">Read
                                                    More...</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    @endif


                    <div class="post-pagination">
                        @if(isset($catePosts))
                            {!! $catePosts->appends(request()->all())->links('pagination::bootstrap-4') !!}

                        @else
                            {!! $subcatePosts->appends(request()->all())->links('pagination::bootstrap-4') !!}
                        @endif
                    </div>
                </div>
                <div class="col-md-3 col-sm-4">
                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add"><img src="assets/img/add_01.jpg" alt=""/></div>
                        </div>
                    </div><!-- /.add-close -->
                    {{--                    @include('main.body.tab')--}}
                    <!-- add-start -->
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="sidebar-add"><img src="assets/img/add_01.jpg" alt=""/></div>
                        </div>
                    </div><!-- /.add-close -->
                </div>
            </div>
        </div>
    </section>
@endsection
