package test.itheima.crm

import org.itheima.crm.domain.Linkman
import org.itheima.crm.service.CustomerService
import org.itheima.crm.service.LinkmanService
import org.itheima.crm.service.impl.CustomerServiceImpl
import org.itheima.crm.service.impl.LinkmanServiceImpl
import org.junit.Test
import org.junit.runner.RunWith
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
@RunWith(SpringJUnit4ClassRunner::class)
@ContextConfiguration("classpath:applicationContext.xml")
class TestLinkman{
    @Autowired lateinit var linkmanService: LinkmanService
    @Autowired lateinit var customerService: CustomerService

    @Test
    fun testSave(){
        val findById = customerService.findById(11)
        val linkman = Linkman()
        linkman.customer = findById
        linkman.lkmMobile="133"
        linkman.lkmName="zs"
        linkman.lkmEmail="qq@126.com"
        linkmanService.save(linkman)
    }


}
