package org.apache.http.entity;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.impl.io.EmptyInputStream;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@NotThreadSafe
public class BasicHttpEntity
  extends AbstractHttpEntity
{
  private InputStream content;
  private long length = -1L;
  
  public InputStream getContent()
  {
    if (this.content != null) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "Content has not been provided");
      return this.content;
    }
  }
  
  public long getContentLength()
  {
    return this.length;
  }
  
  public boolean isRepeatable()
  {
    return false;
  }
  
  public boolean isStreaming()
  {
    return (this.content != null) && (this.content != EmptyInputStream.INSTANCE);
  }
  
  public void setContent(InputStream paramInputStream)
  {
    this.content = paramInputStream;
  }
  
  public void setContentLength(long paramLong)
  {
    this.length = paramLong;
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    Args.notNull(paramOutputStream, "Output stream");
    InputStream localInputStream = getContent();
    try
    {
      byte[] arrayOfByte = new byte['က'];
      for (;;)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        paramOutputStream.write(arrayOfByte, 0, i);
      }
    }
    finally
    {
      localInputStream.close();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\entity\BasicHttpEntity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */