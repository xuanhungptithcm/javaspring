function showAndHidePay() {
	$(".pay").show();
	$(".che").show();
	$(".container").css("opacity", "0.2");
}

function hideAndShowPay() {
	$(".pay").hide();
	$(".che").hide();
	$(".container").css("opacity", "1");
}
// Go back
function goBack() {
	window.history.back();
}
// get value form detail
var cartString = localStorage.getItem('cartbook');
var cart;

if (cartString) {
	cart = JSON.parse(cartString);
}
// Json for show value from API
var vt;
var s = 0;
var t1;

$(document)
		.ready(
				function() {
					var tong = 0;// khoi tao gia tri ban dau cua gio hang khi
					// chua co item
					var demitem=0;
					for (var i = 0; i < cart.length; i++) {
						if (cart[i] != null) {
							vt = cart[i].id;
							demitem++;
							var img = '<td class="size"><img src="/BanBao/food/files/'
									+ cart[i].hinhanh
									+ '" alt="" width="95" height="95"></td>';
							var text2 = '<td class="none"><p class="name">'
									+ cart[i].tenbao
									+ '</p>'
									+ '<div class="follow">'
									+ '<p><i class="fa fa-heart" aria-hidden="true"></i><a href="" class="like">Thích sản phẩm này!</a> <i class="fa fa-facebook-square" aria-hidden="true"></i> <a href="">Chia sẻ</a></p> </div></td>';
							var text3 = '<td class="price"><p id="pr'
									+ s
									+ '">'
									+ cart[i].giamoi
									+ ' </p><p onclick="deleteitem(\''
									+ vt
									+ '\')" id="delete-item">Bỏ chọn sản phẩm</p></td>';
							var text4 = '<p class="infor">Thông tin đơn hàng</p>'
									+ '<p class="col"><span>Tạm tính:</span><span class="price">'
									+ cart[i].giamoi
									+ ' </span></p>'
									+ '<p class="col2">Tổng tiền:	<span>'
									+ cart[i].giamoi
									+ '  </span></p>'
									+ '<button type="button" onclick="showAndHidePay()">TIẾN HÀNH THANH TOÁN</button>';
							var text5 = '<td class="sizeof">'
									+ '<div class="col-md-2 size"><p class="sizeof" id="sizeof3"><button onclick="prev(\''
									+ s
									+ '\')" type="button">-</button></p>'
									+ '<p class="sizeof" id="sizeof2"> <button onclick="by(\''
									+ s
									+ '\')" type="button">+</button></p>'
									+ '<div class="number" id="number4"><input type="text" value="1" id="number'
									+ s + '"></div></div></td>';
							var text6 = '<td class="sizeof"><div class="size">'
									+ '<button onclick="prev(\''
									+ s
									+ '\')" class="btn btn-success value" type="button" id="minus">-</button>'
									+ '<button onclick="by(\''
									+ s
									+ '\')" id="sum" type="button" class="btn btn-success value">+</button>'
									+ '<input class="form-control input-sm inputsm" id="inputsm'
									+ s + '" value="1" type="text"></div></td>';

							$('#information2').html(text4);
							$('#myTable tbody').append(
									'<tr>' + img + text2 + text3 + text6
											+ '</tr>');
							
							s += 1;
							t1 = cart[i].giamoi;// lay gia tri cua san pham
							var sl2 = "";
							// chuyen gia tri tu kieu string ve kieu integer
							for (var j = 0; j < t1.length; j++) {
								if (t1[j] != ".") {
									sl2 += t1[j];
								}
							}
							var value = parseInt(sl2);
							tong = tong + value;
							var value2 = formatNumBer(tong, "");
							// import value for cart
							$('#information2 > p.col > span.price').html(
									value2 + " VNĐ");
							$('#information2 > p.col2 > span').html(
									value2 + " VNĐ");
							// Dua tong gia tri don hang len de sau nay thanh
							// toan
							// online
							var price = [];
							price.push(tong);
							var cartString2 = JSON.stringify(price);
							localStorage.setItem('price', cartString2);
						}
					}
					var text1 = (demitem++) + ' SẢN PHẨM';
					$('#thead-talbe > tr > td.size').html(text1);
				});

