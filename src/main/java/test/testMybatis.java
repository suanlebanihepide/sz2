/*
 * @Author: shenzheng
 * @Date: 2019/12/1 15:48
 */

package test;

import cn.itcast.dao.AccountDao;
import cn.itcast.domain.Account;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.apache.ibatis.io.Resources;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class testMybatis {
    @Test
    public void run1() throws Exception {
//        加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
//        创建sqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        SqlSession session = factory.openSession();
        AccountDao dao = session.getMapper(AccountDao.class);
        List<Account> list = dao.findAll();
        for (Account account : list
        ) {
            System.out.println(account.toString());

        }

//        关闭资源
        session.close();
    }

    @Test
    public void run2() throws Exception {
//        加载配置文件
        InputStream in = Resources.getResourceAsStream("SqlMapConfig.xml");
//        创建sqlSessionFactory对象
        SqlSessionFactory factory = new SqlSessionFactoryBuilder().build(in);
        SqlSession session = factory.openSession();
        AccountDao dao = session.getMapper(AccountDao.class);
        List<Account> list = dao.findAll();

        Account user =new Account();
        user.setId(10);
        user.setMoney(666.0);
        user.setName("张康衡");
        dao.saveAccount(user);
        session.commit();

//        关闭资源
        session.close();
    }
}
