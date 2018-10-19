package com.csm.store.service;

import com.csm.model.StoreDO;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;

public interface StoreService {

    //按id查询
    public StoreDO getStoreById(StoreDO storeDO);
    //新增商铺
    public void saveStore(StoreDO storeDO);
    //删除商铺
    public void removeStore(StoreDO storeDO);
    //修改商铺信息
    public void updateStore(StoreDO storeDO);
    //商铺数量
    public int countStore(String search);
    //模糊查询
    public List<StoreDO> listStore(int offset, int pageCount, String search, String order);


}
