.class public Lorg/apache/http/impl/auth/KerberosSchemeFactory;
.super Ljava/lang/Object;
.source "KerberosSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;
.implements Lorg/apache/http/auth/AuthSchemeProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Immutable;
.end annotation


# instance fields
.field private final stripPort:Z

.field private final useCanonicalHostname:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/auth/KerberosSchemeFactory;-><init>(ZZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->stripPort:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->useCanonicalHostname:Z

    .line 62
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-boolean p1, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->stripPort:Z

    .line 55
    iput-boolean p2, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->useCanonicalHostname:Z

    .line 56
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Lorg/apache/http/impl/auth/KerberosScheme;

    iget-boolean v1, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->stripPort:Z

    iget-boolean v2, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->useCanonicalHostname:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/KerberosScheme;-><init>(ZZ)V

    return-object v0
.end method

.method public isStripPort()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->stripPort:Z

    return v0
.end method

.method public isUseCanonicalHostname()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->useCanonicalHostname:Z

    return v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Lorg/apache/http/impl/auth/KerberosScheme;

    iget-boolean v1, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->stripPort:Z

    iget-boolean v2, p0, Lorg/apache/http/impl/auth/KerberosSchemeFactory;->useCanonicalHostname:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/KerberosScheme;-><init>(ZZ)V

    return-object v0
.end method
