<?php if(!defined("PHPOK_SET")){exit("<h1>Access Denied</h1>");} ?><?php $this->output("head","file"); ?>
<script type="text/javascript" src="<?php echo include_js('cate.js');?>"></script>
<div class="tips">
	您当前的位置：
	<a href="<?php echo admin_url('cate');?>">栏目管理</a>
	<?php if($id){ ?>
	&raquo; 编辑分类信息
	<?php } else { ?>
	&raquo; 添加新分类（添加字段前建议先保存数据，每添加完一个字段系统会自动刷新）
	<?php } ?>
</div>
<ul class="group">
	<li class="on" onclick="$.admin.group(this)" name="main" title="分类基本信息">基本设置</li>
	<li onclick="$.admin.group(this)" name="admin" title="分类的一些其他属性">分类属性</li>
	<li onclick="$.admin.group(this)" name="seo" title="分类SEO信息设置">SEO优化</li>
</ul>
<form method="post" id="<?php echo $ext_module;?>" action="<?php echo admin_url('cate','save');?>" onsubmit="return cate_check();">
<input type="hidden" id="id" name="id" value="<?php echo $id;?>" />
<div id="main_setting">
<div class="table">
	<div class="title">
		分类名称：
		<span class="note">即在前台使用的名称信息</span></span>
	</div>
	<div class="content">
		<table cellpadding="0" cellspacing="0">
		<tr>
			<td><input type="text" id="title" name="title" class="default" value="<?php echo $rs['title'];?>" /></td>
			<td><div id="title_note"></div></td>
		</tr>
		</table>
	</div>
</div>
<div class="table">
	<div class="title">
		标识：
		<span class="note">限<span class="red">字母、数字、下划线或中划线且必须是字母开头</span></span>
	</div>
	<div class="content">
		<input type="text" id="identifier" name="identifier" class="default" value="<?php echo $rs['identifier'];?>" />
	</div>
</div>
<div class="table">
	<div class="title">
		上级分类：
		<span class="note">请选择上一级分类信息</span>
	</div>
	<div class="content">
		<select name="parent_id" id="parent_id" class="p_cate">
			<option value="0">设置为根分类</option>
			<?php $parentlist_id["num"] = 0;$parentlist=is_array($parentlist) ? $parentlist : array();$parentlist_id["total"] = count($parentlist);$parentlist_id["index"] = -1;foreach($parentlist AS $key=>$value){ $parentlist_id["num"]++;$parentlist_id["index"]++; ?>
			<option value="<?php echo $value['id'];?>"<?php if($value['id'] == $parent_id){ ?> selected<?php } ?>><?php echo $value['_space'];?><?php echo $value['title'];?></option>
			<?php } ?>
		</select>
	</div>
</div>
<div class="table">
	<div class="title">
		排序：
		<span class="note">值越小越往前靠，最小值为0，最大值为255</span>
	</div>
	<div class="content"><input type="text" id="taxis" name="taxis" class="short" value="<?php echo $rs['taxis'] ? $rs['taxis'] : 255;?>" /></div>
</div>
<div class="table">
	<div class="title">
		状态：
		<span class="note"></span>
	</div>
	<div class="content">
		<table cellpadding="0" cellspacing="0">
		<tr>
			<td><label for="status_0"><input type="radio" name="status" id="status_0" value="0"<?php if($id && !$rs['status']){ ?> checked<?php } ?> />不使用</label></td>
			<td><label for="status_1"><input type="radio" name="status" id="status_1" value="1"<?php if(!$id || $rs['status']){ ?> checked<?php } ?> />使用</label></td>
		</tr>
		</table>
	</div>
</div>
<?php $extlist_id["num"] = 0;$extlist=is_array($extlist) ? $extlist : array();$extlist_id["total"] = count($extlist);$extlist_id["index"] = -1;foreach($extlist AS $key=>$value){ $extlist_id["num"]++;$extlist_id["index"]++; ?>
<div class="table">
	<div class="title">
		<table cellspacing="0" cellpadding="0">
		<tr>
			<td height="25"><?php echo $value['title'];?><span class="darkblue">[<?php echo $value['identifier'];?>]</span>：</td>
			<td><span class="note"><?php echo $value['note'];?></span></td>
			<?php if($popedom['ext']){ ?>
			<?php if($ext_module != 'add-cate'){ ?>
			<td><a class="icon edit" onclick="ext_edit('<?php echo $value['identifier'];?>','<?php echo $ext_module;?>')"></a></td>
			<?php } ?>
			<td><a class="icon delete" onclick="ext_delete('<?php echo $value['identifier'];?>','<?php echo $ext_module;?>','<?php echo $value['title'];?>')"></a></td>
			<?php } ?>
		</tr>
		</table>
	</div>
	<div class="content"><?php echo $value['html'];?></div>
</div>
<?php } ?>


<?php if($popedom['ext']){ ?>
<div class="table">
	<div class="content">
		<select id="_tmp_select_add" style="padding:3px">
			<option value="">请选择扩展字段…</option>
			<?php $extfields_id["num"] = 0;$extfields=is_array($extfields) ? $extfields : array();$extfields_id["total"] = count($extfields);$extfields_id["index"] = -1;foreach($extfields AS $key=>$value){ $extfields_id["num"]++;$extfields_id["index"]++; ?>
			<?php if(!$used_fields || ($used_fields && !in_array($value['identifier'],$used_fields))){ ?>
			<option value="<?php echo $value['id'];?>"><?php echo $value['title'];?> - <?php echo $value['identifier'];?></option>
			<?php } ?>
			<?php } ?>
		</select>
		<input type="button" value="添加" onclick="_update_select_add()" class="button2" />
		<input type="button" value="标准创建扩展字段" onclick="ext_add('<?php echo $ext_module;?>')" class="button2" />
	</div>
</div>
<script type="text/javascript">
function _update_select_add()
{
	var val = $("#_tmp_select_add").val();
	if(!val){
		$.dialog.alert('请选择要添加的扩展');
		return false;
	}
	ext_add2(val,'<?php echo $ext_module;?>');
}
</script>
<?php } ?>

</div>

<div class="hide" id="seo_setting">
	<div class="table">
		<div class="title">
			SEO标题：
			<span class="note">设置此标题后，网站Title将会替代默认定义的，不能超过85个汉字</span>
		</div>
		<div class="content">
			<input type="text" id="seo_title" name="seo_title" class="long" value="<?php echo $rs['seo_title'];?>" />
		</div>
	</div>
	<div class="table">
		<div class="title">
			SEO关键字：
			<span class="note">多个关键字用英文逗号或英文竖线隔开</span>
		</div>
		<div class="content">
			<input type="text" id="seo_keywords" name="seo_keywords" class="long" value="<?php echo $rs['seo_keywords'];?>" />
		</div>
	</div>
	<div class="table">
		<div class="title">
			SEO描述：
			<span class="note">简单描述该主题信息，用于搜索引挈，不支持HTML，不能超过85个汉字</span>
		</div>
		<div class="content">
			<textarea name="seo_desc" id="seo_desc" class="long"><?php echo $rs['seo_desc'];?></textarea>
		</div>
	</div>
	<div class="table">
		<div class="title">
			Tag标签：
			<span class="note">多个标签用英文空格隔开，最多不能超过10个词</span>
		</div>
		<div class="content">
			<input type="text" id="tag" name="tag" class="long" value="<?php echo $rs['tag'];?>" />
		</div>
	</div>
</div>
<div id="admin_setting" class="hide">
	<div class="table">
		<div class="title">
			默认主题数：
			<span class="note">启用此项将替换项目中的设置</span>
		</div>
		<div class="content">
			<input type="text" id="psize" name="psize" value="<?php echo $rs['psize'];?>" class="short" />
		</div>
	</div>
	<div class="table">
		<div class="title">
			列表模板：
			<span class="note">此处设置自定义模板，将替代项目中的模板设置</span>
		</div>
		<div class="content">
			<input type="text" id="tpl_list" name="tpl_list" class="default" value="<?php echo $rs['tpl_list'];?>" />
			<input type="button" value="选择" onclick="phpok_tpl_open('tpl_list')" class="btn" />
			<input type="button" value="清空" onclick="$('#tpl_list').val('');" class="btn" />
		</div>
	</div>
	<div class="table">
		<div class="title">
			内容模板：
			<span class="note">同上</span>
		</div>
		<div class="content">
			<input type="text" id="tpl_content" name="tpl_content" class="default" value="<?php echo $rs['tpl_content'];?>" />
			<input type="button" value="选择" onclick="phpok_tpl_open('tpl_content')" class="btn" />
			<input type="button" value="清空" onclick="$('#tpl_content').val('');" class="btn" />
		</div>
	</div>
	<?php if($popedom['ext'] && $extfields && !$parent_id){ ?>
	<div class="table">
		<div class="title">
			默认子分类扩展字段
			<span class="note">此项用于配置默认的子项扩展字段属性，留空表示不添加子分类扩展字段</span>
		</div>
		<div class="content">
			<ul class="layout">
				<?php $tmpid["num"] = 0;$extfields=is_array($extfields) ? $extfields : array();$tmpid["total"] = count($extfields);$tmpid["index"] = -1;foreach($extfields AS $key=>$value){ $tmpid["num"]++;$tmpid["index"]++; ?>
				<li><label><input type="checkbox" name="_extfields[]" value="<?php echo $value['id'];?>"<?php if($ext2 && in_array($value['id'],$ext2)){ ?> checked<?php } ?> /><?php echo $value['title'];?></label></li>
				<?php } ?>
			</ul>
			<div class="clear"></div>
		</div>
	</div>
	<?php } ?>
</div>

<div class="table">
	<div class="content">
		<br />
		<input type="submit" value="提 交" class="submit2" />
	</div>
</div>
</form>

<?php $this->output("foot","file"); ?>