package org.apache.http.impl.cookie;

import java.util.StringTokenizer;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.cookie.SetCookie2;
import org.apache.http.util.Args;

@Immutable
public class RFC2965PortAttributeHandler
  implements CommonCookieAttributeHandler
{
  private static int[] parsePortAttribute(String paramString)
  {
    paramString = new StringTokenizer(paramString, ",");
    int[] arrayOfInt = new int[paramString.countTokens()];
    int i = 0;
    for (;;)
    {
      try
      {
        if (!paramString.hasMoreTokens()) {
          break;
        }
        arrayOfInt[i] = Integer.parseInt(paramString.nextToken().trim());
        if (arrayOfInt[i] < 0) {
          throw new MalformedCookieException("Invalid Port attribute.");
        }
      }
      catch (NumberFormatException paramString)
      {
        throw new MalformedCookieException("Invalid Port attribute: " + paramString.getMessage());
      }
      i += 1;
    }
    return arrayOfInt;
  }
  
  private static boolean portMatch(int paramInt, int[] paramArrayOfInt)
  {
    boolean bool2 = false;
    int j = paramArrayOfInt.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        if (paramInt == paramArrayOfInt[i]) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public String getAttributeName()
  {
    return "port";
  }
  
  public boolean match(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    int i = paramCookieOrigin.getPort();
    if (((paramCookie instanceof ClientCookie)) && (((ClientCookie)paramCookie).containsAttribute("port")))
    {
      if (paramCookie.getPorts() == null) {
        return false;
      }
      if (!portMatch(i, paramCookie.getPorts())) {
        return false;
      }
    }
    return true;
  }
  
  public void parse(SetCookie paramSetCookie, String paramString)
  {
    Args.notNull(paramSetCookie, "Cookie");
    if ((paramSetCookie instanceof SetCookie2))
    {
      paramSetCookie = (SetCookie2)paramSetCookie;
      if ((paramString != null) && (!paramString.trim().isEmpty())) {
        paramSetCookie.setPorts(parsePortAttribute(paramString));
      }
    }
  }
  
  public void validate(Cookie paramCookie, CookieOrigin paramCookieOrigin)
  {
    Args.notNull(paramCookie, "Cookie");
    Args.notNull(paramCookieOrigin, "Cookie origin");
    int i = paramCookieOrigin.getPort();
    if (((paramCookie instanceof ClientCookie)) && (((ClientCookie)paramCookie).containsAttribute("port")) && (!portMatch(i, paramCookie.getPorts()))) {
      throw new CookieRestrictionViolationException("Port attribute violates RFC 2965: Request port not found in cookie's port list.");
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\cookie\RFC2965PortAttributeHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */