package com.niit.FrontEnd.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.backend.dao.CatDao;
import com.niit.backend.dao.ProDao;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;

@Controller
public class HomeController {

	@Autowired
	private Category category;
	@Autowired
	private CatDao catDao;
	@Autowired
	private Product product;
	
	@Autowired 
	ProDao prodao;
	@RequestMapping("/")
	public String homePage()
	{
		return "index";
	}
	 
	 @RequestMapping("/form")
	  public String formPage() 
	  {
		  return "form";
		  
	  }
	 @RequestMapping("/Admin")
	  public String adminpage()
	  {
	  return "Admin";
	  } 
	 
	 
	 @RequestMapping("/Category")
	  public  String categoryPage(Model model) 
	  {  
		 
	  List<Category> list=catDao.retrieveCategory(); 
		 
		 model.addAttribute("listCategory",list); model.addAttribute("category",category);
		
		  return "Category";
		  
	  }
	 
	 @RequestMapping("/Product")
	 public String productPage(Model model)
	 {
		 List<Product> list=prodao.retrieveProduct(); 
		 
		 model.addAttribute("listProduct",list);
		 model.addAttribute("product",product);
         
	 return "Product";
	 }
	 
@RequestMapping("/Login")
public String loginPage()
{
	return "Login";
}
@RequestMapping("/Signup")
public String signupPage()
{
	return "Signup";
}	
}

