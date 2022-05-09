@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Default form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('store.subdistrict')}}">
                    @csrf
                    <div class="form-group">
                        <label for="">District Name</label>
                        <select name="district_id" id="" class="form-control">
                            <option value="">--- SELECT CATEGORY ---</option>
                            @foreach($districts as $district)
                                <option
                                    value="{{$district->id}}">{{$district->district_en . ' - ' . $district->district_vn}}</option>
                            @endforeach
                        </select>
                        @error('district_id')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="exampleInputUsername1">SubDistrict English</label>
                        <input type="text" class="form-control" name="subdistrict_en" id="exampleInputUsername1"
                               placeholder="Username">
                        @error('subdistrict_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">SubDistrict Vietnamese</label>
                        <input type="text" class="form-control" name="subdistrict_vn" id="exampleInputEmail1"
                               placeholder="Email">
                        @error('subdistrict_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection
