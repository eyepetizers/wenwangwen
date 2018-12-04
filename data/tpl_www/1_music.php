<?php if(!defined("PHPOK_SET")){exit("<h1>Access Denied</h1>");} ?><!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title><?php echo $rs['fullname'];?> - <?php echo $rs['title'];?></title>
		<link href="./tpl/www/css/index.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./tpl/www/js/jquery-1.11.3.min.js"></script>
		<script>
			$(document).ready(function() {

				$(".close img").click(function() {
					$("#dengluzhuce").fadeOut(1000);
					$("#top").fadeOut(1);
				});

				$(".shuru .tijiao").click(function() {
					$("#dengluzhuce").fadeOut(1000);
					$("#top").fadeIn(1);
					$(".nav .denglu").fadeOut(1);
					$(".nav .haibao").fadeIn(1);
				});

				$(".nav .denglu").click(function() {
					$("#dengluzhuce").fadeIn(500);
				});
				$(".nav .denglu").mouseover(function() {
					$(".denglu p").css({
						"background-color": "rgba(255,255,255,0.7)",
						"color": "rgba(0,0,0,0.8)"
					});
				});
				$(".nav .denglu").mouseleave(function() {
					$(".nav .denglu p").css({
						"background-color": "rgba(255,255,255,0)",
						"color": "rgba(255,255,255,0.7)"
					});
				});

				$(".shuru .two").click(function() {
					$(".shuru .one").css({
						"border-bottom": "solid 1px rgba(255,255,255,0)",
						"color": "rgba(255,255,255,0.4)"
					});
					$(".shuru .two").css({
						"border-bottom": "solid 1px rgba(255,255,255,1)",
						"color": "rgba(255,255,255,1)"
					});
					$(".shuru form .yincang").show();
					$(".shuru form .denglu").hide();

				});

				$(".shuru .one").click(function() {
					$(".shuru .two").css({
						"border-bottom": "solid 1px rgba(255,255,255,0)",
						"color": "rgba(255,255,255,0.4)"
					});
					$(".shuru .one").css({
						"border-bottom": "solid 1px rgba(255,255,255,1)",
						"color": "rgba(255,255,255,1)"
					});
					$(".shuru form .yincang").hide();
					$(".shuru form .denglu").show();
				});

			});
		</script>
	<?php echo $app->plugin_html_ap("phpokhead");?></head>

	<body>
		<div id="head2">
			<p><?php echo $rs['title'];?></p>
			<a href="<?php echo $rs['music_addr']['filename'];?>" download="yinyue">下载</a>

		</div>
		<ul class="xinxi">
			<li style="padding-right:92px;">歌手：<?php echo $rs['fullname'];?></li>
			<li style="padding-right:92px;">格式：mp3</li>
			<li style="padding-right:92px;">语种：华语</li>
			<li style="padding-right:0px;">曲风：<?php echo $cate_rs['title'];?></li>
		</ul>
		<div id="banner3">
			<div class="banner_inner"><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

			</div>
			<marquee direction="up" behavior="scroll" scrollamount="1" scrolldelay="0" loop="-1" hspace="10" vspace="10" style="margin: 10px;">
				<?php echo $rs['content'];?>
			</marquee>
		</div>

		<audio src="<?php echo $rs['music_addr']['filename'];?>" id="aud" autoplay="" controls="" preload="auto">
			您的浏览器不支持audio属性，请更换浏览器在进行浏览。
		</audio>


	<?php echo $app->plugin_html_ap("phpokbody");?></body>

</html>