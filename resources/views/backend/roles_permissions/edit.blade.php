@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    @php
    $subcategory_post = DB::table('subcategories')
        ->where('category_id', $post->category_id)
        ->get();
    $subdistrict_post = DB::table('subdistricts')
        ->where('district_id', $post->district_id)
        ->get();
    @endphp
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Basic form elements</h4>
                <p class="card-description"> Basic form elements </p>
                <form class="forms-sample" action="{{ route('update.post', $post->id) }}" method="post"
                    enctype="multipart/form-data">
                    @method('PUT')
                    @csrf
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleInputName1">Title English</label>
                            <input type="text" class="form-control" id="exampleInputName1" placeholder="Name"
                                value="{{ $post->title_en }}" name="title_en">
                            @error('title_en')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleInputEmail3">Title Vietnamese</label>
                            <input type="text" class="form-control" name="title_vn" id="exampleInputEmail3"
                                value="{{ $post->title_vn }}" placeholder="Email">
                            @error('title_vn')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="">Category Name</label>
                            <select name="category_id" id="" class="form-control">
                                <option value="">--- SELECT CATEGORY ---</option>
                                @foreach ($categories as $row)
                                    <option value="{{ $row->id }}"
                                        {{ $post->category_id == $row->id ? 'selected' : '' }}>
                                        {{ $row->category_en . ' - ' . $row->category_vn }}</option>
                                @endforeach
                            </select>


                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Subcategory Name</label>
                            <select name="subcategory_id" id="subcategory_id" class="form-control">
                                {{-- <option value="">--- SELECT SUBCATEGORY ---</option> --}}
                                @foreach ($subcategory_post as $row)
                                    <option value="{{ $row->id }}"
                                        {{ $row->id == $post->subcategory_id ? 'selected' : '' }}>
                                        {{ $row->subcategory_en }}</option>
                                @endforeach
                            </select>

                        </div>

                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="">District Name</label>
                            <select name="district_id" id="" class="form-control">
                                <option value="">--- SELECT DISTRICT ---</option>
                                @foreach ($districts as $row)
                                    <option value="{{ $row->id }}"
                                        {{ $post->district_id == $row->id ? 'selected' : '' }}>
                                        {{ $row->district_en . ' - ' . $row->district_vn }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="">Subdistrict Name</label>
                            <select name="subdistrict_id" id="subdistrict_id" class="form-control">
                                @foreach ($subdistrict_post as $row)
                                    <option value="{{ $row->id }}"
                                        {{ $row->id == $post->subdistrict_id ? 'selected' : '' }}>
                                        {{ $row->subdistrict_en }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="form-group col-md-6">
                            <label for="exampleInputName1">Tags English</label>
                            <input type="text" class="form-control" id="exampleInputName1" placeholder="Name"
                                value="{{ $post->tags_en }}" name="tags_en">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="exampleInputEmail3">Tags Vietnamese</label>
                            <input type="text" class="form-control" name="tags_vn" id="exampleInputEmail3"
                                value="{{ $post->tags_vn }}" placeholder="Email">
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group col-md-6">
                            <label>News Image upload</label>
                            <input type="file" name="image" class="form-control-file">
                        </div>
                        <div class="form-group col-md-6">
                            <label>Old Image</label><br>
                            <img src="{{ asset($post->image) }}" alt="">
                            <input type="hidden" name="oldimage" value="{{ $post->image }}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Details English</label>
                        <textarea name="details_en" class="form-control" id="summernote" rows="4">
                                        {{ $post->details_en }}
                                    </textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">Details Vietnamese</label>
                        <textarea class="form-control" name="details_vn" id="summernote1"
                            rows="4">  {{ $post->details_vn }}</textarea>
                    </div>

                    <hr>
                    <h4 class="text-center">Extra Options</h4><br>
                    <div class="row">
                        <div class="form-check col-md-3">
                            <label class="form-check-label">
                                <input value="1" type="checkbox" name="headline" class="form-check-input"
                                    {{ $post->headline == '1' ? 'checked' : '' }}> Headline <i
                                    class="input-helper"></i></label>
                        </div>
                        <div class="form-check col-md-3">
                            <label class="form-check-label">
                                <input value="1" type="checkbox" name="bigthumbnail" class="form-check-input"
                                    {{ $post->bigthumbnail == '1' ? 'checked' : '' }}> General Big
                                Thumbnail
                                <i class="input-helper"></i></label>
                        </div>
                        <div class="form-check col-md-3">
                            <label class="form-check-label">
                                <input value="1" type="checkbox" name="first_section" class="form-check-input"
                                    {{ $post->first_section == '1' ? 'checked' : '' }}> First
                                Section <i class="input-helper"></i></label>
                        </div>
                        <div class="form-check col-md-3">
                            <label class="form-check-label">
                                <input value="1" type="checkbox" name="first_section_thumbnail" class="form-check-input"
                                    {{ $post->first_section_thumbnail == '1' ? 'checked' : '' }}>
                                First
                                Section Bigthumbnail <i class="input-helper"></i></label>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
    {{-- This is for category --}}
    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="category_id"]').on('change', function() {
                var cat_id = $(this).val();
                if (cat_id) {
                    $.ajax({
                        url: "{{ url('/get/subcategory/') }}/" + cat_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            $("#subcategory_id").empty();
                            $.each(data, function(key, value) {
                                $("#subcategory_id").append('<option value="' + value
                                    .id +
                                    '">' + value.subcategory_en + '</option>');
                            });
                        },
                    });
                } else {
                    alert('danger');
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="district_id"]').on('change', function() {
                var district_id = $(this).val();
                if (district_id) {
                    $.ajax({
                        url: "{{ url('/get/subdistrict/') }}/" + district_id,
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
@endsection
