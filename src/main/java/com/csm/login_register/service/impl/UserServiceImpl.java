package com.csm.login_register.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.csm.login_register.mapper.UserMapper;
import com.csm.login_register.service.UserService;
import com.csm.model.UserDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper mapper;

    //    用户登录/验证用户名是否存在
    @Override
    public UserDO getUserByUsername(UserDO user) throws Exception {
        UserDO userDO = mapper.getUserByUsername(user);
        return userDO;
    }
    //    买家注册
    @Override
    public void saveUserBuyer(UserDO user) throws Exception {
        mapper.saveUserBuyer(user);
    }
    //    卖家注册
    @Override
    public void saveUserSeller(UserDO user) throws Exception {
        mapper.saveUserSeller(user);
    }
    //    验证邮箱是否被使用
    @Override
    public UserDO getUserByEmail(UserDO user) throws Exception {
        UserDO userByEmail = mapper.getUserByEmail(user);
        return userByEmail;
    }
    //    验证手机号是否被使用
    @Override
    public UserDO getUserByPhone(UserDO user) throws Exception {
        UserDO userByPhone = mapper.getUserByPhone(user);
        return userByPhone;
    }

//    用户表查询数据
    @Override
    public JSONObject getUsers(JSONObject jsonObject) throws Exception {
        List<Object> users = mapper.getUsers(jsonObject);
        int count = mapper.getCount(jsonObject);
        jsonObject.put("rows",users);
        jsonObject.put("total",count);
        return jsonObject;
    }

//    删除用户
    @Override
    public void removeUser(UserDO userDO) throws Exception {
        mapper.removeUser(userDO);
    }

//    添加用户
    @Override
    public void saveUser(UserDO userDO) throws Exception {
        mapper.saveUser(userDO);
    }

//    修改用户
    @Override
    public void updateUser(UserDO userDO) throws Exception {
        mapper.updateUser(userDO);
    }

    @Override
    public UserDO getUserByUid(UserDO user) throws Exception {
        UserDO userByUid = mapper.getUserByUid(user);
        return userByUid;
    }

}
