.class public Lcom/tencent/open/Util$Statistic;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    .line 245
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/tencent/open/Util$Statistic;->b:J

    .line 246
    iget-object v0, p0, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/tencent/open/Util$Statistic;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/open/Util$Statistic;->c:J

    .line 248
    :cond_0
    return-void
.end method
