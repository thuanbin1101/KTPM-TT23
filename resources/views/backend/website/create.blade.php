@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Website form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route("website.store")}}">
                    @csrf
                    <div class="form-group">

                        <label for="exampleInputUsername1">Website Name</label>
                        <input type="text" class="form-control" name="website_name" id="facebook"
                               value="">
                        @error('facebook')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Website Link</label>
                        <input type="text" class="form-control" name="website_link" id="twitter"
                             value="">
                        @error('twitter')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <button type="submit"  class="btn btn-primary mr-2">Create</button>
                </form>
            </div>
        </div>
    </div>
@endsection
