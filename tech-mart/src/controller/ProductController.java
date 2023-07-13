package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CategoryDAO;
import dao.ProductDAO;
import model.Category;
import model.Product;


public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ProductController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		ProductDAO productDAO = new ProductDAO();
		CategoryDAO categoryDAO = new CategoryDAO();
		
		List<Category> categories = categoryDAO.getAllCategory();
		request.setAttribute("categories", categories);
		
		List<Product> products = new ArrayList<>();
		
		String category = request.getParameter("category");
		
		if(category!=null) {
			for (Product product : productDAO.getAllProduct()) {
				if(category.equals(product.getCategory())){
					products.add(product);
				}
			}
		}else {
			products = productDAO.getAllProduct();
		}
		
		
		request.setAttribute("products", products);
		request.getRequestDispatcher("/views/client/product/product.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
