package com.squareup.okhttp;

import com.squareup.okhttp.internal.http.HttpDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;

public final class Headers
{
  private final String[] namesAndValues;
  
  private Headers(Headers.Builder paramBuilder)
  {
    this.namesAndValues = ((String[])Headers.Builder.access$000(paramBuilder).toArray(new String[Headers.Builder.access$000(paramBuilder).size()]));
  }
  
  private Headers(String[] paramArrayOfString)
  {
    this.namesAndValues = paramArrayOfString;
  }
  
  private static String get(String[] paramArrayOfString, String paramString)
  {
    int i = paramArrayOfString.length - 2;
    while (i >= 0)
    {
      if (paramString.equalsIgnoreCase(paramArrayOfString[i])) {
        return paramArrayOfString[(i + 1)];
      }
      i -= 2;
    }
    return null;
  }
  
  public static Headers of(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      throw new IllegalArgumentException("Expected map with header names and values");
    }
    String[] arrayOfString = new String[paramMap.size() * 2];
    paramMap = paramMap.entrySet().iterator();
    int i = 0;
    while (paramMap.hasNext())
    {
      Object localObject = (Map.Entry)paramMap.next();
      if ((((Map.Entry)localObject).getKey() == null) || (((Map.Entry)localObject).getValue() == null)) {
        throw new IllegalArgumentException("Headers cannot be null");
      }
      String str = ((String)((Map.Entry)localObject).getKey()).trim();
      localObject = ((String)((Map.Entry)localObject).getValue()).trim();
      if ((str.length() == 0) || (str.indexOf(0) != -1) || (((String)localObject).indexOf(0) != -1)) {
        throw new IllegalArgumentException("Unexpected header: " + str + ": " + (String)localObject);
      }
      arrayOfString[i] = str;
      arrayOfString[(i + 1)] = localObject;
      i += 2;
    }
    return new Headers(arrayOfString);
  }
  
  public static Headers of(String... paramVarArgs)
  {
    if ((paramVarArgs == null) || (paramVarArgs.length % 2 != 0)) {
      throw new IllegalArgumentException("Expected alternating header names and values");
    }
    paramVarArgs = (String[])paramVarArgs.clone();
    int i = 0;
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i] == null) {
        throw new IllegalArgumentException("Headers cannot be null");
      }
      paramVarArgs[i] = paramVarArgs[i].trim();
      i += 1;
    }
    i = 0;
    while (i < paramVarArgs.length)
    {
      String str1 = paramVarArgs[i];
      String str2 = paramVarArgs[(i + 1)];
      if ((str1.length() == 0) || (str1.indexOf(0) != -1) || (str2.indexOf(0) != -1)) {
        throw new IllegalArgumentException("Unexpected header: " + str1 + ": " + str2);
      }
      i += 2;
    }
    return new Headers(paramVarArgs);
  }
  
  public final String get(String paramString)
  {
    return get(this.namesAndValues, paramString);
  }
  
  public final Date getDate(String paramString)
  {
    paramString = get(paramString);
    if (paramString != null) {
      return HttpDate.parse(paramString);
    }
    return null;
  }
  
  public final String name(int paramInt)
  {
    paramInt *= 2;
    if ((paramInt < 0) || (paramInt >= this.namesAndValues.length)) {
      return null;
    }
    return this.namesAndValues[paramInt];
  }
  
  public final Set<String> names()
  {
    TreeSet localTreeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
    int i = 0;
    int j = size();
    while (i < j)
    {
      localTreeSet.add(name(i));
      i += 1;
    }
    return Collections.unmodifiableSet(localTreeSet);
  }
  
  public final Headers.Builder newBuilder()
  {
    Headers.Builder localBuilder = new Headers.Builder();
    Collections.addAll(Headers.Builder.access$000(localBuilder), this.namesAndValues);
    return localBuilder;
  }
  
  public final int size()
  {
    return this.namesAndValues.length / 2;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = size();
    while (i < j)
    {
      localStringBuilder.append(name(i)).append(": ").append(value(i)).append("\n");
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public final String value(int paramInt)
  {
    paramInt = paramInt * 2 + 1;
    if ((paramInt < 0) || (paramInt >= this.namesAndValues.length)) {
      return null;
    }
    return this.namesAndValues[paramInt];
  }
  
  public final List<String> values(String paramString)
  {
    int j = size();
    Object localObject1 = null;
    int i = 0;
    while (i < j)
    {
      Object localObject2 = localObject1;
      if (paramString.equalsIgnoreCase(name(i)))
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new ArrayList(2);
        }
        ((List)localObject2).add(value(i));
      }
      i += 1;
      localObject1 = localObject2;
    }
    if (localObject1 != null) {
      return Collections.unmodifiableList((List)localObject1);
    }
    return Collections.emptyList();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\Headers.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */