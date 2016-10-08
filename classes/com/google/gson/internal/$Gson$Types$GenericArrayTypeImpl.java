package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

final class $Gson$Types$GenericArrayTypeImpl
  implements Serializable, GenericArrayType
{
  private static final long serialVersionUID = 0L;
  private final Type componentType;
  
  public $Gson$Types$GenericArrayTypeImpl(Type paramType)
  {
    this.componentType = .Gson.Types.canonicalize(paramType);
  }
  
  public final boolean equals(Object paramObject)
  {
    return ((paramObject instanceof GenericArrayType)) && (.Gson.Types.equals(this, (GenericArrayType)paramObject));
  }
  
  public final Type getGenericComponentType()
  {
    return this.componentType;
  }
  
  public final int hashCode()
  {
    return this.componentType.hashCode();
  }
  
  public final String toString()
  {
    return .Gson.Types.typeToString(this.componentType) + "[]";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\$Gson$Types$GenericArrayTypeImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */