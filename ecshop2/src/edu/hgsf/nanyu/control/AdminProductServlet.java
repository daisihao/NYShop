package edu.hgsf.nanyu.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



import edu.hgsf.nanyu.service.ProductService;
import edu.hgsf.nanyu.service.impl.ProductServiceImpl;
import edu.hgsf.nanyu.view.AddProductVO;
import edu.hgsf.nanyu.view.PageVO;
import edu.hgsf.nanyu.view.ProductVO;


@WebServlet("/AdminProductServlet.do")
@MultipartConfig
public class AdminProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    ProductService ps=null;
   
    public AdminProductServlet() {
        super();
        ps=new ProductServiceImpl();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String method=request.getParameter("method");
		if("search".equals(method)){
			search(request,response);
		}
		
		if("insert".equals(method)){
			insert(request,response);
		}
		if("edit".equals(method)){
			edit(request,response);
		}
		if("edit2".equals(method)){
			edit2(request,response);
		}
		if("remove".equals(method)){
			remove(request,response);
		}
	}

	private void remove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		String strpid=request.getParameter("productID");
		int product_id=Integer.parseInt(strpid);
		ps.remove(product_id);
		
		
		String strCurrent=request.getParameter("pageCurrent");
		if("".equals(strCurrent)||strCurrent==null){
			strCurrent="1";
		}
		int currentPage=Integer.parseInt(strCurrent);
		PageVO<ProductVO> pro = ps.page(currentPage);
		request.setAttribute("pro", pro);
		request.getRequestDispatcher("/admin/product/produce_list1.jsp").forward(request, response);
	}

	private void edit2(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		String strpid=request.getParameter("productID");
		int product_id=Integer.parseInt(strpid);
		ps.edit(product_id);
		
		
		String strCurrent=request.getParameter("pageCurrent");
		if("".equals(strCurrent)||strCurrent==null){
			strCurrent="1";
		}
		int currentPage=Integer.parseInt(strCurrent);
		PageVO<ProductVO> pro = ps.page(currentPage);
		request.setAttribute("pro", pro);
		request.getRequestDispatcher("/admin/product/produce_list3.jsp").forward(request, response);
	}

	private void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		String strCurrent=request.getParameter("pageCurrent");
		if("".equals(strCurrent)||strCurrent==null){
			strCurrent="1";
		}
		int currentPage=Integer.parseInt(strCurrent);
		PageVO<ProductVO> pro = ps.page(currentPage);
		request.setAttribute("pro", pro);
		request.getRequestDispatcher("/admin/product/produce_list3.jsp").forward(request, response);
		
		
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根		
        String document=request.getParameter("imgurl");	
	    String realPath=request.getServletContext().getRealPath("/upload/product/");
        Part part = request.getPart("imgproduct");
        
		String header=part.getHeader("Content-Disposition");
		int position=header.lastIndexOf(".");
		String ext=header.substring(position,header.length()-1);//.jpg
		System.out.println(ext);
		String imgname=document;
    	//String realPath=request.getServletContext().getRealPath(path);
    	
		part.write(realPath+"\\"+imgname+ext);
		
		//解压文件
		Zipfile zf= new Zipfile();
		zf.unZip(realPath+"\\"+imgname+ext);
		
		System.out.println(imgname+ext);
		String apath="upload/product"+"/"+document;
		System.out.println(apath+"122121212");
		
		/////////
		
		AddProductVO avo=new AddProductVO();
		String catalogid=request.getParameter("productcatalogid");
		String code=request.getParameter("productcode");
		String name=request.getParameter("productname");
		String price=request.getParameter("productprice");
		String store=request.getParameter("productstore");
		String color=request.getParameter("productcolor");
		String productup=request.getParameter("productup");
		String made=request.getParameter("productmade");
		String supplier=request.getParameter("productsupplier");
		String profile=request.getParameter("productprofile");
		String title=request.getParameter("producttitle");
		
		System.out.println(catalogid);
		avo.setCatalogID(Integer.parseInt(catalogid));
		avo.setCode(code);
		avo.setName(name);
		avo.setPrice(Float.parseFloat(price));
		avo.setImg(apath);
		avo.setStore(Integer.parseInt(store));
		avo.setColor(color);
		avo.setProductUp(productup);
		avo.setMade(made);
		avo.setSupplier(supplier);
		avo.setProfile(profile);
		avo.setTitle(title);
		
		int i=ps.create(avo);
		
		
		
		
		//request.setAttribute("path", imgname+ext);
		if(i==1){
		   request.getRequestDispatcher("/admin/product/success.jsp").forward(request, response);
		}else{
			request.getRequestDispatcher("/admin/product/error.jsp").forward(request, response);
		}
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 自动生成的方法存根
		String strCurrent=request.getParameter("pageCurrent");
		if("".equals(strCurrent)||strCurrent==null){
			strCurrent="1";
		}
		int currentPage=Integer.parseInt(strCurrent);
		PageVO<ProductVO> pro = ps.page(currentPage);
		request.setAttribute("pro", pro);
		request.getRequestDispatcher("/admin/product/produce_list1.jsp").forward(request, response);
	}
	
}
