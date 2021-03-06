package com.alipay.euler.andfix.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface MethodReplace
{
  String clazz();
  
  String method();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\annotation\MethodReplace.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */