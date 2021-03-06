package com.vero.dm.importer.filter;


import org.springframework.core.type.ClassMetadata;
import org.springframework.core.type.filter.AbstractClassTestingTypeFilter;
import org.springframework.util.ClassUtils;

import com.vero.dm.importer.annotations.ExcelModel;

import lombok.extern.slf4j.Slf4j;


/**
 * @author XiangDe Liu qq313700046@icloud.com .
 * @version 1.5 created in 14:06 2018/2/3.
 * @since data-mining-platform
 */

@Slf4j
public class ExcelTypeFilter extends AbstractClassTestingTypeFilter
{
    @Override
    protected boolean match(ClassMetadata metadata)
    {
        Class<?> clazz = transformToClass(metadata.getClassName());
        if (clazz == null || !clazz.isAnnotationPresent(ExcelModel.class))
        {
            return false;
        }
        // 过滤抽象类,接口,注解,枚举,内部类及匿名类
        return !metadata.isAbstract() && !clazz.isInterface() && !clazz.isAnnotation()
               && !clazz.isEnum() && !clazz.isMemberClass() && !clazz.getName().contains("$");
    }

    /**
     * @param className
     * @return
     */
    private Class<?> transformToClass(String className)
    {
        Class<?> clazz = null;
        try
        {
            clazz = ClassUtils.forName(className, this.getClass().getClassLoader());
        }
        catch (ClassNotFoundException e)
        {
            log.info("未找到Excel的模板类", className);
        }
        return clazz;
    }

//    /**
//     * @param clazz
//     * @return
//     */
//    private boolean isAnnotatedBySpring(Class<?> clazz)
//    {
//        return clazz.isAnnotationPresent(Component.class)
//               || clazz.isAnnotationPresent(Configuration.class)
//               || clazz.isAnnotationPresent(Service.class)
//               || clazz.isAnnotationPresent(Repository.class)
//               || clazz.isAnnotationPresent(Controller.class);
//    }

}
