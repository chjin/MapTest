<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div>
	<div style="padding-left: 40px">
<%-- 		<li>
			<input type="hidden" id="lat" name="lat"  value="${lat} }"/>
			<input type="hidden" id="lng" name="lng" value="${lng }"/>
		</li> --%>
		<li style="padding-top:20px;">
			<div style="paddding-left: 0">지도를 움직여보세요.</div>
			<div id="map" style="margin-top: 10px; height: 1000px"></div>
			<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
			<script type="text/javascript" src="//apis.daum.net/maps/maps3.js?apikey=XXX&libraries=services">
			</script>
			<script>

				var mapContainer=document.getElementById('map'),
					mapOption={
						center: new daum.maps.LatLng(37.5530754, 126.9368926),
						level: 3
				};
				
				var map=new daum.maps.Map(mapContainer, mapOption);
				
				if(navigator.geolocation){
					navigator.geolocation.getCurrentPosition(function(position){
						var lat=position.coords.latitude,
							lon=position.coords.logitude;
						
						var loc=new daum.maps.Lating(lat,lon);
						
						map.setCenter(loc);
					});
				}
				
				var mk=null;
				
				var cir=null;
				
				
/* 				var cir=new daum.maps.Circle({
						center: existloc,
						radius: 60,
						strokeWeight: 3,
						strokeColor: '#75B8FA',
						strokeOpacity: 1,
						strokeStyle: 'dashed',
						fillColor: '#CFE7FF',
						fillOpacity: 0.7
				});
				 */
				cir.setMap(map);
				
				daum.maps.event.addListener(map, 'drag', function(){
					mk.setPosition(map.getCenter());
					cir.setMap(null);
				});
				
				daum.maps.event.addListener(map, 'dragend', function(){
					cir.setMap(map);
					cir.setPosition(map.getCenter());
					$('#lng').val(map.getCenter().getLng());
					$('#lat').val(map.getCenter().getLat());

				});
				
			</script>
		</li>
	</div>
</div>





















