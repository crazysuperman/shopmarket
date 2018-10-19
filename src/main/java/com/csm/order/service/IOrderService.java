package com.csm.order.service;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.Order;


public interface IOrderService {
	public void save(Order order) throws Exception;

	public void remove(int id) throws Exception;

	public void modify(Order order) throws Exception;

	public JSONObject findAll(JSONObject jsonObject) throws Exception;

	public Order findById(Integer id) throws Exception;

	public int findByCount(JSONObject jsonObject) throws Exception;
}
