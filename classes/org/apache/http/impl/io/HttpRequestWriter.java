package org.apache.http.impl.io;

import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.message.LineFormatter;
import org.apache.http.params.HttpParams;

@Deprecated
@NotThreadSafe
public class HttpRequestWriter
  extends AbstractMessageWriter<HttpRequest>
{
  public HttpRequestWriter(SessionOutputBuffer paramSessionOutputBuffer, LineFormatter paramLineFormatter, HttpParams paramHttpParams)
  {
    super(paramSessionOutputBuffer, paramLineFormatter, paramHttpParams);
  }
  
  protected void writeHeadLine(HttpRequest paramHttpRequest)
  {
    this.lineFormatter.formatRequestLine(this.lineBuf, paramHttpRequest.getRequestLine());
    this.sessionBuffer.writeLine(this.lineBuf);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\io\HttpRequestWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */