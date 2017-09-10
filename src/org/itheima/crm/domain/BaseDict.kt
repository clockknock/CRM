package org.itheima.crm.domain

/**
 * Created by 钟未鸣 on 2017/9/10 .
private long dictId;
private String dictTypeCode;
private String dictTypeName;
private String dictItemName;
private String dictItemCode;
private Integer dictSort;
private Integer dictState;
private String dictComment;
 */
class BaseDict(var dictId: Long?, var dictTypeCode: String?, var dictTypeName: String?, var
dictItemName: String?,
               var dictItemCode: String?, var dictSort: Int?, var dictState: Int?, var
               dictComment: String?) {
    constructor() : this(null, null, null, null, null, null, null, null)

}