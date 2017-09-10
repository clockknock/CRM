package test.itheima.crm

import org.hibernate.Criteria
import org.hibernate.criterion.DetachedCriteria
import org.hibernate.criterion.Restrictions
import org.junit.Test
import org.junit.runner.RunWith
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner
import org.itheima.crm.domain.BaseDict
import org.itheima.crm.service.DictService
import org.springframework.beans.factory.annotation.Autowired


/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
@RunWith(SpringJUnit4ClassRunner::class)
@ContextConfiguration("classpath:applicationContext.xml")
class  TestBaseDictService{
    @Autowired
    private var service: DictService?=null

    @Test fun testFindList(){
        val criteria = DetachedCriteria.forClass(BaseDict::class.java)
        criteria.add(Restrictions.eq("dictTypeCode","001"))
        val list = service!!.findList(criteria)
        if (list != null) {
            for(dict in list){
                println(dict)
            }
        }
    }

    @Test fun testSave(){
        service!!.save(BaseDict(null, "001", "客户行业", "教育培训 ", null, 1, 1, null))
        service!!.save(BaseDict(null, "001", "客户行业", "电子商务", null, 2, 1, null))
        service!!.save(BaseDict(null, "001", "客户行业", "对外贸易", null, 3, 1, null))
        service!!.save(BaseDict(null, "001", "客户行业", "酒店旅游", null, 4, 1, null))
        service!!.save(BaseDict(null, "001", "客户行业", "房地产", null, 5, 1, null))
        service!!.save(BaseDict(null, "002", "客户信息来源", "电话营销", null, 1, 1, null))
        service!!.save(BaseDict(null, "002", "客户信息来源", "网络营销", null, 2, 1, null))
        service!!.save(BaseDict(null, "003", "公司性质", "合资", null, 1, 1, null))
        service!!.save(BaseDict(null, "003", "公司性质", "国企", null, 2, 1, null))
        service!!.save(BaseDict(null, "003", "公司性质", "民企", null, 3, 1, null))
        service!!.save(BaseDict(null, "004", "年营业额", "1-10万", null, 1, 1, null))
        service!!.save(BaseDict(null, "004", "年营业额", "10-20万", null, 2, 1, null))
        service!!.save(BaseDict(null, "004", "年营业额", "20-50万", null, 3, 1, null))
        service!!.save(BaseDict(null, "004", "年营业额", "50-100万", null, 4, 1, null))
        service!!.save(BaseDict(null, "004", "年营业额", "100-500万", null, 5, 1, null))
        service!!.save(BaseDict(null, "004", "年营业额", "500-1000万", null, 6, 1, null))
        service!!.save(BaseDict(null, "005", "客户状态", "基础客户", null, 1, 1, null))
        service!!.save(BaseDict(null, "005", "客户状态", "潜在客户", null, 2, 1, null))
        service!!.save(BaseDict(null, "005", "客户状态", "成功客户", null, 3, 1, null))
        service!!.save(BaseDict(null, "005", "客户状态", "无效客户", null, 4, 1, null))
        service!!.save(BaseDict(null, "006", "客户级别", "普通客户", null, 1, 1, null))
        service!!.save(BaseDict(null, "006", "客户级别", "VIP客户", null, 2, 1, null))
        service!!.save(BaseDict(null, "007", "商机状态", "意向客户", null, 1, 1, null))
        service!!.save(BaseDict(null, "007", "商机状态", "初步沟通", null, 2, 1, null))
        service!!.save(BaseDict(null, "007", "商机状态", "深度沟通", null, 3, 1, null))
        service!!.save(BaseDict(null, "007", "商机状态", "签订合同", null, 4, 1, null))
        service!!.save(BaseDict(null, "008", "商机类型", "新业务", null, 1, 1, null))
        service!!.save(BaseDict(null, "008", "商机类型", "现有业务", null, 2, 1, null))
        service!!.save(BaseDict(null, "009", "商机来源", "电话营销", null, 1, 1, null))
        service!!.save(BaseDict(null, "009", "商机来源", "网络营销", null, 2, 1, null))
        service!!.save(BaseDict(null, "009", "商机来源", "推广活动", null, 3, 1, null))
    }
}