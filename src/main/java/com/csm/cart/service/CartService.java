package com.csm.cart.service;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.CartDO;

import java.util.List;

public interface CartService {

    //通过id来查询购物车中的商品信息
    JSONObject findByUid(JSONObject jsonObject) throws Exception;

    //查询购物车中的商品数量
    int countByUid(JSONObject jsonObject) throws Exception;

    //通过id删除购物车中的商品
    void removeByItem(int[] array) throws Exception;

    //往购物车中添加商品
    void saveCart(CartDO cart) throws  Exception;

    //编辑购物车商品(编辑数量)
    void modifyCart(CartDO cart) throws Exception;

    //通过uid查询购物车信息
    List<CartDO> findByUid2(int uid) throws Exception;

    //通过id查询购物车中的商品
    List<CartDO> findByIds(int[] array) throws Exception;

}
