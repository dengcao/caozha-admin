<?php
/**
 * 源码名：caozha-admin
 * Copyright © 2020 草札 （草札官网：http://caozha.com）
 * 基于木兰宽松许可证 2.0（Mulan PSL v2）免费开源，您可以自由复制、修改、分发或用于商业用途，但需保留作者版权等声明。详见开源协议：http://license.coscl.org.cn/MulanPSL2
 * caozha-admin (Software Name) is licensed under Mulan PSL v2. Please refer to: http://license.coscl.org.cn/MulanPSL2
 * Github：https://github.com/cao-zha/caozha-admin   or   Gitee：https://gitee.com/caozha/caozha-admin
 */

namespace app\index\controller;

class Index
{
    public function index()
    {
       return '<title>欢迎使用'.get_cz_name().' '.get_cz_version().'</title><style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:14px;} h1{ font-size: 32px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 18px }</style><div style="padding: 24px 48px;"> <h1>:) 欢迎使用</h1><p><br>'.get_cz_name().' '.get_cz_version().'<br><br>'.'后台管理地址：<a href="http://'.$_SERVER['HTTP_HOST'].url("admin/index/index").'" target="_blank">http://'.$_SERVER['HTTP_HOST'].url("admin/index/index").'</a> （账号：caozha &nbsp; 密码：123456）<br><br>草札官网：<a href="http://caozha.com" target="_blank">caozha.com</a><br><br>GitHub：<a href="https://github.com/'.$GLOBALS["caozha_common_config"]["github"].'" target="_blank">https://github.com/'.$GLOBALS["caozha_common_config"]["github"].'</a><br>Gitee：<a href="https://gitee.com/'.$GLOBALS["caozha_common_config"]["gitee"].'" target="_blank">https://gitee.com/'.$GLOBALS["caozha_common_config"]["gitee"].'</a><br><br><a href="'.url("index/comment/index").'"  target="_blank" style="color:red;font-weight: bold;">查看评论演示</a></p></div>';
    }

}
