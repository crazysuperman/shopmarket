package com.csm.order.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.Order;
import com.csm.order.mapper.OrderMapper;
import com.csm.order.service.IOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional()
public class OrderService implements IOrderService {

    @Autowired
    private OrderMapper mapper;

    public void save(Order order) throws Exception {
        mapper.insert(order);

    }

    public void remove(int id) throws Exception {

        mapper.delete(id);
    }

    public void modify(Order order) throws Exception {
        mapper.update(order);
    }


    @Transactional(readOnly = true)
    public JSONObject findAll(JSONObject jsonObject) throws Exception {

        List<Order> list = mapper.selectAll(jsonObject);

        jsonObject.put("rows", list);
        jsonObject.put("total",mapper.selectByCount(jsonObject));
        return jsonObject;
    }

    public Order findById(Integer id) throws Exception {
        Order order = mapper.selectById(id);
        return order;
    }

    public int findByCount(JSONObject jsonObject) throws Exception {

        return mapper.selectByCount(jsonObject);
    }
}
