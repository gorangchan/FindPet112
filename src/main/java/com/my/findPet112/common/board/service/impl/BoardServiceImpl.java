package com.my.findPet112.common.board.service.impl;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.my.findPet112.common.board.service.BoardDao;
import com.my.findPet112.common.board.service.BoardService;
import com.my.findPet112.common.board.service.BoardVO;


@Service
public class BoardServiceImpl implements BoardService {
	@Autowired
	private BoardDao bd;
//	public int getTotal() {
//		return bd.getTotal();
//	}
	public int getTotal(BoardVO board) {
		return bd.getTotal(board);
	}
//	public Collection<BoardVO> list(int startRow, int endRow) {
//		return bd.list(startRow, endRow);
//	}
	public Collection<BoardVO> list(BoardVO board) {
		return bd.list(board);
	}
	public int insert(BoardVO board) {
		return bd.insert(board);
	}
	public void updateReadCount(int num) {
		bd.updateReadCount(num);
		
	}
	public BoardVO select(int num) {
		return bd.select(num);
	}
	public int update(BoardVO board) {
		return bd.update(board);
	}
	public int delete(int num) {
		return bd.delete(num);
	}
	public int maxNum() {
		return bd.maxNum();
	}
	public void updateStep(BoardVO board) {
		bd.updateStep(board);
	}
}

