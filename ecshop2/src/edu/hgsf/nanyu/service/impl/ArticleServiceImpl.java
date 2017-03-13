package edu.hgsf.nanyu.service.impl;

import java.util.ArrayList;
import java.util.List;






import edu.hgsf.nanyu.dao.ArticleDAO;
import edu.hgsf.nanyu.dao.impl.ArticleDAOImpl;
import edu.hgsf.nanyu.entity.Admin;
import edu.hgsf.nanyu.entity.Article;
import edu.hgsf.nanyu.service.ArticleService;
import edu.hgsf.nanyu.view.AdminVO;
import edu.hgsf.nanyu.view.ArticlePageVO;
import edu.hgsf.nanyu.view.ArticleVO;

public class ArticleServiceImpl implements ArticleService {
    ArticleDAO adao=null;
    
	public ArticleServiceImpl() {
		adao=new ArticleDAOImpl();
	}

	@Override
	public void saveComment(ArticleVO vo) {
		// TODO Auto-generated method stub
		
		String comment = vo.getComment();
		int ID=0;
		if(vo.getID()!=null){
			ID=Integer.parseInt(vo.getID());
		}
		
		adao.saveArticleByComment(ID,comment);
		
	}
    //前台文章搜索
	
	@Override
	public ArticleVO searchArticle(ArticleVO vo) {
		// TODO Auto-generated method stub
		ArticleVO avo=null;
		
		int ID=0;
		if(vo.getID()!=null){
			ID=Integer.parseInt(vo.getID());
		}
		
		Article a = adao.findArticleByTitle(ID);
		
		avo=new ArticleVO();
		avo.setID(ID+"");
		avo.setAuthor(a.getAuthor());
		avo.setContent(a.getContent());
		avo.setDate(a.getDate());
		avo.setTitle(a.getTitle());
		return avo;
	}
    //后台根据文章标题搜索
	@Override
	public ArticlePageVO searchArticles(ArticleVO avo) {
		// TODO Auto-generated method stub
        ArticlePageVO apvo=new ArticlePageVO();
		List<Article> alist=new ArrayList<Article>();
		alist=adao.showArticles(avo);
		for (Article article : alist) {
        ArticleVO avo2=new ArticleVO();
        avo2.setID(article.getID()+"");
        avo2.setAdminID(article.getAdminID()+"");
        avo2.setTitle(article.getTitle());
        avo2.setAuthor(article.getAuthor());
        avo2.setDate(article.getDate());
		avo2.setContent(article.getContent());
        apvo.getData().add(avo2);
		}
		return apvo;
	}

	@Override
	public void insertArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		adao.insertArticle(avo);
	}

	@Override
	public void deleteArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		adao.deleteArticle(avo);
	}

	@Override
	public void updateArticle(ArticleVO avo) {
		// TODO Auto-generated method stub
		adao.updateArticle(avo);
	}
    //后台查询所有文章
	@Override
	public ArticlePageVO searchArticles(ArticlePageVO apvo1) {
		// TODO Auto-generated method stub
		 ArticlePageVO apvo=new ArticlePageVO();
		 apvo.setTotal(adao.articleTotal());
			List<Article> alist=new ArrayList<Article>();
			alist=adao.showArticles(apvo1);
			for (Article article : alist) {
	        ArticleVO avo2=new ArticleVO();
	        avo2.setID(article.getID()+"");
	        avo2.setAdminID(article.getAdminID()+"");
	        avo2.setTitle(article.getTitle());
	        avo2.setAuthor(article.getAuthor());
	        avo2.setDate(article.getDate());
			avo2.setContent(article.getContent());
	        apvo.getData().add(avo2);
			}
			return apvo;
	}
    //后台显示文章内容
	@Override
	public ArticleVO showContent(ArticleVO vo) {
		// TODO Auto-generated method stub
        ArticleVO avo=new ArticleVO();
		Article a = adao.showContent(vo);
		avo.setID(a.getID()+"");
		avo.setAuthor(a.getAuthor());
		avo.setContent(a.getContent());
		avo.setDate(a.getDate());
		avo.setTitle(a.getTitle());
		return avo;
	}
    //根据后台管理员id得到管理员名字
	@Override
	public AdminVO findAdminName(AdminVO avo) {
		// TODO Auto-generated method stub
		AdminVO adminvo=new AdminVO();
		Admin admin=adao.findAdminName(avo);
		adminvo.setUserName(admin.getUserName());
		return adminvo;
	}
	//前台搜索所有文章
	@Override
	public ArticlePageVO searchArticles_web() {
		// TODO Auto-generated method stub
		 ArticlePageVO apvo=new ArticlePageVO();
			List<Article> alist=new ArrayList<Article>();
			alist=adao.showArticles_web();
			for (Article article : alist) {
	        ArticleVO avo2=new ArticleVO();
	        avo2.setID(article.getID()+"");
	        avo2.setAdminID(article.getAdminID()+"");
	        avo2.setTitle(article.getTitle());
	        avo2.setAuthor(article.getAuthor());
	        avo2.setDate(article.getDate());
			avo2.setContent(article.getContent());
	        apvo.getData().add(avo2);
			}
			return apvo;
	}

}
