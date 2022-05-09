<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{

    public function socialSetting()
    {

    }

    public function seoSetting()
    {
        $seo = DB::table('seos')->first();
        return view('backend.setting.seo',compact('seo'));
    }
    public function seoUpdate(Request $request,$id){
        $data = array();
        $data['mete_author'] = $request->mete_author;
        $data['meta_title'] = $request->meta_title;
        $data['meta_keyword'] = $request->meta_keyword;
        $data['meta_description'] = $request->meta_description;
        $data['google_analytics'] = $request->google_analytics;
        $data['google_verification'] = $request->google_verification;
        $data['alexa_analytics'] = $request->alexa_analytics;
        DB::table('seos')->where('id',$id)->update($data);
        $notification = array(
            'message' => 'Seo Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('seo.setting')->with($notification);

    }









}
