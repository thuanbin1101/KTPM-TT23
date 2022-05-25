@extends('admin.admin_master')
@section('admin')
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Gallery Page</h4>
                <div class="template-demo">
                    <a href="{{ route('add.photo') }}">
                        <button type="button" class="btn btn-primary btn-fw" style="float: right;margin-bottom: 15px">
                            Add
                            Photo
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
                                <th> Photo Title</th>
                                <th> Photo Image</th>
                                <th> Type</th>
                                <th> Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($photos as $row)
                                <tr>
                                    <td> {{ $phots->firstItem() + $key }}</td>
                                    <td> {{ $row->title }}</td>
                                    <td> <img src="{{ asset($row->photo) }}" width="50px" height="50px" alt=""></td>
                                    <td>
                                        @if ($row->type == 1)
                                            <span class="badge badge-success">Big Photo</span>
                                        @else
                                            <span class="badge badge-info">Small Photo</span>
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{ route('edit.photo', $row->id) }}" class="btn btn-info">Edit</a>
                                        <form action="{{ route('destroy.photo', $row->id) }}" method="POST"
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
                        {!! $photos->appends(request()->all())->links('pagination::bootstrap-4') !!}

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
