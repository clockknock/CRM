package org.itheima.crm.dao

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.domain.Customer

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
interface CustomerDao{
    fun saveCustomer(customer: Customer)
    fun findList(criteria: DetachedCriteria, start: Int, end: Int): List<Customer>
    fun totalCount(criteria: DetachedCriteria): Long
    fun findById(custId: Long): Customer
    fun update(customer: Customer)
    fun delete(customer: Customer)
}