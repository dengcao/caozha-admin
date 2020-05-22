<?php
namespace app\controller;
use app\BaseController;
use app\facade\Test as facadeTest;

class Test extends BaseController
{
    public function index(){
        return "index 实际路径：".$this->app->getAppPath()." 方法名：".$this->request->action();
    }

    public function hello($value=""){
        echo "hello ".$value;
    }

    public function arrarOutput(){
        $data=array("a"=>1,"b"=>2);
        halt("中断输出");
        return json($data);
    }

    //测试自定义门面
    public function test(){
        //return \app\facade\Test::hello("world");
        return facadeTest::hello("world");
    }
}