<?php 
namespace app\admin\controller;

use app\admin\common\controller\Base;
use app\admin\common\model\Article as ArtModel;
use app\admin\common\model\Cate;
use app\admin\common\model\Comments as Com;
use think\facade\Request;
use think\facade\Session;

class Comments extends Base
{
	
	


	public function commentslist()
	{
		//1. 检测是否登录
    	$this->isLogin();

    	//2.获取当前用户id 和用户级别
    	$userId = Session::get('admin_id');
    	$isAdmin = Session::get('admin_level');

    	//3.获取当前用户下单的商品
//  	halt($isAdmin);
		$commentsList = Com::where('user_id', $userId)->paginate(5);
    	//4.如果是超级管理员就获取全部商品 
    	if ($isAdmin == 1) {
    		$commentsList = Com::paginate(5);
    	}


		//3.设置必要的模板变量
		$this->view->assign('title', '商品管理');
		$this->view->assign('empty','<span style="red">没有任何评论</span>');
		$this->view->assign('commentsList', $commentsList);

		//4.渲染出分类列表
		return $this->view->fetch('commentslist');
	}


	
	
     //执行文章删除操作
     public function doDelete()
     {
     	//1. 获取要删除的商品id
     	$artId = Request::param('id');

     	//2.执行删除操作并判断是否成功
     	if(Com::destroy($artId)){
     		$this->success('删除成功');
     	} 

     	//3.如果删除失败
     	$this->error('删除失败');
     }

	
}









