// ---------------------Sử lí onmouse phần header------------------
function next() {
    document.getElementById("KM1").style.display = "block";
    document.getElementById("KM2").style.display = "none";
    document.getElementById("KM3").style.display = "none";
    document.getElementById("KM4").style.display = "none";

}
function next2() {
    document.getElementById("KM2").style.display = "block";
    document.getElementById("KM1").style.display = "none";
    document.getElementById("KM3").style.display = "none";
    document.getElementById("KM4").style.display = "none";
}

function next3() {
    document.getElementById("KM3").style.display = "block";
    document.getElementById("KM1").style.display = "none";
    document.getElementById("KM2").style.display = "none";
    document.getElementById("KM4").style.display = "none";
}

function next5() {
    document.getElementById("KM4").style.display = "block";
    document.getElementById("KM1").style.display = "none";
    document.getElementById("KM2").style.display = "none";
    document.getElementById("KM3").style.display = "none";
}
// GET code html
$(document).ready(function() {
    $(".show").mouseover(function(){
        $(this).find('button').show();
    });
    $(".show").mouseout(function(){

        $(this).find('button').hide();
    });
    $('.plash-sale').perfectScrollbar();

    $('.listsearch').perfectScrollbar();
    
});

// ---------------------Show-item--------------------------------

// get Item form detail
var cartbook = [];
var itembook = [];
function getItem(id,tenbao,giamoi,giacu,hinhanh,ngay){
	console.log(tenbao+giamoi+giacu+hinhanh+ngay);
	if (itembook.indexOf(id) < 0) {
		var text = {
			id : id,
			tenbao : tenbao,
			giamoi : giamoi,
			giacu : giacu,
			hinhanh : hinhanh,
			ngay : ngay
		};
		cartbook.push(text);
		itembook.push(id);
		var cartString = JSON.stringify(cartbook);
		var itemString = JSON.stringify(itembook);
		localStorage.setItem('cartbook', cartString);
		localStorage.setItem('itembook', itemString);
		getItemCart();
	}
}
function getItemCart(){
	var dem=0;
    var x=cartbook.length;
    for(var i=0;i<x;i++){
    	if(cartbook[i] != null ){
    		dem++;
    	}
    }
    document.getElementById("cart-item").innerHTML=dem;
}
$(document).ready(function(){
	var cartST = JSON.parse(localStorage.getItem('cartbook'));
	var itemST = JSON.parse(localStorage.getItem('itembook'));
	if (cartST != null) {

		cartbook = cartST;
		itembook = itemST;
	}
	getItemCart();

});