@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Prayers form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route("prayer.update",$prayer->id)}}">
                    @csrf
                    @method('PUT')

                    <div class="form-group">

                        <label for="exampleInputUsername1">Fajr</label>
                        <input type="text" class="form-control" name="fajr" id="facebook"
                               value="{{$prayer->fajr}}">
                        @error('facebook')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Johor</label>
                        <input type="text" class="form-control" name="johor" id="twitter"
                               placeholder="Email" value="{{$prayer->johor}}">
                        @error('twitter')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Asor</label>
                        <input type="text" class="form-control" name="asor" id=""
                               value="{{$prayer->asor}}">
                        @error('youtube')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Magrib</label>
                        <input type="text" class="form-control" name="magrib" id=""
                               value="{{$prayer->magrib}}">
                        @error('linkedin')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Eaha</label>
                        <input type="text" class="form-control" name="eaha" id=""
                               value="{{$prayer->eaha}}">
                        @error('instagram')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <div class="form-group">

                        <label for="exampleInputUsername1">Jummah</label>
                        <input type="text" class="form-control" name="jummah" id=""
                               value="{{$prayer->jummah}}">
                        @error('instagram')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
