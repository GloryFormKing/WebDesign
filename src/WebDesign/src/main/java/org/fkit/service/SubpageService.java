package org.fkit.service;

import java.util.List;

import org.fkit.domain.Information;
import org.fkit.domain.Sort;
import org.fkit.domain.Type;
import org.fkit.util.tag.PageModel;
public interface SubpageService {
   //根据传的type_id的值区information和sort对象
	List<Information> findInformation(Integer tid,PageModel pageModel);
Sort  sort(Integer sid);
List<Type> type(Integer sid);
}
