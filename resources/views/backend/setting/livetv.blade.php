@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Livetvs form</h4>
                <p class="card-description"> Basic form layout </p>
                @if($livetv->status === 1)
                    <a href="{{route("livetv.deactive",$livetv->id)}}" class="">
                        <button type="button" class="btn btn-danger btn-fw">DeActive</button>
                    </a>
                    <br/>
                    <small class="text-success" style="margin-bottom:20px">Now live tv are Active</small>
                @else
                    <a href="{{route("livetv.active",$livetv->id)}}" class="">
                        <button type="button" class="btn btn-primary btn-fw">Active</button>
                        <br/>
                    </a>
                    <small class="text-danger" style="margin-bottom:20px">Now live tv are DeActive</small>
                @endif
                <form class="forms-sample" method="POST" action="{{route("livetv.update",$livetv->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">

                        <label for="exampleInputUsername1">Embed Code</label>
                        <textarea type="text" class="form-control" name="embed_code" id="facebook"
                        >{{$livetv->embed_code}}</textarea>
                        @error('facebook')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
