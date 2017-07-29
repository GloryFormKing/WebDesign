package org.fkit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;
import org.fkit.service.SubpageService;
import org.fkit.util.tag.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SupageController {
	@Autowired
	@Qualifier("subpageService")
	private SubpageService subpageService;
	/**
     *处理查询请求
     *@Param pageIndex请求的是第几页
     *@Param  Information  模糊查询参数
     *@Param Model  model
     **/
    @RequestMapping(value="/subpage")
  public ModelAndView  selectManager(Integer pageIndex,Integer sid,Integer tid,
		  HttpSession session,Model model,ModelAndView mv){
   PageModel pageModel =new PageModel();
    if(pageIndex!=null){
           pageModel.setPageIndex(pageIndex);
         }
       //查询管理员信息
     List<Information> information4=subpageService.findInformation(tid, pageModel);
      model.addAttribute("information4", information4);  
      model.addAttribute("pageModel",pageModel);
      Sort sort1=	subpageService.sort(sid);
      session.setAttribute("sort1", sort1);
	  List<Type> type=subpageService.type(sid);
	   session.setAttribute("type",type);
	   
	   mv.addObject("tid",tid);
	   mv.setViewName("subpage");
      return mv;
       }
	
	
}
