@extends('admin.admin_master')
@section('admin')
    <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Form Photo Gallery Update</h4>
                <p class="card-description"> Basic form elements </p>
                <form class="forms-sample" action="{{ route('update.photo',$photo->id) }}" method="post"
                      enctype="multipart/form-data">
                    @csrf
                    @method("PUT")
                    <div class="form-group">
                        <label for="exampleInputName1">Title</label>
                        <input type="text" value="{{$photo->title}}" class="form-control" id="exampleInputName1"
                               placeholder="Name" name="title">
                        @error('title')
                        <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label>News Image upload</label>
                        <input type="file" name="photo" class="form-control-file">
                    </div>
                    <div class="form-group">
                        <label>Old Photo</label><br>
                        <img src="{{ asset($photo->photo) }}" alt="">
                        <input type="hidden" name="old_photo" value="{{ $photo->photo }}">
                    </div>
                    <div class="form-group">
                        <label for="">Type</label>
                        <select name="type" id="" class="form-control">
                            <option value="">--- SELECT CATEGORY ---</option>
                            <option {{$photo->type === "1" ? 'selected' : ''}} value="1">Big Photo</option>
                            <option {{$photo->type === "0" ? 'selected' : ''}} value="0 ">Small Photo</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>

@endsection
