package cn.itcast.controller;

import cn.itcast.domain.Account;
import cn.itcast.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/account")
public class AccountController {
    @Autowired
    private AccountService accountService;


    @RequestMapping("/findAll")
    public String finALL(Model model){
        System.out.println("表现层：查询所有账户信息");
        //调用service的方法
        List<Account> list = accountService.findAll();
        model.addAttribute("list", list);

        return "list";
    }

    @RequestMapping("/save")
    public void save(Account account, HttpServletRequest request, HttpServletResponse response) throws IOException {

        accountService.saveAccount(account);
        response.sendRedirect(request.getContextPath()+"/account/findAll");

    }

    @RequestMapping("/a")
    @ResponseBody
    public Map finALaL(){
        System.out.println("表现层：查询所有账户信息");
        //调用service的方法
        List<Account> list = accountService.findAll();
        Map a  = new HashMap();
        a.put("aa",list);
        return a;
    }

}
