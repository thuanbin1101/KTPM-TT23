@extends('admin.admin_master')
@section('admin')
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Role Permission Page</h4>
                <div class="template-demo">
                    <a href="{{ route('add.role') }}">
                        <button type="button" class="btn btn-primary btn-fw" style="float: right;margin-bottom: 15px">
                            Add
                            Role
                        </button>
                    </a>
                </div>
                <form action="" class="form-inline">
                    <div class="form-group">
                        <input type="text" name="search" class="form-control" placeholder="Search by name...">
                    </div>
                    <button type="submit" class="btn btn-dark">Search</button>
                </form>
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                        <tr>
                            <th> #</th>
                            <th> Role Name</th>
                            <th> Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach ($roles as $role)
                            <tr>
                                <td> 1</td>
                                <td> {{ $role->name }}</td>

                                <td>
                                    <a href="{{ route('edit.role', $role->id) }}" class="btn btn-info">Edit</a>
                                    <form action="{{ route('destroy.role', $role->id) }}" method="POST"
                                          style="display: inline">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger"
                                                onclick="return confirm('Are you sure to delete?')">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div style="margin-top: 10px">
                        {!! $roles->appends(request()->all())->links('pagination::bootstrap-4') !!}

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
