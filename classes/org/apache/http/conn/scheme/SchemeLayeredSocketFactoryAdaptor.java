package org.apache.http.conn.scheme;

import java.net.Socket;
import org.apache.http.params.HttpParams;

@Deprecated
class SchemeLayeredSocketFactoryAdaptor
  extends SchemeSocketFactoryAdaptor
  implements SchemeLayeredSocketFactory
{
  private final LayeredSocketFactory factory;
  
  SchemeLayeredSocketFactoryAdaptor(LayeredSocketFactory paramLayeredSocketFactory)
  {
    super(paramLayeredSocketFactory);
    this.factory = paramLayeredSocketFactory;
  }
  
  public Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, HttpParams paramHttpParams)
  {
    return this.factory.createSocket(paramSocket, paramString, paramInt, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\scheme\SchemeLayeredSocketFactoryAdaptor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */