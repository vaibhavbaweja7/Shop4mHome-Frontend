package com.niit.FrontEnd.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.backend.dao.CatDao;
import com.niit.backend.model.Category;

@Controller
public class CategoryController {

	@Autowired
	CatDao catDao;
	
	@RequestMapping(value="adminAddCategory",method=RequestMethod.POST)
	 public String addCategory(@ModelAttribute("category")Category category)
	 { 
		System.out.println("Data is here");
	 	if(category.getCategoryId()==null)
	 		
	 	{
			System.out.println("Data");

	 		catDao.AddCategory(category);
	 	}
	 	else
	 	{
	 		catDao.UpdateCategory(category);
	 	}
	 	
	 	return "redirect:/Category";
	 }

	@RequestMapping(value="deleteCategory/{categoryId}",method = RequestMethod.GET)
	 public String deleteCategory(@PathVariable("categoryId")String categoryId)
	 {
		
		catDao.DeleteCategory(categoryId);
		return "redirect:/Category";
	 }
	@RequestMapping(value="editCategory/{categoryId}",method=RequestMethod.GET)
	public String updateCategory(@PathVariable("categoryId")String categoryId,Model model)
	
	{
	Category cat=catDao.getCategory(categoryId);
	model.addAttribute("category",cat);
	   return "Category";
	}
}
