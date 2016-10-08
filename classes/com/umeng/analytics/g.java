package com.umeng.analytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.io.File;
import u.aly.er;
import u.aly.es;
import u.aly.ex;

public final class g
{
  private static g a = new g();
  private static Context b;
  private static String c;
  private static long d = 1209600000L;
  private static long e = 2097152L;
  private static final String f = "age";
  private static final String g = "sex";
  private static final String h = "id";
  private static final String i = "url";
  private static final String j = "mobclick_agent_user_";
  private static final String k = "mobclick_agent_online_setting_";
  private static final String l = "mobclick_agent_header_";
  private static final String m = "mobclick_agent_update_";
  private static final String n = "mobclick_agent_state_";
  private static final String o = "mobclick_agent_cached_";
  private static final String p = "mobclick_agent_sealed_";
  
  public static g a(Context paramContext)
  {
    if (b == null) {
      b = paramContext.getApplicationContext();
    }
    if (c == null) {
      c = paramContext.getPackageName();
    }
    return a;
  }
  
  private static boolean a(File paramFile)
  {
    long l1 = paramFile.length();
    return (paramFile.exists()) && (l1 > e);
  }
  
  private SharedPreferences k()
  {
    return b.getSharedPreferences("mobclick_agent_user_" + c, 0);
  }
  
  private String l()
  {
    return "mobclick_agent_header_" + c;
  }
  
  private String m()
  {
    return "mobclick_agent_cached_" + c + er.a(b);
  }
  
  private String n()
  {
    return "mobclick_agent_sealed_" + c;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    SharedPreferences.Editor localEditor = a(b).g().edit();
    localEditor.putInt("umeng_net_report_policy", paramInt1);
    localEditor.putLong("umeng_net_report_interval", paramInt2);
    localEditor.commit();
  }
  
