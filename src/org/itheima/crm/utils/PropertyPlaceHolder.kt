package org.itheima.crm.utils

import org.springframework.beans.BeansException
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory
import org.springframework.beans.factory.config.PropertyPlaceholderConfigurer
import java.util.*
import java.util.HashMap

/**
 * Created by 钟未鸣 on 2017/9/11 .
 */
object PropertyPlaceholder : PropertyPlaceholderConfigurer() {
    private var propertyMap: Map<String, String>? = null

     override fun processProperties(beanFactoryToProcess: ConfigurableListableBeanFactory, props: Properties) {

        super.processProperties(beanFactoryToProcess, props)
        propertyMap = HashMap()
        for ((key,value) in props) {
            (propertyMap as HashMap<String, String>).put(key as String, value as String)
        }
    }

    // static method for accessing context properties
    fun getProperty(name: String): String {
        return propertyMap!![name]!!
    }
}