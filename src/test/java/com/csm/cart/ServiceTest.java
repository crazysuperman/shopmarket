package com.csm.cart;

import com.alibaba.fastjson.JSONObject;
import com.csm.cart.service.CartService;
import com.csm.model.CartDO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(value = SpringJUnit4ClassRunner.class)
@ContextConfiguration(value = {"classpath:spring/spring-*.xml"})
public class ServiceTest {
    @Autowired
    CartService service;

    /**
     * 查询购物车
     * @throws Exception
     */
    @Test
    public void tsetFindByUid() throws Exception {
        JSONObject obj = new JSONObject();
        obj.put("offset",1);
        obj.put("limit",2);
        JSONObject obj2 = service.findByUid(obj);
        System.out.println(obj2.get("rows"));
        System.out.println(obj2.get("total"));
    }

    /**
     * 增加购物车的商品
     */
    @Test
    public void testSaveCart() throws Exception {
        CartDO pro = new CartDO();
        pro.setPname("空调");
        service.saveCart(pro);
    }


}
