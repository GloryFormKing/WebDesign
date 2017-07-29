package org.fkit.service.impl;

import org.fkit.domain.Information;
import org.fkit.domain.Type;
import org.fkit.mapper.DetialMapper;
import org.fkit.mapper.MainMapper;
import org.fkit.service.DetialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("detialService")
public class DetialServiceImpl implements DetialService {
	 @Autowired
     private DetialMapper detialMapper;
	//取出数据
	@Override
	public Information information(Integer fid) {
		// TODO Auto-generated method stub
		return detialMapper.information(fid);
	}

	
	//读取所属type
	@Override
	public Type type(Integer fid) {
		// TODO Auto-generated method stub
		return detialMapper.type(fid);
	}


	
}
