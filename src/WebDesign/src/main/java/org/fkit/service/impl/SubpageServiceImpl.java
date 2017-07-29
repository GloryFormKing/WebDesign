package org.fkit.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;
import org.fkit.mapper.SubpageMapper;
import org.fkit.service.SubpageService;
import org.fkit.util.tag.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
@Transactional(propagation=Propagation.REQUIRED,isolation=Isolation.DEFAULT)
@Service("subpageService")
public class SubpageServiceImpl implements SubpageService {
	 @Autowired
     private SubpageMapper subpageMapper;


	@Override
	public Sort sort(Integer sid) {
		// TODO Auto-generated method stub
		return subpageMapper.sort(sid);
	}

	@Override
	public List<Type> type(Integer sid) {
		// TODO Auto-generated method stub
		return subpageMapper.type(sid);
	}

@Override
public List<Information> findInformation(Integer tid, PageModel pageModel) {
    //当前需要分页的总数据条数
    Map<String,Object> params=new HashMap<>();
    params.put("tid",tid);
    int recordCount =subpageMapper.count(params);
   pageModel.setRecordCount(recordCount);
   if(recordCount>0){
    //开始分页查询数据，查询第几页数据
        params.put("pageModel",pageModel);
    }
     return subpageMapper.selectByPage(params);		
 
}
}
