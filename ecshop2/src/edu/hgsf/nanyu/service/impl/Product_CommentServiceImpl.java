package edu.hgsf.nanyu.service.impl;

import java.util.List;

import edu.hgsf.nanyu.dao.ProductCommentDAO;
import edu.hgsf.nanyu.dao.impl.Product_commentDao;
import edu.hgsf.nanyu.entity.ProductComment;
import edu.hgsf.nanyu.entity.Product_Comment_View;
import edu.hgsf.nanyu.service.Product_CommentService;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.Product_Comment_SearchVO;
import edu.hgsf.nanyu.view.Product_commentVO;

public class Product_CommentServiceImpl implements Product_CommentService {
	ProductCommentDAO pdao = null;

	public Product_CommentServiceImpl() {
		super();
		pdao = new Product_commentDao();
	}
	
    //插入一条记录
	@Override
	public void insertProductComment(Product_commentVO vo) {
		int s = Integer.parseInt(vo.getProduct_id());
		int y = Integer.parseInt(vo.getCustomer_id());
		pdao.insert(s, y, vo.getComment_produte());

	}
    
	//查询一条记录
	@Override
	public Product_commentVO selectProductComment(int comment_id) {
		Product_commentVO pvo = new Product_commentVO();
		ProductComment pco = pdao.selectOne(comment_id);
		pvo.setComment_date(pco.getComment_date() + "");
		pvo.setComment_id(pco.getComment_id() + "");
		pvo.setComment_num(pco.getComment_num() + "");
		pvo.setComment_produte(pco.getComment_produte());
		pvo.setComment_type(pco.getComment_type());
		pvo.setCustomer_id(pco.getCustomer_id() + "");
		pvo.setProduct_id(pco.getProduct_id() + " ");

		return pvo;
	}

	/*
	 * @Override public List<Product_commentVO> findAll() {
	 * List<Product_commentVO> list=new ArrayList<Product_commentVO>();
	 * List<ProductComment> lpist = pdao.selectList(); for(ProductComment
	 * p:lpist){ Product_commentVO pvo=new Product_commentVO(); try {
	 * BeanUtils.copyProperties(pvo, p); } catch (IllegalAccessException e) { //
	 * TODO 自动生成的 catch 块 e.printStackTrace(); } catch
	 * (InvocationTargetException e) { // TODO 自动生成的 catch 块
	 * e.printStackTrace(); } list.add(pvo); } return list; }
	 */

	// 分页查询
	@Override
	public PageVO<Product_Comment_SearchVO> page(int currentPage,int product_id) {
		Product_Comment_SearchVO pro = null;
		PageVO<Product_Comment_SearchVO> pvo = new PageVO<Product_Comment_SearchVO>();

		List<Product_Comment_SearchVO> list2 = pvo.getRows();
		// 总记录数
		int total = pdao.getTotal(product_id);
		pvo.setTotal(total);
		pvo.setCurrentPages(currentPage);
		// 当前页的记录
		List<Product_Comment_View> list = pdao.selectPage(currentPage,
				pvo.getPageSize(),product_id);
		for (Product_Comment_View e : list) {
			pro = new Product_Comment_SearchVO();
			pro.setAccount(e.getAccount());
			pro.setComment_date(e.getComment_date());
			pro.setComment_produte(e.getComment_produte());
			list2.add(pro);
		}
		pvo.setRows(list2);
		return pvo;

	}

	public static void main(String[] args) {
		Product_CommentService ps = new Product_CommentServiceImpl();
		//测分页
		/*PageVO<Product_Comment_SearchVO> page = ps.page(2,23);
		List<Product_Comment_SearchVO> rows = page.getRows();
		for(Product_Comment_SearchVO pcv : rows){
			System.out.println(pcv.getAccount()+"--"+pcv.getComment_produte()+"--"+pcv.getComment_date());
		}*/
		//测查询一条
		/*Product_commentVO vo=new Product_commentVO();
		vo=ps.selectProductComment(163);
		System.out.println(vo.getComment_produte());*/
		Product_commentVO vo=new Product_commentVO();
		vo.setComment_produte("wjdhvjhj11111111");
		vo.setCustomer_id("10002");
		vo.setProduct_id("2");
		ps.insertProductComment(vo); 
	}

}
