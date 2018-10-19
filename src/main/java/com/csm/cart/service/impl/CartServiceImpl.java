package com.csm.cart.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.csm.cart.mapper.CartMapper;
import com.csm.cart.service.CartService;
import com.csm.model.CartDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation = Isolation.REPEATABLE_READ,propagation = Propagation.REQUIRED)
public class CartServiceImpl implements CartService {

    @Autowired
    CartMapper mapper;

    @Override
    @Transactional(readOnly = true)
    public JSONObject findByUid(JSONObject jsonObject) throws Exception {
        List<CartDO> cartDOS = mapper.selectByUid(jsonObject);
        jsonObject.put("rows",cartDOS);
        jsonObject.put("total",countByUid(jsonObject));
        return jsonObject;
    }

    @Override
    @Transactional(readOnly = true)
    public int countByUid(JSONObject jsonObject) throws Exception {
        return mapper.countByUid(jsonObject);
    }

    @Override
    public void removeByItem(int[] array) throws Exception {
        mapper.deleteByItem(array);
    }

    @Override
    public void saveCart(CartDO cart) throws Exception {
        mapper.insertCart(cart);
    }

    @Override
    public void modifyCart(CartDO cart) throws Exception {
        mapper.updateCart(cart);
    }

    @Override
    public List<CartDO> findByUid2(int uid) throws Exception {

        return mapper.selectByUid2(uid);
    }

    @Override
    public List<CartDO> findByIds(int[] array) throws Exception {
        return mapper.selectByIds(array);
    }
}
