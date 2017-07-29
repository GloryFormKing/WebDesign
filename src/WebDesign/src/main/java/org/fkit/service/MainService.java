package org.fkit.service;

import java.util.List;

import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;

public interface MainService {
	//导航栏中的项目
	List<Sort> sort();
	//导航栏下的项目
	List<Type> type1();
	List<Type> type2();
	List<Type> type3();
	List<Type> type5();
	List<Type> type6();
	//最近五条通知和新闻
	List<Information> Information1();
	List<Information> Information2();
	//最近五条特色与成果
	List<Information> Information3();
	//查询下载中心的
	List<Information> Information4();
}
