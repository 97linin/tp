<?php
namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\Cate as CateModel;
use think\facade\Request;
use think\facade\Session;
class Cate extends Base
{
	//分类管理的首页
	public function index()
	{
		//检查用户是否登录
		$this->isLogin();
		
		//登录成功后就直接跳转到分类管理界面
		
		return $this->redirect('cateList');
	}
	//分类列表
	public function cateList()
	{
		//1.检查用户是否登录
		$this->isLogin();
		//2.获取到所有分类
		$cateList=CateModel::all();
		//3.设置模板变量
		$this->view->assign('title','分类管理');
		$this->view->assign('empty','<span style="color:red">没有分类</span>');
		$this->view->assign('cateList',$cateList);
		
		return $this->view->fetch('cateList');
	}
	//渲染编辑分类的界面
	public function cateEdit()
	{
		//1.获取到分类的id
		$cateId=Request::param('id');
		//2.根据主键查询要更新的分类信息
		$cateInfo=CateModel::where('id',$cateId)->find();
		//3.设置楼板变量
		$this->view->assign('title','编辑分类');
		$this->view->assign('cateInfo',$cateInfo);
		
		//4.渲染模板
		return $this->view->fetch('cateedit');
	}
	//执行更新操作
	public function doEdit()
	{
		//1获取到用户提交到的信息
		$data=Request::param();
		//2.取出主键
		$id=$data['id'];
		//3.删除主键字段，封装出要更新的字段数组
		unset($data['id']);


		//4.执行更新操作
		if(CateModel::where('id',$id)->data($data)->update()){
			return $this->success('更新成功','cateList');
		}
		//6.更新失败
		$this->error('没有更新或更新失败');
	}
	//执行分类信息删除操作
	public function doDelete()
	{
		//1.获取要删除的主键id
		$id=Request::param('id');
		//2.执行删除操作
		if(CateModel::where('id',$id)->delete()){
			return $this->success('删除成功','cateList');
		}	
		//3.删除失败
		$this->error('删除失败');
	
	}
	//渲染添加分类界面
	public function cateAdd()
	{
		return $this->fetch('cateadd',['title'=>'添加分类']);
	}
	//添加分类
	public function doAdd()
	{
		//1.获取要添加的分类信息
		$data=Request::param();
		//2.执行新增并判断是否成功
		
		if(CateModel::create($data)){
			$this->success('添加成功','catelist');
		}
		//3.失败
		$this->error('添加失败');
		
	}
}
?>