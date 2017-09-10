package org.itheima.crm.dao.impl

import org.itheima.crm.dao.CustomerDao
import org.itheima.crm.domain.Customer
import org.springframework.orm.hibernate5.support.HibernateDaoSupport

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class CustomerDaoImpl : CustomerDao,HibernateDaoSupport() {
    override fun saveCustomer(customer: Customer) {
        hibernateTemplate.save(customer)
    }
}