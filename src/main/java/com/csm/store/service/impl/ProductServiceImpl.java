package com.csm.store.service.impl;

import com.csm.model.ProductDO;
import com.csm.store.mapper.ProductMapper;
import com.csm.store.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductMapper mapper;

    @Override
    public void deleteProduct(ProductDO productDO) {
        mapper.deleteProduct(productDO);
    }

    @Override
    public void saveProduct(ProductDO productDO) {
        mapper.saveProduct(productDO);
    }

    @Override
    public void updateProduct(ProductDO productDO) {
        mapper.updateProduct(productDO);
    }

    @Override
    public int countProduct(String search,int sid) {
        return mapper.countProduct(search,sid);
    }

    @Override
    public ProductDO getProduct(ProductDO productDO) {
        return mapper.getProduct(productDO);
    }

    @Override
    public List<ProductDO> listProduct(int sid,int offset, int pageCount, String search, String order) {
        return mapper.listProduct(sid,offset,pageCount,search,order);
    }
}
