package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;
import org.fkit.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainCotroller {
	@Autowired
	@Qualifier("mainService")
    private MainService mainService;
    @RequestMapping(value="/index")
    public String  display(HttpSession session,Model model ){
    	//导航栏中的项目
    	List<Sort> sort =mainService.sort();
    	session.setAttribute("sort", sort);
    	//导航栏下的项目
    	List<Type> type1=mainService.type1();
    	 session.setAttribute("type1", type1);
        List<Type> type2=mainService.type2();
    	 session.setAttribute("type2", type2);
    	List<Type>type3=mainService.type3();
    	 session.setAttribute("type3", type3);
    	List<Type> type5=mainService.type5();
    	 session.setAttribute("type5", type5);
    	List<Type> type6=mainService.type6();
    	 session.setAttribute("type6", type6);
    	 //查看最近五条新闻
    	List<Information> information1=mainService.Information1();
 	     session.setAttribute("information1", information1);
    	List<Information> information2=mainService.Information2();
    	 session.setAttribute("information2", information2);  
    	//查询成果与特色的最近五条信息(首页五张图片)
      	List<Information> information3=mainService.Information3();
     	 session.setAttribute("information3", information3);
     	//查询下载中心的五个文件
     	List<Information> information4=mainService.Information4();
     	 session.setAttribute("information4", information4);  
     	   
    	return "index";  	   
    }
}
