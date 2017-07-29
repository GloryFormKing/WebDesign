package org.fkit.service.impl;

import java.util.List;

import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;
import org.fkit.mapper.MainMapper;
import org.fkit.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.annotation.Isolation;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("mainService")
public class MainServiceImpl implements MainService {

	 @Autowired
     private MainMapper mainMapper;
	//导航栏中的项目
		@Override
		public List<Sort> sort() {
			// TODO Auto-generated method stub
			return mainMapper.sort();
		}
	//导航栏下的项目
	@Override
	public List<Type> type1() {
		// TODO Auto-generated method stub
		return mainMapper.type1();
	}

	@Override
	public List<Type> type2() {
		// TODO Auto-generated method stub
		return mainMapper.type2();
	}

	@Override
	public List<Type> type3() {
		// TODO Auto-generated method stub
		return mainMapper.type3();
	}

	@Override
	public List<Type> type5() {
		// TODO Auto-generated method stub
		return mainMapper.type5();
	}

	@Override
	public List<Type> type6() {
		// TODO Auto-generated method stub
		return mainMapper.type6();
	}
//最近五条信息和新闻
	@Override
	public List<Information> Information1() {
		// TODO Auto-generated method stub
		return mainMapper.information1();
	}
	@Override
	public List<Information> Information2() {
		// TODO Auto-generated method stub
		return mainMapper.information2();
	}
	//查询最后五条特色和成果
	@Override
	public List<Information> Information3() {
		// TODO Auto-generated method stub
		return mainMapper.information3();
	}
	//查询下载中心的五个文件
	@Override
	public List<Information> Information4() {
		// TODO Auto-generated method stub
		return mainMapper.information4();
	}
	


}
