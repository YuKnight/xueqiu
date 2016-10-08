package org.apache.http.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.FIELD, java.lang.annotation.ElementType.METHOD, java.lang.annotation.ElementType.TYPE})
public @interface Obsolete {}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\annotation\Obsolete.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */