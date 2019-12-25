<?php
namespace app\index\controller;
use app\common\controller\Base; 
use app\common\model\ArtCate;
use app\common\model\Article as Article1;
use app\common\model\Comments;
use app\common\model\Shop;
use app\common\model\Fav;
use app\common\validate\Article;
use think\facade\Request;
use think\Db;
class Index extends Base 
{
    public function index()
    {
    	
    	//开启全局查询条件
    $map=[];//将所有的查询条件封装到这个数组中
    //条件1：
    $map[]=['status','=',1];//这里等号不可以省略
    //实现搜索功能
    $keywords = Request::param('keywords');
    if(!empty($keywords)){
    	//条件二
    	$map[]=['title','like','%'. $keywords.'%'];
    	
    }

         //分类信息的显示
         $cateId=Request::param('cate_id');
         //如果存在这个分类id
         if(isset($cateId)){
         	//条件3
         	$map[]=['cate_id','=',$cateId];
         	
         	$res=ArtCate::get($cateId);
         	
         	$artList=Db::table('zh_article')
           	->where($map)
           	->order('create_time','desc')
           	->paginate(16);
         	  $this->view->assign('cateName',$res->name);
         }else{
         	$this->view->assign('cateName','全部商品');
         	$artList=Db::table('zh_article')
           	->where($map)
           	->order('create_time','desc')
           	->paginate(16);
         }   
           $this->view->assign('empty','暂时没有此类商品');
           $this->view->assign('artList',$artList);
           $this->assign('title','用户首页');
           return $this->fetch();
    } 
    //添加文章界面
    public function insert()
    {
    	//1.登陆才可以发布文章
    	$this->isLogin();
    	//2.设置页面标题
    	$this->view->assign('title','发布商品');
    	//3.获取一下栏目信息
    	$cateList=ArtCate::all();
    	if(count($cateList)>0){
    		//将查询到的栏目信息赋值给模板
    		$this->assign('cateList',$cateList);
    	}else{
    		$this->error('请先添加商品栏目','index/index');
    	}
    	//4.发布页面渲染
    	return $this->fetch();
    }
    //保存商品
    public function save()
    {
    	//判断提交类型
    	if(Request::isPost()){
    		//1.获取用户提交的商品信息
    		$data=Request::post();
    		$res=$this->validate($data,'app\common\validate\Article');
    		if(true!==$res){
    			//验证失败
    			echo '<script> 
    				alert("'.$res.'");
    			
    				</script>';
    		}else{
    			//验证成功
    			//获取一下上传的图片信息
    			$file=Request::file('title_img');
    			//文件信息验证成功后，再上传到服务器指定目录,以public为起始目录
    			$info=$file->validate(['size'=>10000000,
    			'ext'=>'jpeg,jpg,png,gif',
    			])->move('uploads/');
    			if($info){
    				$data['title_img']=$info->getSaveName();
    			}else{
    				$file->error($file->getError());
    			}
    			//将数据写到数据表中
    			if(Article1::create($data)){
    				$this->success('商品发布成功','index/index');
    			}else{
    				$this->error('商品保存失败');
    			}
    		}
    		
    	}else{
    		$this->error('请求数据类型错误!');
    	}
    }
    
    public function detail()
    {
    	$artId=Request::param('id');
    	$art=Article1::get(function($query) use ($artId){
    		$query->where('id','=',$artId)->setInc('pv');//setInc自增pv变量(阅读量)
    	});
    if(!is_null($art)){
    	$this->assign('art',$art);
    }
    	//添加评论
    	$this->view->assign('commentList',Comments::all(function($query)use($artId){
    		$query->where('status',1)
    		->where('art_id',$artId)
    		->order('create_time','desc')->paginate(6);
    	}));
    	  $this->assign('title','商品详情页');
           return $this->fetch('');
    }
//ajax收藏
//public function fav()
//{
//
//	if(!Request::isAjax()){
//		return['status'=>-1,'message'=>'请求类型错误'];
//	}
//	//获取从前端获取过来的数据
//	$data=Request::param();
//	
//	//判断用户是否已经登录
//	if(empty($data['session_id'])){
//		return ['status'=>-2,'message'=>'请登录后再添加入购物车'];
//	}
//	//查询条件
//	$map[]=['user_id','=',$data['user_id']];
//	$map[]=['article_id','=',$data['article_id']];
//	
//	$fav=Db::table('zh_user_fav')->where($map)->find();
//	if(is_null($fav)){
//		Db::table('zh_user_fav')->data([
//		'user_id'=>$data['user_id'],
//		'article_id'=>$data['article_id'],
//		])->insert();
//		return ['status'=>1,'message'=>'收藏成功'];
//		
//	}else{
//		Db::table('zh_user_fav')->where($map)->delete();
//		return  ['status'=>0,'message'=>'已取消收藏'];
//	}
//}

//点赞
public function ok()
{
	
	
	if(!Request::isAjax()){
		return['status'=>-1,'message'=>'请求类型错误'];
	}
	//获取从前端获取过来的数据
	$data=Request::param();
	//判断用户是否已经登录
	if(empty($data['session_id'])){
		return ['status'=>-2,'message'=>'请登录后再点赞'];
	}
	//查询条件
	$map[]=['user_id','=',$data['user_id']];
	$map[]=['article_id','=',$data['article_id']];
	
	$ok=Db::table('zh_user_like')->where($map)->find();
	if(is_null($ok)){
		Db::table('zh_user_like')->data([
		'user_id'=>$data['user_id'],
		'article_id'=>$data['article_id'],
		])->insert();
		return ['status'=>1,'message'=>'点赞成功'];
	}else{
		Db::table('zh_user_like')->where($map)->delete();
		return  ['status'=>0,'message'=>'取消点赞'];
	}

}
public function car()
{
	
	$this->view->assign('title','购物车');
	return $this->fetch();
}
public function insertComment()
{
	if(Request::isAjax()){
		//1获取用户评论
		$data=Request::param();
		//2.将用户评论存到表中
		if(Comments::create($data,true)){
			return ['status'=>1,'message'=>'评论发表成功'];
		}
		//3失败
		return ['status'=>0,'message'=>'评论发表失败'];
	}
}

public function insertShop()
{
	if(Request::isAjax()){
		//1获取用户信息
		$data=Request::param();
	
		if(empty($data['session_id'])){
		return ['status'=>-2,'message'=>'请登录后再进行购买'];
	}
		//2.将用户下单信息存到表中
		if(Shop::create($data,true)){
			return ['status'=>1,'message'=>'下单成功'];
		}
		//3失败
		return ['status'=>0,'message'=>'下单失败'];
	}
}

public function insertFav()
{
	if(Request::isAjax()){
		//1获取用户信息
		$data=Request::param();
		if(empty($data['session_id'])){
		return ['status'=>-2,'message'=>'请登录后再进加入购物车'];
	}
		//2.将用户下单信息存到表中
		if(Fav::create($data,true)){
			return ['status'=>1,'message'=>'添加成功'];
		}
		//3失败
		return ['status'=>0,'message'=>'添加失败'];
	}
}

}
