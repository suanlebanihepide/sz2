package cn.itcast.dao;

import cn.itcast.domain.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserDao {

    //查询用户信息
    @Select("select * from user")
    public List<User> findAll();

    //查找分子模型介绍信息
    @Select("select information from chemistry where element_name like #{element}")
    public  String find_element(String element);

    //查找反应结果信息
    @Select("select result from result where information like   #{element}  ")
    public  String return_result(String element);

    @Insert("insert into user (username,password,email) values(#{username},#{password},#{email})")
    //保存用户信息
    public void addNewUser(User user);
}
