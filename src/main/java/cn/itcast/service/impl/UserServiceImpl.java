/*
 * @Author: shenzheng
 * @Date: 2019/12/1 19:02
 */

package cn.itcast.service.impl;

import cn.itcast.controller.UserController;
import cn.itcast.dao.UserDao;
import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("UserService")
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userdao;

    public List<User> findAll() {
        System.out.println("业务层查询到信息");
        return userdao.findAll();
    }
    //查找分子模型介绍信息
    public  String find_element(String element){
    return  userdao.find_element(element);
    }
    //查找反应结果信息
    public  String return_result(String element){
        return  userdao.return_result(element);
    }
    //返回测验答案
    public  String return_answer(String page){
        return userdao.return_answer(page);
    }
    // 修改密码
    public  boolean update(User user){

        return userdao.update(user);
    }

    //查询用户名是否存在
    public  String check_username(String username){

        return userdao.check_username(username);
    }


    public void addNewUser(User user) {
        System.out.println("添加新用户成功");
        userdao.addNewUser(user);
    }
}
