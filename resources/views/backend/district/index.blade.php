@extends('admin.admin_master')
@section('admin')
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">District Page</h4>
                <div class="template-demo">
                    <a href="{{route('add.district')}}">
                        <button type="button" class="btn btn-primary btn-fw" style="float: right;margin-bottom: 15px">
                            Add
                            District
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
                            <th> District English</th>
                            <th> District Vietnamese</th>
                            <th> Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($districts as $district)
                            <tr>
                                <td> 1</td>
                                <td> {{$district->district_en}}</td>
                                <td> {{$district->district_vn}}</td>
                                <td>
                                    <a href="{{route('edit.district',$district->id)}}" class="btn btn-info">Edit</a>
                                    <form action="{{route('destroy.district',$district->id)}}" method="POST"
                                          style="display: inline">
                                        @csrf
                                        @method('DELETE')
                                        <button
                                            class="btn btn-danger" onclick="return confirm('Are you sure to delete?')">
                                            Delete
                                        </button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                    <div style="margin-top: 10px">
                        {!! $districts->appends(request()->all())->links('pagination::bootstrap-4') !!}

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
