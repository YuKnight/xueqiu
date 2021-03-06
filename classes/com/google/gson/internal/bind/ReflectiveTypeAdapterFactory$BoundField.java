package com.google.gson.internal.bind;

import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

abstract class ReflectiveTypeAdapterFactory$BoundField
{
  final boolean deserialized;
  final String name;
  final boolean serialized;
  
  protected ReflectiveTypeAdapterFactory$BoundField(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.name = paramString;
    this.serialized = paramBoolean1;
    this.deserialized = paramBoolean2;
  }
  
  abstract void read(JsonReader paramJsonReader, Object paramObject);
  
  abstract void write(JsonWriter paramJsonWriter, Object paramObject);
  
  abstract boolean writeField(Object paramObject);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\google\gson\internal\bind\ReflectiveTypeAdapterFactory$BoundField.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */