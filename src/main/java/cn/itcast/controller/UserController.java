/*
 * @Author: shenzheng
 * @Date: 2019/12/1 19:04
 */

package cn.itcast.controller;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/show_qicai")
    public String show_qicai() {
        return "show_qicai";
    }
    @RequestMapping("/3d")
    public String show_3d() {
        return "3d";
    }
    @RequestMapping("/class")
    public String class_page() {
        return "class";
    }

    @RequestMapping("/about")
    public String about_me() {
        return "about";
    }

    @RequestMapping("/test")
    public String verify(@RequestParam("username") String username,
                         @RequestParam("password") String password,
                         HttpSession session,
                         HttpServletRequest request) {
        System.out.println("表现层：" + username + " " + password);
        //调用service的方法
        List<User> list = userService.findAll();

        for (User user : list) {
            System.out.println(user.toString());
            if (user.getPassword().equals(password) && user.getUsername().equals(username)) {
                session.setAttribute("USER_SESSION", user);

                return "home";
            }
        }

        request.setAttribute("error", "用户名密码不正确");
        return "login";
    }



    @RequestMapping("/createUser")
    public String addNewUser(@RequestParam("username") String username,
                             @RequestParam("password") String password,
                             @RequestParam("email") String email) {
        System.out.println("表现层：查询所有账户信息");
        //调用service的方法
        List<User> list = userService.findAll();
        for (User user : list) {
            System.out.println(user.toString());
            if (user.getUsername().equals(username))
                return "error";
        }

        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setUsername(username);

        userService.addNewUser(user);
        return "list";
    }


}
