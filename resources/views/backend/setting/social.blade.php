@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Socials form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route("social.update",$social->id)}}">
                    @csrf
                    @method('PUT')

                    <div class="form-group">

                        <label for="exampleInputUsername1">Facebook</label>
                        <input type="text" class="form-control" name="facebook" id="facebook"
                               value="{{$social->facebook}}">
                        @error('facebook')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Twitter</label>
                        <input type="text" class="form-control" name="twitter" id="twitter"
                               placeholder="Email" value="{{$social->twitter}}">
                        @error('twitter')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Youtube</label>
                        <input type="text" class="form-control" name="youtube" id=""
                               value="{{$social->youtube}}">
                        @error('youtube')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Linkedin</label>
                        <input type="text" class="form-control" name="linkedin" id=""
                               value="{{$social->linkedin}}">
                        @error('linkedin')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Instagram</label>
                        <input type="text" class="form-control" name="instagram" id=""
                               value="{{$social->instagram}}">
                        @error('instagram')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit"  class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
