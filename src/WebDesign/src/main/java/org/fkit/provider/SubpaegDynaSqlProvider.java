package org.fkit.provider;

import java.util.Map;

import org.apache.ibatis.jdbc.SQL;
import org.fkit.domain.Information;

import static org.fkit.util.common.WEBDESIGN.INFORMATIONTABLE;
public class SubpaegDynaSqlProvider {
	//分页动态查询
		 public String selectWhitParam(Map<String,Object> params){
		          String sql=new SQL(){
		                {
		                    SELECT("*");
		                    FROM(INFORMATIONTABLE);
		                    	   Integer  tid=(Integer)params.get("tid");
		                                WHERE ("type_id=#{tid}");
		                    }
		               }.toString();
		               System.out.println(sql);
		               if(params.get("pageModel")!=null){
		                    sql+=" limit #{pageModel.firstLimitParam}, #{pageModel.pageSize}";
		               }
		               System.out.println(sql);
		               return sql;
		      }
		 //动态查询信息总数
			public String count (Map<String ,Object> params){
			      return new SQL(){
			        {
			          SELECT("count(*)");
			          FROM (INFORMATIONTABLE);
				  Integer  tid=(Integer)params.get("tid");
                  WHERE ("type_id=#{tid}");
			        } 
			               }.toString(); 
			     }
}
