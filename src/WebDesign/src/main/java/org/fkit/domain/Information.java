package org.fkit.domain;

import java.io.Serializable;
import java.util.Date;

public class Information  implements Serializable{

	
	private Integer id;
	private String  title;
	private Date date;
	private String content;
	private String source;
	private String author;
	private Integer type_id;
	private String image1;
	private String doc;//文档格式
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	 
	public Integer getType_id() {
		return type_id;
	}
	public void setType_id(Integer type_id) {
		this.type_id = type_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getDoc() {
		return doc;
	}
	public void setDoc(String doc) {
		this.doc = doc;
		}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}

	@Override
	public String toString() {		
		return "Information[id="+id+",title="+title+",date="+date+","
				+ "image1="+image1+",sourcce="+source+",content="+content+",doc="+doc+",type_id="+type_id+"]";
	}
	}
