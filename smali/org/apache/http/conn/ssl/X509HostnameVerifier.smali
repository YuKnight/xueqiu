.class public interface abstract Lorg/apache/http/conn/ssl/X509HostnameVerifier;
.super Ljava/lang/Object;
.source "X509HostnameVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
.end method

.method public abstract verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
.end method

.method public abstract verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method
