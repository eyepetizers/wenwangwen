<?php if(!defined("PHPOK_SET")){exit("<h1>Access Denied</h1>");} ?><?php $this->output("head","file"); ?>
<script type="text/javascript">
function project_delete(id,title)
{
	$.dialog.confirm('<?php echo P_Lang("确定要删除此项目吗？删除会将相关内容一起删除");?><br /><span class="red">'+title+'</span>',function(){
		var url = "<?php echo phpok_url(array('ctrl'=>'project','func'=>'delete'));?>&id="+id;
		$.dialog.tips('<?php echo P_Lang("正在执行删除请求…");?>');
		$.phpok.json(url,project_result,true);
	});
}
function project_result(rs)
{
	if(rs.status == 'ok'){
		$.dialog.alert('<?php echo P_Lang("操作成功");?>',function(){
			$.phpok.reload();
		});
	}else{
		$.dialog.alert(rs.content);
	}
}
function project_copy(id,title)
{
	$.dialog.confirm('<?php echo P_Lang("确定要复制此项目");?><br /><span class="red">'+title+'</span>',function(){
		var url = "<?php echo phpok_url(array('ctrl'=>'project','func'=>'copy'));?>&id="+id;
		$.phpok.json(url,project_result,true);
	});
}

function project_export(id)
{
	var url = get_url('project','export','id='+id);
	$.phpok.go(url);
}
function set_status(id)
{
	var url = '<?php echo phpok_url(array('ctrl'=>'project','func'=>'status'));?>&id='+id;
	var old_value = $("#status_"+id).attr("value");
	var new_value = old_value == "1" ? "0" : "1";
	url += "&status="+new_value;
	$.phpok.json(url,function(rs){
		if(rs.status == 'ok'){
			$("#status_"+id).removeClass("status"+old_value).addClass("status"+new_value).attr("value",new_value);
		}else{
			$.dialog.alert(rs.content);
		}
	});
}
function update_taxis(val,id)
{
	$.ajax({
		'url':get_url('project','sort','sort['+id+']='+val),
		'dataType':'json',
		'cache':false,
		'async':true,
		'beforeSend': function (XMLHttpRequest){
			XMLHttpRequest.setRequestHeader("request_type","ajax");
		},
		'success':function(rs){
			if(rs.status == 'ok'){
				$("div[name=taxis][data="+id+"]").text(val);
				//$.phpok.reload();
			}else{
				$.dialog.alert(rs.content);
				return false;
			}
		}
	});
}
function project_import()
{
	var url = get_url('project','import');
	$.dialog.open(url,{
		'title':p_lang('项目导入'),
		'lock':true,
		'width':'500px',
		'height':'150px',
		'ok':function(){
			var iframe = this.iframe.contentWindow;
			if (!iframe.document.body) {
				alert(p_lang('iframe还没加载完毕呢'));
				return false;
			};
			iframe.save();
			return false;
		},
		'okVal':p_lang('导入项目'),
		'cancelVal':p_lang('取消'),
		'cancel':function(){return true;}
	});
}
$(document).ready(function(){
	$("div[name=taxis]").click(function(){
		var oldval = $(this).text();
		var id = $(this).attr('data');
		$.dialog.prompt('<?php echo P_Lang("请填写新的排序：");?>',function(val){
			if(val != oldval){
				update_taxis(val,id);
			}
		},oldval);
	});
});
</script>
<div class="tips">
	<?php if($popedom['set']){ ?>
	<div class="action"><a href="<?php echo phpok_url(array('ctrl'=>'project','func'=>'set'));?>"><?php echo P_Lang("添加项目");?></a></div>
	<div class="action"><a href="javascript:project_import();void(0);"><?php echo P_Lang("项目导入");?></a></div>
	<?php } ?>
	<?php echo P_Lang("您当前的位置：");?>
	<a href="<?php echo admin_url('project');?>"><?php echo P_Lang("项目管理");?></a>
	&raquo; <?php echo P_Lang("项目列表");?>
</div>
<div class="list">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
	<th class="id">ID</th>
	<th class="w33">&nbsp;</th>
	<th class="lft"><?php echo P_Lang("项目名称");?></th>
	<th class="lft"><?php echo P_Lang("标识串");?></th>
	<th class="lft"><?php echo P_Lang("模块");?></th>
	<th width="65"><?php echo P_Lang("排序");?></th>
	<?php if($popedom['set']){ ?>
	<th class="lft" style="width:90px;">&nbsp;</th>
	<th class="lft" style="width:270px;">&nbsp;</th>
	<?php } ?>
</tr>
<?php $rslist_id["num"] = 0;$rslist=is_array($rslist) ? $rslist : array();$rslist_id["total"] = count($rslist);$rslist_id["index"] = -1;foreach($rslist AS $key=>$value){ $rslist_id["num"]++;$rslist_id["index"]++; ?>
<tr>
	<td class="center gray" height="24px"><?php echo $value['id'];?></td>
	<td class="center"><span class="status<?php echo $value['status'];?>" id="status_<?php echo $value['id'];?>" <?php if($popedom['set']){ ?>onclick="set_status(<?php echo $value['id'];?>)"<?php } else { ?> style="cursor:default"<?php } ?> value="<?php echo $value['status'];?>"></span></td>
	<td><label for="id_<?php echo $value['id'];?>"><?php echo $value['space'];?><?php echo $value['title'];?><?php if($value['nick_title']){ ?><span class="gray i"> (<?php echo $value['nick_title'];?>)</span><?php } ?><?php if($value['hidden']){ ?><span class="red i"><?php echo P_Lang("（隐藏）");?></span><?php } ?></label></td>
	<td><?php echo $value['identifier'];?></td>
	<td><?php echo $value['project_module_title'] ? $value['project_module_title'] : '-';?></td>
	<td><div class="gray i hand center" title="<?php echo P_Lang("点击调整排序");?>" name="taxis" data="<?php echo $value['id'];?>"><?php echo $value['taxis'];?></div></td>
	<?php if($popedom['set']){ ?>
		<?php if($value['parent_id']){ ?>
		<td>&nbsp;</td>
		<?php } else { ?>
		<td align="right"><input type="button" value="添加子项" class="phpok-btn" onclick="$.phpok.go('<?php echo phpok_url(array('ctrl'=>'project','func'=>'set','pid'=>$value['id']));?>')" /></td>
		<?php } ?>
		<td>
			<div class="button-group">
				<input type="button" value="<?php echo P_Lang("编辑");?>" onclick="$.phpok.go('<?php echo phpok_url(array('ctrl'=>'project','func'=>'set','id'=>$value['id']));?>')" class="phpok-btn" />
				<input type="button" value="<?php echo P_Lang("扩展字段");?>" onclick="$.phpok.go('<?php echo phpok_url(array('ctrl'=>'project','func'=>'content','id'=>$value['id']));?>')" class="phpok-btn" />
				<input type="button" value="<?php echo P_Lang("复制");?>" onclick="project_copy('<?php echo $value['id'];?>','<?php echo $value['title'];?>')" class="phpok-btn" />
				<input type="button" value="<?php echo P_Lang("导出");?>" onclick="project_export('<?php echo $value['id'];?>')" class="phpok-btn" />
				<input type="button" value="<?php echo P_Lang("删除");?>" onclick="project_delete('<?php echo $value['id'];?>','<?php echo $value['title'];?>')" class="phpok-btn" />
			</div>
		</td>
	<?php } ?>
</tr>
<?php } ?>
</table>
</div>
<?php $this->output("foot","file"); ?>