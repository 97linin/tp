<?php
	
	//zh_user表的验证器
namespace app\common\validate;
use think\Validate;
class User extends Validate
{
//	protected $rule=[
//	
//	  'name|姓名'=>['require'=>'require','length'=>'5,20','chsAlphaNum'=>'chsAlphaNum',],//仅允许汉字，字母和数字
//	  'email|邮箱'=>['require'=>'require','email'=>'email','unique'=>'user',],//该字段必须在zh_user表中是唯一,
//	  'mobile|手机号'=>['require'=>'require','mobile'=>'mobile','unique'=>'user','number'=>'number',],//该字段必须在zh_user表中是唯一
//	  'password|密码'=>['require'=>'require','length'=>'6,20','alphaNum'=>'alphaNum','confirm'=>'confirm',],//alphaNum仅允许字母和数字
//	  //confirm自动与password_confirm字段自动进行相等验证
//	  	];

   protected $rule=[
     'name|姓名'=>'require|length:5,20|chsAlphaNum',
     'email|邮箱'=>'require|email|unique:zh_user',
     'mobile|手机'=>'require|mobile|unique:zh_user',
     'password|密码'=>'require|length:6,20|alphaNum|confirm',
   ];
}




?>