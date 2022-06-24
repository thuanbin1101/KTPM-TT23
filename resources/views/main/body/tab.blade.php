<div class="tab-header">
    <!-- Nav tabs -->
    <ul class="nav nav-tabs nav-justified" role="tablist">
        <li role="presentation" class="active"><a href="#tab21" aria-controls="tab21"
                                                  role="tab" data-toggle="tab"
                                                  aria-expanded="false">Latest</a></li>
        <li role="presentation"><a href="#tab22" aria-controls="tab22" role="tab" data-toggle="tab"
                                   aria-expanded="true">Popular</a></li>
        <li role="presentation"><a href="#tab23" aria-controls="tab23" role="tab" data-toggle="tab"
                                   aria-expanded="true">Highest</a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content ">
        <div role="tabpanel" class="tab-pane in active" id="tab21">
            <div class="news-titletab">
                @foreach($latests as $row)
                    <div class="news-title-02">
                        <h4 class="heading-03">
                            <a href="#">
                                {{session()->get('lang') === 'eng' ? $row->title_en : $row->title_vn}}
                            </a>
                        </h4>
                    </div>
                @endforeach
            </div>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="tab22">
            <div class="news-titletab">
                @foreach($populars as $row)
                    <div class="news-title-02">
                        <h4 class="heading-03">
                            <a href="#">
                                {{session()->get('lang') === 'eng' ? $row->title_en : $row->title_vn}}
                            </a>
                        </h4>
                    </div>
                @endforeach
            </div>
        </div>
        <div role="tabpanel" class="tab-pane fade" id="tab23">
            <div class="news-titletab">
                @foreach($highests as $row)
                    <div class="news-title-02">
                        <h4 class="heading-03">
                            <a href="#">
                                {{session()->get('lang') === 'eng' ? $row->title_en : $row->title_vn}}
                            </a>
                        </h4>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
