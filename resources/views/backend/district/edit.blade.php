@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">District form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('update.district',$district->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="exampleInputUsername1">District English</label>
                        <input type="text" class="form-control" name="district_en" id="exampleInputUsername1"
                               placeholder="Username" value="{{$district->district_en}}">
                        @error('district_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">District Vietnamese</label>
                        <input type="text" class="form-control" name="district_vn" id="exampleInputEmail1"
                               placeholder="Email" value="{{$district->district_vn}}">
                        @error('district_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
