package org.itheima.crm.service.impl

import org.itheima.crm.dao.LinkmanDao
import org.itheima.crm.dao.LinkmanDaoImpl
import org.itheima.crm.domain.Linkman
import org.itheima.crm.service.LinkmanService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.transaction.annotation.Transactional

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
@Transactional
open class LinkmanServiceImpl : LinkmanService{

    override fun save(linkman: Linkman) {
        linkmanDao.save(linkman)
    }

    @Autowired lateinit var linkmanDao: LinkmanDao

}