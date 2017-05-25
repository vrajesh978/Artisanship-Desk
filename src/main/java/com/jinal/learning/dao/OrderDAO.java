package com.jinal.learning.dao;

import java.util.List;

import com.jinal.learning.model.CartInfo;
import com.jinal.learning.model.OrderDetailInfo;
import com.jinal.learning.model.OrderInfo;
import com.jinal.learning.model.PaginationResult;

public interface OrderDAO {

	public void saveOrder(CartInfo cartInfo);

	public PaginationResult<OrderInfo> listOrderInfo(int page, int maxResult, int maxNavigationPage);

	public OrderInfo getOrderInfo(String orderId);

	public List<OrderDetailInfo> listOrderDetailInfos(String orderId);

}