.class final Lcom/sleepycat/b/c/p$a;
.super Ljava/lang/Object;
.source "DbTree.java"

# interfaces
.implements Lcom/sleepycat/b/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/b/c/p;->c(Lcom/sleepycat/b/c/h;)Ljava/lang/String;
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/sleepycat/b/c/h;

.field final synthetic c:Lcom/sleepycat/b/c/p;


# direct methods
.method constructor <init>(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/c/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1781
    iput-object p1, p0, Lcom/sleepycat/b/c/p$a;->c:Lcom/sleepycat/b/c/p;

    iput-object p2, p0, Lcom/sleepycat/b/c/p$a;->b:Lcom/sleepycat/b/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1782
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/b/c/p$a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/m;)Z
    .locals 2

    .prologue
    .line 1790
    sget-object v0, Lcom/sleepycat/b/n/o;->f:Lcom/sleepycat/b/n/o;

    invoke-virtual {p1, v0}, Lcom/sleepycat/b/c/c;->a(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/l/ab;

    .line 1791
    if-eqz v0, :cond_0

    .line 2062
    iget-object v0, v0, Lcom/sleepycat/b/l/ab;->a:Lcom/sleepycat/b/c/h;

    .line 1791
    iget-object v1, p0, Lcom/sleepycat/b/c/p$a;->b:Lcom/sleepycat/b/c/h;

    invoke-virtual {v0, v1}, Lcom/sleepycat/b/c/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2197
    iget-object v0, p2, Lcom/sleepycat/b/m;->a:[B

    .line 1792
    invoke-static {v0}, Lcom/sleepycat/d/b;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/b/c/p$a;->a:Ljava/lang/String;

    .line 1793
    const/4 v0, 0x0

    .line 1795
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
