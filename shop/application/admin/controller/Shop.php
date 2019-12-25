<?php
namespace app\admin\controller;
use app\admin\common\controller\Base;
use app\admin\common\model\User as UserModel;
use app\admin\common\model\Shop as Shop1;
use think\facade\Request;
use think\facade\Session;
class Shop extends Base
{
	
	
	public function shopList()
	{
		$userId = Session::get('admin_id');
    	$isAdmin = Session::get('admin_level');

    	//3.获取当前用户下单的商品
//  	halt($isAdmin);
		$shopList = Shop1::where('user_id', $userId)->paginate(5);
    	//4.如果是超级管理员就获取全部商品 
    	if ($isAdmin == 1) {
    		$shopList = Shop1::paginate(5);
    	}


		//3.设置必要的模板变量
		$this->view->assign('title', '商品订单管理');
		$this->view->assign('empty','<span style="red">没有任何订单</span>');
		$this->view->assign('shopList', $shopList);

		//4.渲染出分类列表
		return $this->view->fetch('shoplist');
	}
	
	
	public function doDelete()
	{
		//1.获取要删除的主键id
		$id=Request::param('id');
		//2.执行删除操作
		if(shop1::where('id',$id)->delete()){
			return $this->success('删除成功','shopList');
		}	
		//3.删除失败
		$this->error('删除失败');
	}
}
?>