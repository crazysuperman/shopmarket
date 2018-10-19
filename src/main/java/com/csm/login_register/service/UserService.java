package com.csm.login_register.service;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.UserDO;

import java.util.List;

public interface UserService {
    //    用户登录/验证用户名是否存在
    public UserDO getUserByUsername(UserDO user) throws Exception;

    //    买家注册
    public void saveUserBuyer(UserDO user) throws Exception;

    //    卖家注册
    public void  saveUserSeller(UserDO user) throws Exception;

    //    验证邮箱是否被使用
    public UserDO getUserByEmail(UserDO user) throws Exception;

    //    验证手机号是否被使用
    public UserDO getUserByPhone(UserDO user) throws Exception;

    //    查询所有非管理员用户
    public JSONObject getUsers(JSONObject jsonObject) throws  Exception;

    //    删除用户
    public  void removeUser(UserDO userDO) throws Exception;

    //    添加用户
    public void saveUser(UserDO userDO)throws Exception;

    //    修改用户
    public  void updateUser(UserDO userDO)throws  Exception;

    //    通过uid查询用户
    public UserDO getUserByUid(UserDO user) throws Exception;



}
