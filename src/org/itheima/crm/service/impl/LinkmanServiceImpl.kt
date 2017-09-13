package org.itheima.crm.service.impl

import org.hibernate.criterion.DetachedCriteria
import org.itheima.crm.dao.LinkmanDao
import org.itheima.crm.dao.LinkmanDaoImpl
import org.itheima.crm.domain.Linkman
import org.itheima.crm.domain.PageBean
import org.itheima.crm.service.LinkmanService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.transaction.annotation.Transactional

/**
 * Created by 钟未鸣 on 2017/9/13 .
 */
@Transactional
open class LinkmanServiceImpl : LinkmanService{
    override fun findPage(criteria: DetachedCriteria, currentPage: Int, pageSize: Int): PageBean<Linkman> {
        val pageBean = PageBean<Linkman>()
        pageBean.pageSize =pageSize
        pageBean.currentPage = currentPage
        val totalCount = linkmanDao.totalCount(criteria)
        pageBean.totalCount = totalCount
        val start = (currentPage -1) * pageSize
        pageBean.datas = linkmanDao.findList(criteria,start,pageSize)

        pageBean.totalPage = (totalCount * 1.0 / pageSize).toInt()

        return pageBean
    }

    override fun save(linkman: Linkman) {
        linkmanDao.save(linkman)
    }

    @Autowired lateinit var linkmanDao: LinkmanDao

}