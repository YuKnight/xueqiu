.class public final Lc/m;
.super Ljava/lang/Object;
.source "Okio.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lc/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/m;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a(Lc/r;)Lc/e;
    .locals 2

    .prologue
    .line 58
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    new-instance v0, Lc/n;

    invoke-direct {v0, p0}, Lc/n;-><init>(Lc/r;)V

    return-object v0
.end method

.method public static a(Lc/s;)Lc/f;
    .locals 2

    .prologue
    .line 48
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    new-instance v0, Lc/o;

    invoke-direct {v0, p0}, Lc/o;-><init>(Lc/s;)V

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;)Lc/r;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lc/t;

    invoke-direct {v0}, Lc/t;-><init>()V

    invoke-static {p0, v0}, Lc/m;->a(Ljava/io/OutputStream;Lc/t;)Lc/r;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/OutputStream;Lc/t;)Lc/r;
    .locals 2

    .prologue
    .line 68
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Lc/m$1;

    invoke-direct {v0, p1, p0}, Lc/m$1;-><init>(Lc/t;Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static a(Ljava/net/Socket;)Lc/r;
    .locals 2

    .prologue
    .line 115
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-static {p0}, Lc/m;->c(Ljava/net/Socket;)Lc/a;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lc/m;->a(Ljava/io/OutputStream;Lc/t;)Lc/r;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Lc/a;->sink(Lc/r;)Lc/r;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/File;)Lc/s;
    .locals 2

    .prologue
    .line 160
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1123
    new-instance v1, Lc/t;

    invoke-direct {v1}, Lc/t;-><init>()V

    invoke-static {v0, v1}, Lc/m;->a(Ljava/io/InputStream;Lc/t;)Lc/s;

    move-result-object v0

    .line 161
    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Lc/t;)Lc/s;
    .locals 2

    .prologue
    .line 127
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    new-instance v0, Lc/m$2;

    invoke-direct {v0, p1, p0}, Lc/m$2;-><init>(Lc/t;Ljava/io/InputStream;)V

    return-object v0
.end method

.method static synthetic a()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lc/m;->a:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public static b(Ljava/io/File;)Lc/r;
    .locals 2

    .prologue
    .line 173
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lc/m;->a(Ljava/io/OutputStream;)Lc/r;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/net/Socket;)Lc/s;
    .locals 2

    .prologue
    .line 196
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socket == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    invoke-static {p0}, Lc/m;->c(Ljava/net/Socket;)Lc/a;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lc/m;->a(Ljava/io/InputStream;Lc/t;)Lc/s;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lc/a;->source(Lc/s;)Lc/s;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/net/Socket;)Lc/a;
    .locals 1

    .prologue
    .line 203
    new-instance v0, Lc/m$3;

    invoke-direct {v0, p0}, Lc/m$3;-><init>(Ljava/net/Socket;)V

    return-object v0
.end method

.method public static c(Ljava/io/File;)Lc/r;
    .locals 2

    .prologue
    .line 179
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-static {v0}, Lc/m;->a(Ljava/io/OutputStream;)Lc/r;

    move-result-object v0

    return-object v0
.end method
