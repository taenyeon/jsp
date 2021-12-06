<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/06
  Time: 11:35 오전
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>다른 이미지로 마커 생성하기</title>

</head>
<body>
<div id="map" style="width:500px;height:350px; border: 2px solid #333333"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e6c7d82fb89b72cd79a958e8c0aa6019"></script>
<script>
  var mapContainer = document.getElementById('map'), // 지도를 표시할 div
          mapOption = {
            center: new kakao.maps.LatLng(37.48204187578631, 126.89819875311048), // 지도의 중심좌표
            level: 4 // 지도의 확대 레벨
          };

  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

  var imageSrc = 'img/marker_flag.png', // 마커이미지의 주소입니다
          imageSize = new kakao.maps.Size(50, 55), // 마커이미지의 크기입니다
          imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

  // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
          markerPosition = new kakao.maps.LatLng(37.48204187578631, 126.89819875311048); // 마커가 표시될 위치입니다

  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
    position: markerPosition,
    image: markerImage // 마커이미지 설정
  });

  // 마커가 지도 위에 표시되도록 설정합니다
  marker.setMap(map);
</script>
</body>
</html>
