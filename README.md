# caozha-admin 后台管理框架 1.5.0

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

10、评论系统

主要提供了以上基础功能，您可以在此基础上拓展和开发出不同的应用。


### 安装使用

**快速安装**

1、PHP版本必须7.1及以上。

2、上传目录/Src/内所有源码到服务器，并设置网站的根目录指向目录/Src/public/。（TP6.0要求）

3、将/Database/目录里的.sql文件导入到MYSQL数据库。

4、修改文件/Src/config/database.php，配置您的数据库信息（如果是本地测试，还需要修改文件/Src/.env，本地测试会优先使用此配置文件）。

5、后台访问地址：http://您的域名/index.php/admin/index/login   (账号：caozha   密码：123456)


**开发手册**

码云Wiki：[https://gitee.com/caozha/caozha-admin/wikis](https://gitee.com/caozha/caozha-admin/wikis)

GitHub Wiki：[https://github.com/cao-zha/caozha-admin/wiki](https://github.com/cao-zha/caozha-admin/wiki)

 
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

新增了：评论系统。


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

**1.5.0版预览：**

![输入图片说明](https://images.gitee.com/uploads/images/2020/0611/124753_b7763c7a_7397417.png "16.png")
![输入图片说明](https://images.gitee.com/uploads/images/2020/0611/124804_b09945aa_7397417.png "17.png")


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
