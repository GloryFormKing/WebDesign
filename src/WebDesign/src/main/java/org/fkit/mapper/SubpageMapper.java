package org.fkit.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;
import org.fkit.provider.SubpaegDynaSqlProvider;

public interface SubpageMapper {
    //根据传的id 的值不同，跳转到subpage,三张表都会涉及
//	@Select("select * from information_inf where type_id=#{tid} ")
//         List<Information> information(@Param("tid")Integer tid);
	@Select("select * from sort_inf where id =#{sid} ")
          Sort sort(@Param("sid")Integer sid); 
	@Select("select * from type_inf where sort_id=#{sid}")
	   List<Type>  type(@Param("sid")Integer sid);
	//动态查询
	@SelectProvider(type=SubpaegDynaSqlProvider.class,method="selectWhitParam")
	List<Information> selectByPage(Map<String,Object> params);
	//根据参数查询信息数
	@SelectProvider(type=SubpaegDynaSqlProvider.class,method="count")
	Integer count (Map <String,Object> params);
}
