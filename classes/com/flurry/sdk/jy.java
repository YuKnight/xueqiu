package com.flurry.sdk;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.zip.CRC32;

public class jy
  extends MessageDigest
{
  private CRC32 a = new CRC32();
  
  public jy()
  {
    super("CRC");
  }
  
  public byte[] a()
  {
    return engineDigest();
  }
  
  public int b()
  {
    return ByteBuffer.wrap(engineDigest()).getInt();
  }
  
  protected byte[] engineDigest()
  {
    long l = this.a.getValue();
    return new byte[] { (byte)(int)((0xFFFFFFFFFF000000 & l) >> 24), (byte)(int)((0xFF0000 & l) >> 16), (byte)(int)((0xFF00 & l) >> 8), (byte)(int)((l & 0xFF) >> 0) };
  }
  
  protected void engineReset()
  {
    this.a.reset();
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.a.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */