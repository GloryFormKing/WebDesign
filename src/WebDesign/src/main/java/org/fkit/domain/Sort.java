package org.fkit.domain;

import java.io.Serializable;

public class Sort  implements Serializable{
private Integer id;
private String name;
private String englishname;
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEnglishname() {
	return englishname;
}
public void setEnglishname(String englishname) {
	this.englishname = englishname;
}
 
@Override
public String toString() {
	
	return "Sort[id="+id+",name="+name+",englishname="+englishname+"]";
	
}

}
