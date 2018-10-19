package com.csm.store.service.impl;

import com.csm.model.StoreDO;
import com.csm.store.mapper.StoreMapper;
import com.csm.store.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StoreServiceImpl implements StoreService {
    @Autowired
    private StoreMapper mapper;
    @Override
    public StoreDO getStoreById(StoreDO storeDO) {
        StoreDO storeById = mapper.getStoreById(storeDO);
        return storeById;
    }

    @Override
    @Transactional(isolation= Isolation.READ_COMMITTED,propagation= Propagation.REQUIRED)
    public void saveStore(StoreDO storeDO) {
        mapper.saveStore(storeDO);
    }

    @Override
    public void removeStore(StoreDO storeDO) {
        mapper.removeStore(storeDO);
    }

    @Override
    @Transactional(isolation=Isolation.READ_COMMITTED,propagation=Propagation.REQUIRED)
    public void updateStore(StoreDO storeDO) {
       mapper.updateStore(storeDO);
    }

    @Override
    public int countStore(String search) {
        return mapper.countStore(search);
    }

    @Override
    public List<StoreDO> listStore(int offset, int pageCount, String search, String order) {
        return mapper.listStore(offset,pageCount,search,order);
    }
}
