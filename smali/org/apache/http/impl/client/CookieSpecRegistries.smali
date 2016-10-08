.class public final Lorg/apache/http/impl/client/CookieSpecRegistries;
.super Ljava/lang/Object;
.source "CookieSpecRegistries.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDefault()Lorg/apache/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    invoke-static {}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->getDefault()Lorg/apache/http/conn/util/PublicSuffixMatcher;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CookieSpecRegistries;->createDefault(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/config/Lookup;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/config/Lookup;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/util/PublicSuffixMatcher;",
            ")",
            "Lorg/apache/http/config/Lookup",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p0}, Lorg/apache/http/impl/client/CookieSpecRegistries;->createDefaultBuilder(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultBuilder()Lorg/apache/http/config/RegistryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/RegistryBuilder",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->getDefault()Lorg/apache/http/conn/util/PublicSuffixMatcher;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/CookieSpecRegistries;->createDefaultBuilder(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static createDefaultBuilder(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/config/RegistryBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/util/PublicSuffixMatcher;",
            ")",
            "Lorg/apache/http/config/RegistryBuilder",
            "<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;

    invoke-direct {v0, p0}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    .line 51
    new-instance v1, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;

    sget-object v2, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->RELAXED:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-direct {v1, v2, p0}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    .line 53
    new-instance v2, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;

    sget-object v3, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;->STRICT:Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;

    invoke-direct {v2, v3, p0}, Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/RFC6265CookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    .line 55
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v3

    const-string v4, "best-match"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v3

    const-string v4, "compatibility"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v3, "standard"

    invoke-virtual {v0, v3, v1}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "standard-strict"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "netscape"

    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    const-string v1, "ignoreCookies"

    new-instance v2, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;

    invoke-direct {v2}, Lorg/apache/http/impl/cookie/IgnoreSpecProvider;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    return-object v0
.end method
