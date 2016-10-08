package com.sleepycat.persist.model;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.FIELD})
public @interface KeyField {}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\persist\model\KeyField.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */