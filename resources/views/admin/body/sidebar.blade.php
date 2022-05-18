<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <div class="sidebar-brand-wrapper d-none d-lg-flex align-items-center justify-content-center fixed-top">
        <a class="sidebar-brand brand-logo" href="/dashboard"><img src="{{ asset('backend/assets/images/logo.svg') }}"
                                                                   alt="logo"/></a>
        <a class="sidebar-brand brand-logo-mini" href="/dashboard"><img
                src="{{ asset('backend/assets/images/logo-mini.svg') }}" alt="logo"/></a>
    </div>
    <ul class="nav">
        <li class="nav-item profile">
            <div class="profile-desc">
                <div class="profile-pic">
                    <div class="count-indicator">
                        <img class="img-xs rounded-circle " src="{{ asset('backend/assets/images/faces/face15.jpg') }}"
                             alt="">
                        <span class="count bg-success"></span>
                    </div>
                    <div class="profile-name">
                        <h5 class="mb-0 font-weight-normal">
                            {{ isset(Auth::user()->name) ? Auth::user()->name : 'Test' }}</h5>
                        <span>{{ isset(Auth::user()->email) ? Auth::user()->email : 'Test' }}</span>
                    </div>
                </div>
                <a href="#" id="profile-dropdown" data-toggle="dropdown"><i class="mdi mdi-dots-vertical"></i></a>
                <div class="dropdown-menu dropdown-menu-right sidebar-dropdown preview-list"
                     aria-labelledby="profile-dropdown">
                    <a href="#" class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <div class="preview-icon bg-dark rounded-circle">
                                <i class="mdi mdi-settings text-primary"></i>
                            </div>
                        </div>
                        <div class="preview-item-content">
                            <p class="preview-subject ellipsis mb-1 text-small">Account settings</p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <div class="preview-icon bg-dark rounded-circle">
                                <i class="mdi mdi-onepassword  text-info"></i>
                            </div>
                        </div>
                        <div class="preview-item-content">
                            <p class="preview-subject ellipsis mb-1 text-small">Change Password</p>
                        </div>
                    </a>
                    <div class="dropdown-divider"></div>
                    <a href="#" class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                            <div class="preview-icon bg-dark rounded-circle">
                                <i class="mdi mdi-calendar-today text-success"></i>
                            </div>
                        </div>
                        <div class="preview-item-content">
                            <p class="preview-subject ellipsis mb-1 text-small">To-do list</p>
                        </div>
                    </a>
                </div>
            </div>
        </li>
        <li class="nav-item nav-category">
            <span class="nav-link">Navigation</span>
        </li>
        <li class="nav-item menu-items">
            <a class="nav-link" href="/dashboard">
                <span class="menu-icon">
                    <i class="mdi mdi-speedometer"></i>
                </span>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
{{--        @role('Content')--}}
        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic1" aria-expanded="false"
               aria-controls="ui-basic">
                    <span class="menu-icon">
                        <i class="mdi mdi-laptop"></i>
                    </span>
                <span class="menu-title">Categories</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic1">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{ route('categories') }}">Category</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('subcategories') }}">Sub
                            Category</a>
                    </li>
                </ul>
            </div>
        </li>
{{--        @endrole--}}


        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic2" aria-expanded="false"
               aria-controls="ui-basic">
                <span class="menu-icon">
                    <i class="mdi mdi-playlist-play"></i>
                </span>
                <span class="menu-title">District</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic2">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{ route('district') }}">District</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('subdistrict') }}">Sub
                            District</a>
                    </li>
                </ul>
            </div>
        </li>

        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic3" aria-expanded="false"
               aria-controls="ui-basic">
                <span class="menu-icon">
                    <i class="mdi mdi-playlist-play"></i>
                </span>
                <span class="menu-title">Posts</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic3">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="{{ route('add.post') }}">Add Post</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('post') }}">All Post</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic4" aria-expanded="false"
               aria-controls="ui-basic">
                <span class="menu-icon">
                    <i class="mdi mdi-playlist-play"></i>
                </span>
                <span class="menu-title">Gallery</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic4">
                <ul class="nav flex-column sub-menu">
                    <li class="nav-item"><a class="nav-link" href="">Video
                            Gallery</a></li>
                    <li class="nav-item"><a class="nav-link" href="{{ route('photo') }}"> Photo
                            Gallery</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic5" aria-expanded="false"
               aria-controls="ui-basic">
                <span class="menu-icon">
                    <i class="mdi mdi-playlist-play"></i>
                </span>
                <span class="menu-title">Settings</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic5">
                <ul class="nav flex-column sub-menu">
                    {{-- <li class="nav-item"><a class="nav-link" href="{{route('social.setting')}}">Social Setting</a></li> --}}
                    <li class="nav-item"><a class="nav-link" href="{{ route('seo.setting') }}">Seo
                            Setting</a></li>
                </ul>
            </div>
        </li>
        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic6" aria-expanded="false"
               aria-controls="ui-basic">
                <span class="menu-icon">
                    <i class="mdi mdi-playlist-play"></i>
                </span>
                <span class="menu-title">Users</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic6">
                <ul class="nav flex-column sub-menu">
                    {{-- <li class="nav-item"><a class="nav-link" href="{{route('social.setting')}}">Social Setting</a></li> --}}
                    <li class="nav-item"><a class="nav-link" href="{{ route('user')}}">List
                            User</a>
                    </li>
                </ul>
            </div>
        </li>
        <li class="nav-item menu-items">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic7" aria-expanded="false"
               aria-controls="ui-basic">
                <span class="menu-icon">
                    <i class="mdi mdi-playlist-play"></i>
                </span>
                <span class="menu-title">Roles Permissions</span>
                <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic7">
                <ul class="nav flex-column sub-menu">
                    {{-- <li class="nav-item"><a class="nav-link" href="{{route('social.setting')}}">Social Setting</a></li> --}}
                    <li class="nav-item"><a class="nav-link" href="{{ route('role')}}">List
                            Roles</a>
                    </li>
                </ul>
            </div>
        </li>
    </ul>
</nav>
