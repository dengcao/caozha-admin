<?php
/**
 * 源码名：caozha-admin
 * Copyright © 邓草 （官网：http://caozha.com）
 * 基于木兰宽松许可证 2.0（Mulan PSL v2）免费开源，您可以自由复制、修改、分发或用于商业用途，但需保留作者版权等声明。详见开源协议：http://license.coscl.org.cn/MulanPSL2
 * caozha-admin (Software Name) is licensed under Mulan PSL v2. Please refer to: http://license.coscl.org.cn/MulanPSL2
 * Github：https://github.com/cao-zha/caozha-admin   or   Gitee：https://gitee.com/caozha/caozha-admin
 */

namespace app\index\model;
use think\Model;
class Member extends Model
{
   // protected $connection="mysql";
    public function groups() {
        return $this->hasOne(MemberGroup::class,"groupid","groupid")->bind([
            'group_name'	=> 'group_name',
        ]);
    }

}