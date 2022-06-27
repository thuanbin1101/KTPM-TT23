<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Corona Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/mdi/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('backend/assets/vendors/css/vendor.bundle.base.css') }}">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="{{ asset('backend/assets/css/style.css') }}">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="{{ asset('backend/assets/images/favicon.png') }}"/>
</head>

<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
            <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
                <div class="card col-lg-4 mx-auto">
                    <div class="card-body px-5 py-5">
                        <h3 class="card-title text-left mb-3">Login</h3>
                        <form id="formLogin" method="POST" action="{{ route('login') }}">
                            @csrf
                            <div class="form-group">
                                <label>Email *</label>
                                <label for="email"></label><input type="text" id="email" name="email"
                                                                  class="form-control p_input">
                                @error('email')
                                <span class="text-danger">{{ $message }}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Password *</label>
                                <label for="password"></label><input type="password" id="password" name="password"
                                                                     class="form-control p_input">
                                @error('password')
                                {{--                                <span class="text-danger">{{ $message }}</span>--}}
                                @enderror
                            </div>
                            <div class="form-group d-flex align-items-center justify-content-between">
                                <div class="form-check">
                                    <label class="form-check-label">
                                        <input type="checkbox" class="form-check-input"> Remember me </label>
                                </div>
                                <a href="{{ route('password.request') }}" class="forgot-pass">Forgot
                                    password</a>
                            </div>
                            <div class="text-center">
                                <button type="submit" id="btnLogin"
                                        class="btn btn-primary btn-block enter-btn">Login
                                </button>
                            </div>
                            <div class="d-flex">
                                <button class="btn btn-facebook mr-2 col">
                                    <i class="mdi mdi-facebook"></i> Facebook
                                </button>
                                <button class="btn btn-google col">
                                    <i class="mdi mdi-google-plus"></i> Google plus
                                </button>
                            </div>
                            <p class="sign-up">Don't have an Account?<a href="{{ route('register') }}">
                                    Sign
                                    Up</a></p>
                        </form>
                    </div>
                </div>
            </div>
            <!-- content-wrapper ends -->
        </div>
        <!-- row ends -->
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<!-- plugins:js -->
<script src="{{ asset('backend/assets/vendors/js/vendor.bundle.base.js') }}"></script>
<!-- endinject -->
<!-- Plugin js for this page -->
<!-- End plugin js for this page -->
<!-- inject:js -->
<script src="{{ asset('backend/assets/js/off-canvas.js') }}"></script>
<script src="{{ asset('backend/assets/js/hoverable-collapse.js') }}"></script>
<script src="{{ asset('backend/assets/js/misc.js') }}"></script>
<script src="{{ asset('backend/assets/js/settings.js') }}"></script>
<script src="{{ asset('backend/assets/js/todolist.js') }}"></script>
<script src="{{ asset('backend/admins/login/User.js') }}"></script>
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
{{-- <script type="module" src="{{asset('backend/admins/login/toast.js')}}"></script> --}}
<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>

<script>
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true,
        didOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer)
            toast.addEventListener('mouseleave', Swal.resumeTimer)
        }
    })

    let btnLogin = document.getElementById("btnLogin");
    $("#formLogin").submit(function (e) {
        e.preventDefault();
    });
    if (new UserJWT().loggedIn()) {
        window.location = "{{ route('dashboard') }}";
    }

    btnLogin.onclick = function () {
        let email = document.getElementById("email").value;
        let password = document.getElementById("password").value;
        let form = {
            email: email,
            password: password
        }
        axios.post('/api/auth/login', form)
            .then(function (response) {
                // handle success
                Toast.fire({
                    icon: 'success',
                    title: 'Signed in successfully'
                })
                let userJWT = new UserJWT();
                userJWT.responseAfterLogin(response)
                let userName = userJWT.name();
                let userEmail = userJWT.email();
                let userId = userJWT.id();
                document.cookie = `userName=${userName}; expires=Thu, 01 Jan 2023 00:00:00 UTC;`;
                document.cookie = `userEmail=${userEmail}; expires=Thu, 01 Jan 2023 00:00:00 UTC;`;
                document.cookie = `userId=${userId}; expires=Thu, 01 Jan 2023 00:00:00 UTC;`;
                window.location = "{{ route('dashboard') }}";
            })
            .catch(function (error) {
                if (error.response.data.error) {
                    Toast.fire({
                        icon: 'warning',
                        title: `${error.response.data.error}`
                    })
                }
                // handle error
                else {
                    Toast.fire({
                        icon: 'warning',
                        title: `${error.response.data.errors.email}`
                    })
                }

            })
    }
</script>
<!-- endinject -->
</body>

</html>
