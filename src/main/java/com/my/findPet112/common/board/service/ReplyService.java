package com.my.findPet112.common.board.service;
import java.util.Collection;

public interface ReplyService {
	Collection<ReplyVO> list(int seq);
	void insert(ReplyVO rb);
	void update(ReplyVO rb);
	void delete(int r_seq);

}