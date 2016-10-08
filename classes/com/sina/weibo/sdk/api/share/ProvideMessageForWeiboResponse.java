package com.sina.weibo.sdk.api.share;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.api.WeiboMessage;

public class ProvideMessageForWeiboResponse
  extends BaseResponse
{
  public WeiboMessage message;
  
  public ProvideMessageForWeiboResponse() {}
  
  public ProvideMessageForWeiboResponse(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  final boolean check(Context paramContext, VersionCheckHandler paramVersionCheckHandler)
  {
    if (this.message == null) {}
    do
    {
      return false;
      if (paramVersionCheckHandler == null) {
        break;
      }
      paramVersionCheckHandler.setPackageName(this.reqPackageName);
    } while (!paramVersionCheckHandler.check(paramContext, this.message));
    return this.message.checkArgs();
  }
  
  public void fromBundle(Bundle paramBundle)
  {
    super.fromBundle(paramBundle);
    this.message = new WeiboMessage(paramBundle);
  }
  
  public int getType()
  {
    return 2;
  }
  
  public void toBundle(Bundle paramBundle)
  {
    super.toBundle(paramBundle);
    paramBundle.putAll(this.message.toBundle(paramBundle));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\share\ProvideMessageForWeiboResponse.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */