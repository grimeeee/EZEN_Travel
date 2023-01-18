package com.ezentravel.DTO;

import java.sql.Date;

// 댓글 DTO
public class Cm_commentDTO {
	private int cno; // 댓글 번호
	private String board_comment; // 댓글
	private int comment_group; // 댓글 그룹 (부모)
	private int comment_step; // 댓글 단계 (쌓이는 순서)
	private int comment_level; // 댓글 계층 (대댓글)
	private Date comment_date; // 댓글 생성 날짜
	private String user_num; // 댓글 유저 번호
	private int bno; // 댓글 상위 게시판 번호
	
	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getBoard_comment() {
		return board_comment;
	}

	public void setBoard_comment(String board_comment) {
		this.board_comment = board_comment;
	}

	public int getComment_group() {
		return comment_group;
	}

	public void setComment_group(int comment_group) {
		this.comment_group = comment_group;
	}

	public int getComment_step() {
		return comment_step;
	}

	public void setComment_step(int comment_step) {
		this.comment_step = comment_step;
	}

	public int getComment_level() {
		return comment_level;
	}

	public void setComment_level(int comment_level) {
		this.comment_level = comment_level;
	}

	public Date getComment_date() {
		return comment_date;
	}

	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}

	public String getUser_num() {
		return user_num;
	}

	public void setUser_num(String user_num) {
		this.user_num = user_num;
	}

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

}