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

    public void addNewUser(User user) {
        System.out.println("添加新用户成功");
        userdao.addNewUser(user);
    }
}