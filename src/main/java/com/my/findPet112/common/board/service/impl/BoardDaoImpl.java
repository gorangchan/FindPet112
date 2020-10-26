package com.my.findPet112.common.board.service.impl;

import java.util.Collection;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.my.findPet112.common.board.service.BoardDao;
import com.my.findPet112.common.board.service.BoardVO;

@Repository
public class BoardDaoImpl implements BoardDao{
	@Autowired
	private SqlSessionTemplate sst;
//	public int getTotal() {
//		return sst.selectOne("boardns.getTotal");
//	}
	public int getTotal(BoardVO board) {
		return sst.selectOne("boardns.getTotal", board);
	}
//	public Collection<Board> list(int startRow, int endRow) {
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("startRow", startRow);
//		map.put("endRow", endRow);
//		return sst.selectList("boardns.list", map);
//	}
	public Collection<BoardVO> list(BoardVO board) {
		return sst.selectList("boardns.list", board);
	}
	public int insert(BoardVO board) {
		return sst.insert("boardns.insert",board);
	}
	public BoardVO select(int num) {
		return sst.selectOne("boardns.select", num);
	}
	public void updateReadCount(int num) {
		sst.update("boardns.updateReadCount",num);		
	}
	public int update(BoardVO board) {
		return sst.update("boardns.update", board);
	}
	public int delete(int num) {
		return sst.update("boardns.delete", num);
	}
	public int maxNum() {
		return sst.selectOne("boardns.maxNum");
	}
	public void updateStep(BoardVO board) {
		sst.update("boardns.updateStep",board);
	}
}


