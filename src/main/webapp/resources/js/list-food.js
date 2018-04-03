$(document).ready(

		function() {
			$(".share-btn").mouseenter(
					function() {

						// find the closest class .item-menu

						$(this).closest("div.container-item")
								.find(".item-menu").addClass("visible")
					});
			$(".share-btn").mouseleave(function() {
				setTimeout(function() {
					$(".item-menu").removeClass("visible")
				}, 500);
			});

			$(".container-item").hover(function() {
				setTimeout(function() {
					$(".container-item").css("z-index", "1000")
				}, 500);
			});

		});
$('.left-col').perfectScrollbar();
var cart = [];
var item = [];
var stt = 1;

(function getCartAndItem() {
	var cartST = JSON.parse(localStorage.getItem('cart'));
	var itemST = JSON.parse(localStorage.getItem('item'));
	if (cartST != null) {

		cart = cartST;
		item = itemST;
	}
	// console.log(cart);

	for (var i = 0; i < cart.length; i++) {
		if (cart[i] != null) {
			var image = '<img src="/example/food/files/' + cart[i].image
					+ '" width="70" height="70">';
			$('#listfood tbody').append(
					'<tr>' + '<th>' + stt + '</th>' + '<td>' + cart[i].tenmon
							+ '</td>' + '<td>' + cart[i].gia + '</td>' + '<td>'
							+ image + '</td>'
							+ '<td> <button type="button" onclick=deleteFood('
							+ cart[i].id
							+ ') class="btn btn-success">Delete</button></td>'
							+ '</tr>');
			stt++;
		}
	}

}());
function buy(id, gia) {

	var str = $('#hinhanh' + id + ' img').attr('src');
	var fileName = str.split("/").pop();
	var tenmon = $('h2#tenmon' + id).text();
	if (item.indexOf(id) < 0) {
		var text = {
			id : id,
			image : fileName,
			tenmon : tenmon,
			gia : gia
		};
		cart.push(text);
		console.log(cart);
		item.push(id);
		var cartString = JSON.stringify(cart);
		var itemString = JSON.stringify(item);
		localStorage.setItem('cart', cartString);
		localStorage.setItem('item', itemString);
		var image = '<img src="/BanBao/food/files/' + fileName
				+ '" width="70" height="70">';
		$('#listfood tbody').append(
				'<tr>' + '<th>' + stt + '</th>' + '<td>' + tenmon + '</td>'
						+ '<td>' + gia + '</td>' + '<td>' + image + '</td>'
						+ '<td> <button type="button" onclick=deleteFood(' + id
						+ ') class="btn btn-success">Delete</button></td>'
						+ '</tr>');
		stt++;
	}

}

function showItem() {
	$('#listfood tbody').html("");
	for (var i = 0; i < cart.length; i++) {
		if (cart[i] != null) {
			var image = '<img src="/example/food/files/' + cart[i].image
					+ '" width="60" height="60">';
			$('#listfood tbody').append(
					'<tr>' + '<th>' + stt + '</th>' + '<td>' + cart[i].tenmon
							+ '</td>' + '<td>' + cart[i].gia + '</td>' + '<td>'
							+ image + '</td>'
							+ '<td> <button type="button" onclick=deleteFood('
							+ cart[i].id
							+ ') class="btn btn-success">Delete</button></td>'
							+ '</tr>');
			stt++;
		}
	}
}
function setLocalStorage() {
	var cartString = JSON.stringify(cart);
	var itemString = JSON.stringify(item);
	localStorage.setItem('cart', cartString);
	localStorage.setItem('item', itemString);

}

function deleteFood(id) {
	console.log(cart);
	for (var i = 0; i < cart.length; i++) {

		if (cart[i] != null) {
			if (cart[i].id === id) {

				delete cart[i];
				delete item[i];
				showItem();
				setLocalStorage();

			}
		}
	}

}
// Khai bao bien toan cuc
var listUser = [];
var countFood = 0;
var kt = true;
var vt = 0;
var userInbox;
var urlParam;
var config = {
	apiKey : "AIzaSyC1M-pDYF0mOjSUoFjXLpQtE_KhAT4ga4g",
	authDomain : "chat-app-f2aa2.firebaseapp.com",
	databaseURL : "https://chat-app-f2aa2.firebaseio.com",
	projectId : "chat-app-f2aa2",
	storageBucket : "chat-app-f2aa2.appspot.com",
	messagingSenderId : "235065846309"
};

(function showFoodOrder() { // cu phap nay dung de load cung trang web
	firebase.initializeApp(config);
	database = firebase.database();
	var ref2 = database.ref('food/'); // load duong dan toi Account
	ref2.on('value', getUser, ErrorUser);
}());
// Get User
function getUser(data) {
	// console.log(data.val());
	var user = data.val();
	//console.log(user)
	for ( var key in user) {
		if (user.hasOwnProperty(key)) {
			console.log(user[key][1]['gia']);
		}
	}
	// var myJsonString = JSON.stringify(user);
	// console.log(myJsonString);
	var keys = null;
	if (user == null) {

	} else {
		keys = Object.keys(user);
//		console.log(keys);
		if (listUser.indexOf(keys) >= 0) {
			console.log('trung');
		} else {
			// listUser.push(keys);
			// console.log("push " + realUser);
			LoadAccount(keys)
		}
	}
}
function writeUserData() {
	var userId = document.getElementById("name").innerHTML;
	for (var i = 0; i < cart.length; i++) {
		if (cart[i] != null) {
			countFood++;
			var url = url = 'food/' + userId + '/' + countFood;
			firebase.database().ref(url).set({
				id : cart[i].id,
				tenmon : cart[i].tenmon,
				gia : cart[i].gia,
				hinhanh : cart[i].image
			});
		}
	}
}

function LoadAccount(keys) {
	var text = '';
	var x = document.getElementById("name").innerHTML;
	// Load demo list user
	for (var i = 0; i < keys.length; i++) {

		$('.showPage').append(text);
		text = '';
	}

}

function ErrorUser(data) {

}

var check = false;

function showPage() {
	if (check) {
		$('.showPage').css("display", "none");
		check = !check;
	} else {
		$('.showPage').css("display", "block");
		check = !check;
	}

}
