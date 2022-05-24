@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Default form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('store.category')}}">
                    @csrf
                    <div class="form-group">
                        <label for="exampleInputUsername1">Category English</label>
                        <input type="text" class="form-control" name="category_en" id="category_en"
                               placeholder="Username">
                        @error('category_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Category Vietnamese</label>
                        <input type="text" class="form-control" name="category_vn" id="category_vn"
                               placeholder="Email">
                        @error('category_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" id="btnAddCategory" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection
