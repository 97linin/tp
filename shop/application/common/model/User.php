<?php

namespace app\common\model;
use think\Model;

class User extends Model
{
	protected $pk='id';//默认主键
	protected $table='zh_user';//指定数据表
	
	
	//获取器get
	public function getStatusAttr($value)
	{
		$status=['1'=>'启用','0'=>'禁用'];
		return $status[$value];
	}
	
		public function getIsAdminAttr($value)
	{
		$status=['1'=>'管理员','0'=>'注册人员'];
		return $status[$value];
	}
	//修改器set
	//加密密码
	public function setPasswordAttr($value)
	{
		
		return sha1($value);
	}
}


?>