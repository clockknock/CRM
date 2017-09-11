package test.itheima.crm

import org.junit.Test
import org.junit.runner.RunWith
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner
import java.util.Random
import org.itheima.crm.domain.BaseDict
import org.hibernate.criterion.Restrictions
import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.service.DictService
import org.itheima.crm.service.impl.DictServiceImpl
import org.itheima.crm.utils.PropertyPlaceholder
import org.itheima.crm.utils.UploadUtil
import org.springframework.beans.factory.annotation.Autowired


/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
@RunWith(SpringJUnit4ClassRunner::class)
@ContextConfiguration("classpath:applicationContext.xml")
class TestCustomer {
    @Autowired
    private var dictService: DictService? = null
//    fun setDIctService(dictService: DictService){
//        this.dictService = dictService
//    }
//
    @Test fun testPropertyHolder(){
        val property = PropertyPlaceholder.getProperty("file.upload.dir")
        println(property)
    }
    @Test fun getUploadPath(){
        val genUploadPath = UploadUtil.genUploadPath("1.jpg")
        println(genUploadPath)
    }

    private fun rdmDict(code: String): BaseDict {
        val criteria = DetachedCriteria.forClass(BaseDict::class.java)
        criteria.add(Restrictions.eq("dict_type_code", code))

        val list = dictService?.findList(criteria)
        val rdm = Random()
        return list?.get(rdm.nextInt(list.size)) as BaseDict
    }

    private fun rdmName(): String {
        val rdm = Random()
        return names[rdm.nextInt(names.size)]
    }

    private fun rdmPhone(): String {
        val strs = arrayOf("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
        val rdm = Random()
        val buffer = StringBuffer()
        for (i in 0..7) {
            buffer.append(strs[rdm.nextInt(strs.size)])
        }
        return buffer.toString()
    }

    private fun rdmMobile(): String {
        val strs = arrayOf("0", "1", "2", "3", "4", "5", "6", "7", "8", "9")
        val rdm = Random()
        val buffer = StringBuffer("13")
        for (i in 0..8) {
            buffer.append(strs[rdm.nextInt(strs.size)])
        }
        return buffer.toString()
    }

    private val names = arrayOf("华为技术有限公司", "中兴通讯股份有限公司", "海信集团有限公司", "UT斯达康通讯有限公司", "海尔集团公司", "神州数码(中国)有限公司", "浙江浙大网新科技股份有限公司", "熊猫电子集团有限公司", "浪潮集团有限公司", "东软集团有限公司", "北京北大方正集团", "微软(中国)有限公司", "朝华科技(集团)股份有限公司", "中国计算机软件与技术服务总公司", "清华同方股份有限公司", "上海贝尔阿尔卡特股份有限公司", "山东中创软件工程股份有限公司", "国际商业机器(中国)有限公司(IBM)", "大唐电信科技股份有限公司(北京)", "摩托罗拉(中国)电子有限公司", "上海宝信软件股份有限公司", "托普集团科技发展有限责任公司", "中国民航信息网络股份有限公司", "北京用友软件股份有限公司", "中国长城计算机集团公司", "北京四方继保自动化有限公司", "烟台东方电子信息产业集团有限公司", "北京甲骨文软件系统有限公司", "南京联创科技股份有限公司", "金蝶软件(中国)有限公司", "南京南瑞集团公司", "杭州恒生电子集团有限公司", "上海新华控制技术(集团)有限公司", "新太科技股份有限公司", "思爱普(北京)软件系统有限公司", "哈尔滨亿阳信通股份公司", "云南南天电子信息产业股份公司", "杭州新中大软件股份公司", "株洲时代集团公司", "南京南瑞继保电气有限公司", "江苏南大苏富特软件股份有限公司", "创智集团", "深圳市南凌科技发展有限公司", "北京握奇数据系统有限公司", "毕益辉系统(中国)有限公司(BEA)", "华立集团有限公司", "广州华南资讯科技有限公司", "杭州士兰微电子股份有限公司", "浙江中控科技集团有限公司", "盛趣信息技术(上海)有限公司", "长春一汽启明信息技术有限公司", "湖南计算机集团", "华北计算机系统工程研究所", "深圳迈瑞生物医疗电子股份有限公司", "福建星网锐捷通讯有限公司", "广州海格通信有限公司", "京华网络有限公司", "北京市和利时系统工程股份有限公司", "长江计算机(集团)公司(上海)", "太极计算机集团(北京)", "江苏东大金智软件股份有限公司", "杭州信雅达系统工程股份有限公司")

}