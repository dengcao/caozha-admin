<?php
/**
 * PHPCMS 无限级别分类
 * Git仓库：
 * https://gitee.com/caozha/phpcms-tree
 * https://github.com/cao-zha/phpcms-tree
 *
 */

    include "tree.class.php";
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>PHPCMS 无限级别分类 - 后台管理中心</title>
    <link href="css/reset.css" rel="stylesheet" type="text/css" />
    <link href="css/zh-cn-system.css" rel="stylesheet" type="text/css" />
    <link href="css/table_form.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="subnav">
    <div class="content-menu ib-a blue line-x">
        <a href='javascript:;' class="on"><em>管理栏目</em></a><span>|</span><a href='#dx1' ><em>多项选择框</em></a><span>|</span><a href='#dx2' ><em>单项选择框</em></a>    </div>
</div>
<style type="text/css">
    html{_overflow-y:scroll}
</style><form name="myform" action="?m=admin&c=category&a=listorder" method="post">
    <div class="pad_10">
        <div class="explain-col">
            温馨提示：请在添加、修改栏目全部完成后，更新栏目缓存
        </div>
        <div class="bk10"></div>
        <div class="table-list">
            <table width="100%" cellspacing="0" >
                <thead>
                <tr>
                    <th width="38">排序</th>
                    <th width="30">catid</th>
                    <th >栏目名称</th>
                    <th align='left' width='50'>栏目类型</th>
                    <th align='left' width="50">所属模型</th>
                    <th align='center' width="40">数据量</th>
                    <th align='center' width="30">访问</th>
                    <th align='center' width="80">域名绑定须知</th>
                    <th >管理操作</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $tree = new tree;
                $tree->icon = array('&nbsp;&nbsp;&nbsp;│ ','&nbsp;&nbsp;&nbsp;├─ ','&nbsp;&nbsp;&nbsp;└─ ');
                $tree->nbsp = '&nbsp;&nbsp;&nbsp;';
                $categorys = array();
                //读取缓存
                $result = include_once("category_content_1.cache.php");
                $show_detail = count($result) < 500 ? 1 : 0;
                $parentid = $_GET['parentid'] ? intval($_GET['parentid']) : 0;
                $html_root = "/";
                $types = array(0 => "内部栏目",1 => "单网页",2 => "外部链接");
                if(!empty($result)) {
                    foreach ($result as $r) {
                        $r['modelname'] = "文章模型";
                        $r['str_manage'] = '';
                        if (!$show_detail) {
                            if ($r['parentid'] != $parentid) continue;
                            $r['parentid'] = 0;
                            $r['str_manage'] .= '<a href="#?m=admin&c=category&a=init&parentid=' . $r['catid'] . '&menuid=' . $_GET['menuid'] . '&s=' . $r['type'] . '&pc_hash=' . $_SESSION['pc_hash'] . '">管理子栏目</a> | ';
                        }
                        $r['str_manage'] .= '<a href="#?m=admin&c=category&a=add&parentid=' . $r['catid'] . '&menuid=' . $_GET['menuid'] . '&s=' . $r['type'] . '&pc_hash=' . $_SESSION['pc_hash'] . '">添加子栏目</a> | ';

                        $r['str_manage'] .= '<a href="#?m=admin&c=category&a=edit&catid=' . $r['catid'] . '&menuid=' . $_GET['menuid'] . '&type=' . $r['type'] . '&pc_hash=' . $_SESSION['pc_hash'] . '">修改</a> | <a href="javascript:confirmurl(\'?m=admin&c=category&a=delete&catid=' . $r['catid'] . '&menuid=' . $_GET['menuid'] . '\',\'确认删除吗？\')">删除</a> | <a href="?m=admin&c=category&a=remove&catid=' . $r['catid'] . '&pc_hash=' . $_SESSION['pc_hash'] . '">批量移动</a>';
                        $r['typename'] = $types[$r['type']];
                        $r['display_icon'] = $r['ismenu'] ? '' : ' <img src ="../img/gear_disable.png" title="">';
                        if ($r['type'] || $r['child']) {
                            $r['items'] = '';
                        } else {
                            $r['items'] = $category_items[$r['modelid']][$r['catid']];
                        }
                        $r['help'] = '';
                        $r['url'] = "<a href='$r[url]' target='_blank'>访问</a>";
                        $categorys[$r['catid']] = $r;
                    }
                }

                $str  = "<tr>
					<td align='center'><input name='listorders[\$id]' type='text' size='3' value='\$listorder' class='input-text-c'></td>
					<td align='center'>\$id</td>
					<td >\$spacer\$catname\$display_icon</td>
					<td>\$typename</td>
					<td>\$modelname</td>
					<td align='center'>\$items</td>
					<td align='center'>\$url</td>
					<td align='center'>\$help</td>
					<td align='center' >\$str_manage</td>
				</tr>";
                $tree->init($categorys);
                $categorys = $tree->get_tree(0, $str);
                //get_tree(父ID,格式化字符窜,默认选中哪个分类,修饰前缀,父级分类样式) 前面两个必填，后面三个可选
                ?>
                <?php echo $categorys;?>
                    </tbody>
            </table>

            <div class="btn">
                <input type="hidden" name="pc_hash" value="rWPing" />
                <input type="submit" class="button" name="dosubmit" value="排序" /></div>  </div>
    </div>
    </div>
</form>

<br><br>
<div style="float: left;width: 350px;margin-bottom: 200px;margin-left: 40px;">
    <a name="dx1"></a>  多选框：
<?php
$catid = intval($_GET['catid']);
$categorys = array();

$tree = new tree;
$tree->icon = array('&nbsp;&nbsp;│ ','&nbsp;&nbsp;├─ ','&nbsp;&nbsp;└─ ');
$tree->nbsp = '&nbsp;&nbsp;';
foreach($result as $cid=>$r) {
    $r['disabled'] = $r['child'] ? 'disabled' : '';
    $r['selected'] = $cid == $catid ? 'selected' : '';
    $categorys[$cid] = $r;
}
$str  = "<option value='\$catid' \$disabled>\$spacer \$catname</option>";
$tree->init($categorys);
$string .= $tree->get_tree(0, $str);
echo "<select name=\"fromid[]\" id=\"fromid\"  multiple  style=\"height:300px;width:350px;\">";
echo $string;
echo "</select>";
?>
</div>

<div style="float: left;width: 350px;height:300px;margin-bottom: 200px;margin-left: 40px;">
  <a name="dx2"></a>  单选框：
<?php
$str  = "<option value='\$catid' \$selected>\$spacer \$catname</option>";
$source_string = '';
$tree->init($categorys);
$source_string .= $tree->get_tree(0, $str);
echo "<select name=\"fromid[]\" style=\"width:350px;\">";
echo $source_string;
echo "</select>";
?>
</div>

</body>
</html>