// Format number
function formatNumBer(n, currency) {
	return currency + " " + n.toFixed(2).replace(/./g, function(c, i, a) {
		return i > 0 && c !== "." && (a.length - i) % 3 === 0 ? "." + c : c;
	});
}
// Add item to cart
function prev(index) {
	// lay gia tri dang co cua gio hang
	var cartString3 = localStorage.getItem('price');
	if (cartString3) {
		price = JSON.parse(cartString3);
	}
	var sum = price[0];
	$(document).ready(function() {
		var x = $('#inputsm' + index).val();
		x2 = parseInt(x);
		if (x2 <= 1) {

		} else {
			x2--;
			document.getElementById("inputsm" + index).value = x2;
			var s1 = $('#pr' + index).html();
			var sl2 = "";
			for (var j = 0; j < s1.length; j++) {
				if (s1[j] != ".") {
					sl2 += s1[j];
				}
			}
			// gan gia tri lai cho gia cua gio hang sau khi tang so luong
			var value = parseInt(sl2);
			var value2 = parseInt(sum);
			var value3 = formatNumBer(value2 - value, "");
			$('#information2 > p.col > span.price').html(value3 + " VNĐ");
			$('#information2 > p.col2 > span').html(value3 + " VNĐ");
			// Update tong gia tri gio hang sau khi tang so luong san pham
			var price = [];
			price.push(-value + value2);
			var cartString2 = JSON.stringify(price);
			localStorage.setItem('price', cartString2);

		}
	});
}

// var valu2;
// var value3;
// var tong=0; //Khoi tao lai gia tri cua gio hang
var x2, x3 = 0;
function by(index) {
	// lay gia tri dang co cua gio hang
	var cartString3 = localStorage.getItem('price');
	if (cartString3) {
		price = JSON.parse(cartString3);
	}
	var sum = price[0];
	$(document).ready(function() {
		var x = $('#inputsm' + index).val();
		x2 = parseInt(x);
		x2++;
		console.log(x2);
		document.getElementById("inputsm" + index).value = x2;
		var s1 = $('#pr' + index).html();
		var sl2 = "";
		for (var j = 0; j < s1.length; j++) {
			if (s1[j] != ".") {
				sl2 += s1[j];
			}
		}
		// gan gia tri lai cho gia cua gio hang sau khi tang so luong
		var value = parseInt(sl2);
		var value2 = parseInt(sum);
		var value3 = formatNumBer(value + value2, "");
		$('#information2 > p.col > span.price').html(value3 + " VNĐ");
		$('#information2 > p.col2 > span').html(value3 + " VNĐ");
		// Update tong gia tri gio hang sau khi tang so luong san pham
		var price = [];
		price.push(value + value2);
		var cartString2 = JSON.stringify(price);
		localStorage.setItem('price', cartString2);

	});

}
// delete item form Cart
var itembook = [];
var itemST = JSON.parse(localStorage.getItem('itembook'));
itembook = itemST;

