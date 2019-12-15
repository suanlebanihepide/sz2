package cn.itcast.service;

import cn.itcast.domain.User;

import java.util.List;

public interface UserService {
    //查询用户信息
    public List<User> findAll();

    //查找分子模型介绍信息
    public  String find_element(String element);

    //保存用户信息
    public void addNewUser(User user);
}
