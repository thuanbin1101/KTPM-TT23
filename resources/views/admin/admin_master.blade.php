<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>News Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/mdi/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/css/vendor.bundle.base.css') }}">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/jvectormap/jquery-jvectormap.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/flag-icon-css/css/flag-icon.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/owl-carousel-2/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/owl-carousel-2/owl.theme.default.min.css') }}">

    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->

    <!-- Layout styles -->
    <link rel="stylesheet" href="{{ asset('backend/assets/css/style.css') }}">
    @yield('css')

    <!-- End layout styles -->
    <!-- include libraries(jQuery, bootstrap) For Summernote Editor-->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/favicon.png') }}" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css"
        integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
</head>


<body>
    <div class="container-scroller">
        <!-- partial:partials/_sidebar.html -->
        <!-- partial -->
        @include('admin.body.sidebar')
        @include('admin.body.header')
        <div class="main-panel">
            @yield('admin')
            @include('admin.body.footer')
        </div>
    </div>
    </div>

    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="{{ asset('backend/assets/vendors/js/vendor.bundle.base.js') }}"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="{{ asset('backend/assets/vendors/chart.js/Chart.min.js') }}"></script>
    <script src="{{ asset('backend/assets/vendors/progressbar.js/progressbar.min.js') }}"></script>
    <script src="{{ asset('backend/assets/vendors/jvectormap/jquery-jvectormap.min.js') }}"></script>
    <script src="{{ asset('backend/assets/vendors/jvectormap/jquery-jvectormap-world-mill-en.js') }}"></script>
    <script src="{{ asset('backend/assets/vendors/owl-carousel-2/owl.carousel.min.js') }}"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="{{ asset('backend/assets/js/off-canvas.js') }}"></script>
    <script src="{{ asset('backend/assets/js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('backend/assets/js/misc.js') }}"></script>
    <script src="{{ asset('backend/assets/js/settings.js') }}"></script>
    <script src="{{ asset('backend/assets/js/todolist.js') }}"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="{{ asset('backend/assets/js/dashboard.js') }}"></script>
    {{-- Toast JS --}}
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"
        integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <!-- End custom js for this page -->
    <script>
        @if (\Illuminate\Support\Facades\Session::has('message'))
            var type = "{{ \Illuminate\Support\Facades\Session::get('alert-type', 'info') }}"
            switch (type) {
                case 'info':
                    toastr.info("{{ \Illuminate\Support\Facades\Session::get('message') }}")
                    break
                case 'success':
                    toastr.success("{{ \Illuminate\Support\Facades\Session::get('message') }}")
                    break
                case 'warning':
                    toastr.warning("{{ \Illuminate\Support\Facades\Session::get('message') }}")
                    break
                case 'error':
                    toastr.error("{{ \Illuminate\Support\Facades\Session::get('message') }}")
                    break
            }
        @endif
    </script>
    <!-- summernote css/js -->
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script type="text/javascript">
        $('#summernote').summernote({
            height: 200
        });
        $('#summernote1').summernote({
            height: 200
        });
    </script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    @yield('js')
    <script src="{{ asset('backend/admins/login/User.js') }}"></script>
    <script type="text/javascript">
        // jwt
        if (!new UserJWT().loggedIn()) {
            window.location = "{{ route('login') }}";
        }
        let btnLogout = document.getElementById('btnLogout');
        btnLogout.onclick = function(e) {
            e.preventDefault();
            localStorage.removeItem('token');
            localStorage.removeItem('user_name');
            localStorage.removeItem('user_email');
            document.cookie = "userName=; expires=Thu, 01 Jan 1970 00:00:00 UTC;";
            document.cookie = "userEmail=; expires=Thu, 01 Jan 1970 00:00:00 UTC;";
            document.cookie = "userId=; expires=Thu, 01 Jan 1970 00:00:00 UTC;";
            window.location = "{{ route('login') }}";

        }
        //--------------
        // category api add
        let btnAddCategory = document.getElementById('btnAddCategory');
        if (btnAddCategory != null) {
            btnAddCategory.onclick = function(e) {
                e.preventDefault();
                let category_en = document.getElementById('category_en').value
                let category_vn = document.getElementById('category_vn').value
                let formCategory = {
                    category_en,
                    category_vn
                };
                axios.post('/api/categories', formCategory)
                    .then(function(response) {
                        // handle success
                        console.log(response.data);
                        window.location = "{{ route('categories') }}";
                    })
                    .catch(function(error) {
                        // handle error
                        console.log(error);
                    });
            }
        }


        // cateogory api update
        let btnUpdateCategory = document.getElementById('btnUpdateCategory');
        if (btnUpdateCategory != null) {
            btnUpdateCategory.onclick = function(e) {
                e.preventDefault(); //

                let category_en = document.getElementById('category_en').value
                let category_vn = document.getElementById('category_vn').value
                let id = document.getElementById('idCategory').value
                let formCategory = {
                    category_en,
                    category_vn
                };
                axios.put(`/api/categories/${id}`, formCategory)
                    .then(function(response) {
                        // handle success
                        console.log(response.data);
                        window.location = "{{ route('categories') }}";
                    })
                    .catch(function(error) {
                        // handle error
                        console.log(error.response.data);
                    });
            }
        }
    </script>

</body>

</html>
