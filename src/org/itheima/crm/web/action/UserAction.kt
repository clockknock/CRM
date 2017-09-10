package org.itheima.crm.web.action

import cn.dsna.util.images.ValidateCode
import com.opensymphony.xwork2.ActionSupport
import com.opensymphony.xwork2.ModelDriven
import org.apache.struts2.interceptor.ServletRequestAware
import org.itheima.crm.domain.User
import org.itheima.crm.service.UserService
import org.springframework.util.StringUtils
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.InputStream
import javax.servlet.http.HttpServletRequest

/**
 * Created by 钟未鸣 on 2017/9/8 .
 * userAction
 */
class UserAction : ActionSupport(), ModelDriven<User>, ServletRequestAware {
    private val LOGIN_SUCCESS = "loginSuccess"
    private val LOGIN_ERROR = "loginError"
    private val VALIDATECODE_SUCCESS = "validateCodeSuccess"
    private val LOGOUT_SUCCESS = "logoutSuccess"

    private var request: HttpServletRequest? = null
    override fun setServletRequest(request: HttpServletRequest?) {
        this.request = request
    }

    private var imageStream: InputStream? = null
    fun getImageStream(): InputStream? {
        return imageStream
    }

    private var user: User? = null
    private var userService: UserService? = null
    fun setUserService(service: UserService) {
        this.userService = service
    }

    override fun getModel(): User {
        if (user == null) {
            user = User()
        }
        return user as User
    }

    fun do_login(): String {
        if(StringUtils.isEmpty(user!!.userCode)){
            addFieldError("userCode","用户名不能为空")
            return LOGIN_ERROR
        }

        if(StringUtils.isEmpty(user!!.userPassword)){
            addFieldError("userPassword","密码不能为空")
            return LOGIN_ERROR
        }

        if(StringUtils.isEmpty(user!!.validateCode)){
            addFieldError("validateCode","验证码不能为空")
            return LOGIN_ERROR
        }

      /*  TODO 先不填验证码了
      val validateCode = request!!.session.getAttribute("validateCode") as String

        if(StringUtils.isEmpty(validateCode)){
            addFieldError("validateCode","无法刷新验证码")
            return LOGIN_ERROR
        }

        if(!validateCode.equals(user!!.validateCode,true)){
            addFieldError("validateCode","验证码错误")
            return LOGIN_ERROR
        }*/

        val loginUser: User = userService?.login(user!!) ?: return LOGIN_ERROR
        val session = request!!.session
        session.setAttribute("user", loginUser)
        return LOGIN_SUCCESS
    }

    fun do_validateCode(): String {
        val code = ValidateCode(130,28,4,4)
        request!!.session.setAttribute("validateCode", code.code)
        imageStream = code.getInputStream()
        return VALIDATECODE_SUCCESS
    }

    fun do_logout():String{
        request!!.session.removeAttribute("user")

        return LOGOUT_SUCCESS
    }

}

fun ValidateCode.getInputStream(): InputStream? {
    var baos: ByteArrayOutputStream? = null
    var bais: ByteArrayInputStream? = null
    try {
        baos = ByteArrayOutputStream()
        this.write(baos)
        bais = ByteArrayInputStream(baos.toByteArray())
    } catch (e: Exception) {

        e.printStackTrace()
    } finally {
        if (baos != null) {
            try {
                baos.close()
            } catch (e: Exception) {

                e.printStackTrace()
            }
            @Suppress("UNUSED_VALUE")
            baos =null
        }
    }
    return bais

}