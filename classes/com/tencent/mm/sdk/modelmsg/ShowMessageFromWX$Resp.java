package com.tencent.mm.sdk.modelmsg;

import android.os.Bundle;
import com.tencent.mm.sdk.modelbase.BaseResp;

public class ShowMessageFromWX$Resp
  extends BaseResp
{
  public ShowMessageFromWX$Resp() {}
  
  public ShowMessageFromWX$Resp(Bundle paramBundle)
  {
    fromBundle(paramBundle);
  }
  
  public boolean checkArgs()
  {
    return true;
  }
  
  public int getType()
  {
    return 4;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\mm\sdk\modelmsg\ShowMessageFromWX$Resp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */