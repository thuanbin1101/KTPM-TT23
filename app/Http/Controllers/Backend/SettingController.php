<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SettingController extends Controller
{

    public function socialSetting()
    {
        $social = DB::table("socials")->first();
        return view("backend.setting.social", [
            'social' => $social
        ]);
    }

    public function socialUpdate(Request $request, $id)
    {
        DB::table("socials")->where("id", $id)->update([
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'instagram' => $request->instagram,
            'linkedin' => $request->linkedin,
            'youtube' => $request->youtube
        ]);
        $notification = array(
            'message' => 'Socials Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }

    public function seoSetting()
    {
        $seo = DB::table('seos')->first();
        return view('backend.setting.seo', compact('seo'));
    }

    public function seoUpdate(Request $request, $id)
    {
        $data = array();
        $data['mete_author'] = $request->mete_author;
        $data['meta_title'] = $request->meta_title;
        $data['meta_keyword'] = $request->meta_keyword;
        $data['meta_description'] = $request->meta_description;
        $data['google_analytics'] = $request->google_analytics;
        $data['google_verification'] = $request->google_verification;
        $data['alexa_analytics'] = $request->alexa_analytics;
        DB::table('seos')->where('id', $id)->update($data);
        $notification = array(
            'message' => 'Seo Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('seo.setting')->with($notification);

    }

    public function prayerSetting()
    {
        $prayer = DB::table('prayers')->first();
        return view('backend.setting.prayer', [
            'prayer' => $prayer,
        ]);
    }

    public function prayerUpdate(Request $request, $id)
    {
        DB::table('prayers')->where('id', $id)->update($request->except(['_token', '_method']));
        $notification = array(
            'message' => 'Prayer Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('prayer.setting')->with($notification);
    }

    public function livetvSetting()
    {
        $livetv = DB::table('livetvs')->first();
        return view('backend.setting.livetv', [
            'livetv' => $livetv,
        ]);
    }

    public function livetvUpdate(Request $request, $id)
    {
        DB::table('livetvs')->where('id', $id)->update($request->except(['_token', '_method']));
        $notification = array(
            'message' => 'Prayer Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('livetv.setting')->with($notification);
    }

    public function livetvActive(Request $request, $id)
    {
        DB::table('livetvs')->where('id', $id)->update(['status' => 1]);
        $notification = array(
            'message' => 'Prayer Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('livetv.setting')->with($notification);
    }

    public function livetvDeActive(Request $request, $id)
    {
        DB::table('livetvs')->where('id', $id)->update(['status' => 0]);
        $notification = array(
            'message' => 'Prayer Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('livetv.setting')->with($notification);
    }

    public function noticeSetting()
    {
        $notice = DB::table('notices')->first();
        return view('backend.setting.notice', [
            'notice' => $notice,
        ]);
    }

    public function noticeUpdate(Request $request, $id)
    {
        DB::table('notices')->where('id', $id)->update($request->except(['_token', '_method']));
        $notification = array(
            'message' => 'Notice Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('notice.setting')->with($notification);
    }

    public function noticeActive(Request $request, $id)
    {
        DB::table('notices')->where('id', $id)->update(['status' => 1]);
        $notification = array(
            'message' => 'Notice Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('notice.setting')->with($notification);
    }

    public function noticeDeActive(Request $request, $id)
    {
        DB::table('notices')->where('id', $id)->update(['status' => 0]);
        $notification = array(
            'message' => 'Notice Updated Successfully',
            'alert-type' => 'success',
        );
        return redirect()->route('notice.setting')->with($notification);
    }

    // ----------- WEBSITE ---------------//
    public function websiteSetting()
    {
        $websites = DB::table("websites")->orderBy('id', 'DESC')->paginate(3);
        return view("backend.website.index", [
            'websites' => $websites
        ]);
    }

    public function websiteCreate(Request $request)
    {
        return view("backend.website.create");
    }

    public function websiteStore(Request $request)
    {
        DB::table('websites')->insert($request->except(['_token', '_method']));
        $notification = array(
            'message' => 'Website Created Successfully',
            'alert-type' => 'success',
        );
        return redirect()->back()->with($notification);
    }

}
