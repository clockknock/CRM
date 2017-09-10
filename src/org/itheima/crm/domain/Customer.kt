package org.itheima.crm.domain

/**
 * Created by 钟未鸣 on 2017/9/10 .
private long custId;
private String custName;
private String custPhone;
private String custMobile;
private String cstImage;
private BaseDict custSource;
private BaseDict custIndustry;
private BaseDict cstLevel;
 */
data class Customer(var custId: Long?, var custName: String?, var custPhone: String?, var
custMobile:
String?, var cstImage: String?, var custSource: BaseDict?, var custIndustry: BaseDict?, var
               cstLevel: BaseDict?) {
    constructor() : this(null, null, null, null, null, null, null, null)
}