/**
 * 
 */
var mapinfo= function(){
var path = window.location.href;
var x=0;
var y=0;
var context=null; 
if(path.split("#")[1] == "/hongdae"){
	x=37.553419;
	y=126.920605;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 홍대점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/daegu"){
	x=35.869640;
	y=128.596974;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 대구점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/incheon"){
	x=37.444135;
	y=126.702761;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 인천구월점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/jeonju"){
	x=35.815600;
	y=127.110433;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 전주점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/jamsil"){
	x=37.510770;
	y=127.079955;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 잠실점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/daejeon"){
	x=36.350690;
	y=127.374909;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 대전 두산점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/cheonho"){
	x=37.538620;
	y=127.127454;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프 천호점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else if(path.split("#")[1] == "/suyu"){
	x=37.638344;
	y=127.024850;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프  수유점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}else{
	x=37.553419;
	y=126.920605;
	context= '<div style="padding:5px;"><h1><span class="badge badge-info">ACORN 이스케이프  홍대점</span></h1><br/><img src="../resources/images/unnamed.png" /><br/><h5 class="text-center" style="color:black;">지금 바로 탈출해 보세요!</h5> </div>';
}

var container = document.getElementById('map');
var options = {
	center: new kakao.maps.LatLng(x, y),
	draggable: false,
	level: 3
};
var map = new kakao.maps.Map(container, options);

var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

var markerPosition = new kakao.maps.LatLng(x, y);

var marker = new kakao.maps.Marker({
    position: markerPosition
});

marker.setMap(map);

var iwContent = context, // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
    iwPosition = new kakao.maps.LatLng(x, y); //인포윈도우 표시 위치입니다

var infowindow = new kakao.maps.InfoWindow({
    position : iwPosition, 
    content : iwContent 
});

infowindow.open(map, marker);
}