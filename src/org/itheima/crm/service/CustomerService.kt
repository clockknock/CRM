package org.itheima.crm.service

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.domain.Customer
import org.itheima.crm.domain.PageBean

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
interface CustomerService {
    fun saveCustomer(customer: Customer)
//    fun findList(criteria: DetachedCriteria): List<Customer>
    fun totalCount(criteria: DetachedCriteria): Long
    fun findBean(criteria: DetachedCriteria, currentPage: Int, pageSize: Int): PageBean<Customer>
    fun findById(custId: Long): Customer
    fun update(customer: Customer)

}