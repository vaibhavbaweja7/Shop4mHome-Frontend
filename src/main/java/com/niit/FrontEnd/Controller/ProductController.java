package com.niit.FrontEnd.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.backend.dao.ProDao;
import com.niit.backend.model.Category;
import com.niit.backend.model.Product;

@Controller
public class ProductController {
	@Autowired
	Product product;
	@Autowired
	ProDao prodao;
	
	@RequestMapping(value="adminAddProduct",method=RequestMethod.POST)
	 public String addProduct(@ModelAttribute("product")Product product)
	 {
       
		if(product.getProductId()==null)
	 		
	 	{
			

	 		prodao.AddProduct(product);
	 	}
	 	else
	 	{
	 		prodao.UpdateProduct(product);
	 	}
	 	
	 	return "redirect:/Product";
	 }
	@RequestMapping(value="deleteProduct/{productId}",method = RequestMethod.GET)
	 public String deleteProduct(@PathVariable("productId")String productId)
	 {
		
		prodao.DeleteProduct(productId);
		return "redirect:/Product";
	 }
	 }	

