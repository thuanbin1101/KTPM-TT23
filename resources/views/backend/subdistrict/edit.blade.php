@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Subdistrict form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('update.subdistrict',$subdistrict->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">District Name</label>
                        <select name="district_id" id="" class="form-control">
                            <option value="">--- SELECT DISTRICT ---</option>
                            @foreach($districts as $district)
                                <option
                                    value="{{$district->id}}" {{$district->id == $subdistrict->district_id ? 'selected' : ''}}>{{$district->district_en . ' - ' . $district->district_vn}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputUsername1">Subdistrict English</label>
                        <input type="text" class="form-control" name="subdistrict_en" id="exampleInputUsername1"
                               placeholder="Username" value="{{$subdistrict->subdistrict_en}}">
                        @error('subdistrict_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Subdistrict Vietnamese</label>
                        <input type="text" class="form-control" name="subdistrict_vn" id="exampleInputEmail1"
                               placeholder="Email" value="{{$subdistrict->subdistrict_vn}}">
                        @error('subdistrict_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