var vt;
var s = 0;
var t1;
function showItem() {
	$('#myTable tbody').html("");
	var tong = 0;// khoi tao gia tri ban dau cua gio hang khi chua co item
	var demitem=0;
	var checkNull=0;
	for (var i = 0; i < cart.length; i++) {
		if (cart[i] != null) {
			vt = cart[i].id;
			demitem++;
			var img = '<td class="size"><img src="/example/food/files/'
					+ cart[i].hinhanh + '" alt="" width="95" height="95"></td>';
			var text2 = '<td class="none"><p class="name">'
					+ cart[i].tenbao
					+ '</p>'
					+ '<div class="follow">'
					+ '<p><i class="fa fa-heart" aria-hidden="true"></i><a href="" class="like">Thích sản phẩm này!</a> <i class="fa fa-facebook-square" aria-hidden="true"></i> <a href="">Chia sẻ</a></p> </div></td>';
			var text3 = '<td class="price"><p id="pr' + s + '">'
					+ cart[i].giamoi + ' </p><p onclick="deleteitem(\'' + vt
					+ '\')" id="delete-item">Bỏ chọn sản phẩm</p></td>';
			var text4 = '<p class="infor">Thông tin đơn hàng</p>'
					+ '<p class="col"><span>Tạm tính:</span><span class="price">'
					+ cart[i].giamoi
					+ ' </span></p>'
					+ '<p class="col2">Tổng tiền:	<span>'
					+ cart[i].giamoi
					+ '  </span></p>'
					+ '<button type="button" onclick="showAndHidePay()">TIẾN HÀNH THANH TOÁN</button>';
			var text5 = '<td class="sizeof">'
					+ '<div class="col-md-2 size"><p class="sizeof" id="sizeof3"><button onclick="prev(\''
					+ s
					+ '\')" type="button">-</button></p>'
					+ '<p class="sizeof" id="sizeof2"> <button onclick="by(\''
					+ s
					+ '\')" type="button">+</button></p>'
					+ '<div class="number" id="number4"><input type="text" value="1" id="number'
					+ s + '"></div></div></td>';
			var text6 = '<td class="sizeof"><div class="size">'
					+ '<button onclick="prev(\''
					+ s
					+ '\')" class="btn btn-success value" type="button" id="minus">-</button>'
					+ '<button onclick="by(\''
					+ s
					+ '\')" id="sum" type="button" class="btn btn-success value">+</button>'
					+ '<input class="form-control input-sm inputsm" id="inputsm'
					+ s + '" value="1" type="text"></div></td>';

			$('#information2').html(text4);
			$('#myTable tbody').append(
					'<tr>' + img + text2 + text3 + text6 + '</tr>');
			s += 1;
			t1 = cart[i].giamoi;// lay gia tri cua san pham
			var sl2 = "";
			// chuyen gia tri tu kieu string ve kieu integer
			for (var j = 0; j < t1.length; j++) {
				if (t1[j] != ".") {
					sl2 += t1[j];
				}
			}
			var value = parseInt(sl2);
			tong = tong + value;
			var value2 = formatNumBer(tong, "");
			// import value for cart
			$('#information2 > p.col > span.price').html(value2 + " VNĐ");
			$('#information2 > p.col2 > span').html(value2 + " VNĐ");
			// Dua tong gia tri don hang len de sau nay thanh toan
			// online
			var price = [];
			price.push(tong);
			var cartString2 = JSON.stringify(price);
			localStorage.setItem('price', cartString2);
			// Update value cart item after delele
			var text1 = (demitem++) + ' SẢN PHẨM';
			$('#thead-talbe > tr > td.size').html(text1);


		}
		else{
			checkNull++;
			if(checkNull == (cart.length)){
				console.log(checkNull);
				console.log(cart.length-1);
					$('#information2 > p.col > span.price').html("0 VNĐ");
					$('#information2 > p.col2 > span').html("0 VNĐ");
					var text1 = 0 + ' SẢN PHẨM';
					$('#thead-talbe > tr > td.size').html(text1);
				
			}
		}
		
	}
}

function setLocalStorage() {
	var cartString = JSON.stringify(cart);
	var itemString = JSON.stringify(itembook);
	localStorage.setItem('cartbook', cartString);
	localStorage.setItem('itembook', itemString);
}

function deleteitem(id) {
	console.log(cart);
	for (var i = 0; i < cart.length; i++) {

		if (cart[i] != null) {
			if (cart[i].id === id) {

				delete cart[i];
				delete itembook[i];
				showItem();
				setLocalStorage();

			}
		}
	}

}

