package com.my.findPet112.common.board.controller;
import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.my.findPet112.common.board.service.BoardService;
import com.my.findPet112.common.board.service.BoardVO;
import com.my.findPet112.common.board.service.ReplyService;
import com.my.findPet112.common.board.service.ReplyVO;


@Controller
public class ReplyBoardController {
	@Autowired
	private BoardService bs;
	@Autowired
	private ReplyService rbs;
	@RequestMapping("/replyList/seq/{seq}")
	public String replyList(@PathVariable int seq, Model model) {
//		System.out.println("seq = "+seq);
		BoardVO board = bs.select(seq);
		Collection<ReplyVO> rbdList = rbs.list(seq);
//		System.out.println("size = "+rbdList.size());
		model.addAttribute("board", board);
		model.addAttribute("rbdList", rbdList);
		return "replyList";
	}
	@RequestMapping("/rInsert")
	public String rInsert(ReplyVO rb) {
		rbs.insert(rb);
		return "redirect:/replyList/seq/"+rb.getSeq();
	}
	@RequestMapping("/rUpdate")
	public String rUpdate(ReplyVO rb) {
		rbs.update(rb);
		return "redirect:/replyList/seq/"+rb.getSeq();
	}
	@RequestMapping("/rDelete")
	public String rDelete(ReplyVO rb) {
		rbs.delete(rb.getSeq());
		return "redirect:/replyList/seq/"+rb.getSeq();
	}
	
	
	
	
}