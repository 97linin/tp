<?php
	
	//zh_user表的验证器
namespace app\common\validate;
use think\Validate;
class ArtCate extends Validate
{


   protected $rule=[
     'name|栏目标题'=>'require|length:5,20|chsAlpha',
     
   ];
}