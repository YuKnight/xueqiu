package net.sqlcipher;

public class CursorWrapper
  extends android.database.CursorWrapper
  implements Cursor
{
  private final Cursor mCursor;
  
  public CursorWrapper(Cursor paramCursor)
  {
    super(paramCursor);
    this.mCursor = paramCursor;
  }
  
  public int getType(int paramInt)
  {
    return this.mCursor.getType(paramInt);
  }
  
  public Cursor getWrappedCursor()
  {
    return this.mCursor;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\CursorWrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */