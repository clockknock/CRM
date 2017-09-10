package test.itheima.crm

import org.itheima.crm.domain.User
import org.itheima.crm.service.UserService
import org.itheima.crm.utils.MD5Util
import org.junit.Test
import org.junit.runner.RunWith
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner

/**
 * Created by 钟未鸣 on 2017/9/8.
 */
@RunWith(SpringJUnit4ClassRunner::class)
@ContextConfiguration("classpath:applicationContext.xml")
class CRMTest{

    @Autowired
    private var userService:UserService? = null

    @Test fun testAdd(){
        val user=User(null,"admin","admin","123",1,null)
        userService!!.save(user)
    }

    @Test fun testMd5(){
        val md5 = MD5Util.deafultMd5("123")
        println(md5)
    }

    @Test fun testLogin(){

        val user = User()
        user.userCode="admin"
        user.userPassword="1234"
        val loginUser = userService?.login(user)
        println(loginUser)
    }

    @Test fun testStringEquals(){
        var s1 = "1a"
        var s2 = "1A"
        println(s1.equals(s2,true))
    }
}