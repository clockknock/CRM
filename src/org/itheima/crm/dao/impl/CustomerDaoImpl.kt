package org.itheima.crm.dao.impl

import org.hibernate.criterion.DetachedCriteria
import org.hibernate.criterion.Projections
import org.itheima.crm.dao.CustomerDao
import org.itheima.crm.domain.Customer
import org.springframework.orm.hibernate5.support.HibernateDaoSupport

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class CustomerDaoImpl : CustomerDao,HibernateDaoSupport() {
    override fun delete(customer: Customer) {
        hibernateTemplate.delete(customer)
    }

    override fun update(customer: Customer) {
        hibernateTemplate.update(customer)
    }

    override fun findById(custId: Long): Customer {
        return hibernateTemplate.get(Customer::class.java,custId)
    }

    override fun totalCount(criteria: DetachedCriteria): Long {
        criteria.setProjection(Projections.rowCount())
        return hibernateTemplate.findByCriteria(criteria)[0] as Long
    }

    override fun findList(criteria: DetachedCriteria, start: Int, end: Int): List<Customer> {
        @Suppress("UNCHECKED_CAST")
        return hibernateTemplate.findByCriteria(criteria,start,end) as List<Customer>
    }

    override fun saveCustomer(customer: Customer) {
        hibernateTemplate.save(customer)
    }
}