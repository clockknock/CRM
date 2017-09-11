package org.itheima.crm.web.action

import com.opensymphony.xwork2.ActionContext
import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.hibernate.criterion.DetachedCriteria
import org.hibernate.criterion.Restrictions
import org.itheima.crm.domain.BaseDict
import org.itheima.crm.domain.Customer
import org.itheima.crm.service.CustomerService
import org.itheima.crm.service.DictService
import org.itheima.crm.utils.PropertyPlaceholder
import org.itheima.crm.utils.UploadUtil
import org.springframework.util.StringUtils
import java.io.File

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
class CustomerAction : ActionSupport(), ModelDriven<Customer> {
    private val SAVESUCCESS = "saveSuccess"
    private val SAVEERROR = "saveError"
    private val RESULTDICTSUCCESS = "resultDictSuccess"
    private val LISTSUCCESS = "listSuccess"

    private var imageUpLoad: File? = null
    private var imageUpLoadContentType: String? = null
    private var imageUpLoadFileName: String? = null

    private var fileUploadPath: String? = PropertyPlaceholder.getProperty("file.upload.dir")
    @Suppress("unused")
    fun setImageUpLoad(imageUpLoad: File) {
        this.imageUpLoad = imageUpLoad
    }

    @Suppress("unused")
    fun setImageUpLoadContentType(contentType: String) {
        this.imageUpLoadContentType = contentType
    }

    @Suppress("unused")
    fun setImageUpLoadFileName(fileName: String) {
        this.imageUpLoadFileName = fileName
    }


    private var dicts: ArrayList<*>? = null
    private fun setDicts(dicts: ArrayList<*>) {
        this.dicts = dicts
    }

    @Suppress("unused")
    fun getDicts(): ArrayList<*>? {
        return dicts
    }

    private var dictTypeCode: String? = null
    @Suppress("unused")
    fun setDictTypeCode(code: String) {
        dictTypeCode = code
    }

    private var currentPage: Int = 1
    @Suppress("unused")
    fun setCurrentPage(currentPage: Int) {
        this.currentPage = currentPage
    }

    private var pageSize: Int = 5
    @Suppress("unused")
    fun setPageSize(pageSize: Int) {
        this.pageSize = pageSize
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

    @Suppress("unused")
    fun do_save(): String {

        if (customerDataIsNull(customer!!)) {
            return SAVEERROR
        }
        //处理文件上传
        val subPath = UploadUtil.genUploadPath(imageUpLoadFileName!!)
        fileUploadPath += subPath
        val file = File(fileUploadPath)
        if (!file.exists()) {
            file.mkdirs()
        }
        imageUpLoad?.copyTo(file, true)

        customer!!.cstImage = subPath
        customerService!!.saveCustomer(customer!!)
        return SAVESUCCESS
    }

    @Suppress("unused")
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


    @Suppress("unused")
    fun do_list(): String {
        val stack = ActionContext.getContext().valueStack

        val criteria = DetachedCriteria.forClass(Customer::class.java)
        val pageBean = customerService!!.findBean(criteria, currentPage, pageSize)

        stack.push(pageBean)

        return LISTSUCCESS
    }

    /**
     * @return true 有错误   false没错误
     */
    private fun customerDataIsNull(customer: Customer): Boolean {
        if (StringUtils.isEmpty(customer.custName)) {
            addActionError("客户名不能为空")
            return true
        }

        if (StringUtils.isEmpty(customer.custPhone)) {
            addActionError("固定电话不能为空")
            return true
        }

        if (StringUtils.isEmpty(customer.custMobile)) {
            addActionError("移动电话不能为空")
            return true
        }

        //cstLevel为空或其id为0
        if (customer.cstLevel == null || customer.cstLevel?.dictId ==
                0L) {
            addActionError("客户级别不能为空")
            return true
        }

        //cstIndustry为空或其id为0
        if (customer.custIndustry == null || customer.custIndustry?.dictId ==
                0L) {
            addActionError("所属行业不能为空")
            return true
        }

        //cstSource为空或其id为0
        if (customer.custSource == null || customer.custSource?.dictId ==
                0L) {
            addActionError("信息来源不能为空")
            return true
        }

        if (StringUtils.isEmpty(imageUpLoadFileName)) {
            addActionError("未选择资质图片")
            return true
        }

        return false
    }

}