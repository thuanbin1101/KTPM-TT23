@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Category form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('update.category',$category->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="exampleInputUsername1">Category English</label>
                        <input type="text" class="form-control" name="category_en" id="exampleInputUsername1"
                               placeholder="Username" value="{{$category->category_en}}">
                        @error('category_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Category Vietnamese</label>
                        <input type="text" class="form-control" name="category_vn" id="exampleInputEmail1"
                               placeholder="Email" value="{{$category->category_vn}}">
                        @error('category_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
