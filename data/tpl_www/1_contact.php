<?php if(!defined("PHPOK_SET")){exit("<h1>Access Denied</h1>");} ?><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>联系我们</title>
		<link href="./tpl/www/css/index.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./tpl/www/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="./tpl/www/js/common.js"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=scaThFfFwdYWrGgvF1gh9CwC"></script>
	<?php echo $app->plugin_html_ap("phpokhead");?></head>

	<body>
		<div id="head">
			<div class="logo">
				<a href="/"><img src="./tpl/www/img/logo.png" alt=""></a>
			</div>
			<div class="nav">
				<ul><?php $menu=phpok('menu');?><?php $menu_rslist_id["num"] = 0;$menu['rslist']=is_array($menu['rslist']) ? $menu['rslist'] : array();$menu_rslist_id["total"] = count($menu['rslist']);$menu_rslist_id["index"] = -1;foreach($menu['rslist'] AS $key=>$value){ $menu_rslist_id["num"]++;$menu_rslist_id["index"]++; ?>
					<li>
						<a href="<?php echo $value['url'];?>" <?php if($value['title']=='联系我们'){ ?>class="cur"<?php } ?>><?php echo $value['title'];?></a>
					</li>
					<?php } ?>
					<li class="denglu">
						<p style="color: rgba(255, 255, 255, 0.701961); background-color: rgba(255, 255, 255, 0);">登录</p>
					</li>
					<li class="haibao">
						<p>猴面包树音乐用户</p>
					</li>
				</ul>
			</div>
		</div>
		<div id="banner2">
			<div class="banner_inner">
				<h3>北京猴面包树科技有限公司</h3>
				<p>地址：北京市海淀区清河安宁庄路4号9号楼二层005室 <br />电话：010-82410720 邮箱：hi@eyepetizer.net<br>邮编：100020
				</p>
			</div>
		</div>
		<div id="main">

		</div>
		<div id="map"></div>

		<div id="bottom">
			<div class="down">
				<p>北京猴面包树科技有限公司 2017 © All Rights Resverved <br>地址：北京市海淀区清河安宁庄路4号9号楼二层005室   电话：010-82410720   邮箱：hi@eyepetizer.net<br> <a href="http://www.miitbeian.gov.cn/" target="_blank">京ICP备16030848号-2</a></p>
			</div>
		</div>
		<div id="dengluzhuce">
			<div class="shuru">
				<div class="one">登录</div>
				<div class="two">注册</div>
				<form action="">
					<input id="phone" class="yonghuming" type="text" value="" placeholder="请输入手机号" sucmsg="验证通过" style="color:#FFFFFF">
					<input id="pwd" class="mima" type="password" value="" placeholder="请输入密码" sucmsg="验证通过" style="color:#FFFFFF">
					<label id="tip" style="display:none;">请输入手机号</label>
					<p class="tijiao">登 &nbsp;录</p>
					<p class="tijiao yincang" style="display:none;">注 &nbsp;册</p>
				</form>
				<div class="close"><img src="./tpl/www/img/Group 2.png" alt=""></div>
			</div>
		</div>

  <script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
      createMap();//创建地图
      setMapEvent();//设置地图事件
      addMapControl();//向地图添加控件
      addMapOverlay();//向地图添加覆盖物
    }
    function createMap(){ 
      map = new BMap.Map("map"); 
      map.centerAndZoom(new BMap.Point(116.332305,40.057966),19);
    }
    function setMapEvent(){
      map.enableKeyboard();
      map.enableDragging();
      map.enableDoubleClickZoom()
    }
    function addClickHandler(target,window){
      target.addEventListener("click",function(){
        target.openInfoWindow(window);
      });
    }
    function addMapOverlay(){
      var markers = [
        {content:"地址：北京市海淀区清河安宁庄路4号9号楼二层005室<br>电话：010-82410720",title:"北京猴面包树科技有限公司",imageOffset: {width:0,height:-21},position:{lat:40.058025,lng:116.332741}}
      ];
      for(var index = 0; index < markers.length; index++ ){
        var point = new BMap.Point(markers[index].position.lng,markers[index].position.lat);
        var marker = new BMap.Marker(point,{icon:new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png",new BMap.Size(20,25),{
          imageOffset: new BMap.Size(markers[index].imageOffset.width,markers[index].imageOffset.height)
        })});
        var label = new BMap.Label(markers[index].title,{offset: new BMap.Size(25,5)});
        var opts = {
          width: 200,
          title: markers[index].title,
          enableMessage: false
        };
        var infoWindow = new BMap.InfoWindow(markers[index].content,opts);
        marker.setLabel(label);
        addClickHandler(marker,infoWindow);
        map.addOverlay(marker);
      };
    }
    //向地图添加控件
    function addMapControl(){
      var scaleControl = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
      scaleControl.setUnit(BMAP_UNIT_IMPERIAL);
      map.addControl(scaleControl);
      var navControl = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
      map.addControl(navControl);
    }
    var map;
      initMap();
  </script>

	<?php echo $app->plugin_html_ap("phpokbody");?></body>

</html>