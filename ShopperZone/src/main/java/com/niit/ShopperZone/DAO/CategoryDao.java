package com.niit.ShopperZone.DAO;

import java.util.List;

import com.niit.ShopperZone.model.Category;

public interface CategoryDao 
{
	public List<Category> getAllCategory();
	public boolean updateCategory(Category category);
    public boolean deleteCategoryById(int id);
	public Category getCategoryById(int id);
	public boolean addCategory(Category category);
}
