package com.csm.product.service;

import com.csm.model.ProductDO;
import com.csm.product.vo.PageProduct;
import java.util.List;

public interface IProductService {
    //分页查询
    public PageProduct findPageProduct(PageProduct pageProduct);

    //查询表中的总记录数
    public int findTotalRecouds(PageProduct pageProduct);

}
