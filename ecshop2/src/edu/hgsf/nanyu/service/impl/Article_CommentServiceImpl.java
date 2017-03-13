package edu.hgsf.nanyu.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import edu.hgsf.nanyu.dao.ArticleDAO;
import edu.hgsf.nanyu.dao.Article_CommentDAO;
import edu.hgsf.nanyu.dao.impl.Article_CommentDAOImpl;
import edu.hgsf.nanyu.entity.Article_Comment;
import edu.hgsf.nanyu.service.Article_CommentService;
import edu.hgsf.nanyu.view.ArticleVO;
import edu.hgsf.nanyu.view.Article_CommentVO;
import edu.hgsf.nanyu.view.PageVO;

public class Article_CommentServiceImpl implements Article_CommentService {
    Article_CommentDAO acdao=null;
    PageVO pagevo=new PageVO();
	public Article_CommentServiceImpl() {
		super();
		acdao=new Article_CommentDAOImpl();
	}


	@Override
	public void insertComment(Article_CommentVO vo) {
		// TODO Auto-generated method stub
        String article_comment_content = vo.getArticle_comment_content();
        int ID=0;
		if(vo.getID()!=null){
			ID=Integer.parseInt(vo.getID());
		}
		
		int customer_id=0;
		if(vo.getCustomer_id()!=null){
			customer_id=Integer.parseInt(vo.getCustomer_id());
		}
		acdao.insertArticleByComment(ID, customer_id, article_comment_content);
        
	}


	@Override
	public PageVO<Article_CommentVO> searchCommentPage(int current,Article_CommentVO vo) {
		// TODO Auto-generated method stub
		PageVO<Article_CommentVO> pvo=new PageVO<Article_CommentVO>();
		Article_CommentVO acvo=null;
		int ID=0;
		if(vo.getID()!=null){
			ID=Integer.parseInt(vo.getID());
			System.out.println(ID);
		}
		
		/*int customer_id=0;
		if(vo.getCustomer_id()!=null){
			customer_id = Integer.parseInt(vo.getCustomer_id());
		}*/
		
		int count=acdao.total(ID);
		
		pvo.setTotal(count);
		pvo.setPageSize(pagevo.getPageSize());
		pvo.setCurrentPages(current);
		
		int totalPages=(count%pagevo.getPageSize()==0)?(count/pagevo.getPageSize()):(count/pagevo.getPageSize()+1);
		pvo.setTotalPages(totalPages);
		
		
		List<Article_Comment> list=acdao.searchComment(ID,current, pagevo.getPageSize());
		//转换为VO集合
		List<Article_CommentVO> alist=new ArrayList<Article_CommentVO>();
		for(Article_Comment ac:list){
			acvo=new Article_CommentVO();
			
			try {
				BeanUtils.copyProperties(acvo, ac);
				alist.add(acvo);
			} catch (IllegalAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			/*String article_comment_content = ac.getArticle_comment_content();
			acvo.setArticle_comment_content(article_comment_content);
			int customer_id2 = ac.getCustomer_id();
			acvo.setCustomer_id(customer_id2+"");
			Date article_comment_time = ac.getArticle_comment_time();
			acvo.setArticle_comment_time(article_comment_time+"");
			list2.add(acvo);*/
		}
		pvo.setRows(alist);
		return pvo; 
	}

}
