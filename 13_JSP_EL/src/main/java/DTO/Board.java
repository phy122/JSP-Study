package DTO;

import java.time.LocalDateTime;
import java.util.Date;

public class Board {
	private String title;
	private String writer;
	private String content;
	private int no;
	private Date regDate;
	
	public Board() {
		
	}

	

	public Board( String title, String writer, String content) {
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.regDate = new Date();
	}



	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Date getRegDate() {
		return regDate;
	}



	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}



	@Override
	public String toString() {
		return "Board [title=" + title + ", writer=" + writer + ", content=" + content + ", no=" + no + "]";
	}

	
	
	
	
	
	
}
