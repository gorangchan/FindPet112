package com.my.findPet112.common.board.service.impl;
import java.util.Collection;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.findPet112.common.board.service.ReplyDao;
import com.my.findPet112.common.board.service.ReplyVO;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	@Autowired
	private SqlSessionTemplate sst;
	public Collection<ReplyVO> list(int seq) {
		return sst.selectList("rbdns.list", seq);
	}
	public void insert(ReplyVO rb) {
		sst.insert("rbdns.insert", rb);		
	}
	public void update(ReplyVO rb) {
		sst.update("rbdns.update", rb);
	}
	public void delete(int r_seq) {
		sst.update("rbdns.delete", r_seq);
	}
}