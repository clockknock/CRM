package org.itheima.crm.service.impl

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.dao.CustomerDao
import org.itheima.crm.domain.Customer
import org.itheima.crm.domain.PageBean
import org.itheima.crm.service.CustomerService
import org.springframework.transaction.annotation.Transactional

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
@Transactional
open class CustomerServiceImpl : CustomerService {
    override fun findBean(criteria: DetachedCriteria, currentPage: Int, pageSize: Int): PageBean<Customer> {
        val pageBean = PageBean<Customer>()
        val totalCount = customerDao!!.totalCount(criteria)
        criteria.setProjection(null)
        val start = (currentPage - 1) * pageSize
        pageBean.datas = customerDao!!.findList(criteria,start, pageSize)
        pageBean.totalCount = totalCount
        pageBean.currentPage = currentPage
        pageBean.pageSize = pageSize
        pageBean.totalPage = (totalCount * 1.0 /pageSize).toInt()
        return pageBean
    }

    override fun totalCount(criteria: DetachedCriteria): Long {
        return customerDao?.totalCount(criteria)!!
    }

//    override fun findList(criteria: DetachedCriteria): List<Customer> {
//        return customerDao?.findList(criteria)!!
//    }

    private var customerDao: CustomerDao? = null
    fun setCustomerDao(customerDao: CustomerDao){
        this.customerDao =customerDao
    }

    override fun saveCustomer(customer: Customer) {
        println(customer)
        customerDao?.saveCustomer(customer)
    }
}