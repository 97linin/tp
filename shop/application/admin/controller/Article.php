<?php 
namespace app\admin\controller;

use app\admin\common\controller\Base;
use app\admin\common\model\Article as ArtModel;
use app\admin\common\model\Cate;

use think\facade\Request;
use think\facade\Session;

class Article extends Base
{
	//文章管理首页
	public function index()
	{
		//检测是否登录
    	$this->isLogin();
		
		//登录成功后默认跳转到文章列表界面
		return $this->redirect('artlist');
	}

	//文章列表:仅允许查看自己下单的商品,超级管理员可以查看全部商品
	public function artList()
	{
		//1. 检测是否登录
    	$this->isLogin();

    	//2.获取当前用户id 和用户级别
    	$userId = Session::get('admin_id');
    	$isAdmin = Session::get('admin_level');

    	//3.获取当前用户下单的商品
//  	halt($isAdmin);
		$artList = ArtModel::where('user_id', $userId)->paginate(5);
    	//4.如果是超级管理员就获取全部商品 
    	if ($isAdmin == 1) {
    		$artList = ArtModel::paginate(5);
    	}


		//3.设置必要的模板变量
		$this->view->assign('title', '商品管理');
		$this->view->assign('empty','<span style="red">没有任何订单</span>');
		$this->view->assign('artList', $artList);

		//4.渲染出分类列表
		return $this->view->fetch('artlist');
	}


	//渲染编辑文章界面
	public function artEdit()
	{
		//1.获取要编辑的文章主键
		$artId = Request::param('id');

		//2.根据主键查询到需要更新的用户全部信息
		$artInfo = ArtModel::where('id',$artId)->find();

		//3.获取到所有的分类信息
		$cateList = Cate::all();


		//4.设置编辑界面的模板变量
		$this->view->assign('title','编辑商品');
		$this->view->assign('artInfo',$artInfo);
		$this->view->assign('cateList',$cateList);

		//5.渲染编辑界面
		return $this->fetch('artedit');
	}

	//处理文章编辑操作
	public function doEdit()
     {   
        //1.获取表单提交的数据
        $data = Request::param();

        //2.获取上传的标题图片信息
        $file = Request::file('title_img'); //获取file对象

        //3.文件信息验证与上传到服务器指定目录
        $info = $file -> validate([
            'size'=>5000000000,  //文件大小
            'ext'=>'jpeg,jpg,png,gif'  //文件扩展名
        ]) -> move('uploads/');  //移动到public/uploads目录下面

        //4.判断上传文件的信息
        if ($info) {
            $data['title_img'] = $info->getSaveName();
        } else {
            $this->error($file->getError());
        }

        //5.将数据写到文档表中
        if(ArtModel::update($data)){ //条件中$data['id']中
            $this->success('商品更新成功','artList');
        } else {
            $this->error('商品更新失败');
        }
     }

     //执行文章删除操作
     public function doDelete()
     {
     	//1. 获取要删除的商品id
     	$artId = Request::param('id');

     	//2.执行删除操作并判断是否成功
     	if(ArtModel::destroy($artId)){
     		$this->success('删除成功');
     	} 

     	//3.如果删除失败
     	$this->error('删除失败');
     }
 public function insert()
    {
    	//1.登陆才可以发布文章
    	$this->isLogin();
    	//2.设置页面标题
    	$this->view->assign('title','发布商品');
    	//3.获取一下栏目信息
    	$cateList=Cate::all();
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
}









