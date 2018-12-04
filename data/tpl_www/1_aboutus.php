<?php if(!defined("PHPOK_SET")){exit("<h1>Access Denied</h1>");} ?><!DOCTYPE html>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>关于我们</title>
		<link href="./tpl/www/css/index.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="./tpl/www/js/jquery-1.11.3.min.js"></script>
		<script type="text/javascript" src="./tpl/www/js/common.js"></script>
	<?php echo $app->plugin_html_ap("phpokhead");?></head>

	<body>
		<div id="head">
			<div class="logo">
				<a href="/"><img src="./tpl/www/img/logo.png" alt=""></a>
			</div>
			<div class="nav">
				<ul><?php $menu=phpok('menu');?><?php $menu_rslist_id["num"] = 0;$menu['rslist']=is_array($menu['rslist']) ? $menu['rslist'] : array();$menu_rslist_id["total"] = count($menu['rslist']);$menu_rslist_id["index"] = -1;foreach($menu['rslist'] AS $key=>$value){ $menu_rslist_id["num"]++;$menu_rslist_id["index"]++; ?>
					<li>
						<a href="<?php echo $value['url'];?>" <?php if($value['title']=='关于我们'){ ?>class="cur"<?php } ?>><?php echo $value['title'];?></a>
					</li>
					<?php } ?>
					<li class="denglu">
						<p>登录</p>
					</li>
					<li class="haibao">
						<p>猴面包树音乐用户</p>
					</li>
				</ul>
			</div>
		</div>
		<div id="banner1">
			<div class="banner_inner">

			</div>
		</div>
		<div id="main">

		</div>

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

	<?php echo $app->plugin_html_ap("phpokbody");?></body>

</html>