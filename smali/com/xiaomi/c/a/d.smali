.class final Lcom/xiaomi/c/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/e/g;


# instance fields
.field final synthetic a:Lcom/xiaomi/c/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/c/a/d;->a:Lcom/xiaomi/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/e/c/e;)V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/c/a/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SMACK "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/c/a/d;->a:Lcom/xiaomi/c/a/a;

    invoke-static {v1}, Lcom/xiaomi/c/a/a;->a(Lcom/xiaomi/c/a/a;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RCV PKT ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/c/a/d;->a:Lcom/xiaomi/c/a/a;

    invoke-static {v1}, Lcom/xiaomi/c/a/a;->b(Lcom/xiaomi/c/a/a;)Lcom/xiaomi/e/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/e/c/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/b/c;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
