package org.itheima.crm.service.impl

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.dao.CustomerDao
import org.itheima.crm.dao.impl.CustomerDaoImpl
import org.itheima.crm.domain.Customer
import org.itheima.crm.domain.PageBean
import org.itheima.crm.service.CustomerService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.transaction.annotation.Transactional

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
@Transactional
open class CustomerServiceImpl : CustomerService {
    override fun findList(): ArrayList<Customer> {
        val criteria = DetachedCriteria.forClass(Customer::class.java)
        return customerDao.findList(criteria,0,0) as ArrayList<Customer>

    }

//    private var customerDao: CustomerDao? = null


    override fun delete(customer: Customer) {
        customerDao.delete(customer)
    }

    fun setCustomerDao(customerDao: CustomerDao){
        this.customerDao =customerDao
    }

    override fun update(customer: Customer) {
         customerDao.update(customer)
    }

    override fun findById(custId: Long): Customer {
        return customerDao.findById(custId)
    }

    override fun findBean(criteria: DetachedCriteria, currentPage: Int, pageSize: Int): PageBean<Customer> {
        val pageBean = PageBean<Customer>()
        val totalCount = customerDao.totalCount(criteria)
        criteria.setProjection(null)
        val start = (currentPage - 1) * pageSize
        pageBean.datas = customerDao.findList(criteria,start, pageSize)
        pageBean.totalCount = totalCount
        pageBean.currentPage = currentPage
        pageBean.pageSize = pageSize
        pageBean.totalPage = (totalCount * 1.0 /pageSize).toInt()
        return pageBean
    }

    override fun totalCount(criteria: DetachedCriteria): Long {
        return customerDao.totalCount(criteria)
    }

//    override fun findList(criteria: DetachedCriteria): List<Customer> {
//        return customerDao?.findList(criteria)!!
//    }


    override fun saveCustomer(customer: Customer) {
        println(customer)
        customerDao.saveCustomer(customer)
    }

      private lateinit var customerDao: CustomerDao
}