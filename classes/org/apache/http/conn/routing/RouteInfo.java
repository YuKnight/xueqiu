package org.apache.http.conn.routing;

import java.net.InetAddress;
import org.apache.http.HttpHost;

public abstract interface RouteInfo
{
  public abstract int getHopCount();
  
  public abstract HttpHost getHopTarget(int paramInt);
  
  public abstract RouteInfo.LayerType getLayerType();
  
  public abstract InetAddress getLocalAddress();
  
  public abstract HttpHost getProxyHost();
  
  public abstract HttpHost getTargetHost();
  
  public abstract RouteInfo.TunnelType getTunnelType();
  
  public abstract boolean isLayered();
  
  public abstract boolean isSecure();
  
  public abstract boolean isTunnelled();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\conn\routing\RouteInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */