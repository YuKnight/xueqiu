package org.apache.cordova;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebStorage.QuotaUpdater;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.RelativeLayout.LayoutParams;
import org.json.JSONArray;
import org.json.JSONException;

public class e
  extends WebChromeClient
{
  public static final int FILECHOOSER_RESULTCODE = 5173;
  private static final String LOG_TAG = "CordovaChromeClient";
  private long MAX_QUOTA = 104857600L;
  private String TAG = "CordovaLog";
  protected CordovaWebView appView;
  protected f cordova;
  public ValueCallback<Uri> mUploadMessage;
  private View mVideoProgressView;
  
  public e(f paramf)
  {
    this.cordova = paramf;
  }
  
  public e(f paramf, CordovaWebView paramCordovaWebView)
  {
    this.cordova = paramf;
    this.appView = paramCordovaWebView;
  }
  
  public ValueCallback<Uri> getValueCallback()
  {
    return this.mUploadMessage;
  }
  
  public View getVideoLoadingProgressView()
  {
    if (this.mVideoProgressView == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(this.appView.getContext());
      localLinearLayout.setOrientation(1);
      Object localObject = new RelativeLayout.LayoutParams(-2, -2);
      ((RelativeLayout.LayoutParams)localObject).addRule(13);
      localLinearLayout.setLayoutParams((ViewGroup.LayoutParams)localObject);
      localObject = new ProgressBar(this.appView.getContext());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      localLayoutParams.gravity = 17;
      ((ProgressBar)localObject).setLayoutParams(localLayoutParams);
      localLinearLayout.addView((View)localObject);
      this.mVideoProgressView = localLinearLayout;
    }
    return this.mVideoProgressView;
  }
  
  public void onConsoleMessage(String paramString1, int paramInt, String paramString2)
  {
    if (Build.VERSION.SDK_INT == 7)
    {
      o.a(this.TAG, "%s: Line %d : %s", new Object[] { paramString2, Integer.valueOf(paramInt), paramString1 });
      super.onConsoleMessage(paramString1, paramInt, paramString2);
    }
  }
  
  @TargetApi(8)
  public boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    if (paramConsoleMessage.message() != null) {
      o.a(this.TAG, "%s: Line %d : %s", new Object[] { paramConsoleMessage.sourceId(), Integer.valueOf(paramConsoleMessage.lineNumber()), paramConsoleMessage.message() });
    }
    return super.onConsoleMessage(paramConsoleMessage);
  }
  
  public void onExceededDatabaseQuota(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3, WebStorage.QuotaUpdater paramQuotaUpdater)
  {
    o.a(this.TAG, "onExceededDatabaseQuota estimatedSize: %d  currentQuota: %d  totalUsedQuota: %d", new Object[] { Long.valueOf(paramLong2), Long.valueOf(paramLong1), Long.valueOf(paramLong3) });
    paramQuotaUpdater.updateQuota(this.MAX_QUOTA);
  }
  
  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    super.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
    paramCallback.invoke(paramString, true, false);
  }
  
  public void onHideCustomView()
  {
    this.appView.b();
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, final JsResult paramJsResult)
  {
    paramWebView = new AlertDialog.Builder(this.cordova.getActivity());
    paramWebView.setMessage(paramString2);
    paramWebView.setTitle("Alert");
    paramWebView.setCancelable(true);
    paramWebView.setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramJsResult.confirm();
      }
    });
    paramWebView.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        paramJsResult.cancel();
      }
    });
    paramWebView.setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public final boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 4)
        {
          paramJsResult.confirm();
          return false;
        }
        return true;
      }
    });
    paramWebView.show();
    return true;
  }
  
  public boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, final JsResult paramJsResult)
  {
    paramWebView = new AlertDialog.Builder(this.cordova.getActivity());
    paramWebView.setMessage(paramString2);
    paramWebView.setTitle("Confirm");
    paramWebView.setCancelable(true);
    paramWebView.setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramJsResult.confirm();
      }
    });
    paramWebView.setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramJsResult.cancel();
      }
    });
    paramWebView.setOnCancelListener(new DialogInterface.OnCancelListener()
    {
      public final void onCancel(DialogInterface paramAnonymousDialogInterface)
      {
        paramJsResult.cancel();
      }
    });
    paramWebView.setOnKeyListener(new DialogInterface.OnKeyListener()
    {
      public final boolean onKey(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 4)
        {
          paramJsResult.cancel();
          return false;
        }
        return true;
      }
    });
    paramWebView.show();
    return true;
  }
  
  public boolean onJsPrompt(WebView paramWebView, final String paramString1, String paramString2, String paramString3, final JsPromptResult paramJsPromptResult)
  {
    if ((paramString1.startsWith("file://")) || (c.b(paramString1))) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) && (paramString3 != null) && (paramString3.length() > 3) && (paramString3.substring(0, 4).equals("gap:"))) {}
      for (;;)
      {
        try
        {
          paramString3 = new JSONArray(paramString3.substring(4));
          paramWebView = paramString3.getString(0);
          paramString1 = paramString3.getString(1);
          paramString3 = paramString3.getString(2);
          paramString1 = this.appView.e.exec(paramWebView, paramString1, paramString3, paramString2);
          paramWebView = paramString1;
          if (paramString1 == null) {
            paramWebView = "";
          }
          paramJsPromptResult.confirm(paramWebView);
          return true;
        }
        catch (JSONException paramWebView)
        {
          paramWebView.printStackTrace();
          return false;
        }
        if ((i != 0) && (paramString3 != null) && (paramString3.equals("gap_bridge_mode:")))
        {
          try
          {
            this.appView.e.setNativeToJsBridgeMode(Integer.parseInt(paramString2));
            paramJsPromptResult.confirm("");
          }
          catch (NumberFormatException paramWebView)
          {
            paramJsPromptResult.confirm("");
            paramWebView.printStackTrace();
          }
        }
        else if ((i != 0) && (paramString3 != null) && (paramString3.equals("gap_poll:")))
        {
          paramString1 = this.appView.e.retrieveJsMessages("1".equals(paramString2));
          paramWebView = paramString1;
          if (paramString1 == null) {
            paramWebView = "";
          }
          paramJsPromptResult.confirm(paramWebView);
        }
        else if ((paramString3 != null) && (paramString3.equals("gap_init:")))
        {
          paramJsPromptResult.confirm("OK");
        }
        else
        {
          paramWebView = new AlertDialog.Builder(this.cordova.getActivity());
          paramWebView.setMessage(paramString2);
          paramString1 = new EditText(this.cordova.getActivity());
          if (paramString3 != null) {
            paramString1.setText(paramString3);
          }
          paramWebView.setView(paramString1);
          paramWebView.setCancelable(false);
          paramWebView.setPositiveButton(17039370, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramAnonymousDialogInterface = paramString1.getText().toString();
              paramJsPromptResult.confirm(paramAnonymousDialogInterface);
            }
          });
          paramWebView.setNegativeButton(17039360, new DialogInterface.OnClickListener()
          {
            public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
            {
              paramJsPromptResult.cancel();
            }
          });
          paramWebView.show();
        }
      }
    }
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    CordovaWebView localCordovaWebView = this.appView;
    Log.d("CordovaWebView", "showing Custom View");
    if (localCordovaWebView.f != null)
    {
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    localCordovaWebView.f = paramView;
    localCordovaWebView.g = paramCustomViewCallback;
    paramCustomViewCallback = (ViewGroup)localCordovaWebView.getParent();
    paramCustomViewCallback.addView(paramView, CordovaWebView.h);
    localCordovaWebView.setVisibility(8);
    paramCustomViewCallback.setVisibility(0);
    paramCustomViewCallback.bringToFront();
  }
  
  public void openFileChooser(ValueCallback<Uri> paramValueCallback)
  {
    openFileChooser(paramValueCallback, "*/*");
  }
  
  public void openFileChooser(ValueCallback<Uri> paramValueCallback, String paramString)
  {
    openFileChooser(paramValueCallback, paramString, null);
  }
  
  public void openFileChooser(ValueCallback<Uri> paramValueCallback, String paramString1, String paramString2)
  {
    this.mUploadMessage = paramValueCallback;
    paramValueCallback = new Intent("android.intent.action.GET_CONTENT");
    paramValueCallback.addCategory("android.intent.category.OPENABLE");
    paramValueCallback.setType("*/*");
    this.cordova.getActivity().startActivityForResult(Intent.createChooser(paramValueCallback, "File Browser"), 5173);
  }
  
  public void setWebView(CordovaWebView paramCordovaWebView)
  {
    this.appView = paramCordovaWebView;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */