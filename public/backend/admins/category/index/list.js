$(document).ready(function () {
    $(".btn--delete").click(actionDelete);
});



function actionDelete(event) {
    event.preventDefault();
    let urlRequest = $(this).data("url");
    let that = $(this);
    Swal.fire({
        title: "Are you sure?",
        text: "You won't be able to revert this!",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#3085d6",
        cancelButtonColor: "#d33",
        confirmButtonText: "Yes, delete it!",
    }).then((result) => {
        if (result.isConfirmed) {
            // $.ajax({
            //     headers: {
            //         "X-CSRF-TOKEN": $('meta[name="csrf-token"]').attr(
            //             "content"
            //         ),
            //     },
            //     type: "DELETE",
            //
            //     url: urlRequest,
            //     success: function (response) {
            //         if (response.code === 200) {
            //             that.parent().parent().parent().remove();
            //             // refresh table
            //             setTimeout(function(){
            //                 $( ".table-category" ).load( "http://127.0.0.1:8000/categories .table-category" );
            //             }, 1000);
            //             Swal.fire(
            //                 "Deleted!",
            //                 "Your file has been deleted.",
            //                 "success"
            //             );
            //         }
            //     },
            // });

            let id = document.getElementById('idCategoryIndex').value
            axios.delete(`/api/categories/${id}`)
                .then(function (response) {
                    // handle success
                    Swal.fire(
                        "Deleted!",
                        "Your file has been deleted.",
                        "success"
                    );
                    setTimeout(function(){
                        $(".table-category").load("http://127.0.0.1:8000/categories .table-category");
                    }, 1000);

                })
                .catch(function (error) {
                    // handle error
                    console.log(error.response.data);
                });
        }
    });
}



