package org.apache.http.conn.scheme;

import java.net.InetSocketAddress;
import java.net.Socket;
import org.apache.http.params.HttpParams;

@Deprecated
class SchemeLayeredSocketFactoryAdaptor2
  implements SchemeLayeredSocketFactory
{
  private final LayeredSchemeSocketFactory factory;
  
  SchemeLayeredSocketFactoryAdaptor2(LayeredSchemeSocketFactory paramLayeredSchemeSocketFactory)
  {
    this.factory = paramLayeredSchemeSocketFactory;
  }
  
  public Socket connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress1, InetSocketAddress paramInetSocketAddress2, HttpParams paramHttpParams)
  {
    return this.factory.connectSocket(paramSocket, paramInetSocketAddress1, paramInetSocketAddress2, paramHttpParams);
  }
  
  public Socket createLayeredSocket(Socket paramSocket, String paramString, int paramInt, HttpParams paramHttpParams)
  {
    return this.factory.createLayeredSocket(paramSocket, paramString, paramInt, true);
  }
  
  public Socket createSocket(HttpParams paramHttpParams)
  {
    return this.factory.createSocket(paramHttpParams);
  }
  
  public boolean isSecure(Socket paramSocket)
  {
    return this.factory.isSecure(paramSocket);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\scheme\SchemeLayeredSocketFactoryAdaptor2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */