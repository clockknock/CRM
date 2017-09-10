package org.itheima.crm.dao

import org.itheima.crm.domain.Customer

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
interface CustomerDao{
    fun saveCustomer(customer: Customer)
}