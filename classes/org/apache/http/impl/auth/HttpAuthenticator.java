package org.apache.http.impl.auth;

import java.util.Locale;
import java.util.Map;
import java.util.Queue;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.auth.AuthOption;
import org.apache.http.auth.AuthProtocolState;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationStrategy;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Asserts;

public class HttpAuthenticator
{
  private final Log log;
  
  public HttpAuthenticator()
  {
    this(null);
  }
  
  public HttpAuthenticator(Log paramLog)
  {
    if (paramLog != null) {}
    for (;;)
    {
      this.log = paramLog;
      return;
      paramLog = LogFactory.getLog(getClass());
    }
  }
  
  private Header doAuth(AuthScheme paramAuthScheme, Credentials paramCredentials, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if ((paramAuthScheme instanceof ContextAwareAuthScheme)) {
      return ((ContextAwareAuthScheme)paramAuthScheme).authenticate(paramCredentials, paramHttpRequest, paramHttpContext);
    }
    return paramAuthScheme.authenticate(paramCredentials, paramHttpRequest);
  }
  
  private void ensureAuthScheme(AuthScheme paramAuthScheme)
  {
    Asserts.notNull(paramAuthScheme, "Auth scheme");
  }
  
  public void generateAuthResponse(HttpRequest paramHttpRequest, AuthState paramAuthState, HttpContext paramHttpContext)
  {
    AuthScheme localAuthScheme = paramAuthState.getAuthScheme();
    Object localObject = paramAuthState.getCredentials();
    switch (1.$SwitchMap$org$apache$http$auth$AuthProtocolState[paramAuthState.getState().ordinal()])
    {
    }
    for (;;)
    {
      if (localAuthScheme != null) {}
      try
      {
        paramHttpRequest.addHeader(doAuth(localAuthScheme, (Credentials)localObject, paramHttpRequest, paramHttpContext));
        for (;;)
        {
          return;
          ensureAuthScheme(localAuthScheme);
          if (!localAuthScheme.isConnectionBased()) {
            break;
          }
          return;
          Queue localQueue = paramAuthState.getAuthOptions();
          if (localQueue == null) {
            break label265;
          }
          while (!localQueue.isEmpty())
          {
            localObject = (AuthOption)localQueue.remove();
            localAuthScheme = ((AuthOption)localObject).getAuthScheme();
            localObject = ((AuthOption)localObject).getCredentials();
            paramAuthState.update(localAuthScheme, (Credentials)localObject);
            if (this.log.isDebugEnabled()) {
              this.log.debug("Generating response to an authentication challenge using " + localAuthScheme.getSchemeName() + " scheme");
            }
            try
            {
              paramHttpRequest.addHeader(doAuth(localAuthScheme, (Credentials)localObject, paramHttpRequest, paramHttpContext));
              return;
            }
            catch (AuthenticationException localAuthenticationException) {}
            if (this.log.isWarnEnabled()) {
              this.log.warn(localAuthScheme + " authentication error: " + localAuthenticationException.getMessage());
            }
          }
        }
        label265:
        ensureAuthScheme(localAuthScheme);
      }
      catch (AuthenticationException paramHttpRequest)
      {
        while (!this.log.isErrorEnabled()) {}
        this.log.error(localAuthScheme + " authentication error: " + paramHttpRequest.getMessage());
      }
    }
  }
  
  public boolean handleAuthChallenge(HttpHost paramHttpHost, HttpResponse paramHttpResponse, AuthenticationStrategy paramAuthenticationStrategy, AuthState paramAuthState, HttpContext paramHttpContext)
  {
    for (;;)
    {
      Map localMap;
      AuthScheme localAuthScheme;
      try
      {
        if (this.log.isDebugEnabled()) {
          this.log.debug(paramHttpHost.toHostString() + " requested authentication");
        }
        localMap = paramAuthenticationStrategy.getChallenges(paramHttpHost, paramHttpResponse, paramHttpContext);
        if (localMap.isEmpty())
        {
          this.log.debug("Response contains no authentication challenges");
          return false;
        }
        localAuthScheme = paramAuthState.getAuthScheme();
        switch (1.$SwitchMap$org$apache$http$auth$AuthProtocolState[paramAuthState.getState().ordinal()])
        {
        case 3: 
          paramHttpHost = paramAuthenticationStrategy.select(localMap, paramHttpHost, paramHttpResponse, paramHttpContext);
          if ((paramHttpHost == null) || (paramHttpHost.isEmpty())) {
            break label431;
          }
          if (this.log.isDebugEnabled()) {
            this.log.debug("Selected authentication options: " + paramHttpHost);
          }
          paramAuthState.setState(AuthProtocolState.CHALLENGED);
          paramAuthState.update(paramHttpHost);
          return true;
        }
      }
      catch (MalformedChallengeException paramHttpHost)
      {
        if (!this.log.isWarnEnabled()) {
          continue;
        }
        this.log.warn("Malformed challenge: " + paramHttpHost.getMessage());
        paramAuthState.reset();
        return false;
      }
      paramAuthState.reset();
      continue;
      if (localAuthScheme == null)
      {
        this.log.debug("Auth scheme is null");
        paramAuthenticationStrategy.authFailed(paramHttpHost, null, paramHttpContext);
        paramAuthState.reset();
        paramAuthState.setState(AuthProtocolState.FAILURE);
        return false;
      }
      if (localAuthScheme != null)
      {
        Header localHeader = (Header)localMap.get(localAuthScheme.getSchemeName().toLowerCase(Locale.ROOT));
        if (localHeader != null)
        {
          this.log.debug("Authorization challenge processed");
          localAuthScheme.processChallenge(localHeader);
          if (localAuthScheme.isComplete())
          {
            this.log.debug("Authentication failed");
            paramAuthenticationStrategy.authFailed(paramHttpHost, paramAuthState.getAuthScheme(), paramHttpContext);
            paramAuthState.reset();
            paramAuthState.setState(AuthProtocolState.FAILURE);
            return false;
          }
          paramAuthState.setState(AuthProtocolState.HANDSHAKE);
          return true;
        }
        paramAuthState.reset();
        continue;
        label431:
        return false;
      }
    }
    return false;
  }
  
  public boolean isAuthenticationRequested(HttpHost paramHttpHost, HttpResponse paramHttpResponse, AuthenticationStrategy paramAuthenticationStrategy, AuthState paramAuthState, HttpContext paramHttpContext)
  {
    if (paramAuthenticationStrategy.isAuthenticationRequested(paramHttpHost, paramHttpResponse, paramHttpContext))
    {
      this.log.debug("Authentication required");
      if (paramAuthState.getState() == AuthProtocolState.SUCCESS) {
        paramAuthenticationStrategy.authFailed(paramHttpHost, paramAuthState.getAuthScheme(), paramHttpContext);
      }
      return true;
    }
    switch (1.$SwitchMap$org$apache$http$auth$AuthProtocolState[paramAuthState.getState().ordinal()])
    {
    default: 
      paramAuthState.setState(AuthProtocolState.UNCHALLENGED);
    }
    for (;;)
    {
      return false;
      this.log.debug("Authentication succeeded");
      paramAuthState.setState(AuthProtocolState.SUCCESS);
      paramAuthenticationStrategy.authSucceeded(paramHttpHost, paramAuthState.getAuthScheme(), paramHttpContext);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\http\impl\auth\HttpAuthenticator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */