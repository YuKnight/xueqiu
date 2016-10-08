package org.apache.http.annotation;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Documented
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.TYPE})
public @interface NotThreadSafe {}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\annotation\NotThreadSafe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */