<?php
namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\User as UserModel;
use think\facade\Request;
use think\facade\Session;
class User extends Base
{
	public function login()
	{
		$this->assign('title','管理员登陆页面');
	   return $this->fetch();
	}
	//验证后台登陆
	public function checkLogin()
	{
		$data=Request::param();
		$map[]=['email','=',$data['email']];
		$map[]=['password','=',sha1($data['password'])];
		
		$res=UserModel::where($map)->find();
		if($res){
			Session::set('admin_id',$res['id']);
			Session::set('admin_name',$res['name']);
			Session::set('admin_level',$res['is_admin']);
			$this->success('登录成功','admin/user/userList');
		}
		$this->error('登陆失败,请检查密码或账号');
	}
	public function logout()
	{
		//1.清除Session
		Session::clear();
		Session::delete('admin_id');
		Session::delete('admin_name');
		Session::delete('user_id');
		Session::delete('user_name');
		//2.退出登陆并跳转到登陆页面
		$this->success('退出成功','admin/user/login');
	}
	//用户列表
	public function userList()
	{
		//1.获取到当前用户的id和级别is_admin
		$data['admin_id']=Session::get('admin_id');
		$data['admin_level']=Session::get('admin_level');
		//2.获取到当前用户信息
		$userList=UserModel::where('id',$data['admin_id'])->select();
		//3.如果是超级管理员，获取到全部信息
		if($data['admin_level']==1){
			$userList=UserModel::select();
		}
		//4.模板赋值
		$this->view->assign('title','用户管理');
		$this->view->assign('empty','没有任何数据');
		$this->view->assign('userList',$userList);
		
		
		//5.渲染用户列表的模板
		return $this->fetch('userList');
	}
	//渲染编辑用户的界面
	public function userEdit()
	{
		//1.获取要更新的用户主键
		$userId=Request::param('id');
		//2.根据主键进行查询
		$userInfo=UserModel::where('id',$userId)->find();
		//3.设置编辑界面的模板变量
		$this->assign('title','用户编辑页面');
		$this->view->assign('userInfo',$userInfo);
		//4渲染b编辑界面模板
		return $this->fetch('useredit');
	}
	//执行用户信息的保存
	public function doEdit()
	{
		//1获取到用户提交到的信息
		$data=Request::param();
		//2.取出主键
		$id=$data['id'];
		//3.将用户密码加密后再保存加密
		$data['password']=sha1($data['password']);
		//4.删除主键id
		unset($data['id']);
		//5.执行更新操作
		if(UserModel::where('id',$id)->data($data)->update()){
			return $this->success('更新成功','userList');
		}
		//6.更新失败
		$this->error('没有更新或更新失败');
	}
	//执行用户删除操作
	public function doDelete()
	{
		//1.获取要删除的主键id
		$id=Request::param('id');
		//2.执行删除操作
		if(UserModel::where('id',$id)->delete()){
			return $this->success('删除成功','userList');
		}	
		//3.删除失败
		$this->error('删除失败');
	}
}
?>