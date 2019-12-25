<?php
namespace app\index\controller;
use app\common\controller\Base; 
use app\common\model\ArtCate;
use app\common\model\Article as Article1;
use app\common\model\Comments;
use app\common\model\Shop;
use app\common\model\Fav as Fav1;
use app\common\validate\Article;
use think\facade\Request;
use think\facade\Session;
use think\Db;
class Fav extends Base 
{
	 public function car(){
        if(request()->isPost()){
			$post=input('post.');		
			
			$res=model('Fav')->add($post);
			if($res>0){
	     	$this->success('新增成功');
	        }else{
	     	$this->error('新增失败');
	        }
	    }
	}
    public function favList()
	{
		$userId = Session::get('admin_id');
    	$isAdmin = Session::get('admin_level');

    	//3.获取当前用户下单的商品
//  	halt($isAdmin);
		$favList = Fav1::where('user_id', $userId)->paginate(5);
    	

		//3.设置必要的模板变量
		$this->view->assign('title', '商品订单管理');
		$this->view->assign('empty','<span style="red">没有任何订单</span>');
		$this->view->assign('favList', $favList);

		//4.渲染出分类列表
		return $this->view->fetch('favlist');
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
