package edu.hgsf.nanyu.service;

import java.util.List;

import edu.hgsf.nanyu.entity.Product_Comment_View;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.Product_Comment_SearchVO;
import edu.hgsf.nanyu.view.Product_commentVO;

public interface Product_CommentService {
       public void insertProductComment(Product_commentVO vo);
       public Product_commentVO selectProductComment(int comment_id);
      // public List<Product_commentVO> findAll();
       
       PageVO<Product_Comment_SearchVO> page(int currentPage,int product_id); 
       
      // public List<Product_Comment_SearchVO> finaAll(int product_id);
}
