<?php
	//基础控制器
	//必须要继承于think、Controller；
namespace app\common\controller;
use think\Controller;
use think\facade\Session;
use app\common\model\ArtCate;
class Base extends Controller
{
	/*
	 * 初始化方法
	 * 创建常量
	 * 在所有方法前被调用
	 */
	protected function initialize()
	{
		//显示分类导航
		$this->showNav();
		
		
	}
	//检查是否已经登录：放在需要操作的方法的最前面，例如发布文章
	protected function logined()
	{
		if(Session::has('user_id')){
			$this->error('您已经登陆了','index/index');
		}
	}
	
	//检查是否未登录：放在需要登录操作的最前面，例如发布文章
	
		protected function isLogin()
	{
		if(!Session::has('user_id')){
			$this->error('客官,您是不是忘记登陆了','user/login');
		}
	}
	
	//显示分类导航
	protected function showNav()
	{
		//1.查询分类表
		$cateList=ArtCate::all(function($query){
			$query->where('status',1)->order('sort','asc');
		});
		//2.将分类信息表赋值给模板nav.html
		$this->view->assign('cateList',$cateList);
	}
	
	
	
}
	
	
	
	
	
	
	
	
	
	
?>