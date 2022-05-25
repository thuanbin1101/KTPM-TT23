@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Default form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{ route('seo.update', $seo->id) }}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="exampleInputUsername1">mete_author</label>
                        <input type="text" class="form-control" name="mete_author" value="{{ $seo->mete_author }}"
                               id="exampleInputUsername1" placeholder="Username">
                        @error('mete_author')
                        <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">meta_title</label>
                        <input type="text" class="form-control" name="meta_title" value="{{ $seo->meta_title }}"
                               id="exampleInputEmail1" placeholder="Email">
                        @error('meta_title')
                        <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">meta_keyword</label>
                        <input type="text" class="form-control" name="meta_keyword" value="{{ $seo->meta_keyword }}"
                               id="exampleInputEmail1" placeholder="Email">
                        @error('meta_keyword')
                        <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">meta_description</label>
                        <textarea name="meta_description" class="form-control" id="summernote" rows="4">
                                 {{ $seo->meta_description }}
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">google_analytics</label>
                        <textarea name="google_analytics" class="form-control" id="summernote12" rows="4">
                                {{ $seo->google_analytics }}
                        </textarea>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">google_verification</label>
                        <input type="text" class="form-control" name="google_verification" value="{{ $seo->google_verification }}"
                               id="exampleInputEmail1" placeholder="Email">
                        @error('google_verification')
                        <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleTextarea1">alexa_analytics</label>
                        <textarea name="alexa_analytics" class="form-control" id="summernote1" rows="4">
                                {{ $seo->alexa_analytics }}
                        </textarea>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection
