<?php
namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\Fav as FavModel;
use think\facade\Request;
use think\facade\Session;
class Fav extends Base
{
	//分类管理的首页
	public function index()
	{
		//检查用户是否登录
		$this->isLogin();
		
		//登录成功后就直接跳转到分类管理界面
		
		return $this->redirect('favlist');
	}
	//分类列表
	public function favList()
	{
		//1.检查用户是否登录
		$this->isLogin();
		//2.获取到所有分类
		$favList=FavModel::all();
		//3.设置模板变量
		$this->view->assign('title','购物车');
		$this->view->assign('empty','<span style="color:red;margin:30% 50%;position:absolute">暂时没有喜欢的</span>');
		$this->view->assign('favList',$favList);
		
		return $this->view->fetch('favList');
	}
	public function doDelete()
	{
		//1.获取要删除的主键id
		$id=Request::param('id');
		//2.执行删除操作
		if(FavModel::where('id',$id)->delete()){
			return $this->success('删除成功','FavList');
		}	
		//3.删除失败
		$this->error('删除失败');
	
	}
	public function carAdd()
	{
		//1.获取要添加的分类信息
		$data=Request::param();
		//2.执行新增并判断是否成功
		
		if(FavModel::create($data)){
			$this->success('购物车添加成功','favlist');
		}
		//3.失败
		$this->error('添加失败');
		
	}
	
}
?>