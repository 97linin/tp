<?php
namespace app\index\controller;
//use think\Controller;   //
//测试专用控制器
use app\common\model\User;
use app\common\controller\Base;//导入公共控制器就可不引用use think\Controller; 

class Test extends Base 
{
	//测试用户的验证器;
	public function test1()
	{
		//要验证的数据
//		$data=[
//		  
//		  'name'=>'huangjiehua',
//		  'email'=>'jiehua@qq.com',
//		  'mobile'=>'13541903721',
////		  'password'=>'123456as',
//
//		];
//		
//		$rule='app\common\validate\User';
//		return $this->validate($data,$rule);
dump(User::get(2));
		
		
		
		
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
?>