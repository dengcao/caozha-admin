<?php
namespace app\controller;
use app\model\User as UserModel;
use think\facade\Db;

class DataModel
{
    public function index(){
        $user=UserModel::select();
        //dump($user);
        return $user;
    }

    public function insert(){
//        $user=new UserModel();
        //        $user->username="李白";
        //        $user->password="123456";
        //        $user->email="wewfsa@qq.com";
        //        $user->save();
        //        return "添加完成。";


        //        $user=new UserModel();
        //        $user->allowField(["username","password","email"])->save([
        //            "username"=>"李白",
        //            "password"=>"123456",
        //            "email"=>"wewfsa@qq.com"
        //        ]);
        //        return "添加完成。";

        //        $dataAll=[
        //            [
        //            "username"=>"李白1",
        //            "password"=>"123456",
        //            "email"=>"wewfsa@qq.com"
        //            ],[
        //                "username"=>"李白2",
        //                "password"=>"123456",
        //                "email"=>"wewfsa@qq.com"
        //            ]
        //        ];
        //        $user=new UserModel();
        //        $user->saveAll($dataAll);
        //        return "批量添加完成。";

        //        //第三种插入数据的方法
//        $user=UserModel::create(
//            [
//            "username"=>"李白1",
//            "password"=>"123456",
//            "email"=>"wewfsa@qq.com"
//            ],["username","password","email"],false
//        );
//        echo $user->id;//返回ID
//        return "添加完成。";


    }

    public  function delete(){
//        $user=UserModel::find(23);
//        dump($user->delete());
//        Db::getLastSql();

//        UserModel::destroy(22);
//        echo Db::getLastSql();
        // 支持批量删除多个数据
        //UserModel::destroy([1,2,3]);

        UserModel::where('userid','=',22)->delete();

    }
}