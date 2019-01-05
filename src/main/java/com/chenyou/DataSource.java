package com.chenyou;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-03 14:43
 * @Version: 1.0
 **/
@Target({ ElementType.TYPE,ElementType.METHOD })
@Retention(RetentionPolicy.RUNTIME)
public @interface DataSource {
    String value();
}
