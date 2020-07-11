# caozha-admin 后台管理框架 1.7.1

caozha-admin是一个通用的PHP网站后台管理框架，基于开源的ThinkPHP开发，特点：易上手，零门槛，界面清爽极简，极便于二次开发。

### 基础功能

1、系统设置

2、管理员管理

3、权限组管理

4、系统日志

5、后台功能地图

6、整合了百度UEditor等各种常用插件，可去演示页面查看调用。

7、无限级别分类

8、文章管理系统

9、用户（会员）管理系统

10、评论系统（支持盖楼评论，支持设置屏蔽词、验证码、是否需审核等，可整合到任何场景。可以自动适配电脑、平板和手机等不同客户端。）

主要提供了以上基础功能，您可以在此基础上拓展和开发出不同的应用。


### 安装使用


**开发环境**

本人开发此系统使用的本地环境是：phpstudy8.1集成工具，phpMyAdmin 4.8.5，Apache2.4.39（或Nginx1.15.11），PHP7.3.4，MySQL5.7.26。

事实上，您不需要使用跟以上完全一致的环境也可以正常运行本系统，理论上只要PHP>=7.1即可。如有不兼容，建议模拟本环境测试，并欢迎您提建议和反馈BUG。


**快速安装**

1、PHP版本必须7.1及以上。

2、上传目录/Src/内所有源码到服务器，并设置网站的根目录指向运行目录/public/。（此为ThinkPHP6.0的要求）

3、将/Database/目录里的.sql文件导入到MYSQL数据库。

4、修改文件/config/database.php，配置您的数据库信息（如果测试时启用了/.env，还需要修改文件/.env，系统会优先使用此配置文件）。

5、后台访问地址：http://您的域名/admin/index/login   (账号：caozha   密码：123456)



**伪静态设置**

1、ThinkPHP框架必须在运行目录下设置伪静态才能正常访问，否则会显示404错误。

2、如果您使用的是Apache，伪静态设置为（.htaccess）：

<IfModule mod_rewrite.c>

  Options +FollowSymlinks -Multiviews
  
  RewriteEngine On
  
  RewriteCond %{REQUEST_FILENAME} !-d
  
  RewriteCond %{REQUEST_FILENAME} !-f
  
  RewriteRule ^(.*)$ index.php?s=$1 [QSA,PT,L]
  
</IfModule>


3、如果您使用的是Nginx，以wdCP和宝塔Linux面板为例，伪静态设置为：

    index index.php;
    
    if (!-e $request_filename) {
    
       rewrite  ^(.*)$  /index.php?s=/$1  last;
       
       break;
       
    }
    


4、在网站运行目录（/public/）下，有两个文件：.htaccess和nginx.htaccess，分别是Apache和Nginx的伪静态文件，您可以直接拿来使用。



**开发手册**

