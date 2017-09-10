package org.itheima.crm.web.action

import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.itheima.crm.domain.Customer
import org.itheima.crm.service.CustomerService

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class CustomerAction : ActionSupport(), ModelDriven<Customer> {
    private val SAVESUCCESS = "saveSuccess"
    private val SAVEERROR = "saveError"

    private var customer: Customer? = null
    override fun getModel(): Customer {
        if (customer == null) {
            customer = Customer()

        }
        return customer as Customer
    }

    private var customerService: CustomerService? = null
     fun setCustomerService(customerService: CustomerService){
        this.customerService = customerService
    }

    fun do_save(): String {
        println("save : $customer")
        customerService!!.saveCustomer(customer!!)
        return SAVESUCCESS
    }
}