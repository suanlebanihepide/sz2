/*
 * @Author: shenzheng
 * @Date: 2019/12/1 19:04
 */

package cn.itcast.controller;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
import com.sun.org.apache.xalan.internal.xsltc.trax.XSLTCSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import sun.applet.resources.MsgAppletViewer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/3d/{id}")
    public String show_knowledge(@PathVariable("id")String id,
                                Model model) {
        model.addAttribute("id",id);
        String str = userService.find_element(id).toString();
        model.addAttribute("information",str);
        System.out.println(str);
        return "3d";
    }

    @RequestMapping("/aaa")
    @ResponseBody
    public String  aaa(@RequestParam("information") String information)
    {
        String str=userService.return_result(information);
        System.out.println(information);
        System.out.println(str);
       return str;
    }

    @RequestMapping("/check_username")
    @ResponseBody
    public String  check_username(@RequestParam("information") String information)
    {
        String str =userService.check_username(information);
        System.out.println(str);
        return str;
    }

    @RequestMapping("/return_answer")
    @ResponseBody
    public String  return_answer(@RequestParam("information") String information)
    {
        String str =userService.return_answer(information);
        return str;
    }


    @RequestMapping("/a")
    public String a()
    {
        return "a";
    }

    @RequestMapping("/lab")
    public String lab() {
        return "lab";
    }

    @RequestMapping("/exam")
    public String exam() {
        return "exam";
    }



    @RequestMapping("/ditu")
    public String ditu() {
        return "ditu";
    }


    @RequestMapping("/share_knowledge")
    public String show_knowlege() {
        return "share_knowledge";
    }

    @RequestMapping("/home")
    public String home() {
        return "home";
    }

    @RequestMapping("/share_video")
    public String show_video() {
        return "share_video";
    }

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

    @RequestMapping("/updateUser")
    public String update(@RequestParam("username") String username,
                             @RequestParam("password") String password,
                             @RequestParam("email") String email) {

        //调用service的方法
        User user = new User();
        user.setEmail(email);
        user.setPassword(password);
        user.setUsername(username);
        boolean flag = userService.update(user);
        if(flag)
        {
            return "list2";
        }
        else
        {
            return "error";
        }
    }



}
