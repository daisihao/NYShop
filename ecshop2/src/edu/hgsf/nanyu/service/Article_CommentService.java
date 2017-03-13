package edu.hgsf.nanyu.service;


import java.util.List;

import edu.hgsf.nanyu.view.Article_CommentVO;
import edu.hgsf.nanyu.view.PageVO;

public interface Article_CommentService {
	public void insertComment(Article_CommentVO vo);
	
	public PageVO<Article_CommentVO> searchCommentPage(int current,Article_CommentVO vo);
}
