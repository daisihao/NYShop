package edu.hgsf.nanyu.service.impl;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import edu.hgsf.nanyu.dao.ProductDAO;
import edu.hgsf.nanyu.dao.impl.ProductDAOImpl;
import edu.hgsf.nanyu.entity.Product;
import edu.hgsf.nanyu.service.ProductService;
import edu.hgsf.nanyu.view.AddProductVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.ProductVO;

public class ProductServiceImpl implements ProductService {
	ProductDAO pdao=null;
	
	public ProductServiceImpl(){
		pdao=new ProductDAOImpl();
	}

	@Override
	public int create(AddProductVO apvo) {
		// TODO 自动生成的方法存根
		int b=0;
		Product entity=new Product();
		entity.setCatalogID(apvo.getCatalogID());
		entity.setCode(apvo.getCode());
		entity.setName(apvo.getName());
		entity.setPrice(apvo.getPrice());
		entity.setImg(apvo.getImg());
		entity.setStore(apvo.getStore());
		entity.setColor(apvo.getColor());
		entity.setProductUp(apvo.getProductUp());
		entity.setMade(apvo.getMade());
		entity.setSupplier(apvo.getSupplier());
		entity.setProfile(apvo.getProfile());
		entity.setTitle(apvo.getTitle());
	    b=pdao.insert(entity);
		return b;

	}

	@Override
	public void remove(int product_id) {
		// TODO 自动生成的方法存根
       pdao.delete(product_id);
	}

	@Override
	public void remove() {
		// TODO 自动生成的方法存根

	}

	@Override
	public void edit(int product_id) {
		// TODO 自动生成的方法存根
        pdao.update(product_id);
		
	}

	@Override
	public ProductVO load(int product_id) {
		ProductVO pro=new ProductVO();
		Product pro2 = pdao.selectOne(product_id);
		try {
			BeanUtils.copyProperties(pro, pro2);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		return pro;
	}

	@Override
	public List<ProductVO> list() {
		
		List<ProductVO> pplist=new ArrayList<ProductVO>();
		List<Product> list = pdao.selectList();
		ProductVO pvo=null;
		for(Product e:list){
			pvo=new ProductVO();
			try {
				BeanUtils.copyProperties(pvo, e);
				pplist.add(pvo);
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			} catch (InvocationTargetException e1) {
				e1.printStackTrace();
			}
		}
		
		
		return pplist;
	}

	@Override
	public List<ProductVO> ulist(String product_up) {
		// TODO 自动生成的方法存根
		List<ProductVO> pplist=new ArrayList<ProductVO>();
		List<Product> list = pdao.slectcUpList(product_up);
		ProductVO pvo=null;
		for(Product e:list){
			pvo=new ProductVO();
			try {
				BeanUtils.copyProperties(pvo, e);
				pplist.add(pvo);
			} catch (IllegalAccessException | InvocationTargetException e1) {
				e1.printStackTrace();
			}
			
		}
		return pplist;
	}

	@Override
	public PageVO<ProductVO> page(int currentPage) {
		// TODO 自动生成的方法存根
		ProductVO pro=null;
		PageVO<ProductVO> pvo=new PageVO<ProductVO>();

		List<ProductVO> list2 = pvo.getRows();
		//总记录数
		 int total = pdao.total();
		 pvo.setTotal(total); 
		 
		 
		 pvo.setCurrentPages(currentPage);
		//当前页的记录
		List<Product> list = pdao.selectPage(currentPage, pvo.getPageSize());
		for(Product e:list){
			pro=new ProductVO();
			try {
				BeanUtils.copyProperties(pro, e);
				list2.add(pro);
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			} catch (InvocationTargetException e1) {
				e1.printStackTrace();
			}
		}
		pvo.setRows(list2);
		return pvo;
	}

	@Override
	public ProductVO search(String name) {
		// TODO 自动生成的方法存根
		ProductVO pro=new ProductVO();
		Product pro2 = pdao.selectOne(name);
		try {
			BeanUtils.copyProperties(pro, pro2);
		} catch (IllegalAccessException | InvocationTargetException e) {
			e.printStackTrace();
		}
		return pro;
	}
	public static void main(String[] args) {
		ProductServiceImpl ps=new ProductServiceImpl();
		List<ProductVO> ulist = ps.ulist("1");
		System.out.println(ulist.size());
	}
}

