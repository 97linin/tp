<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------
use think\Db;
// 应用公共文件
function password($pwd){
    return sha1(md5($pwd).md5('test').sha1($pwd));
}
function get_ip(){

    $ip = false;
    if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
        $ip = $_SERVER["HTTP_CLIENT_IP"];
    }
    if (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ips = explode(", ", $_SERVER['HTTP_X_FORWARDED_FOR']);
        if ($ip) {
            array_unshift($ips, $ip);
            $ip = false;
        }
        for ($i = 0; $i < count($ips); $i++) {
            if (!eregi("^(10│172.16│192.168).", $ips[$i])) {
                $ip = $ips[$i];
                break;
            }
        }
    }
    return ($ip ? $ip : $_SERVER['REMOTE_ADDR']);

}
//根据用户主键id，查询用户名称
if(!function_exists('getUserName'))
{
	function getUserName($id)
{
	return Db::table('zh_user')->where('id',$id)->value('name');
}

}

function getArtContent($content)
{
	return mb_substr(strip_tags($content),0,50).'...';
}
if(!function_exists('getCateName'))
{
	function getCateName($cateId)
{
	return Db::table('zh_article_category')->where('id',$cateId)->value('name');
}

}
   error_reporting(E_ERROR | E_WARNING | E_PARSE);