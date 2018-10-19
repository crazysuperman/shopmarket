package com.csm.order.controller;


import javax.servlet.http.HttpSession;

import com.csm.model.Order;
import com.csm.order.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;

import java.util.Date;
import java.util.UUID;

@Controller

public class OrderController {

	@Autowired
	private IOrderService is;

	/*@RequestMapping(value="/towebmaster")
	public String web() throws Exception{
		return "webmaster";
	}*/
	@RequestMapping(value="/toindex2")
	public String show() throws Exception{
		return "table-data-table";
	}
	@RequestMapping(value = "/index",method = RequestMethod.POST, produces="application/json;charset=utf-8")
	@ResponseBody
	public Object showStuff(@RequestBody JSONObject jsonObject) throws Exception{
		jsonObject = is.findAll(jsonObject);
		
		return jsonObject;
	}
	@RequestMapping(value="/DeleteById")
	public String doRemove(int id) throws Exception{
		  is.remove(id);
		return "table-data-table";
	}
	@RequestMapping(value="/EditViewById")
	@ResponseBody
	public Order showEdit(int id,HttpSession session) throws Exception{
		Order order = is.findById(id);
		return order;
	}
	@RequestMapping(value="/DoEditViewById",method = RequestMethod.POST)
	@ResponseBody
	public String doEditViewById(Order order) throws Exception{
		  
		  is.modify(order);
		return "ok";
	}
	@RequestMapping(value="/dosave1",method = RequestMethod.POST)
	@ResponseBody
	public String doSave1(Order order) throws Exception{
		order.setOrderNumber(UUID.randomUUID().toString().substring(0,8));
		order.setOrderDate(new Date());
		is.save(order);
		return "success";
	}
}
