package org.itheima.crm.web.action

import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.hibernate.criterion.DetachedCriteria
import org.hibernate.criterion.Restrictions
import org.itheima.crm.domain.BaseDict
import org.itheima.crm.domain.Customer
import org.itheima.crm.service.CustomerService
import org.itheima.crm.service.DictService

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class CustomerAction : ActionSupport(), ModelDriven<Customer> {
    private val SAVESUCCESS = "saveSuccess"
    private val SAVEERROR = "saveError"
    private val RESULTDICTSUCCESS = "resultDictSuccess"

    private var dicts: ArrayList<*>? = null
    fun setDicts(dicts: ArrayList<*>) {
        this.dicts = dicts
    }

    fun getDicts(): ArrayList<*>? {
        return dicts
    }

    private var dictTypeCode: String? = null
    fun setDictTypeCode(code: String) {
        dictTypeCode = code
    }

    private var customer: Customer? = null
    override fun getModel(): Customer {
        if (customer == null) {
            customer = Customer()

        }
        return customer as Customer
    }

    /**
     * customerService注入
     */
    private var customerService: CustomerService? = null

    fun setCustomerService(customerService: CustomerService) {
        this.customerService = customerService
    }

    private var dictService: DictService? = null
    fun setDictService(dictService: DictService) {
        this.dictService = dictService
    }

    fun do_save(): String {
//        if (true) {
//            addActionError("有错误")
//            return SAVEERROR
//        }
        println("save : $customer")
        customerService!!.saveCustomer(customer!!)

        return SAVESUCCESS
    }

    fun do_dict(): String {
        try {
            val criteria = DetachedCriteria.forClass(BaseDict::class.java)
            criteria.add(Restrictions.eq("dictTypeCode", dictTypeCode))
            val findList = dictService!!.findList(criteria)
            setDicts(findList as ArrayList<BaseDict>)
        } catch (e: Exception) {

            e.printStackTrace()
        }

        return RESULTDICTSUCCESS
    }


}