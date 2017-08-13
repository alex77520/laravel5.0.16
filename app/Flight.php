<?php
namespace App;

use Illuminate\Database\Eloquent\Model;

class Flight extends Model
{
	/**
     * 与模型关联的数据表
     * 在模型上定义一个 table 属性,指定数据表
     *
     * @var string
     */
    protected $table = 'my_flights';
    
    /**
     * 时间戳
     * Eloquent 会认为在数据库表有 created_at 和 updated_at 字段
     * 不希望让 Eloquent 来自动维护这两个字段,在模型内将 $timestamps 属性设置为 false
     * 该模型是否被自动维护时间戳
     *
     * @var bool
     */
    public $timestamps = false;
    
    /**
     * 模型的日期字段保存格式。
     *
     * @var string
     */
    protected $dateFormat = 'U';
}