<?php
namespace app\index\controller;
use app\common\controller\Base;
use think\facade\Request;
use think\facade\Session;
use app\common\model\User as UserModel;
class User extends Base
{
	//注册页面
	public function register()
	{
		$this->assign('title','用户注册');
		return $this->fetch();
	}
	//处理用户提交的注册信息
	public function insert()
	{
		if(Request::isAjax())
		{
			//验证数据
			$data=Request::post();//要验证的数据
			$rule='app\common\validate\User';//自定义的验证规则
			//开始验证
			
			$res=$this->validate($data,$rule);
			
			if(true!==$res){
				return ['status'=>-1,'message'=>$res];
			}else{
				if($user=UserModel::create($data)){//create()往数据表加入数据
					//注册成功后，实现自动登录
					$res=UserModel::get($user->id);
					Session::set('user_id',$res->id);
					Session::set('user_name',$res->name);
				return ['status'=>1,'message'=>'恭喜，注册成功'];
			}else{
				return ['status'=>0,'message'=>'注册失败'];
			}
		}
		}else{
			$this->error("请求参数错误",'register');
		
		}
	}
	//用户登录
	public function login()
	{
		
		$this->assign('title','用户登陆');
		return $this->fetch();
	}
	//用户登陆验证与查询
	public function loginCheck()
	{
		if(Request::isAjax())
		{
			//验证数据
			//要验证的数据
			$data=Request::post();
			//自定义的验证规则
			$rule=[
			    'email|邮箱'=>'require|email',
			    'password|密码'=>'require|alphaNum',
			];
			//开始验证
			
			$res=$this->validate($data,$rule);
			
			if(true!==$res){
				return ['status'=>-1,'message'=>$res];
			}else{
				//执行查询
				$result=UserModel::get(function($query) use ($data){
					$query->where('email', $data['email'])
					      
					      ->where('password',sha1($data['password']));
				});
				if(null == $result){
					return ['status'=>0,'message'=>'邮箱或密码不正确，请检查'];
				    
			}else{
				//将用户的数据写到session
		
				Session::set('user_id', $result->id);
				Session::set('user_name', $result->name);
		
				return ['status'=>1,'message'=>'恭喜，登陆成功'];
			}
				
		}
		}else{
			$this->error("请求参数错误",'login');
		
		}
	}
	public function logout()
	{
		Session::delete('user_id');
		Session::delete('user_name');
		$this->success('退出登录成功','index/index');
	}
}














?>