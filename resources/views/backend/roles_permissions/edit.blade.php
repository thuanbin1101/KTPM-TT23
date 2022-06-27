@extends('admin.admin_master')
@section('css')
    <link rel="stylesheet" href="{{ asset('backend/admins/user/edit/styles.css') }}">
@endsection
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Edit Role form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{ route('update.role',['id'=>$role->id]) }}">
                    @csrf
                    @method("PUT")
                    <div class="form-group">
                        <label for="exampleInputUsername1">Role name</label>
                        <input type="text" class="form-control" name="name" id="exampleInputUsername1"
                               value="{{ $role->name }}" placeholder="Username">
                    </div>

                    <h4 class="text-center mt-5">Permissions</h4><br>
                    <div class="row row-cols-5">
                        @foreach($permissions as $permission)
                            <div class="form-check col">
                                <label style="" class="form-check-label">
                                    <input value="{{$permission->name}}" type="checkbox"
                                           {{ $permissionsOfRole->contains('id', $permission->id) ? 'checked' : '' }} name="permission_name[]"
                                           class="form-check-input"> {{$permission->name}}
                                    <i
                                        class="input-helper"></i></label>
                            </div>
                        @endforeach
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Submit</button>
                </form>
            </div>
        </div>
    </div>
@endsection
@section('js')
    <script>
        $('.select2_init').select2({
            'placeholder': 'Chọn vai trò'
        })
    </script>
@endsection
