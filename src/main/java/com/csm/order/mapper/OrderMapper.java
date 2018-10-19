package com.csm.order.mapper;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.Order;

import java.util.List;

public interface OrderMapper {

    public void insert(Order order) throws Exception;

    public void delete(int id) throws Exception;

    public void update(Order order) throws Exception;

    public List<Order> selectAll(JSONObject jsonObject) throws Exception;

    public Order selectById(Integer id) throws Exception;

    public int selectByCount(JSONObject jsonObject) throws Exception;
}
