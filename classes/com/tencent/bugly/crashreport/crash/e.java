package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import android.os.Process;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import java.util.HashMap;
import java.util.Map;

public final class e
  implements Thread.UncaughtExceptionHandler
{
  private static Thread.UncaughtExceptionHandler f;
  private static boolean h;
  private static final Object i = new Object();
  private static int j;
  private Context a;
  private b b;
  private com.tencent.bugly.crashreport.common.strategy.a c;
  private com.tencent.bugly.crashreport.common.info.a d;
  private Thread.UncaughtExceptionHandler e;
  private boolean g = false;
  
  public e(Context paramContext, b paramb, com.tencent.bugly.crashreport.common.strategy.a parama, com.tencent.bugly.crashreport.common.info.a parama1)
  {
    this.a = paramContext;
    this.b = paramb;
    this.c = parama;
    this.d = parama1;
  }
  
  private static String a(Throwable paramThrowable, int paramInt)
  {
    if (paramThrowable == null) {
      return null;
    }
    localStringBuilder = new StringBuilder();
    try
    {
      if (paramThrowable.getStackTrace() != null)
      {
        paramThrowable = paramThrowable.getStackTrace();
        int m = paramThrowable.length;
        int k = 0;
        while (k < m)
        {
          Object localObject = paramThrowable[k];
          if ((paramInt > 0) && (localStringBuilder.length() >= paramInt))
          {
            localStringBuilder.append("\n[Stack over limit size :" + paramInt + " , has been cutted !]");
            return localStringBuilder.toString();
          }
          localStringBuilder.append(((StackTraceElement)localObject).toString()).append("\n");
          k += 1;
        }
      }
      return localStringBuilder.toString();
    }
    catch (Throwable paramThrowable)
    {
      w.e("gen stack error %s", new Object[] { paramThrowable.toString() });
    }
  }
  
  private void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    try
    {
      this.e = paramUncaughtExceptionHandler;
      return;
    }
    finally
    {
      paramUncaughtExceptionHandler = finally;
      throw paramUncaughtExceptionHandler;
    }
  }
  
  private CrashDetailBean b(Thread paramThread, Throwable paramThrowable, boolean paramBoolean, String paramString, byte[] paramArrayOfByte)
  {
    boolean bool = c.a().l();
    Object localObject;
    CrashDetailBean localCrashDetailBean;
    if ((bool) && (paramBoolean))
    {
      localObject = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
      if ((bool) && (paramBoolean)) {
        w.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
      }
      localCrashDetailBean = new CrashDetailBean();
      w.e("3", new Object[0]);
      localCrashDetailBean.B = com.tencent.bugly.proguard.a.i();
      localCrashDetailBean.C = com.tencent.bugly.proguard.a.g();
      localCrashDetailBean.D = com.tencent.bugly.proguard.a.k();
      localCrashDetailBean.E = this.d.o();
      localCrashDetailBean.F = this.d.n();
      localCrashDetailBean.G = this.d.p();
      localCrashDetailBean.w = com.tencent.bugly.proguard.a.a(this.a, c.d, null);
      localCrashDetailBean.x = x.a(paramBoolean);
      if (localCrashDetailBean.x != null) {
        break label248;
      }
      k = 0;
      label155:
      w.a("user log size:%d", new Object[] { Integer.valueOf(k) });
      if (!paramBoolean) {
        break label259;
      }
    }
    label248:
    label259:
    for (int k = 0;; k = 2)
    {
      localCrashDetailBean.b = k;
      localCrashDetailBean.e = this.d.g();
      localCrashDetailBean.f = this.d.i;
      localCrashDetailBean.g = this.d.t();
      localCrashDetailBean.m = this.d.f();
      if (paramThrowable != null) {
        break label973;
      }
      return null;
      localObject = "";
      break;
      k = localCrashDetailBean.x.length;
      break label155;
    }
    for (;;)
    {
      Throwable localThrowable;
      if (localThrowable.getCause() != null)
      {
        localThrowable = localThrowable.getCause();
      }
      else
      {
        String str3 = paramThrowable.getClass().getName();
        String str2 = b(paramThrowable, 1000);
        String str1 = str2;
        if (str2 == null) {
          str1 = "";
        }
        k = paramThrowable.getStackTrace().length;
        if (paramThrowable.getCause() != null) {
          bool = true;
        }
        for (;;)
        {
          w.e("stack frame :%d, has cause %b", new Object[] { Integer.valueOf(k), Boolean.valueOf(bool) });
          str2 = "";
          if (paramThrowable.getStackTrace().length > 0) {
            str2 = paramThrowable.getStackTrace()[0].toString();
          }
          if (localThrowable != paramThrowable)
          {
            localCrashDetailBean.n = localThrowable.getClass().getName();
            localCrashDetailBean.o = b(localThrowable, 1000);
            if (localCrashDetailBean.o == null) {
              localCrashDetailBean.o = "";
            }
            localCrashDetailBean.p = localThrowable.getStackTrace()[0].toString();
            localObject = new StringBuilder();
            ((StringBuilder)localObject).append(str3).append(":").append(str1).append("\n");
            ((StringBuilder)localObject).append(str2);
            ((StringBuilder)localObject).append("\n......");
            ((StringBuilder)localObject).append("\nCaused by:\n");
            ((StringBuilder)localObject).append(localCrashDetailBean.n).append(":").append(localCrashDetailBean.o).append("\n");
            paramThrowable = a(localThrowable, c.e);
            ((StringBuilder)localObject).append(paramThrowable);
            localCrashDetailBean.q = ((StringBuilder)localObject).toString();
            localCrashDetailBean.r = System.currentTimeMillis();
            localCrashDetailBean.u = com.tencent.bugly.proguard.a.b(localCrashDetailBean.q.getBytes());
          }
          try
          {
            localCrashDetailBean.y = com.tencent.bugly.proguard.a.a(c.e, false);
            localCrashDetailBean.z = this.d.d;
            localCrashDetailBean.A = (paramThread.getName() + "(" + paramThread.getId() + ")");
            localCrashDetailBean.y.put(localCrashDetailBean.A, paramThrowable);
            localCrashDetailBean.H = this.d.v();
            localCrashDetailBean.h = this.d.s();
            localCrashDetailBean.i = this.d.E();
            localCrashDetailBean.L = this.d.a;
            localCrashDetailBean.M = this.d.n;
            localCrashDetailBean.O = this.d.B();
            localCrashDetailBean.P = this.d.C();
            localCrashDetailBean.Q = this.d.w();
            localCrashDetailBean.R = this.d.A();
            if (paramBoolean)
            {
              this.b.b(localCrashDetailBean);
              return localCrashDetailBean;
              bool = false;
              continue;
              localCrashDetailBean.n = str3;
              localCrashDetailBean.o = (str1 + (String)localObject);
              if (localCrashDetailBean.o == null) {
                localCrashDetailBean.o = "";
              }
              localCrashDetailBean.p = str2;
              paramThrowable = a(paramThrowable, c.e);
              localCrashDetailBean.q = paramThrowable;
            }
          }
          catch (Throwable paramThread)
          {
            for (;;)
            {
              w.e("handle crash error %s", new Object[] { paramThread.toString() });
            }
            if (paramString == null) {
              break label961;
            }
          }
        }
        if (paramString.length() > 0)
        {
          k = 1;
          label898:
          if ((paramArrayOfByte == null) || (paramArrayOfByte.length <= 0)) {
            break label967;
          }
        }
        label961:
        label967:
        for (int m = 1;; m = 0)
        {
          if (k != 0)
          {
            localCrashDetailBean.N = new HashMap(1);
            localCrashDetailBean.N.put("UserData", paramString);
          }
          if (m == 0) {
            break;
          }
          localCrashDetailBean.S = paramArrayOfByte;
          break;
          k = 0;
          break label898;
        }
        label973:
        localThrowable = paramThrowable;
      }
    }
  }
  
  private static String b(Throwable paramThrowable, int paramInt)
  {
    if (paramThrowable.getMessage() == null) {
      return "";
    }
    if (paramThrowable.getMessage().length() <= 1000) {
      return paramThrowable.getMessage();
    }
    return paramThrowable.getMessage().substring(0, 1000) + "\n[Message over limit size:1000, has been cutted!]";
  }
  
  private static boolean b(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    if (paramUncaughtExceptionHandler == null) {}
    for (;;)
    {
      return true;
      paramUncaughtExceptionHandler = paramUncaughtExceptionHandler.getClass().getName();
      StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
      int m = arrayOfStackTraceElement.length;
      int k = 0;
      while (k < m)
      {
        Object localObject = arrayOfStackTraceElement[k];
        String str = ((StackTraceElement)localObject).getClassName();
        localObject = ((StackTraceElement)localObject).getMethodName();
        if ((paramUncaughtExceptionHandler.equals(str)) && ("uncaughtException".equals(localObject))) {
          return false;
        }
        k += 1;
      }
    }
  }
  
  private static boolean c()
  {
    synchronized (i)
    {
      boolean bool = h;
      h = true;
      return bool;
    }
  }
  
  public final void a()
  {
    for (;;)
    {
      try
      {
        if (j >= 10)
        {
          w.a("java crash handler over %d, no need set.", new Object[] { Integer.valueOf(10) });
          return;
        }
        Thread.UncaughtExceptionHandler localUncaughtExceptionHandler1 = Thread.getDefaultUncaughtExceptionHandler();
        if ((localUncaughtExceptionHandler1 == null) || (getClass().getName().equals(localUncaughtExceptionHandler1.getClass().getName()))) {
          continue;
        }
        if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(localUncaughtExceptionHandler1.getClass().getName()))
        {
          w.a("backup system java handler: %s", new Object[] { localUncaughtExceptionHandler1.toString() });
          f = localUncaughtExceptionHandler1;
          this.e = localUncaughtExceptionHandler1;
          a(localUncaughtExceptionHandler1);
          Thread.setDefaultUncaughtExceptionHandler(this);
          this.g = true;
          j += 1;
          w.a("registered java monitor: %s", new Object[] { toString() });
          continue;
        }
      }
      finally {}
      tmp158_155[0] = localUncaughtExceptionHandler2.toString();
      w.a("backup java handler: %s", tmp158_155);
      this.e = localUncaughtExceptionHandler2;
    }
  }
  
  /* Error */
  public final void a(StrategyBean paramStrategyBean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +46 -> 49
    //   6: aload_1
    //   7: getfield 420	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   10: aload_0
    //   11: getfield 35	com/tencent/bugly/crashreport/crash/e:g	Z
    //   14: if_icmpeq +35 -> 49
    //   17: ldc_w 422
    //   20: iconst_1
    //   21: anewarray 4	java/lang/Object
    //   24: dup
    //   25: iconst_0
    //   26: aload_1
    //   27: getfield 420	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   30: invokestatic 222	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   33: aastore
    //   34: invokestatic 178	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   37: pop
    //   38: aload_1
    //   39: getfield 420	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   42: ifeq +10 -> 52
    //   45: aload_0
    //   46: invokevirtual 424	com/tencent/bugly/crashreport/crash/e:a	()V
    //   49: aload_0
    //   50: monitorexit
    //   51: return
    //   52: aload_0
    //   53: invokevirtual 426	com/tencent/bugly/crashreport/crash/e:b	()V
    //   56: goto -7 -> 49
    //   59: astore_1
    //   60: aload_0
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	e
    //   0	64	1	paramStrategyBean	StrategyBean
    // Exception table:
    //   from	to	target	type
    //   6	49	59	finally
    //   52	56	59	finally
  }
  
  public final void a(Thread paramThread, Throwable paramThrowable, boolean paramBoolean, String paramString, byte[] paramArrayOfByte)
  {
    if (paramBoolean)
    {
      w.e("Java Crash Happen cause by %s(%d)", new Object[] { paramThread.getName(), Long.valueOf(paramThread.getId()) });
      if (c())
      {
        w.a("this class has handled this exception", new Object[0]);
        if (f == null) {
          break label110;
        }
        w.a("call system handler", new Object[0]);
        f.uncaughtException(paramThread, paramThrowable);
      }
    }
    for (;;)
    {
      try
      {
        if (!this.g)
        {
          w.c("Java crash handler is disable. Just return.", new Object[0]);
          if (!paramBoolean)
          {
            w.e("not to shut down return", new Object[0]);
            return;
            label110:
            w.e("current process die", new Object[0]);
            Process.killProcess(Process.myPid());
            System.exit(1);
            continue;
            w.e("Java Catch Happen", new Object[0]);
            continue;
          }
          if ((this.e != null) && (b(this.e)))
          {
            w.e("sys default last handle start!", new Object[0]);
            this.e.uncaughtException(paramThread, paramThrowable);
            w.e("sys default last handle end!", new Object[0]);
            return;
          }
          if (f != null)
          {
            w.e("system handle start!", new Object[0]);
            f.uncaughtException(paramThread, paramThrowable);
            w.e("system handle end!", new Object[0]);
            return;
          }
          w.e("crashreport last handle start!", new Object[0]);
          w.e("current process die", new Object[0]);
          Process.killProcess(Process.myPid());
          System.exit(1);
          w.e("crashreport last handle end!", new Object[0]);
          return;
        }
        if (!this.c.b())
        {
          w.e("waiting for remote sync", new Object[0]);
          k = 0;
          boolean bool = this.c.b();
          if (bool) {}
        }
      }
      catch (Throwable paramString)
      {
        int k;
        int m;
        if (w.a(paramString)) {
          continue;
        }
        paramString.printStackTrace();
        if (paramBoolean) {
          continue;
        }
        w.e("not to shut down return", new Object[0]);
        return;
        paramString = "JAVA_CATCH";
        continue;
        if ((this.e == null) || (!b(this.e))) {
          continue;
        }
        w.e("sys default last handle start!", new Object[0]);
        this.e.uncaughtException(paramThread, paramThrowable);
        w.e("sys default last handle end!", new Object[0]);
        return;
        if (f == null) {
          continue;
        }
        w.e("system handle start!", new Object[0]);
        f.uncaughtException(paramThread, paramThrowable);
        w.e("system handle end!", new Object[0]);
        return;
        w.e("crashreport last handle start!", new Object[0]);
        w.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
        w.e("crashreport last handle end!", new Object[0]);
        return;
        paramArrayOfByte = b(paramThread, paramThrowable, paramBoolean, paramString, paramArrayOfByte);
        if (paramArrayOfByte != null) {
          continue;
        }
        w.e("pkg crash datas fail!", new Object[0]);
        if (paramBoolean) {
          continue;
        }
        w.e("not to shut down return", new Object[0]);
        return;
        if ((this.e == null) || (!b(this.e))) {
          continue;
        }
        w.e("sys default last handle start!", new Object[0]);
        this.e.uncaughtException(paramThread, paramThrowable);
        w.e("sys default last handle end!", new Object[0]);
        return;
        if (f == null) {
          continue;
        }
        w.e("system handle start!", new Object[0]);
        f.uncaughtException(paramThread, paramThrowable);
        w.e("system handle end!", new Object[0]);
        return;
        w.e("crashreport last handle start!", new Object[0]);
        w.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
        w.e("crashreport last handle end!", new Object[0]);
        return;
        if (!paramBoolean) {
          continue;
        }
        paramString = "JAVA_CRASH";
        b.a(paramString, com.tencent.bugly.proguard.a.n(), this.d.d, paramThread, com.tencent.bugly.proguard.a.a(paramThrowable), paramArrayOfByte);
        if (this.b.a(paramArrayOfByte)) {
          continue;
        }
        this.b.a(paramArrayOfByte, 5000L, paramBoolean);
        if (paramBoolean) {
          continue;
        }
        w.e("not to shut down return", new Object[0]);
        return;
        paramString = "JAVA_CATCH";
        continue;
        if ((this.e == null) || (!b(this.e))) {
          continue;
        }
        w.e("sys default last handle start!", new Object[0]);
        this.e.uncaughtException(paramThread, paramThrowable);
        w.e("sys default last handle end!", new Object[0]);
        return;
        if (f == null) {
          continue;
        }
        w.e("system handle start!", new Object[0]);
        f.uncaughtException(paramThread, paramThrowable);
        w.e("system handle end!", new Object[0]);
        return;
        w.e("crashreport last handle start!", new Object[0]);
        w.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
        w.e("crashreport last handle end!", new Object[0]);
        return;
        if ((this.e == null) || (!b(this.e))) {
          continue;
        }
        w.e("sys default last handle start!", new Object[0]);
        this.e.uncaughtException(paramThread, paramThrowable);
        w.e("sys default last handle end!", new Object[0]);
        return;
        if (f == null) {
          continue;
        }
        w.e("system handle start!", new Object[0]);
        f.uncaughtException(paramThread, paramThrowable);
        w.e("system handle end!", new Object[0]);
        return;
        w.e("crashreport last handle start!", new Object[0]);
        w.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
        w.e("crashreport last handle end!", new Object[0]);
        return;
      }
      finally
      {
        if (paramBoolean) {
          continue;
        }
        w.e("not to shut down return", new Object[0]);
        return;
        if (this.e == null) {
          break label1228;
        }
      }
      try
      {
        Thread.sleep(500L);
        m = k + 500;
        k = m;
        if (m >= 5000)
        {
          if (!this.c.b()) {
            w.d("no remote but still store!", new Object[0]);
          }
          if ((!this.c.c().d) && (this.c.b()))
          {
            w.e("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new Object[0]);
            if (paramBoolean)
            {
              paramString = "JAVA_CRASH";
              b.a(paramString, com.tencent.bugly.proguard.a.n(), this.d.d, paramThread, com.tencent.bugly.proguard.a.a(paramThrowable), null);
              if (paramBoolean) {
                continue;
              }
              w.e("not to shut down return", new Object[0]);
            }
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    }
    if (b(this.e))
    {
      w.e("sys default last handle start!", new Object[0]);
      this.e.uncaughtException(paramThread, paramThrowable);
      w.e("sys default last handle end!", new Object[0]);
    }
    for (;;)
    {
      throw paramString;
      label1228:
      if (f != null)
      {
        w.e("system handle start!", new Object[0]);
        f.uncaughtException(paramThread, paramThrowable);
        w.e("system handle end!", new Object[0]);
      }
      else
      {
        w.e("crashreport last handle start!", new Object[0]);
        w.e("current process die", new Object[0]);
        Process.killProcess(Process.myPid());
        System.exit(1);
        w.e("crashreport last handle end!", new Object[0]);
      }
    }
  }
  
  public final void b()
  {
    try
    {
      this.g = false;
      w.a("close java monitor!", new Object[0]);
      if (Thread.getDefaultUncaughtExceptionHandler().getClass().getName().contains("bugly"))
      {
        w.a("Java monitor to unregister: %s", new Object[] { toString() });
        Thread.setDefaultUncaughtExceptionHandler(this.e);
        j -= 1;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    a(paramThread, paramThrowable, true, null, null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */