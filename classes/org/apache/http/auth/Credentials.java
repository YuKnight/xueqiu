package org.apache.http.auth;

import java.security.Principal;

public abstract interface Credentials
{
  public abstract String getPassword();
  
  public abstract Principal getUserPrincipal();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\auth\Credentials.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */