package org.itheima.crm.web.action

import com.opensymphony.xwork2.ActionContext
import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.domain.Linkman
import org.itheima.crm.domain.PageBean
import org.itheima.crm.service.CustomerService
import org.itheima.crm.service.LinkmanService
import org.springframework.beans.factory.annotation.Autowired

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
class LinkmanAction : ActionSupport(), ModelDriven<Linkman> {
    private var currentPage = 1
    private var pageSize = 10

    var linkman: Linkman? = null
    override fun getModel(): Linkman {
        if (linkman == null) {
            linkman = Linkman()
        }
        return linkman as Linkman
    }

    private val LISTSUCCESS = "listSuccess"
    private val ADDSUCCESS = "addSuccess"
    private val SAVESUCCESS = "saveSuccess"
    private val SAVEERROR = "saveError"

    override fun hasErrors(): Boolean {
        return false
    }

    @Suppress("unused")
    fun do_add(): String {
        val customers = customerService.findList()
        val stack = ActionContext.getContext().valueStack
        stack.set("customers", customers)
        return ADDSUCCESS
    }

    @Suppress("unused")
    fun do_list(): String {
        val criteria = DetachedCriteria.forClass(Linkman::class.java)

        val pageBean =linkmanService.findPage(criteria, currentPage, pageSize)
        println("dolist:$pageBean")
        val stack = ActionContext.getContext().valueStack

        stack.push(pageBean)
        return LISTSUCCESS
    }

    @Suppress("unused")
    fun do_save(): String {
        val hasError: Boolean = checkLinkmanDataHasError()
        if (hasError) {
            return SAVEERROR
        }
        linkmanService.save(linkman!!)
        return SAVESUCCESS
    }

    /**
     * @return true:传过来的数据不齐全  false:传过来数据齐全
     */
    private fun checkLinkmanDataHasError(): Boolean {
        if (linkman!!.customer!!.custId == 0L) {
            addActionError("所属客户不能为空!")
            return true
        }

        if (linkman!!.lkmName.isNullOrEmpty()) {
            addActionError("联系人姓名不能为空!")
            return true
        }

        if (linkman!!.lkmPhone.isNullOrEmpty()) {
            addActionError("联系人办公电话不能为空!")
            return true
        }

        if (linkman!!.lkmMobile.isNullOrEmpty()) {
            addActionError("联系人手机不能为空!")
            return true
        }

        if (linkman!!.lkmEmail.isNullOrEmpty()) {
            addActionError("联系人邮箱不能为空!")
            return true
        }

        if (linkman!!.lkmQq.isNullOrEmpty()) {
            addActionError("联系人QQ不能为空!")
            return true
        }

        if (linkman!!.lkmPosition.isNullOrEmpty()) {
            addActionError("联系人职位不能为空!")
            return true
        }
        if (linkman!!.lkmComment.isNullOrEmpty()) {
            addActionError("联系人备注不能为空!")
            return true
        }

        return false
    }

    @Autowired private lateinit var linkmanService: LinkmanService
    @Autowired private lateinit var customerService: CustomerService
}