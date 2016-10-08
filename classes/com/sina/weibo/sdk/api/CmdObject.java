package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class CmdObject
  extends BaseMediaObject
{
  public static final String CMD_HOME = "home";
  public static final Parcelable.Creator<CmdObject> CREATOR = new Parcelable.Creator()
  {
    public CmdObject createFromParcel(Parcel paramAnonymousParcel)
    {
      return new CmdObject(paramAnonymousParcel);
    }
    
    public CmdObject[] newArray(int paramAnonymousInt)
    {
      return new CmdObject[paramAnonymousInt];
    }
  };
  public String cmd;
  
  public CmdObject() {}
  
  public CmdObject(Parcel paramParcel)
  {
    this.cmd = paramParcel.readString();
  }
  
  public boolean checkArgs()
  {
    return (this.cmd != null) && (this.cmd.length() != 0) && (this.cmd.length() <= 1024);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getObjType()
  {
    return 7;
  }
  
  protected BaseMediaObject toExtraMediaObject(String paramString)
  {
    return this;
  }
  
  protected String toExtraMediaString()
  {
    return "";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.cmd);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\api\CmdObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */