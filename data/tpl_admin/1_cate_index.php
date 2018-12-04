<?php if(!defined("PHPOK_SET")){exit("<h1>Access Denied</h1>");} ?><?php $this->output("head","file"); ?>
<script type="text/javascript" src="<?php echo add_js('cate.js');?>"></script>
<script type="text/javascript">
function cate_delete(id)
{
	$.dialog.confirm("<?php echo P_Lang("确定要删除此分类吗？");?>",function(){
		var url = get_url("cate","delete");
		url += "&id="+id;
		var rs = $.phpok.json(url);
		if(rs.status == "ok"){
			$.phpok.reload();
		}else{
			$.dialog.alert(rs.content);
			return false;
		}
	});
}

</script>
<div class="tips clearfix">
	<?php if($popedom['add']){ ?>
	<div class="action"><a href="<?php echo admin_url('cate','set');?>"><?php echo P_Lang("添加根分类");?></a></div>
	<?php } ?>
	<?php echo P_Lang("您当前的位置：");?>
	<a href="<?php echo admin_url('fields');?>"><?php echo P_Lang("栏目管理");?></a>
	&raquo; <?php echo P_Lang("栏目列表");?>
</div>
<div class="cate_list clearfix">
<table width="100%" cellpadding="0" cellspacing="0">
<tr>
	<th class="id">ID</th>
	<th width="30">&nbsp;</th>
	<th class="title"><?php echo P_Lang("分类名称");?></th>
	<th width="80"><?php echo P_Lang("排序");?></th>
	<th width="50">&nbsp;</th>
	<th class="lft" width="200"><?php echo P_Lang("操作");?></th>
</tr>
<?php $tab_i = 0;;?>
<?php $rslist_id["num"] = 0;$rslist=is_array($rslist) ? $rslist : array();$rslist_id["total"] = count($rslist);$rslist_id["index"] = -1;foreach($rslist AS $key=>$value){ $rslist_id["num"]++;$rslist_id["index"]++; ?>
<?php $tab_i++;?>
<tr<?php if($key%2 == ""){ ?> class="list"<?php } ?>>
	<td class="center gray"><?php echo $value['id'];?></td>
	<td><span class="status<?php echo $value['status'];?>" id="status_<?php echo $value['id'];?>" <?php if($popedom['status']){ ?>onclick="phpok_status(<?php echo $value['id'];?>,'<?php echo phpok_url(array('ctrl'=>'cate','func'=>'status'));?>')"<?php } else { ?> style="cursor: default;"<?php } ?> value="<?php echo $value['status'];?>"></span></td>
	<td>
		<table cellpadding="0" cellspacing="0">
		<tr>
			<?php for($i=1;$i<$value['_layer'];$i++){ ?>
			<td class="cate_line">&nbsp;</td>
			<?php } ?>
			<?php if($value['_layer']>0){ ?>
				<td class="cate_middle">&nbsp;</td>
			<?php } ?>
			<td><label for="id_<?php echo $value['id'];?>"><?php echo $value['title'];?><span class="gray i">（<?php echo $value['identifier'];?>）</span></label></td>
		</tr>
		</table>
	</td>
	<td class="center"><input type="text" id="taxis_<?php echo $value['id'];?>" class="cate_taxis" value="<?php echo $value['taxis'];?>" tabindex="<?php echo $tab_i;?>" onblur="update_taxis('<?php echo $value['id'];?>')" /></td>
	<td id="taxis_submit_<?php echo $value['id'];?>">&nbsp;</td>
	<td>
		<div class="button-group">
			<?php if($popedom['add']){ ?>
			<input type="button" value="<?php echo P_Lang("添加子分类");?>" onclick="$.phpok.go('<?php echo phpok_url(array('ctrl'=>'cate','func'=>'set','parent_id'=>$value['id']));?>')" class="phpok-btn" />
			<?php } ?>
			<?php if($popedom['modify']){ ?>
			<input type="button" value="<?php echo P_Lang("修改");?>" onclick="$.phpok.go('<?php echo phpok_url(array('ctrl'=>'cate','func'=>'set','id'=>$value['id']));?>')" class="phpok-btn" />
			<?php } ?>
			<?php if($popedom['delete']){ ?>
			<input type="button" value="<?php echo P_Lang("删除");?>" onclick="cate_delete('<?php echo $value['id'];?>')" class="phpok-btn" />
			<?php } ?>
		</div>
		
	</td>
</tr>
<?php } ?>
</table>
</div>
<?php $this->output("foot","file"); ?>
