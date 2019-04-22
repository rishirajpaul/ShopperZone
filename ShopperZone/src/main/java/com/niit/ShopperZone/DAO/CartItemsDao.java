package com.niit.ShopperZone.DAO;

import java.util.List;

import com.niit.ShopperZone.model.CartItems;

public interface CartItemsDao 
{
	
public boolean addCartItems(CartItems cartItems);
public List<CartItems>getAllCartItems();
public boolean UpdateCartItems(CartItems cartItems);
public List<CartItems>getCartItemsByCartId(int cartId);
public boolean deleteCartItems(int cartItemId);
public List<CartItems>getCartItemsByOrderId(int orderDetailsId);
public CartItems getCartItemsById(int id);
}
