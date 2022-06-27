<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Intervention\Image\ImageManagerStatic as Image;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $photos = DB::table('photos')->orderBy('id', 'DESC')->paginate(5);
        return view('backend.gallery.photos', compact('photos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('backend.gallery.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validated = $request->validate([
            'title' => 'required',
            'photo' => 'required',
            'type' => 'required'
        ], [
            'title.required' => "Bạn chưa nhập tiêu đề",
            'photo.required' => "Bạn chưa nhập ảnh",
            'type.required' => "Bạn chưa nhập loại ảnh"
        ]);
        $data = array();
        $data['title'] = $request->title;
        $data['type'] = $request->type;
        $image = $request->photo;
        if ($image) {
            $image_one = uniqid('', true) . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(500, 300)->save("image/photogallery/$image_one");
            $data['photo'] = "image/photogallery/$image_one";
            DB::table('photos')->insert($data);
            $notification = array(
                'message' => 'Photo Inserted Successfully',
                'alert-type' => 'success',
            );
            return redirect()->route('photo')->with($notification);
        } else {
            return redirect()->back();
        }
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\View\View|\Illuminate\Http\Response|\Illuminate\View\View
     */
    public function edit($id)
    {
        $photo = DB::table("photos")->where('id', $id)->first();
        return view("backend.gallery.edit", [
            'photo' => $photo
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = array();
        $data['title'] = $request->title;
        $data['type'] = $request->type;
        $photo = $request->photo;
        $oldPhoto = $request->old_photo;
        if ($photo) {
            $image_one = uniqid('', true) . '.' . $photo->getClientOriginalExtension();
            Image::make($photo)->resize(500, 300)->save("image/photogallery/$image_one");
            $data['photo'] = "image/photogallery/$image_one";
            unlink($oldPhoto);
            DB::table('photos')->where('id', $id)->update($data);
            $notification = array(
                'message' => 'Photo Updated Successfully',
                'alert-type' => 'success',
            );
            return redirect()->route('photo')->with($notification);
        } else {
            $data['photo'] = $oldPhoto;
            DB::table('photos')->where('id', $id)->update($data);
            $notification = array(
                'message' => 'Photo Updated Successfully',
                'alert-type' => 'success',
            );
            return redirect()->route('photo')->with($notification);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $photoDelete = DB::table('photos')->delete($id);
        if ($photoDelete) {
            $notification = array(
                'message' => 'Photo Deleted Successfully',
                'alert-type' => 'success',
            );
        } else {
            $notification = array(
                'message' => 'Photo Deleted Failure',
                'alert-type' => 'warning',
            );
        }
        return redirect()->route('photo')->with($notification);

    }

    public function indexVideo()
    {
        $videos = DB::table('videos')->orderBy('id', 'DESC')->paginate(5);
        return view('backend.gallery.videos', compact('videos'));
    }

    public function createVideo()
    {
        return view('backend.gallery.videoCreate');
    }

    public function storeVideo(Request $request)
    {
        DB::table('videos')->insert($request->except(['_token']));
        $notification = array(
            'message' => 'Video Created Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }

    public function editVideo($id)
    {
        $video = DB::table('videos')->where("id", $id)->first();
        return view('backend.gallery.videoEdit', [
            'video' => $video,
        ]);
    }

    public function updateVideo(Request $request, $id)
    {
        DB::table('videos')->where('id', $id)->update($request->except(['_token', '_method']));
        $notification = array(
            'message' => 'Video Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }

    public function destroyVideo($id)
    {
        DB::table('videos')->where('id', $id)->delete();
        $notification = array(
            'message' => 'Video Deleted Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }
}
