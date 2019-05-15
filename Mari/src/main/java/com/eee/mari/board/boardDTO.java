package com.eee.mari.board;

import java.sql.Date;

public class boardDTO {
 private String articleNo;
 private String articleName;
 private String writerName;
 private Date writeDate;
 private int viewNum;
public boardDTO(String articleNo, String articleName, String writerName, Date writeDate, int viewNum) {

	this.articleNo = articleNo;
	this.articleName = articleName;
	this.writerName = writerName;
	this.writeDate = writeDate;
	this.viewNum = viewNum;
}
public String getArticleNo() {
	return articleNo;
}
public void setArticleNo(String articleNo) {
	this.articleNo = articleNo;
}
public String getArticleName() {
	return articleName;
}
public void setArticleName(String articleName) {
	this.articleName = articleName;
}
public String getWriterName() {
	return writerName;
}
public void setWriterName(String writerName) {
	this.writerName = writerName;
}
public Date getWriteDate() {
	return writeDate;
}
public void setWriteDate(Date writeDate) {
	this.writeDate = writeDate;
}
public int getViewNum() {
	return viewNum;
}
public void setViewNum(int viewNum) {
	this.viewNum = viewNum;
}
 
 
}
