.class public final Lu/aly/fw;
.super Ljava/lang/Object;
.source "TCompactProtocol.java"

# interfaces
.implements Lu/aly/gd;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lu/aly/fw;->a:J

    .line 72
    return-void
.end method


# virtual methods
.method public final a(Lu/aly/go;)Lu/aly/ga;
    .locals 4

    .prologue
    .line 79
    new-instance v0, Lu/aly/fv;

    iget-wide v2, p0, Lu/aly/fw;->a:J

    invoke-direct {v0, p1, v2, v3}, Lu/aly/fv;-><init>(Lu/aly/go;J)V

    return-object v0
.end method
