package com.csm.login_register.controller;

import com.alibaba.fastjson.JSONObject;
import com.csm.login_register.service.UserService;
import com.csm.model.UserDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Autowired
    private UserService ser;

//    到用户登录页面
    @RequestMapping("/tologinuser")
    public String toLoginUser(){
        return "loginUser";
    }

//    用户登录
    @RequestMapping("/loginuser")
    @ResponseBody
    public String loginUser(UserDO userDO, HttpSession session) throws Exception {
        UserDO userByUsername = ser.getUserByUsername(userDO);
        if(userByUsername==null){
            return "fail";
        }else if(!userDO.getPassword().equals(userByUsername.getPassword())){
            return "fail";
        }else if(userByUsername.getIsseller()==0){
            return "fail";
        }else {
            session.setAttribute("user",userByUsername);
            return "ok";
        }
    }

//    到用户注册页面
    @RequestMapping("/toregisteruser")
    public String toRegisterUser(){
        return "registerUser";
    }

//    验证用户名是否存在
    @RequestMapping(value = "/getbuyer",method = RequestMethod.POST)
    @ResponseBody
    public String getUsername(UserDO userDO) throws Exception {
        UserDO userByUsername = ser.getUserByUsername(userDO);
        if (userByUsername==null){
            return "ok";
        }else{
            return "fail";
        }
    }
    //    验证邮箱是否被使用
    @RequestMapping("/getemail")
    @ResponseBody
    public String getEmail(UserDO userDO) throws Exception {
        UserDO userByEmail = ser.getUserByEmail(userDO);
        if (userByEmail==null){
            return "ok";
        }else{
            return "fail";
        }
    }
    //    验证手机号是否被使用
    @RequestMapping("/getphone")
    @ResponseBody
    public String getPhone(UserDO userDO) throws Exception {
        UserDO userByPhone = ser.getUserByPhone(userDO);
        if (userByPhone==null){
            return "ok";
        }else{
            return "fail";
        }
    }
    //   买家注册
    @RequestMapping("/registeruser")
    public String registerUser(UserDO userDO) throws Exception {
        ser.saveUserBuyer(userDO);
        return "loginUser";
    }

//    到前端首页
    @RequestMapping("/toindex")
    public String toIndex(){
        return "index";
    }

    //    到管理员登录页面
    @RequestMapping("/tologinadmin")
    public String toLoginAdmin(){
        return "loginAdmin";
    }

    //    管理员登录
    @RequestMapping("/loginadmin")
    @ResponseBody
    public String loginAdmin(UserDO userDO, HttpSession session) throws Exception {
        UserDO userByUsername = ser.getUserByUsername(userDO);
        if(userByUsername==null){
            return "fail";
        }else if(!userDO.getPassword().equals(userByUsername.getPassword())){
            return "fail";
        }else if(userByUsername.getIsseller()==1){
            return "fail";
        }else {
            session.setAttribute("user",userByUsername);
            return "ok";
        }
    }
    //    到后台管理页面
    @RequestMapping("/towebmaster")
    public String toWebmaster(){
        return "webmaster";
    }

    //到用户管理页面
    @RequestMapping(value = "tousertable")
    public  String tousertable(){
        return "userTable";
    }

    //查询所有非管理员用户
    @RequestMapping("/users")
    @ResponseBody
    public Object getUsers(@RequestBody JSONObject jsonObject) throws Exception {
        JSONObject jsonObject1 = ser.getUsers(jsonObject);
        return  jsonObject;
    }

//    删除用户
    @RequestMapping("/deleteuser")
    public String removeUser(UserDO userDO) throws Exception {
        ser.removeUser(userDO);
        return "userTable";
    }

    //通过uid查询用户
    @RequestMapping("/getuser")
    @ResponseBody
    public UserDO getUserByUid(UserDO userDO) throws Exception {
        UserDO userByUid = ser.getUserByUid(userDO);
        return userByUid;
    }

//    修改用户
    @RequestMapping("/updateuser")
    public String updetUser(UserDO userDO) throws Exception {
        ser.updateUser(userDO);
        return "userTable";
    }

//    添加用户
    @RequestMapping("/saveuser")
    public String saveUser(UserDO userDO) throws Exception {
        System.out.println(userDO);
        ser.saveUser(userDO);
        return "userTable";
    }




}
