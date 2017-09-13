package org.itheima.crm.domain

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
class Linkman {
    var lkmId: Long = 0
    var lkmName: String? = null
    var lkmGender: Int? = null
    var lkmPhone: String? = null
    var lkmMobile: String? = null
    var lkmEmail: String? = null
    var lkmQq: String? = null
    var lkmPosition: String? = null
    var lkmComment: String? = null

    var customer:Customer? =null


    override fun toString(): String {
        return "Linkman(lkmId=$lkmId, lkmName=$lkmName, lkmGender=$lkmGender, lkmPhone=$lkmPhone, lkmMobile=$lkmMobile, lkmEmail=$lkmEmail, lkmQq=$lkmQq, lkmPosition=$lkmPosition, lkmComment=$lkmComment)"
    }


}