  public final void a(String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    SharedPreferences.Editor localEditor = k().edit();
    if (!TextUtils.isEmpty(paramString1)) {
      localEditor.putString("id", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localEditor.putString("url", paramString2);
    }
    if (paramInt1 > 0) {
      localEditor.putInt("age", paramInt1);
    }
    localEditor.putInt("sex", paramInt2);
    localEditor.commit();
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    String str = m();
    try
    {
      ex.a(new File(b.getFilesDir(), str), paramArrayOfByte);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      es.b("MobclickAgent", paramArrayOfByte.getMessage());
    }
  }
  
  public final int[] a()
  {
    SharedPreferences localSharedPreferences = g();
    int[] arrayOfInt = new int[2];
    if (localSharedPreferences.getInt("umeng_net_report_policy", -1) != -1)
    {
      arrayOfInt[0] = localSharedPreferences.getInt("umeng_net_report_policy", 1);
      arrayOfInt[1] = ((int)localSharedPreferences.getLong("umeng_net_report_interval", 0L));
      return arrayOfInt;
    }
    arrayOfInt[0] = localSharedPreferences.getInt("umeng_local_report_policy", 1);
    arrayOfInt[1] = ((int)localSharedPreferences.getLong("umeng_local_report_interval", 0L));
    return arrayOfInt;
  }
  
  public final void b(byte[] paramArrayOfByte)
  {
    try
    {
      ex.a(new File(b.getFilesDir(), n()), paramArrayOfByte);
      return;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
  }
  
  /* Error */
  public final byte[] b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 159	com/umeng/analytics/g:m	()Ljava/lang/String;
    //   4: astore_1
    //   5: new 83	java/io/File
    //   8: dup
    //   9: getstatic 68	com/umeng/analytics/g:b	Landroid/content/Context;
    //   12: invokevirtual 163	android/content/Context:getFilesDir	()Ljava/io/File;
    //   15: aload_1
    //   16: invokespecial 166	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   19: astore_2
    //   20: aload_2
    //   21: invokestatic 202	com/umeng/analytics/g:a	(Ljava/io/File;)Z
    //   24: ifeq +10 -> 34
    //   27: aload_2
    //   28: invokevirtual 205	java/io/File:delete	()Z
    //   31: pop
    //   32: aconst_null
    //   33: areturn
    //   34: aload_2
    //   35: invokevirtual 91	java/io/File:exists	()Z
    //   38: ifeq -6 -> 32
    //   41: getstatic 68	com/umeng/analytics/g:b	Landroid/content/Context;
    //   44: aload_1
    //   45: invokevirtual 209	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   48: astore_2
    //   49: aload_2
    //   50: astore_1
    //   51: aload_2
    //   52: invokestatic 212	u/aly/ex:b	(Ljava/io/InputStream;)[B
    //   55: astore_3
    //   56: aload_2
    //   57: invokestatic 215	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   60: aload_3
    //   61: areturn
    //   62: astore_3
    //   63: aconst_null
    //   64: astore_2
    //   65: aload_2
    //   66: astore_1
    //   67: aload_3
    //   68: invokevirtual 199	java/lang/Exception:printStackTrace	()V
    //   71: aload_2
    //   72: invokestatic 215	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   75: aconst_null
    //   76: areturn
    //   77: astore_1
    //   78: aconst_null
    //   79: astore_3
    //   80: aload_1
    //   81: astore_2
    //   82: aload_3
    //   83: invokestatic 215	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   86: aload_2
    //   87: athrow
    //   88: astore_2
    //   89: aload_1
    //   90: astore_3
    //   91: goto -9 -> 82
    //   94: astore_3
    //   95: goto -30 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	g
    //   4	63	1	localObject1	Object
    //   77	13	1	localObject2	Object
    //   19	68	2	localObject3	Object
    //   88	1	2	localObject4	Object
    //   55	6	3	arrayOfByte	byte[]
    //   62	6	3	localException1	Exception
    //   79	12	3	localObject5	Object
    //   94	1	3	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   41	49	62	java/lang/Exception
    //   41	49	77	finally
    //   51	56	88	finally
    //   67	71	88	finally
    //   51	56	94	java/lang/Exception
  }
  
  public final Object[] b(Context paramContext)
  {
    paramContext = k();
    Object[] arrayOfObject = new Object[4];
    if (paramContext.contains("id")) {
      arrayOfObject[0] = paramContext.getString("id", null);
    }
    if (paramContext.contains("url")) {
      arrayOfObject[1] = paramContext.getString("url", null);
    }
    if (paramContext.contains("age")) {
      arrayOfObject[2] = Integer.valueOf(paramContext.getInt("age", -1));
    }
    if (paramContext.contains("sex")) {
      arrayOfObject[3] = Integer.valueOf(paramContext.getInt("sex", -1));
    }
    return arrayOfObject;
  }
  
  public final void c()
  {
    b.deleteFile(l());
    b.deleteFile(m());
  }
  
  /* Error */
  public final byte[] d()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 196	com/umeng/analytics/g:n	()Ljava/lang/String;
    //   4: astore_1
    //   5: new 83	java/io/File
    //   8: dup
    //   9: getstatic 68	com/umeng/analytics/g:b	Landroid/content/Context;
    //   12: invokevirtual 163	android/content/Context:getFilesDir	()Ljava/io/File;
    //   15: aload_1
    //   16: invokespecial 166	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   19: astore 4
    //   21: aload 4
    //   23: invokevirtual 91	java/io/File:exists	()Z
    //   26: ifeq +17 -> 43
    //   29: aload 4
    //   31: invokevirtual 87	java/io/File:length	()J
    //   34: lstore 5
    //   36: lload 5
    //   38: lconst_0
    //   39: lcmp
    //   40: ifgt +5 -> 45
    //   43: aconst_null
    //   44: areturn
    //   45: getstatic 68	com/umeng/analytics/g:b	Landroid/content/Context;
    //   48: aload_1
    //   49: invokevirtual 209	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   52: astore_2
    //   53: aload_2
    //   54: astore_1
    //   55: aload_2
    //   56: invokestatic 212	u/aly/ex:b	(Ljava/io/InputStream;)[B
    //   59: astore_3
    //   60: aload_2
    //   61: invokestatic 215	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   64: aload_3
    //   65: areturn
    //   66: astore_1
    //   67: aload 4
    //   69: invokevirtual 205	java/io/File:delete	()Z
    //   72: pop
    //   73: aload_1
    //   74: invokevirtual 199	java/lang/Exception:printStackTrace	()V
    //   77: aconst_null
    //   78: areturn
    //   79: astore_3
    //   80: aconst_null
    //   81: astore_2
    //   82: aload_2
    //   83: astore_1
    //   84: aload_3
    //   85: invokevirtual 199	java/lang/Exception:printStackTrace	()V
    //   88: aload_2
    //   89: invokestatic 215	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   92: goto -15 -> 77
    //   95: aload_1
    //   96: invokestatic 215	u/aly/ex:c	(Ljava/io/InputStream;)V
    //   99: aload_2
    //   100: athrow
    //   101: astore_2
    //   102: goto -7 -> 95
    //   105: astore_3
    //   106: goto -24 -> 82
    //   109: astore_2
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -17 -> 95
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	g
    //   4	51	1	localObject1	Object
    //   66	8	1	localException1	Exception
    //   83	29	1	localObject2	Object
    //   52	48	2	localFileInputStream	java.io.FileInputStream
    //   101	1	2	localObject3	Object
    //   109	1	2	localObject4	Object
    //   59	6	3	arrayOfByte	byte[]
    //   79	6	3	localException2	Exception
    //   105	1	3	localException3	Exception
    //   19	49	4	localFile	File
    //   34	3	5	l1	long
    // Exception table:
    //   from	to	target	type
    //   21	36	66	java/lang/Exception
    //   60	64	66	java/lang/Exception
    //   88	92	66	java/lang/Exception
    //   95	101	66	java/lang/Exception
    //   45	53	79	java/lang/Exception
    //   55	60	101	finally
    //   84	88	101	finally
    //   55	60	105	java/lang/Exception
    //   45	53	109	finally
  }
  
  public final void e()
  {
    String str = n();
    boolean bool = b.deleteFile(str);
    es.a("--->", "delete envelope:" + bool);
  }
  
  public final boolean f()
  {
    Object localObject = n();
    localObject = new File(b.getFilesDir(), (String)localObject);
    return (((File)localObject).exists()) && (((File)localObject).length() > 0L);
  }
  
  public final SharedPreferences g()
  {
    return b.getSharedPreferences("mobclick_agent_online_setting_" + c, 0);
  }
  
  public final SharedPreferences h()
  {
    return b.getSharedPreferences("mobclick_agent_header_" + c, 0);
  }
  
  public final SharedPreferences i()
  {
    return b.getSharedPreferences("mobclick_agent_update_" + c, 0);
  }
  
  public final SharedPreferences j()
  {
    return b.getSharedPreferences("mobclick_agent_state_" + c, 0);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */