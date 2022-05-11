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
    <style>
        #errorEmail {
            color: red;
        }

        .errorEmail {
            border: 2px solid red;
        }

    </style>
</head>

<body>
<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="row w-100 m-0">
            <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-bg">
                <div class="card col-lg-4 mx-auto">
                    <div class="card-body px-5 py-5">
                        <h3 class="card-title text-left mb-3">Register</h3>
                        <form method="POST" action="{{ route('register') }}">
                            @csrf
                            <div class="form-group">
                                <label>Username</label>
                                <label for="name"></label><input id="name" name="name" type="text"
                                                                 value="{{old('name')}}"
                                                                 class="form-control p_input">
                                @error('name')
                                <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <label for="email"></label><input id="email" name="email" type="email"
                                                                  value="{{old("email")}}"
                                                                  class="form-control p_input">
                                <div id="errorEmail"></div>
                                @error('email')
                                <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <label for="password"></label><input id="password" name="password" type="password"
                                                                     class="form-control p_input">
                                @error('password')
                                <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label>Password Confirm</label>
                                <label for="password_confirmation"></label><input id="password_confirmation"
                                                                                  name="password_confirmation"
                                                                                  type="password"
                                                                                  class="form-control p_input">
                                @error('password_confirmation')
                                <span class="text-danger">{{$message}}</span>
                                @enderror
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary btn-block enter-btn">Register</button>
                            </div>
                            <p class="sign-up text-center">Already have an Account?<a href="{{ route('login') }}">
                                    Sign in</a></p>
                            <p class="terms">By creating an account you are accepting our<a href="#"> Terms
                                    &
                                    Conditions</a></p>
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
<script>
    $(document).ready(function () {
        $("#email").blur(function () {
            var e = $(this).val();
            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
                url: "{{ route('register.checkemail') }}",
                type: "POST",
                data: {
                    email: e
                },
                success: function (data) {
                    if (data) {
                        $('#errorEmail').html(
                            "Đã tồn tại email này trong hệ thống, vui lòng sử dụng email khác"
                        )
                        $('#email').addClass('errorEmail')

                    } else {
                        $('#errorEmail').html("")
                        $('#email').removeClass('errorEmail')

                    }
                },
            });
        });

    });
</script>
<!-- endinject -->
</body>

</html>
