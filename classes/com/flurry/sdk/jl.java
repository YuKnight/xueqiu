package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class jl
  extends BroadcastReceiver
{
  private static jl c;
  boolean a;
  boolean b;
  private boolean d = false;
  
  private jl()
  {
    Context localContext = js.a().c();
    if (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
      bool = true;
    }
    this.d = bool;
    this.b = a(localContext);
    if (this.d) {
      e();
    }
  }
  
  public static jl a()
  {
    try
    {
      if (c == null) {
        c = new jl();
      }
      jl localjl = c;
      return localjl;
    }
    finally {}
  }
  
  private boolean a(Context paramContext)
  {
    if ((!this.d) || (paramContext == null)) {}
    do
    {
      return true;
      paramContext = g().getActiveNetworkInfo();
    } while ((paramContext != null) && (paramContext.isConnected()));
    return false;
  }
  
  public static void b()
  {
    try
    {
      if (c != null) {
        c.f();
      }
      c = null;
      return;
    }
    finally {}
  }
  
  /* Error */
  private void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/flurry/sdk/jl:a	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 21	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   17: invokevirtual 24	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   20: astore_1
    //   21: aload_0
    //   22: aload_0
    //   23: aload_1
    //   24: invokespecial 35	com/flurry/sdk/jl:a	(Landroid/content/Context;)Z
    //   27: putfield 37	com/flurry/sdk/jl:b	Z
    //   30: aload_1
    //   31: aload_0
    //   32: new 68	android/content/IntentFilter
    //   35: dup
    //   36: ldc 70
    //   38: invokespecial 73	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   41: invokevirtual 77	android/content/Context:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    //   44: pop
    //   45: aload_0
    //   46: iconst_1
    //   47: putfield 66	com/flurry/sdk/jl:a	Z
    //   50: goto -39 -> 11
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	this	jl
    //   20	11	1	localContext	Context
    //   53	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	53	finally
    //   14	50	53	finally
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 66	com/flurry/sdk/jl:a	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 21	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   17: invokevirtual 24	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   20: aload_0
    //   21: invokevirtual 81	android/content/Context:unregisterReceiver	(Landroid/content/BroadcastReceiver;)V
    //   24: aload_0
    //   25: iconst_0
    //   26: putfield 66	com/flurry/sdk/jl:a	Z
    //   29: goto -18 -> 11
    //   32: astore_1
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_1
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	jl
    //   32	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	32	finally
    //   14	29	32	finally
  }
  
  private ConnectivityManager g()
  {
    return (ConnectivityManager)js.a().c().getSystemService("connectivity");
  }
  
  public boolean c()
  {
    return this.b;
  }
  
  public jl.a d()
  {
    if (!this.d) {
      return jl.a.a;
    }
    NetworkInfo localNetworkInfo = g().getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected())) {
      return jl.a.a;
    }
    switch (localNetworkInfo.getType())
    {
    case 6: 
    case 7: 
    default: 
      if (localNetworkInfo.isConnected()) {
        return jl.a.b;
      }
      break;
    case 1: 
      return jl.a.c;
    case 0: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
      return jl.a.d;
    case 8: 
      return jl.a.a;
    }
    return jl.a.a;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    boolean bool = a(paramContext);
    if (this.b != bool)
    {
      this.b = bool;
      paramContext = new jk();
      paramContext.a = bool;
      paramContext.b = d();
      paramContext.b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */