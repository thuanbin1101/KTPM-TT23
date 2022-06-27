@extends('admin.admin_master')
@section('css')
    <style>
        .card .card-header {
            border-bottom: 1px solid black;
        }

    </style>
@endsection
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Default form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('store.role')}}">
                    @csrf
                    <div class="form-group">
                        <label for="exampleInputUsername1">Role Name</label>
                        <input type="text" class="form-control" name="role_name" id="exampleInputUsername1"
                               placeholder="Username">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputUsername1">Permissions</label>

                        <div class="card text-white mb-3 col-md-12" style="width: 100%;">
{{--                            <div class="card-header">--}}
{{--                                <label for="">--}}
{{--                                    <input type="checkbox">--}}
{{--                                </label>--}}
{{--                                Check All--}}
{{--                            </div>--}}
                            <div class="row">
                                @foreach($permissions as $permission)
                                    <div class="card-body col-md-3">
                                        <h5 class="card-title">
                                            <label for="">
                                                <input value="{{$permission->name}}" type="checkbox"
                                                       name="permission_name[]"
                                                       class="form-check-input"> {{$permission->name}}
                                            </label>
                                        </h5>
                                    </div>
                                @endforeach
                            </div>

                        </div>

                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>

            </div>
        </div>
    </div>

@endsection