//function deleteitem(item) {
//	var itemST = JSON.parse(localStorage.getItem('itembook'));
//	itembook = itemST;
//	var tong = 0;
//	var deleteitem = item;
//	var i = itembook.indexOf(deleteitem);
//	if (i != -1) {
//		cart.splice(i, 1);
//		var itemString = JSON.stringify(itembook);
//		localStorage.setItem('itembook', itemString);
//	}
//	$('#myTable tbody').html("");
//	var s = 0;
//	for (var i = 0; i < cart.length; i++) {
//		$
//				.ajax({
//					url : 'https://api.myjson.com/bins/' + cart[i],
//					method : "GET",
//					success : function(data) {
//						vt = cart[s];
//						var text1 = cart.length + ' SẢN PHẨM';
//						var img = '<td class="size"><img src="' + data.img3
//								+ '" alt=""></td>';
//						var text2 = '<td class="none"><p class="name">'
//								+ data.model
//								+ '</p>'
//								+ '<p class="model">'
//								+ data.company
//								+ '</p>'
//								+ '<p class="instock"><i class="fa fa-check" aria-hidden="true"></i>'
//								+ data.instock
//								+ '</p>'
//								+ '<div class="follow">'
//								+ '<p><i class="fa fa-heart" aria-hidden="true"></i><a href="" class="like">Tôi thích sản phẩm này!</a> <i class="fa fa-facebook-square" aria-hidden="true"></i> <a href="">Chia sẻ</a></p> </div></td>';
//						var text3 = '<td class="price"><p id="pr'
//								+ s
//								+ '">'
//								+ data.sale
//								+ ' </p><p onclick="deleteitem(\''
//								+ vt
//								+ '\')" id="delete-item">Bỏ chọn sản phẩm</p></td>';
//						var text4 = '<p class="infor">Thông tin đơn hàng</p>'
//								+ '<p class="col"><span>Tạm tính:</span><span class="price">'
//								+ data.sale
//								+ ' </span></p>'
//								+ '<p class="col2">Tổng tiền :	<span>'
//								+ data.sale
//								+ '  </span></p>'
//								+ '<button type="button" onclick="showAndHidePay()">TIẾN HÀNH THANH TOÁN</button>';
//						var text5 = '<td class="sizeof">'
//								+ '<div class="col-md-2 size"><p class="sizeof" id="sizeof3"><button onclick="prev(\''
//								+ s
//								+ '\')" type="button">-</button></p>'
//								+ '<p class="sizeof" id="sizeof2"> <button onclick="by(\''
//								+ s
//								+ '\')" type="button">+</button></p>'
//								+ '<div class="number" id="number4"><input type="text" value="1" id="number'
//								+ s + '"></div></div></td>';
//						$('#information2').html(text4);
//						$('#myTable tbody').append(
//								'<tr>' + img + text2 + text3 + text5 + '</tr>');
//						$('<div id="thead-t"></div>albe > tr > td.size').html(
//								text1);
//						s += 1;
//						t1 = data.sale;// lay gia tri cua san pham
//						var sl2 = "";
//						// chuyen gia tri tu kieu string ve kieu integer
//						for (var j = 0; j < t1.length - 4; j++) {
//							if (t1[j] != ".") {
//								sl2 += t1[j];
//							}
//						}
//						var value = parseInt(sl2);
//						tong = tong + value;
//						var value2 = formatNumBer(tong, "");
//						// import value for cart
//						$('#information2 > p.col > span.price').html(
//								value2 + " VNĐ");
//						$('#information2 > p.col2 > span')
//								.html(value2 + " VNĐ");
//					},
//					error : function(error) {
//						console.log(error);
//					}
//				});
//
//	}
//	// Update value cart item after delele
//	var text1 = cart.length + ' SẢN PHẨM';
//	$('#thead-talbe > tr > td.size').html(text1);
//	if (cart.length == 0) {
//		$('#information2 > p.col > span.price').html("0 VNĐ");
//		$('#information2 > p.col2 > span').html("0 VNĐ");
//	}
//
//}
