<?php
namespace app\controller;
use app\model\User;
use think\facade\Db;

class DataTest
{
   public function index(){
       //$data=Db::table("tp_user")->select();
       //return json($data);
       //$data=Db::table("tp_user")->where("userid",1)->find();
      // return Db::getLastSql();
       //$data=Db::table("tp_user")->where("userid",100)->findOrFail();
       //$data=Db::table("tp_user")->where("userid",100)->findOrEmpty();
       //return json($data);
       //$data=Db::table("tp_user")->select()->toArray();
       //$data=Db::name("user")->select()->toArray();
       //$data=Db::table("tp_user")->where("userid",1)->value("username");
       //dump($data);
       //$data=Db::table("tp_user")->column("username","userid");
      // return json($data);

//       Db::name("user")->chunk(2,function ($users){
//           foreach ($users as $user){
//               dump($user);
//           }
//           echo 1;
//       });

//       $cursor=Db::name("user")->cursor();
//       foreach ($cursor as $user){
//           dump($user);
//       }

//       $userQuery=Db::name("user");
//       $data1=$userQuery->order("userid","desc")->select();
//       $data2=$userQuery->removeOption("order")->select();
//       return Db::getLastSql();

//       $data=[
//           "username"=>"邓生",
//           "password"=>"698",
//           "email"=>"698@qq.com",
//           "price"=>16
//       ];
//       return Db::name("user")->insert($data);

       //即使错了也强行插入
//       $data=[
//           "username"=>"邓生",
//           "password"=>"698",
//           "email"=>"698@qq.com",
//           "price"=>16,
//           "abc"=>"def"
//       ];
//       return Db::name("user")->strict(false)->insert($data);


         $data=[
           "username"=>"邓生",
           "password"=>"698",
           "email"=>"698@qq.com",
           "price"=>16
       ];
       return Db::name("user")->insertGetId($data);//返回插入的ID


   }

   public function insertAll(){
       $data=[[
           "username"=>"邓生1",
           "password"=>"62198",
           "email"=>"6918@qq.com",
           "price"=>16
       ],[
           "username"=>"邓生2",
           "password"=>"6298",
           "email"=>"6928@qq.com",
           "price"=>16
       ]];
       return Db::name("user")->insertAll($data);//返回插入的ID
   }

   public function update(){
//       $data=[
//           "username"=>"邓生12",
//           "password"=>"698ssss",
//           "email"=>"698ss@qq.com",
//           "price"=>16.6
//       ];
//       return Db::name("user")->where("userid","12")->update($data);

//       $data=[
//           "userid"=>12,
//           "username"=>"邓生12===",
//           "password"=>"698ssss",
//           "email"=>"698ss@qq.com",
//           "price"=>16.6
//       ];
//       return Db::name("user")->update($data);

       //使用exp修改成大写
       //return Db::name("user")->where("userid","12")->exp("email","UPPER(email)")->update();

       Db::


   }

   public function getUser(){
       $user=User::select();
       return json($user);
   }
}