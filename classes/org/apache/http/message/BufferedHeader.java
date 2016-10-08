package org.apache.http.message;

import java.io.Serializable;
import org.apache.http.FormattedHeader;
import org.apache.http.HeaderElement;
import org.apache.http.ParseException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class BufferedHeader
  implements Serializable, Cloneable, FormattedHeader
{
  private static final long serialVersionUID = -2768352615787625448L;
  private final CharArrayBuffer buffer;
  private final String name;
  private final int valuePos;
  
  public BufferedHeader(CharArrayBuffer paramCharArrayBuffer)
  {
    Args.notNull(paramCharArrayBuffer, "Char array buffer");
    int i = paramCharArrayBuffer.indexOf(58);
    if (i == -1) {
      throw new ParseException("Invalid header: " + paramCharArrayBuffer.toString());
    }
    String str = paramCharArrayBuffer.substringTrimmed(0, i);
    if (str.length() == 0) {
      throw new ParseException("Invalid header: " + paramCharArrayBuffer.toString());
    }
    this.buffer = paramCharArrayBuffer;
    this.name = str;
    this.valuePos = (i + 1);
  }
  
  public Object clone()
  {
    return super.clone();
  }
  
  public CharArrayBuffer getBuffer()
  {
    return this.buffer;
  }
  
  public HeaderElement[] getElements()
  {
    ParserCursor localParserCursor = new ParserCursor(0, this.buffer.length());
    localParserCursor.updatePos(this.valuePos);
    return BasicHeaderValueParser.INSTANCE.parseElements(this.buffer, localParserCursor);
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public String getValue()
  {
    return this.buffer.substringTrimmed(this.valuePos, this.buffer.length());
  }
  
  public int getValuePos()
  {
    return this.valuePos;
  }
  
  public String toString()
  {
    return this.buffer.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\message\BufferedHeader.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */