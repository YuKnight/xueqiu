package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@ThreadSafe
public abstract class CookieSpecBase
  extends AbstractCookieSpec
{
  public CookieSpecBase() {}
  
  protected CookieSpecBase(HashMap<String, CookieAttributeHandler> paramHashMap)
  {
    super(paramHashMap);
  }
  
  protected CookieSpecBase(CommonCookieAttributeHandler... paramVarArgs)
  {
    super(paramVarArgs);
  }
  
  protected static String getDefaultDomain(CookieOrigin paramCookieOrigin)
  {
    return paramCookieOrigin.getHost();
  }
  
  protected static String getDefaultPath(CookieOrigin paramCookieOrigin)
  {
    paramCookieOrigin = paramCookieOrigin.getPath();
    int j = paramCookieOrigin.lastIndexOf('/');
    if (j >= 0)
    {
      int i = j;
      if (j == 0) {
        i = 1;
      }
      return paramCookieOrigin.substring(0, i);
    }
    return paramCookieOrigin;
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    Iterator localIterator = getAttribHandlers().iterator();
    while (localIterator.hasNext()) {
      if (!((CookieAttributeHandler)localIterator.next()).match(paramCookie, paramCookieOrigin)) {
        return false;
      }
    }
    return true;
  }
  
  protected List<Cookie> parse(HeaderElement[] paramArrayOfHeaderElement, CookieOrigin paramCookieOrigin)
  {
    ArrayList localArrayList = new ArrayList(paramArrayOfHeaderElement.length);
    int k = paramArrayOfHeaderElement.length;
    int i = 0;
    while (i < k)
    {
      Object localObject2 = paramArrayOfHeaderElement[i];
      Object localObject1 = ((HeaderElement)localObject2).getName();
      String str = ((HeaderElement)localObject2).getValue();
      if ((localObject1 == null) || (((String)localObject1).isEmpty())) {
        throw new MalformedCookieException("Cookie name may not be empty");
      }
      localObject1 = new BasicClientCookie((String)localObject1, str);
      ((BasicClientCookie)localObject1).setPath(getDefaultPath(paramCookieOrigin));
      ((BasicClientCookie)localObject1).setDomain(getDefaultDomain(paramCookieOrigin));
      localObject2 = ((HeaderElement)localObject2).getParameters();
      int j = localObject2.length - 1;
      while (j >= 0)
      {
        str = localObject2[j];
        Object localObject3 = str.getName().toLowerCase(Locale.ROOT);
        ((BasicClientCookie)localObject1).setAttribute((String)localObject3, str.getValue());
        localObject3 = findAttribHandler((String)localObject3);
        if (localObject3 != null) {
          ((CookieAttributeHandler)localObject3).parse((SetCookie)localObject1, str.getValue());
        }
        j -= 1;
      }
      localArrayList.add(localObject1);
      i += 1;
    }
    return localArrayList;
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    Iterator localIterator = getAttribHandlers().iterator();
    while (localIterator.hasNext()) {
      ((CookieAttributeHandler)localIterator.next()).validate(paramCookie, paramCookieOrigin);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\CookieSpecBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */