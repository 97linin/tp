<?php
	
	//zh_user表的验证器
namespace app\common\validate;
use think\Validate;
class Article extends Validate
{


   protected $rule=[
     'title|文章标题'=>'require|length:5,20|chsAlpha',
//   'title_img|标题图片'=>'require',
     'content|文章内容'=>'require',
     'user_id|作者'=>'require',
     'cate_id|栏目名称'=>'require',
   ];
}



