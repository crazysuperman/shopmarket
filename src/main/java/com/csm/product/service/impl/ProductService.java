package com.csm.product.service.impl;

import com.csm.model.ProductDO;
import com.csm.product.mapper.ProductMapper2;
import com.csm.product.service.IProductService;
import com.csm.product.vo.PageProduct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService implements IProductService {

    @Autowired
    private ProductMapper2 pm;

    /**
     *
     * @param pageProduct
     * @return分页查询工具类对象PageProduct
     */
    @Override
    public PageProduct findPageProduct(PageProduct pageProduct) {
        List<ProductDO> list = pm.selectPageProduct(pageProduct);
        pageProduct.setProducts(list);
        pageProduct.setTotalRecouds(findTotalRecouds(pageProduct));

        return pageProduct;
    }

    /**
     * 查询出总页数
     * @return
     */
    @Override
    public int findTotalRecouds(PageProduct pageProduct) {
        int i = pm.selectTotalRecouds(pageProduct);
        return i;
    }


}
