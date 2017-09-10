package org.itheima.crm.service.impl

import org.itheima.crm.dao.CustomerDao
import org.itheima.crm.domain.Customer
import org.itheima.crm.service.CustomerService
import org.springframework.transaction.annotation.Transactional

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
@Transactional
open class CustomerServiceImpl : CustomerService {
    private var customerDao: CustomerDao? = null
    fun setCustomerDao(customerDao: CustomerDao){
        this.customerDao =customerDao
    }

    override fun saveCustomer(customer: Customer) {
        customerDao?.saveCustomer(customer)
    }
}