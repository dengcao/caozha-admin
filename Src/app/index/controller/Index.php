<?php
namespace app\index\controller;

class Index
{
    public function index()
    {
        return '<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} a{color:#2E5CD5;cursor: pointer;text-decoration: none} a:hover{text-decoration:underline; } body{ background: #fff; font-family: "Century Gothic","Microsoft yahei"; color: #333;font-size:18px;} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.6em; font-size: 42px }</style><div style="padding: 24px 48px;"> <h1>:) 欢迎使用</h1><p>caozha-admin 1.0.0<br>'.'后台管理地址：http://'.$_SERVER['HTTP_HOST'].'/index.php/admin （账号：caozha &nbsp; 密码：123456）<br>Git仓库：https://gitee.com/caozha/caozha-admin<br>草札官网：caozha.com</p></div>';
    }

}
