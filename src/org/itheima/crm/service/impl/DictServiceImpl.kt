package org.itheima.crm.service.impl

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.dao.DictDao
import org.itheima.crm.domain.BaseDict
import org.itheima.crm.service.DictService
import org.springframework.transaction.annotation.Transactional

/**
 * Created by 钟未鸣 on 2017/9/10 .
 */
@Transactional
open class DictServiceImpl : DictService{
    private var dictDao : DictDao?= null
    fun setDictDao(dictDao: DictDao){
        this.dictDao  = dictDao
    }
    override fun save(dict: BaseDict) {
        dictDao?.save(dict)
    }

    override fun findList(criteria: DetachedCriteria): List<BaseDict>? {
        return dictDao?.findList(criteria)
    }

}