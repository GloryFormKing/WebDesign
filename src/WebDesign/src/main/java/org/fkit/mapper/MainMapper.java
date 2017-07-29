package org.fkit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;

public interface MainMapper {
//遍历导航栏中的项目(首页除外)
@Select("select * from sort_inf ")
List<Sort> sort();
	//遍历导航栏下个项目
@Select("select * from type_inf where sort_id=1")
   List<Type> type1();
@Select("select * from type_inf where sort_id=2")
List<Type> type2();
@Select("select * from type_inf where sort_id=3")
List<Type> type3();
@Select("select * from type_inf where sort_id=5")
List<Type> type5();
@Select("select * from type_inf where sort_id=6")
List<Type> type6();
//查询最近五条新闻
@Select("select * from information_inf where type_id=8 order by id desc limit 0,5")
List<Information> information1();
//查询最近五条通知
@Select("select * from information_inf where type_id=9 order by id desc limit 0,5")
List<Information> information2();
//查询最近五条特色与成果
@Select("select * from information_inf where type_id=10 order by id desc limit 0,5")
List<Information> information3();
//查询下载中心的五个文件
@Select("select * from information_inf where type_id=23 order by id desc limit 0,5")
List<Information> information4();

}
