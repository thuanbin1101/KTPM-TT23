@extends('admin.admin_master')
@section('admin')
    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Subcategory form</h4>
                <p class="card-description"> Basic form layout </p>
                <form class="forms-sample" method="POST" action="{{route('update.subcategory',$subcategory->id)}}">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label for="">Category Name</label>
                        <select name="category_id" id="" class="form-control">
                            <option value="">--- SELECT CATEGORY ---</option>
                            @foreach($categories as $category)
                                <option
                                    value="{{$category->id}}" {{$category->id == $subcategory->category_id ? 'selected' : ''}}>{{$category->category_en . ' - ' . $category->category_vn}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputUsername1">Subcategory English</label>
                        <input type="text" class="form-control" name="subcategory_en" id="exampleInputUsername1"
                               placeholder="Username" value="{{$subcategory->subcategory_en}}">
                        @error('subcategory_en')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Subcategory Vietnamese</label>
                        <input type="text" class="form-control" name="subcategory_vn" id="exampleInputEmail1"
                               placeholder="Email" value="{{$subcategory->subcategory_vn}}">
                        @error('subcategory_vn')
                        <span class="text-danger">{{$message}}</span>
                        @enderror
                    </div>
                    <button type="submit" class="btn btn-primary mr-2">Update</button>
                </form>
            </div>
        </div>
    </div>
@endsection
