@extends('admin.admin_master')
@section('css')
    <style>
        .select2-selection__choice {
            font-size: 20px !important
        }

    </style>
@endsection
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Add User form</h4>
                <p class="card-description"> Basic form layout </p>
                @if (session('success'))
                    <div class="alert alert-success" role="alert">
                        {{ session('success') }}
                    </div>
                @endif
                <form class="forms-sample" method="POST" action="{{ route('store.user') }}">
                    @csrf
                    <div class="form-group">
                        <label for="exampleInputUsername1">User Name</label>
                        <input type="text" class="form-control" name="name" id="exampleInputUsername1"
                            placeholder="Username">
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">User Email</label>
                        <input type="text" class="form-control" name="email" id="exampleInputEmail1" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">User Password</label>
                        <input type="password" class="form-control" name="password" id="exampleInputEmail1"
                            placeholder="password">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">User Role</label>
                        <select name="role_id[]" id="" class="form-control select2_init my-select" multiple>
                            @foreach ($roles as $role)
                                <option value="{{ $role->name }}">{{ $role->name }}</option>
                            @endforeach
                        </select>
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
