package org.itheima.crm.service

import org.itheima.crm.domain.Customer

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
interface CustomerService {
    fun saveCustomer(customer: Customer)

}