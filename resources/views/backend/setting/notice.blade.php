@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Notices form</h4>
                <p class="card-description"> Basic form layout </p>
                @if($notice->status === 1)
                    <a href="{{route("notice.deactive",$notice->id)}}" class="">
                        <button type="button" class="btn btn-danger btn-fw">DeActive</button>
                    </a>
                    <br/>
                    <small class="text-success" style="margin-bottom:20px">Now notice are Active</small>
                @else
                    <a href="{{route("notice.active",$notice->id)}}" class="">
                        <button type="button" class="btn btn-primary btn-fw">Active</button>
                        <br/>
                    </a>
                    <small class="text-danger" style="margin-bottom:20px">Now notice are DeActive</small>
                @endif
                <form class="forms-sample" method="POST" action="{{route("notice.update",$notice->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">

                        <label for="exampleInputUsername1">Notice</label>
                        <textarea type="text" class="form-control" name="notice" id="facebook"
                        >{{$notice->notice}}</textarea>
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
