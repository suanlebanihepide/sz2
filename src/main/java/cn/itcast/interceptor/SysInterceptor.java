/*
 * @Author: shenzheng
 * @Date: 2019/12/9 22:41
 */

package cn.itcast.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SysInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        HttpSession session = request.getSession();
//        System.out.println(t.toString());
        if(session.getAttribute("USER_SESSION")!=null){
            return true;
        }
        response.sendRedirect("/sz/user/error");
        return false;
    }
}
