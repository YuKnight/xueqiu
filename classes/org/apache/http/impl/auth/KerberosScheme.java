package org.apache.http.impl.auth;

import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.Credentials;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.ietf.jgss.Oid;

@NotThreadSafe
public class KerberosScheme
  extends GGSSchemeBase
{
  private static final String KERBEROS_OID = "1.2.840.113554.1.2.2";
  
  public KerberosScheme() {}
  
  public KerberosScheme(boolean paramBoolean)
  {
    super(paramBoolean);
  }
  
  public KerberosScheme(boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramBoolean1, paramBoolean2);
  }
  
  public Header authenticate(Credentials paramCredentials, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return super.authenticate(paramCredentials, paramHttpRequest, paramHttpContext);
  }
  
  protected byte[] generateToken(byte[] paramArrayOfByte, String paramString)
  {
    return super.generateToken(paramArrayOfByte, paramString);
  }
  
  protected byte[] generateToken(byte[] paramArrayOfByte, String paramString, Credentials paramCredentials)
  {
    return generateGSSToken(paramArrayOfByte, new Oid("1.2.840.113554.1.2.2"), paramString, paramCredentials);
  }
  
  public String getParameter(String paramString)
  {
    Args.notNull(paramString, "Parameter name");
    return null;
  }
  
  public String getRealm()
  {
    return null;
  }
  
  public String getSchemeName()
  {
    return "Kerberos";
  }
  
  public boolean isConnectionBased()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\KerberosScheme.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */