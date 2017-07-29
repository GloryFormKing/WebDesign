package org.fkit.mapper;




import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.fkit.domain.Information;
import org.fkit.domain.Type;
public interface DetialMapper {
	//查询type和文章内容
@Select("select * from type_inf where id=#{fid}")
Type type(@Param("fid")Integer fid);

@Select("select * from  information_inf where id=#{fid}")
Information information(@Param("fid") Integer fid);
}