码云Wiki：[https://gitee.com/caozha/caozha-admin/wikis](https://gitee.com/caozha/caozha-admin/wikis)

GitHub Wiki：[https://github.com/cao-zha/caozha-admin/wiki](https://github.com/cao-zha/caozha-admin/wiki)



### 演示地址

**后台演示**

[http://caozha.com/git/demo/caozha-admin/public/admin/index/login](http://caozha.com/git/demo/caozha-admin/public/admin/index/login)

管理员账号：caozha   密码：123456 (请勿修改密码，如密码错误请联系我。演示后台已屏蔽上传功能。)


**评论演示**

（可以自动适配电脑、平板和手机等不同客户端。）

[http://caozha.com/git/demo/caozha-admin/public/index/comment/index](http://caozha.com/git/demo/caozha-admin/public/index/comment/index)


### 更新方法


**1.7.0升级到1.7.1的方法：**


1、执行下面MYSQL命令：

ALTER TABLE `cz_comment` CHANGE `addtime` `addtime` DATETIME NULL DEFAULT NULL COMMENT '评论时间';

ALTER TABLE `cz_article` CHANGE `inputtime` `inputtime` DATETIME NULL DEFAULT NULL COMMENT '发布时间';

ALTER TABLE `cz_member` CHANGE `regtime` `regtime` DATETIME NULL DEFAULT NULL COMMENT '注册时间';

ALTER TABLE `cz_member` CHANGE `lasttime` `lasttime` DATETIME NULL DEFAULT NULL COMMENT '最后登录时间';


2、将1.7.1版/SRC/目录的源文件覆盖旧版本，注意修改数据库配置，还有清空缓存。

 
### 更新说明

**版本1.0.0，主要更新内容：**

1、新增：系统设置、管理员、权限组、系统日志、后台功能地图等功能。

2、整合了UEditor等富文本编辑器。

3、整合了各种常用基础组件，如日期时间选择器、颜色选择器、上传文件组件、省市区联动选择器等等。


**版本1.1.0，主要更新内容：**

1、新增了：无限级别分类。

2、修复若干小BUG。


**版本1.2.0，主要更新内容：**

新增了：文章管理系统。


**版本1.3.0，主要更新内容：**

新增了：用户（会员）管理系统。


**版本1.4.0，主要更新内容：**

1、优化了系统操作日志记录。

2、优化了后台授权验证机制，修改权限组设置后可以立马生效。


**版本1.5.0，主要更新内容：**

新增了：评论系统（支持盖楼评论，支持设置屏蔽词、验证码、是否需审核等，可整合到任何场景。可以自动适配电脑、平板和手机等不同客户端。）

修复了：linux下树形分类相关页面找不到控制器的BUG。


**版本1.6.0，主要更新内容：**

1、重新修改了主题模块，更换主题后，弹出框等也会随主题更改对应颜色。

2、修复了若干小BUG。


**版本1.7.0，主要更新内容：**

1、重写了后台欢迎页，调用统计、报表、公告等数据。

2、修复了若干BUG，如后台文章列表的排序号显示不正确等等。

3、新增了Nginx的伪静态文件。


**版本1.7.1，主要更新：**

兼容了MySQL5.6及以下数据库，在MySQL5.5/5.6上测试，可以正常导入和使用。但为了获取更高的性能，依然建议您使用更高版本的MySQL数据库。


**版本1.7.2，主要更新：**

优化了登陆失效时的弹窗提示。


### 特别鸣谢

caozha-admin使用了以下开源代码：

ThinkPHP6.0.2、layui2.5.4、layuimini v2、font-awesome-4.7.0、lgyPl

特别致谢！

### 赞助支持：

支持本程序，请到Gitee和GitHub给我们点Star！

Gitee：https://gitee.com/caozha/caozha-admin

GitHub：https://github.com/cao-zha/caozha-admin

### 关于开发者

开发：草札 www.caozha.com

鸣谢：品络 www.pinluo.com  &ensp;  穷店 www.qiongdian.com


### 界面预览

**1.7.0版预览：**

主要重写了后台欢迎页，修复若干BUG。

![输入图片说明](https://images.gitee.com/uploads/images/2020/0629/171653_57fa96a9_7397417.png "22.png")


**1.5.0版预览：**

主要是新增了评论系统。

评论（PC端）：

![输入图片说明](https://images.gitee.com/uploads/images/2020/0611/145140_3e613b5d_7397417.png "16.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0611/135914_73eb0310_7397417.png "19.png")

评论（手机端）：

 ![输入图片说明](https://images.gitee.com/uploads/images/2020/0612/152711_77208177_7397417.jpeg "5.jpg")
   
 ![输入图片说明](https://images.gitee.com/uploads/images/2020/0612/152720_633821db_7397417.jpeg "6.jpg")
 

评论后台：

![输入图片说明](https://images.gitee.com/uploads/images/2020/0611/124804_b09945aa_7397417.png "17.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0611/135927_03fa9d83_7397417.png "20.png")

评论可设置项：

![输入图片说明](https://images.gitee.com/uploads/images/2020/0612/174208_53940656_7397417.png "18.png")


**1.3.0版预览：**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/095751_8a313232_7397417.png "11.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/004200_03967767_7397417.jpeg "12.jpg")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/004219_bddd7960_7397417.jpeg "13.jpg")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/004228_77a586e1_7397417.jpeg "14.jpg")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/004237_802810be_7397417.jpeg "15.jpg")

 
**1.2.0版预览：**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0602/181454_9d357745_7397417.png "10.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/101336_1575442d_7397417.png "10-1.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0604/110154_cb9f5759_7397417.png "10-2.png")

 
**1.1.0版预览：**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0531/221652_31b46dd9_7397417.png "8.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0531/221706_b4fc6e99_7397417.png "9.png")

 
**1.0.0版预览：**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111034_0fcc6524_7397417.png "1.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111043_e0a9482f_7397417.png "2.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111051_b6abdc55_7397417.png "3.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111132_8860fb7d_7397417.png "4.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111139_8230a7f8_7397417.png "5.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111151_7aaf6aa7_7397417.png "6.png")

![输入图片说明](https://images.gitee.com/uploads/images/2020/0522/111159_fb128fff_7397417.png "7.png")


