package com.my.findPet112.common.board.service;
import java.util.Collection;


public interface BoardService {
//	int getTotal();
	int getTotal(BoardVO board);
//	Collection<BoardVO> list(int startRow, int endRow);
	Collection<BoardVO> list(BoardVO board);
	int insert(BoardVO board);
	void updateReadCount(int num);
	BoardVO select(int num);
	int update(BoardVO board);
	int delete(int num);
	int maxNum();
	void updateStep(BoardVO board);

}