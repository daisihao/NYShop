package edu.hgsf.nanyu.service;


import edu.hgsf.nanyu.view.AdminVO;
import edu.hgsf.nanyu.view.ArticlePageVO;
import edu.hgsf.nanyu.view.ArticleVO;

public interface ArticleService {
	public ArticleVO searchArticle(ArticleVO vo);
	public void saveComment(ArticleVO vo);
	public ArticlePageVO searchArticles_web();

	public ArticlePageVO searchArticles(ArticleVO avo);
	public ArticlePageVO searchArticles(ArticlePageVO apvo);
	public void insertArticle(ArticleVO avo);
	public void deleteArticle(ArticleVO avo);
	public void updateArticle(ArticleVO avo);
	public ArticleVO showContent(ArticleVO avo);
	public AdminVO findAdminName(AdminVO avo);
}
