@extends('admin.admin_master')

@section('admin')
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Category Page</h4>
                <div class="template-demo">
                    <a href="{{ route('add.category') }}">
                        <button type="button" class="btn btn-primary btn-fw" style="float: right;margin-bottom: 15px">
                            Add
                            Category
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
                                <th> Category English</th>
                                <th> Category Vietnamese</th>
                                <th> Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($categories as $key => $category)
                                <tr>
                                    <td> {{ $categories->firstItem() + $key }}</td>
                                    <td> {{ $category->category_en }}</td>
                                    <td> {{ $category->category_vn }}</td>
                                    <td>
                                        <a href="{{ route('edit.category', $category->id) }}"
                                            class="btn btn-info">Edit</a>
                                        <form action="{{ route('destroy.category', $category->id) }}" method="POST"
                                            style="display: inline">
                                            @csrf
                                            @method('DELETE')
{{--                                            @if (auth()->user()->can('delete category'))--}}
                                                <button data-url="{{ route('destroy.category', $category->id) }}"
                                                    class="btn btn-danger btn--delete">
                                                    Delete
                                                </button>
{{--                                            @endif--}}

                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                <div style="margin-top: 10px">
                    {!! $categories->appends(request()->all())->links('pagination::bootstrap-4') !!}

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('js')
<script src="{{ asset('backend/admins/category/index/list.js') }}"></script>
@endsection
