.class public Lcom/umeng/update/net/g;
.super Lu/a/g;
.source "ReportClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/umeng/update/net/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/update/net/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lu/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/a/d;)Lu/a/f;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lu/a/e;

    invoke-virtual {p0, p1, v0}, Lcom/umeng/update/net/g;->a(Lu/a/h;Ljava/lang/Class;)Lu/a/i;

    move-result-object v0

    check-cast v0, Lu/a/e;

    .line 45
    if-nez v0, :cond_0

    sget-object v0, Lu/a/f;->b:Lu/a/f;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lu/a/e;->a:Lu/a/f;

    goto :goto_0
.end method

.method public a(Lu/a/d;Lcom/umeng/update/net/g$a;)V
    .locals 3

    .prologue
    .line 65
    :try_start_0
    new-instance v0, Lcom/umeng/update/net/g$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/update/net/g$b;-><init>(Lcom/umeng/update/net/g;Lu/a/d;Lcom/umeng/update/net/g$a;)V

    .line 66
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/umeng/update/net/g$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    sget-object v1, Lcom/umeng/update/net/g;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lu/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    if-eqz p2, :cond_0

    .line 70
    sget-object v0, Lu/a/f;->b:Lu/a/f;

    invoke-interface {p2, v0}, Lcom/umeng/update/net/g$a;->a(Lu/a/f;)V

    goto :goto_0
.end method
