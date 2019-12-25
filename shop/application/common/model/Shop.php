<?php

namespace app\common\model;
use think\Model;

class Shop extends Model
{
	protected $pk='id';//默认主键
	protected $table='zh_buy_shop';//指定数据表
	
	
	//开启自动完成设置
	protected $auto=[];//无论是新增还是更新都要设置的字段
	//仅新增的数据有效
	protected $insert=['create_time','status'=>1,'is_top'=>0,'is_hot'=>0,];
	//仅更新时的设置
	protected $update=['update_time'];
}


?>