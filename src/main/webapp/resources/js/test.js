function loadItemSearch() {
    var name = document.getElementById('search').value;

    $.ajax({
        type: "GET",
        contentType: "application/json",
        url: "${book}book/search/",
        data: {
            name: name
        },
        dataType: 'json',
        timeout: 100000,
        success: function (data) {
            console.log("SUCCESS: ", data);
            if (data != null) {
                var listsearch = data;
                console.log(listsearch.length);
                for (var i = 0; i < listsearch.length; i++) {
                    var text = '<div class="col-md-2 show" id="fl-1">' +
                        '<img src="/example/book/file/"' + listsearch[i].image + '" alt="" width="220.7" height="220.7"><div class="text">'
                        + '<p class="name">listsearch[i].namebook</p>'
                        + '<p class="prices">listsearch[i].price</p>'
                        + '<span class="sale">listsearch[i].priceold</span>'
                        + '<p class="discount">listsearch[i].date</p>'
                        + '<a href="#"><button type="button" class="btn btn-primary animated bounceInDown by-item" id="add-item1" style="display: none;">Show item</button></a>'
                        + '<button class="btn btn-primary animated bounceInUp by-item cart" id="show-item1" style="display: none;">Add item to cart</button></div></div>';

                    $('.listsearch').append(text);
                }
            }
            else {
                var result = "<h3 style='color:red'> No person found </h3>";
                $("#ajax-response").html(result);
            }
        },
        error: function (e) {
            console.log("ERROR: ", e);
        }
    });
}