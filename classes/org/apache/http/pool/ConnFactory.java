package org.apache.http.pool;

public abstract interface ConnFactory<T, C>
{
  public abstract C create(T paramT);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\pool\ConnFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */