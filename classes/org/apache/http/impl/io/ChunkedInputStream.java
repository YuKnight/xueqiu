package org.apache.http.impl.io;

import java.io.IOException;
import java.io.InputStream;
import org.apache.http.ConnectionClosedException;
import org.apache.http.Header;
import org.apache.http.HttpException;
import org.apache.http.MalformedChunkCodingException;
import org.apache.http.TruncatedChunkException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.config.MessageConstraints;
import org.apache.http.io.BufferInfo;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.util.Args;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class ChunkedInputStream
  extends InputStream
{
  private static final int BUFFER_SIZE = 2048;
  private static final int CHUNK_CRLF = 3;
  private static final int CHUNK_DATA = 2;
  private static final int CHUNK_INVALID = Integer.MAX_VALUE;
  private static final int CHUNK_LEN = 1;
  private final CharArrayBuffer buffer;
  private int chunkSize;
  private boolean closed = false;
  private final MessageConstraints constraints;
  private boolean eof = false;
  private Header[] footers = new Header[0];
  private final SessionInputBuffer in;
  private int pos;
  private int state;
  
  public ChunkedInputStream(SessionInputBuffer paramSessionInputBuffer)
  {
    this(paramSessionInputBuffer, null);
  }
  
  public ChunkedInputStream(SessionInputBuffer paramSessionInputBuffer, MessageConstraints paramMessageConstraints)
  {
    this.in = ((SessionInputBuffer)Args.notNull(paramSessionInputBuffer, "Session input buffer"));
    this.pos = 0;
    this.buffer = new CharArrayBuffer(16);
    if (paramMessageConstraints != null) {}
    for (;;)
    {
      this.constraints = paramMessageConstraints;
      this.state = 1;
      return;
      paramMessageConstraints = MessageConstraints.DEFAULT;
    }
  }
  
  private int getChunkSize()
  {
    switch (this.state)
    {
    case 2: 
    default: 
      throw new IllegalStateException("Inconsistent codec state");
    case 3: 
      this.buffer.clear();
      if (this.in.readLine(this.buffer) == -1) {
        throw new MalformedChunkCodingException("CRLF expected at end of chunk");
      }
      if (!this.buffer.isEmpty()) {
        throw new MalformedChunkCodingException("Unexpected content at the end of chunk");
      }
      this.state = 1;
    }
    this.buffer.clear();
    if (this.in.readLine(this.buffer) == -1) {
      throw new ConnectionClosedException("Premature end of chunk coded message body: closing chunk expected");
    }
    int j = this.buffer.indexOf(59);
    int i = j;
    if (j < 0) {
      i = this.buffer.length();
    }
    try
    {
      i = Integer.parseInt(this.buffer.substringTrimmed(0, i), 16);
      return i;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new MalformedChunkCodingException("Bad chunk header");
    }
  }
  
  private void nextChunk()
  {
    if (this.state == Integer.MAX_VALUE) {
      throw new MalformedChunkCodingException("Corrupt data stream");
    }
    try
    {
      this.chunkSize = getChunkSize();
      if (this.chunkSize < 0) {
        throw new MalformedChunkCodingException("Negative chunk size");
      }
    }
    catch (MalformedChunkCodingException localMalformedChunkCodingException)
    {
      this.state = Integer.MAX_VALUE;
      throw localMalformedChunkCodingException;
    }
    this.state = 2;
    this.pos = 0;
    if (this.chunkSize == 0)
    {
      this.eof = true;
      parseTrailerHeaders();
    }
  }
  
  private void parseTrailerHeaders()
  {
    try
    {
      this.footers = AbstractMessageParser.parseHeaders(this.in, this.constraints.getMaxHeaderCount(), this.constraints.getMaxLineLength(), null);
      return;
    }
    catch (HttpException localHttpException)
    {
      MalformedChunkCodingException localMalformedChunkCodingException = new MalformedChunkCodingException("Invalid footer: " + localHttpException.getMessage());
      localMalformedChunkCodingException.initCause(localHttpException);
      throw localMalformedChunkCodingException;
    }
  }
  
  public int available()
  {
    if ((this.in instanceof BufferInfo)) {
      return Math.min(((BufferInfo)this.in).length(), this.chunkSize - this.pos);
    }
    return 0;
  }
  
  public void close()
  {
    if (!this.closed) {}
    try
    {
      if ((!this.eof) && (this.state != Integer.MAX_VALUE))
      {
        byte[] arrayOfByte = new byte['ࠀ'];
        int i;
        do
        {
          i = read(arrayOfByte);
        } while (i >= 0);
      }
      return;
    }
    finally
    {
      this.eof = true;
      this.closed = true;
    }
  }
  
  public Header[] getFooters()
  {
    return (Header[])this.footers.clone();
  }
  
  public int read()
  {
    if (this.closed) {
      throw new IOException("Attempted read from closed stream.");
    }
    if (this.eof) {}
    do
    {
      return -1;
      if (this.state == 2) {
        break;
      }
      nextChunk();
    } while (this.eof);
    int i = this.in.read();
    if (i != -1)
    {
      this.pos += 1;
      if (this.pos >= this.chunkSize) {
        this.state = 3;
      }
    }
    return i;
  }
  
  public int read(byte[] paramArrayOfByte)
  {
    return read(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.closed) {
      throw new IOException("Attempted read from closed stream.");
    }
    if (this.eof) {}
    do
    {
      return -1;
      if (this.state == 2) {
        break;
      }
      nextChunk();
    } while (this.eof);
    paramInt1 = this.in.read(paramArrayOfByte, paramInt1, Math.min(paramInt2, this.chunkSize - this.pos));
    if (paramInt1 != -1)
    {
      this.pos += paramInt1;
      if (this.pos >= this.chunkSize) {
        this.state = 3;
      }
      return paramInt1;
    }
    this.eof = true;
    throw new TruncatedChunkException("Truncated chunk ( expected size: " + this.chunkSize + "; actual size: " + this.pos + ")");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\io\ChunkedInputStream.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */