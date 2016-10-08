package com.flurry.sdk;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class ii
  extends ks<ij>
{
  public static long a;
  private static final String b = ii.class.getSimpleName();
  
  public ii()
  {
    a(30000L);
  }
  
  private void a(ik paramik, ij paramij)
  {
    kg.a(3, b, paramij.m() + " report sent successfully to : " + paramij.i());
    im.a().a(paramik);
    c(paramij);
  }
  
  private void a(ik paramik, ij paramij, kn<?, ?> paramkn)
  {
    Object localObject2 = null;
    List localList = paramkn.b("Location");
    Object localObject1 = localObject2;
    if (localList != null)
    {
      localObject1 = localObject2;
      if (localList.size() > 0) {
        localObject1 = ma.b((String)localList.get(0), paramij.s());
      }
    }
    boolean bool = im.a().a(paramik, (String)localObject1);
    if (bool) {
      kg.a(3, b, "Received redirect url. Retrying: " + (String)localObject1);
    }
    while (bool)
    {
      paramij.c((String)localObject1);
      paramkn.a((String)localObject1);
      paramkn.c("Location");
      jq.a().a(this, paramkn);
      return;
      kg.a(3, b, "Received redirect url. Retrying: false");
    }
    c(paramij);
  }
  
  private void a(ik paramik, ij paramij, String paramString)
  {
    boolean bool = im.a().b(paramik, paramString);
    kg.a(3, b, "Failed report retrying: " + bool);
    if (bool)
    {
      d(paramij);
      return;
    }
    c(paramij);
  }
  
  private void b(ik paramik, ij paramij)
  {
    im.a().b(paramik);
    c(paramij);
  }
  
  protected jz<List<ij>> a()
  {
    new jz(js.a().c().getFileStreamPath(".yflurryanpulsecallbackreporter"), ".yflurryanpulsecallbackreporter", 2, new le()
    {
      public lb<List<ij>> a(int paramAnonymousInt)
      {
        return new la(new ij.a());
      }
    });
  }
  
  protected void a(final ij paramij)
  {
    kg.a(3, b, "Sending next pulse report to " + paramij.i() + " at: " + paramij.t());
    long l2 = je.a().d();
    long l1 = l2;
    if (l2 == 0L) {
      l1 = a;
    }
    long l3 = je.a().g();
    l2 = l3;
    if (l3 == 0L) {
      l2 = System.currentTimeMillis() - l1;
    }
    final ik localik = new ik(paramij, l1, l2, paramij.r());
    kn localkn = new kn();
    localkn.a(paramij.t());
    localkn.d(100000);
    if (paramij.f().equals(iq.c))
    {
      localkn.a(new kx());
      if (paramij.l() != null) {
        localkn.a(paramij.l().getBytes());
      }
      localkn.a(kp.a.c);
    }
    for (;;)
    {
      localkn.a(paramij.j() * 1000);
      localkn.b(paramij.k() * 1000);
      localkn.c(true);
      localkn.a(true);
      localkn.c((paramij.j() + paramij.k()) * 1000);
      Map localMap = paramij.h();
      if (localMap == null) {
        break;
      }
      Iterator localIterator = paramij.h().keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localkn.a(str, (String)localMap.get(str));
      }
      localkn.a(kp.a.b);
    }
    localkn.b(false);
    localkn.a(new kn.a()
    {
      public void a(kn<byte[], String> paramAnonymouskn, String paramAnonymousString)
      {
        kg.a(3, ii.b(), "Pulse report to " + paramij.i() + " for " + paramij.m() + ", HTTP status code is: " + paramAnonymouskn.h());
        int i = paramAnonymouskn.h();
        localik.a((int)paramAnonymouskn.c());
        localik.e = i;
        if (!paramAnonymouskn.f())
        {
          Exception localException = paramAnonymouskn.j();
          if (paramAnonymouskn.d())
          {
            if (paramAnonymouskn.i()) {
              kg.a(3, ii.b(), "Timeout occured when trying to connect to: " + paramij.i() + ". Exception: " + paramAnonymouskn.j().getMessage());
            }
            for (;;)
            {
              ii.a(ii.this, localik, paramij);
              return;
              kg.a(3, ii.b(), "Manually managed http request timeout occured for: " + paramij.i());
            }
          }
          kg.a(3, ii.b(), "Error occured when trying to connect to: " + paramij.i() + ". Exception: " + localException.getMessage());
          ii.a(ii.this, localik, paramij, paramAnonymousString);
          return;
        }
        if ((i >= 200) && (i < 300))
        {
          ii.b(ii.this, localik, paramij);
          return;
        }
        if ((i >= 300) && (i < 400))
        {
          ii.a(ii.this, localik, paramij, paramAnonymouskn);
          return;
        }
        kg.a(3, ii.b(), paramij.m() + " report failed sending to : " + paramij.i());
        ii.a(ii.this, localik, paramij, paramAnonymousString);
      }
    });
    jq.a().a(this, localkn);
  }
  
  protected void a(List<ij> paramList)
  {
    try
    {
      im.a().d();
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  protected void b(List<ij> paramList)
  {
    Object localObject1;
    Object localObject2;
    try
    {
      localObject1 = im.a().e();
      if (localObject1 == null) {}
      while (((List)localObject1).size() == 0) {
        return;
      }
      kg.a(3, b, "Restoring " + ((List)localObject1).size() + " from report queue.");
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (in)((Iterator)localObject1).next();
        im.a().b((in)localObject2);
      }
      localObject1 = im.a().c().iterator();
    }
    finally {}
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((in)((Iterator)localObject1).next()).d().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ij localij = (ij)((Iterator)localObject2).next();
        if (!localij.n())
        {
          kg.a(3, b, "Callback for " + localij.m() + " to " + localij.i() + " not completed.  Adding to reporter queue.");
          paramList.add(localij);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */