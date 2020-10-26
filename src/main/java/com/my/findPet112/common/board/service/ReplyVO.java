package com.my.findPet112.common.board.service;

import java.util.Date;

import lombok.Data;
@Data
public class ReplyVO {
    // 댓글번호 
    private int r_seq;

    // 글번호 
    private int seq;

    // 작성자 
    private String create_userid;

    // 내용 
    private String content;

    // 작성시간 
    private Date create_datetime;

    // 수정시간 
    private Date update_datetime;

    // 삭제여부
    private char delete_flag;
	}
