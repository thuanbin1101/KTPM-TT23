@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Default form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('store.district')}}">
                    @csrf
                    <div class="form-group">
                        <label for="exampleInputUsername1">District English</label>
                        <input type="text" class="form-control" name="district_en" id="exampleInputUsername1"
                               placeholder="Username">
                        @error('district_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">District Vietnamese</label>
                        <input type="text" class="form-control" name="district_vn" id="exampleInputEmail1"
                               placeholder="Email">
                        @error('district_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection
