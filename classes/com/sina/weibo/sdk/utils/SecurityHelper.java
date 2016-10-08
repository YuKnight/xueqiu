package com.sina.weibo.sdk.utils;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import com.sina.weibo.sdk.api.share.ApiUtils;
import com.sina.weibo.sdk.api.share.ApiUtils.WeiboInfo;

public class SecurityHelper
{
  private static final String WEIBO_MD5_SIGNATURE = "18da2bf10352443a00a5e046d9fca6bd";
  
  public static boolean checkResponseAppLegal(Context paramContext, Intent paramIntent)
  {
    Object localObject = ApiUtils.queryWeiboInfo(paramContext);
    if ((localObject != null) && (((ApiUtils.WeiboInfo)localObject).supportApi <= 10352)) {}
    for (;;)
    {
      return true;
      if (localObject != null)
      {
        if (paramIntent != null) {}
        for (localObject = paramIntent.getStringExtra("_weibo_appPackage"); (localObject == null) || (paramIntent.getStringExtra("_weibo_transaction") == null) || (!ApiUtils.validateWeiboSign(paramContext, (String)localObject)); localObject = null) {
          return false;
        }
      }
    }
  }
  
  public static boolean containSign(Signature[] paramArrayOfSignature, String paramString)
  {
    if ((paramArrayOfSignature == null) || (paramString == null)) {}
    for (;;)
    {
      return false;
      int j = paramArrayOfSignature.length;
      int i = 0;
      while (i < j)
      {
        if (paramString.equals(MD5.hexdigest(paramArrayOfSignature[i].toByteArray()))) {
          return true;
        }
        i += 1;
      }
    }
  }
  
  public static boolean validateAppSignatureForIntent(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager();
    if (paramContext == null) {}
    do
    {
      return false;
      paramIntent = paramContext.resolveActivity(paramIntent, 0);
    } while (paramIntent == null);
    paramIntent = paramIntent.activityInfo.packageName;
    try
    {
      boolean bool = containSign(paramContext.getPackageInfo(paramIntent, 64).signatures, "18da2bf10352443a00a5e046d9fca6bd");
      return bool;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
      return false;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\utils\SecurityHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */