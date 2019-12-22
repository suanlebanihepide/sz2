package cn.itcast.service;

import cn.itcast.domain.User;

import java.util.List;

public interface UserService {
    //查询用户信息
    public List<User> findAll();

    //查找分子模型介绍信息
    public  String find_element(String element);

    //查找反应结果信息
    public  String return_result(String element);

    //查询用户名是否存在
    public  String check_username(String username);

    //返回测验答案
    public  String return_answer(String page);

    //查找更新用户信息
    public  boolean update(User user);

    //保存用户信息
    public void addNewUser(User user);
}
