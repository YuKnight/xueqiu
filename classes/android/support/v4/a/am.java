package android.support.v4.a;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.support.v4.content.i;
import android.util.Log;

class am
  implements al
{
  public Intent a(Activity paramActivity)
  {
    String str = ak.b(paramActivity);
    if (str == null) {
      return null;
    }
    ComponentName localComponentName = new ComponentName(paramActivity, str);
    try
    {
      if (ak.b(paramActivity, localComponentName) == null) {
        return i.a(localComponentName);
      }
      paramActivity = new Intent().setComponent(localComponentName);
      return paramActivity;
    }
    catch (PackageManager.NameNotFoundException paramActivity)
    {
      Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + str + "' in manifest");
    }
    return null;
  }
  
  public String a(Context paramContext, ActivityInfo paramActivityInfo)
  {
    if (paramActivityInfo.metaData == null) {
      paramActivityInfo = null;
    }
    String str;
    do
    {
      return paramActivityInfo;
      str = paramActivityInfo.metaData.getString("android.support.PARENT_ACTIVITY");
      if (str == null) {
        return null;
      }
      paramActivityInfo = str;
    } while (str.charAt(0) != '.');
    return paramContext.getPackageName() + str;
  }
  
  public boolean a(Activity paramActivity, Intent paramIntent)
  {
    paramActivity = paramActivity.getIntent().getAction();
    return (paramActivity != null) && (!paramActivity.equals("android.intent.action.MAIN"));
  }
  
  public void b(Activity paramActivity, Intent paramIntent)
  {
    paramIntent.addFlags(67108864);
    paramActivity.startActivity(paramIntent);
    paramActivity.finish();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\am.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */