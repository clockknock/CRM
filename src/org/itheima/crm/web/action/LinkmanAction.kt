package org.itheima.crm.web.action

import com.opensymphony.xwork2.ActionContext
import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.itheima.crm.domain.Linkman
import org.itheima.crm.service.CustomerService
import org.itheima.crm.service.LinkmanService
import org.springframework.beans.factory.annotation.Autowired

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
class LinkmanAction : ActionSupport(),ModelDriven<Linkman> {

     var linkman: Linkman? =null
    override fun getModel(): Linkman {
        if(linkman==null){
            linkman = Linkman()
        }
        return linkman as Linkman
    }

    private val LISTSUCCESS="listSuccess"
    private val SAVESUCCESS="saveSuccess"
    private val ADDSUCCESS="addSuccess"

    @Suppress("unused")
    fun do_add():String{
        val customers = customerService.findList()
        val stack = ActionContext.getContext().valueStack
        stack.set("customers",customers)
        return ADDSUCCESS
    }

    @Suppress("unused")
    fun do_list(): String {
        return LISTSUCCESS
    }

    @Suppress("unused")
    fun do_save(): String{
        linkmanService.save(linkman!!)
        return SAVESUCCESS
    }

    @Autowired private lateinit var linkmanService: LinkmanService
    @Autowired private lateinit var customerService: CustomerService
}