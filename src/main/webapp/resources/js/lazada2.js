  $(document).ready(function() {
    var url_string = window.location.href;
    var url = new URL(url_string);
    var detailCode = url.searchParams.get("code");
            // $('#detailCode').html(detailCode);
            // console.log(url.searchParams.get('title'));

            $.ajax({
                url: 'https://api.myjson.com/bins/'+detailCode,
                method: "GET",
                success: function(data) {
                    var html1 = '<p><a href="">'+data.id+'</a> / <a href="#">'+data.id_sp+'</a> /<span class="name">'+data.model+'</span></p>';
                    var html2 =' <h3>'+data.model+'</h3>';
                    var html3='<p>Thương hiệu:<a href="">'+data.company+'</a> <span>|</span> <a href="">'+data.more+'</a></p>';
                    var img1='  <img src="'+data.img1+'" alt="">';
                    var img2='  <img src="'+data.img2+'" alt="">';
                    var text='<p>Bảo hành: <b>12 tháng</b> Bảo hành điện tử <a href="">Xem thêm</a></p>'
                    +'<ul><li>'+data.sim+'</li>'
                    +'<li>'+data.screen+'</li>'
                    +'<li>'+data.hdh+'</li>'
                    +'<li>'+data.chip+'</li>'
                    +'<li>'+data.speed+'</li>'
                    +'<li>'+data.chip+'</li>'
                    +'<li>'+data.ram+'</li>'
                    +'<li>'+data.rom+'</li>'
                    +'<li>'+data.camera+'</li>'
                    +'<li>'+data.pin+'</li></ul>';
                    var text2='<p class="price">'+data.sale+'</p>'
                    +'<p class="price-old">Giá trước đây <span>'+data.priceold+'</span>,</p>'
                    +'<p>Tiết kiệm '+data.discount+'</p>'
                    +'<p><a href="">Hoặc mua trả góp 0% bằng thẻ tín dụng chỉ từ 1.336.167 VND/tháng »</a></p>'
                    +'<p>Trả góp trong 6 tháng, chỉ từ</p>'
                    +'<p>2.672.333 VND mỗi tháng</p>'
                    +'<button onclick="getItem(\''+detailCode+'\');" type="button"><span>THÊM VÀO GIỎ HÀNG</span></button>';
                    $('.content .container .footer .text').html(html1);
                    $('.prod').html(html2);
                    $('.brand').html(html3);
                    $('.wrapper .col-md-5 .media .col-md-1 .item').html(img1);
                    $('.wrapper .col-md-5 .media .img .item').html(img2);
                    $('.wrapper .col-md-4 .text').html(text);
                    $('.sp .prices').html(text2);
                },
                error: function(error) {
                    console.log(error);
                }
            });
        });
//   function getItem(){

//     localStorage.setItem("item", sp);
// }
function alert3(){
   var x = "Bạn đã thêm sản phầm này vui lòng kiểm tra trong giỏ hàng";
   document.getElementById("input").innerHTML = x;
}
var cart=[];
var value;
function getItem(item){
    if(cart.indexOf(item)>=0){
        alert3();
    }
    else{
        cart.push(item);
        var x=cart.length;
        document.getElementById("cart-item").innerHTML=x;
    }
    var cartString = JSON.stringify(cart); 
    localStorage.setItem('cart', cartString);
}
function backHome() {
    window.history.back();
}