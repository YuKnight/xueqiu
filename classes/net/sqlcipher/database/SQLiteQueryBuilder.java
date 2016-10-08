package net.sqlcipher.database;

import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import net.sqlcipher.Cursor;
import net.sqlcipher.DatabaseUtils;

public class SQLiteQueryBuilder
{
  private static final String TAG = "SQLiteQueryBuilder";
  private static final Pattern sLimitPattern = Pattern.compile("\\s*\\d+\\s*(,\\s*\\d+\\s*)?");
  private boolean mDistinct = false;
  private SQLiteDatabase.CursorFactory mFactory = null;
  private Map<String, String> mProjectionMap = null;
  private boolean mStrictProjectionMap;
  private String mTables = "";
  private StringBuilder mWhereClause = null;
  
  private static void appendClause(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2))
    {
      paramStringBuilder.append(paramString1);
      paramStringBuilder.append(paramString2);
    }
  }
  
  private static void appendClauseEscapeClause(StringBuilder paramStringBuilder, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2))
    {
      paramStringBuilder.append(paramString1);
      DatabaseUtils.appendEscapedSQLString(paramStringBuilder, paramString2);
    }
  }
  
  public static void appendColumns(StringBuilder paramStringBuilder, String[] paramArrayOfString)
  {
    int j = paramArrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = paramArrayOfString[i];
      if (str != null)
      {
        if (i > 0) {
          paramStringBuilder.append(", ");
        }
        paramStringBuilder.append(str);
      }
      i += 1;
    }
    paramStringBuilder.append(' ');
  }
  
  public static String buildQueryString(boolean paramBoolean, String paramString1, String[] paramArrayOfString, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    if ((TextUtils.isEmpty(paramString3)) && (!TextUtils.isEmpty(paramString4))) {
      throw new IllegalArgumentException("HAVING clauses are only permitted when using a groupBy clause");
    }
    if ((!TextUtils.isEmpty(paramString6)) && (!sLimitPattern.matcher(paramString6).matches())) {
      throw new IllegalArgumentException("invalid LIMIT clauses:" + paramString6);
    }
    StringBuilder localStringBuilder = new StringBuilder(120);
    localStringBuilder.append("SELECT ");
    if (paramBoolean) {
      localStringBuilder.append("DISTINCT ");
    }
    if ((paramArrayOfString != null) && (paramArrayOfString.length != 0)) {
      appendColumns(localStringBuilder, paramArrayOfString);
    }
    for (;;)
    {
      localStringBuilder.append("FROM ");
      localStringBuilder.append(paramString1);
      appendClause(localStringBuilder, " WHERE ", paramString2);
      appendClause(localStringBuilder, " GROUP BY ", paramString3);
      appendClause(localStringBuilder, " HAVING ", paramString4);
      appendClause(localStringBuilder, " ORDER BY ", paramString5);
      appendClause(localStringBuilder, " LIMIT ", paramString6);
      return localStringBuilder.toString();
      localStringBuilder.append("* ");
    }
  }
  
  private String[] computeProjection(String[] paramArrayOfString)
  {
    Object localObject1;
    int i;
    Object localObject2;
    if ((paramArrayOfString != null) && (paramArrayOfString.length > 0))
    {
      localObject1 = paramArrayOfString;
      if (this.mProjectionMap != null)
      {
        localObject1 = new String[paramArrayOfString.length];
        int j = paramArrayOfString.length;
        i = 0;
        if (i < j)
        {
          localObject2 = paramArrayOfString[i];
          String str = (String)this.mProjectionMap.get(localObject2);
          if (str != null) {
            localObject1[i] = str;
          }
          for (;;)
          {
            i += 1;
            break;
            if ((this.mStrictProjectionMap) || ((!((String)localObject2).contains(" AS ")) && (!((String)localObject2).contains(" as ")))) {
              break label111;
            }
            localObject1[i] = localObject2;
          }
          label111:
          throw new IllegalArgumentException("Invalid column " + paramArrayOfString[i]);
        }
      }
      return (String[])localObject1;
    }
    if (this.mProjectionMap != null)
    {
      localObject1 = this.mProjectionMap.entrySet();
      paramArrayOfString = new String[((Set)localObject1).size()];
      localObject2 = ((Set)localObject1).iterator();
      i = 0;
      for (;;)
      {
        localObject1 = paramArrayOfString;
        if (!((Iterator)localObject2).hasNext()) {
          break;
        }
        localObject1 = (Map.Entry)((Iterator)localObject2).next();
        if (!((String)((Map.Entry)localObject1).getKey()).equals("_count"))
        {
          paramArrayOfString[i] = ((String)((Map.Entry)localObject1).getValue());
          i += 1;
        }
      }
    }
    return null;
  }
  
  public void appendWhere(CharSequence paramCharSequence)
  {
    if (this.mWhereClause == null) {
      this.mWhereClause = new StringBuilder(paramCharSequence.length() + 16);
    }
    if (this.mWhereClause.length() == 0) {
      this.mWhereClause.append('(');
    }
    this.mWhereClause.append(paramCharSequence);
  }
  
  public void appendWhereEscapeString(String paramString)
  {
    if (this.mWhereClause == null) {
      this.mWhereClause = new StringBuilder(paramString.length() + 16);
    }
    if (this.mWhereClause.length() == 0) {
      this.mWhereClause.append('(');
    }
    DatabaseUtils.appendEscapedSQLString(this.mWhereClause, paramString);
  }
  
  public String buildQuery(String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramArrayOfString1 = computeProjection(paramArrayOfString1);
    paramArrayOfString2 = new StringBuilder();
    if ((this.mWhereClause != null) && (this.mWhereClause.length() > 0)) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        paramArrayOfString2.append(this.mWhereClause.toString());
        paramArrayOfString2.append(')');
      }
      if ((paramString1 != null) && (paramString1.length() > 0))
      {
        if (i != 0) {
          paramArrayOfString2.append(" AND ");
        }
        paramArrayOfString2.append('(');
        paramArrayOfString2.append(paramString1);
        paramArrayOfString2.append(')');
      }
      return buildQueryString(this.mDistinct, this.mTables, paramArrayOfString1, paramArrayOfString2.toString(), paramString2, paramString3, paramString4, paramString5);
    }
  }
  
  public String buildUnionQuery(String[] paramArrayOfString, String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    int j = paramArrayOfString.length;
    if (this.mDistinct) {}
    for (String str = " UNION ";; str = " UNION ALL ")
    {
      int i = 0;
      while (i < j)
      {
        if (i > 0) {
          localStringBuilder.append(str);
        }
        localStringBuilder.append(paramArrayOfString[i]);
        i += 1;
      }
    }
    appendClause(localStringBuilder, " ORDER BY ", paramString1);
    appendClause(localStringBuilder, " LIMIT ", paramString2);
    return localStringBuilder.toString();
  }
  
  public String buildUnionSubQuery(String paramString1, String[] paramArrayOfString1, Set<String> paramSet, int paramInt, String paramString2, String paramString3, String[] paramArrayOfString2, String paramString4, String paramString5)
  {
    int j = paramArrayOfString1.length;
    String[] arrayOfString = new String[j];
    int i = 0;
    if (i < j)
    {
      String str = paramArrayOfString1[i];
      if (str.equals(paramString1)) {
        arrayOfString[i] = ("'" + paramString2 + "' AS " + paramString1);
      }
      for (;;)
      {
        i += 1;
        break;
        if ((i <= paramInt) || (paramSet.contains(str))) {
          arrayOfString[i] = str;
        } else {
          arrayOfString[i] = ("NULL AS " + str);
        }
      }
    }
    return buildQuery(arrayOfString, paramString3, paramArrayOfString2, paramString4, paramString5, null, null);
  }
  
  public String getTables()
  {
    return this.mTables;
  }
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4)
  {
    return query(paramSQLiteDatabase, paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramString3, paramString4, null);
  }
  
  public Cursor query(SQLiteDatabase paramSQLiteDatabase, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    if (this.mTables == null) {
      return null;
    }
    paramArrayOfString1 = buildQuery(paramArrayOfString1, paramString1, paramArrayOfString2, paramString2, paramString3, paramString4, paramString5);
    if (Log.isLoggable("SQLiteQueryBuilder", 3)) {
      Log.d("SQLiteQueryBuilder", "Performing query: " + paramArrayOfString1);
    }
    return paramSQLiteDatabase.rawQueryWithFactory(this.mFactory, paramArrayOfString1, paramArrayOfString2, SQLiteDatabase.findEditTable(this.mTables));
  }
  
  public void setCursorFactory(SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    this.mFactory = paramCursorFactory;
  }
  
  public void setDistinct(boolean paramBoolean)
  {
    this.mDistinct = paramBoolean;
  }
  
  public void setProjectionMap(Map<String, String> paramMap)
  {
    this.mProjectionMap = paramMap;
  }
  
  public void setStrictProjectionMap(boolean paramBoolean)
  {
    this.mStrictProjectionMap = paramBoolean;
  }
  
  public void setTables(String paramString)
  {
    this.mTables = paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\net\sqlcipher\database\SQLiteQueryBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */