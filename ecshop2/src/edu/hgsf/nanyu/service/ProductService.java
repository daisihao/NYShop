package edu.hgsf.nanyu.service;

import java.util.List;

import edu.hgsf.nanyu.view.AddProductVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.ProductVO;



public interface ProductService {
	int create(AddProductVO apvo);
	void remove(int product_id);
	void remove();
    void edit(int product_id);
    
    ProductVO load(int product_id);
    ProductVO search(String name);
    List<ProductVO> list();
    List<ProductVO> ulist(String product_up);
    PageVO<ProductVO> page(int currentPage);
}
