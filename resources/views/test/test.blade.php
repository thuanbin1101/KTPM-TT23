<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>News Admin</title>

</head>


<body>
<form action="" method="post" enctype="multipart/form-data">
    @csrf
    <h1>Hello</h1>
    <input name="file_image[]" multiple type="file">
    <button>Submit</button>
</form>
</body>

</html>
