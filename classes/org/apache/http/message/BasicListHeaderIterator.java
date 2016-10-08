package org.apache.http.message;

import java.util.List;
import java.util.NoSuchElementException;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.util.Args;
import org.apache.http.util.Asserts;

@NotThreadSafe
public class BasicListHeaderIterator
  implements HeaderIterator
{
  protected final List<Header> allHeaders;
  protected int currentIndex;
  protected String headerName;
  protected int lastIndex;
  
  public BasicListHeaderIterator(List<Header> paramList, String paramString)
  {
    this.allHeaders = ((List)Args.notNull(paramList, "Header list"));
    this.headerName = paramString;
    this.currentIndex = findNext(-1);
    this.lastIndex = -1;
  }
  
  protected boolean filterHeader(int paramInt)
  {
    if (this.headerName == null) {
      return true;
    }
    String str = ((Header)this.allHeaders.get(paramInt)).getName();
    return this.headerName.equalsIgnoreCase(str);
  }
  
  protected int findNext(int paramInt)
  {
    if (paramInt < -1) {}
    boolean bool;
    do
    {
      return -1;
      int i = this.allHeaders.size();
      for (bool = false; (!bool) && (paramInt < i - 1); bool = filterHeader(paramInt)) {
        paramInt += 1;
      }
    } while (!bool);
    return paramInt;
  }
  
  public boolean hasNext()
  {
    return this.currentIndex >= 0;
  }
  
  public final Object next()
  {
    return nextHeader();
  }
  
  public Header nextHeader()
  {
    int i = this.currentIndex;
    if (i < 0) {
      throw new NoSuchElementException("Iteration already finished.");
    }
    this.lastIndex = i;
    this.currentIndex = findNext(i);
    return (Header)this.allHeaders.get(i);
  }
  
  public void remove()
  {
    if (this.lastIndex >= 0) {}
    for (boolean bool = true;; bool = false)
    {
      Asserts.check(bool, "No header to remove");
      this.allHeaders.remove(this.lastIndex);
      this.lastIndex = -1;
      this.currentIndex -= 1;
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\message\BasicListHeaderIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */