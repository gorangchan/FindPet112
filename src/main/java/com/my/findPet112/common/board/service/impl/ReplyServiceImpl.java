package com.my.findPet112.common.board.service.impl;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.findPet112.common.board.service.ReplyDao;
import com.my.findPet112.common.board.service.ReplyService;
import com.my.findPet112.common.board.service.ReplyVO;

@Service
public class ReplyServiceImpl implements ReplyService {
	@Autowired
	private ReplyDao rbd;
	public Collection<ReplyVO> list(int seq) {
		return rbd.list(seq);
	}
	public void insert(ReplyVO rb) {
		rbd.insert(rb);		
	}
	public void update(ReplyVO rb) {
		rbd.update(rb);
	}
	public void delete(int r_seq) {
		rbd.delete(r_seq);
	}
}