package org.fkit.domain;

import java.io.Serializable;


public class Type   implements Serializable{
private Integer id;
private String name;
private Integer sort_id;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getname() {
	return name;
}
public void setname(String name) {
	this.name = name;
}
public Integer getsort_id() {
	return sort_id;
}
public void setsort_id(Integer sort_id) {
	this.sort_id = sort_id;
}
@Override
public String toString() {
	
	return "Type[id="+id+",name="+name+",sort_id="+sort_id+"]";
	
}

}
