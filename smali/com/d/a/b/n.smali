.class final Lcom/d/a/b/n;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"

# interfaces
.implements Lcom/d/a/c/c;
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/d/a/b/h;

.field final b:Ljava/lang/String;

.field final c:Lcom/d/a/b/e/a;

.field final d:Lcom/d/a/b/d;

.field final e:Lcom/d/a/b/f/a;

.field final f:Lcom/d/a/b/f/b;

.field private final g:Lcom/d/a/b/l;

.field private final h:Lcom/d/a/b/m;

.field private final i:Landroid/os/Handler;

.field private final j:Lcom/d/a/b/d/b;

.field private final k:Lcom/d/a/b/d/b;

.field private final l:Lcom/d/a/b/d/b;

.field private final m:Lcom/d/a/b/b/d;

.field private final n:Ljava/lang/String;

.field private final o:Lcom/d/a/b/a/f;

.field private final p:Z

.field private q:Lcom/d/a/b/a/g;


# direct methods
.method public constructor <init>(Lcom/d/a/b/l;Lcom/d/a/b/m;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lcom/d/a/b/a/g;->a:Lcom/d/a/b/a/g;

    iput-object v0, p0, Lcom/d/a/b/n;->q:Lcom/d/a/b/a/g;

    .line 98
    iput-object p1, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    .line 99
    iput-object p2, p0, Lcom/d/a/b/n;->h:Lcom/d/a/b/m;

    .line 100
    iput-object p3, p0, Lcom/d/a/b/n;->i:Landroid/os/Handler;

    .line 102
    iget-object v0, p1, Lcom/d/a/b/l;->a:Lcom/d/a/b/h;

    iput-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    .line 103
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->p:Lcom/d/a/b/d/b;

    iput-object v0, p0, Lcom/d/a/b/n;->j:Lcom/d/a/b/d/b;

    .line 104
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->s:Lcom/d/a/b/d/b;

    iput-object v0, p0, Lcom/d/a/b/n;->k:Lcom/d/a/b/d/b;

    .line 105
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->t:Lcom/d/a/b/d/b;

    iput-object v0, p0, Lcom/d/a/b/n;->l:Lcom/d/a/b/d/b;

    .line 106
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->q:Lcom/d/a/b/b/d;

    iput-object v0, p0, Lcom/d/a/b/n;->m:Lcom/d/a/b/b/d;

    .line 107
    iget-object v0, p2, Lcom/d/a/b/m;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    .line 108
    iget-object v0, p2, Lcom/d/a/b/m;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    .line 109
    iget-object v0, p2, Lcom/d/a/b/m;->c:Lcom/d/a/b/e/a;

    iput-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/e/a;

    .line 110
    iget-object v0, p2, Lcom/d/a/b/m;->d:Lcom/d/a/b/a/f;

    iput-object v0, p0, Lcom/d/a/b/n;->o:Lcom/d/a/b/a/f;

    .line 111
    iget-object v0, p2, Lcom/d/a/b/m;->e:Lcom/d/a/b/d;

    iput-object v0, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 112
    iget-object v0, p2, Lcom/d/a/b/m;->f:Lcom/d/a/b/f/a;

    iput-object v0, p0, Lcom/d/a/b/n;->e:Lcom/d/a/b/f/a;

    .line 113
    iget-object v0, p2, Lcom/d/a/b/m;->g:Lcom/d/a/b/f/b;

    iput-object v0, p0, Lcom/d/a/b/n;->f:Lcom/d/a/b/f/b;

    .line 114
    iget-object v0, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 1194
    iget-boolean v0, v0, Lcom/d/a/b/d;->s:Z

    .line 114
    iput-boolean v0, p0, Lcom/d/a/b/n;->p:Z

    .line 115
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    .line 261
    iget-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/e/a;

    invoke-interface {v0}, Lcom/d/a/b/e/a;->c()I

    move-result v5

    .line 262
    new-instance v0, Lcom/d/a/b/b/e;

    iget-object v1, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/d/a/b/n;->o:Lcom/d/a/b/a/f;

    invoke-direct {p0}, Lcom/d/a/b/n;->e()Lcom/d/a/b/d/b;

    move-result-object v6

    iget-object v7, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/d/a/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/d/a/b/a/f;ILcom/d/a/b/d/b;Lcom/d/a/b/d;)V

    .line 264
    iget-object v1, p0, Lcom/d/a/b/n;->m:Lcom/d/a/b/b/d;

    invoke-interface {v1, v0}, Lcom/d/a/b/b/d;->a(Lcom/d/a/b/b/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 343
    iget-boolean v0, p0, Lcom/d/a/b/n;->p:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/d/a/b/n;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/d/a/b/n;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v0, Lcom/d/a/b/n$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/d/a/b/n$2;-><init>(Lcom/d/a/b/n;ILjava/lang/Throwable;)V

    .line 353
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/d/a/b/n;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    invoke-static {v0, v1, v2, v3}, Lcom/d/a/b/n;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/l;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/l;)V
    .locals 1

    .prologue
    .line 454
    if-eqz p1, :cond_0

    .line 455
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 461
    :goto_0
    return-void

    .line 456
    :cond_0
    if-nez p2, :cond_1

    .line 12190
    iget-object v0, p3, Lcom/d/a/b/l;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 459
    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-object v1, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    .line 4203
    iget-object v1, v1, Lcom/d/a/b/l;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    iget-object v2, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    .line 4207
    iget-object v2, v2, Lcom/d/a/b/l;->i:Ljava/lang/Object;

    .line 182
    monitor-enter v2

    .line 183
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const-string v1, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :try_start_1
    iget-object v1, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    .line 5207
    iget-object v1, v1, Lcom/d/a/b/l;->i:Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/d/a/b/n;->g()Z

    move-result v0

    :goto_0
    return v0

    .line 188
    :catch_0
    move-exception v1

    :try_start_3
    const-string v1, "Task was interrupted [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    monitor-exit v2

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 6130
    iget v2, v2, Lcom/d/a/b/d;->l:I

    if-lez v2, :cond_0

    move v2, v0

    .line 200
    :goto_0
    if-eqz v2, :cond_1

    .line 201
    const-string v2, "Delay %d ms before loading...  [%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 6166
    iget v4, v4, Lcom/d/a/b/d;->l:I

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 7166
    iget v2, v2, Lcom/d/a/b/d;->l:I

    .line 203
    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    invoke-direct {p0}, Lcom/d/a/b/n;->g()Z

    move-result v0

    .line 210
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 6130
    goto :goto_0

    .line 205
    :catch_0
    move-exception v2

    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v0, v1

    .line 210
    goto :goto_1
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 214
    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v2, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 218
    const-string v2, "Load image from disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    sget-object v2, Lcom/d/a/b/a/g;->b:Lcom/d/a/b/a/g;

    iput-object v2, p0, Lcom/d/a/b/n;->q:Lcom/d/a/b/a/g;

    .line 221
    invoke-direct {p0}, Lcom/d/a/b/n;->f()V

    .line 222
    sget-object v2, Lcom/d/a/b/d/c;->c:Lcom/d/a/b/d/c;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/d/a/b/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/d/a/b/n;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/d/a/b/o; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 224
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    .line 225
    :cond_0
    const-string v2, "Load image from network [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    sget-object v2, Lcom/d/a/b/a/g;->a:Lcom/d/a/b/a/g;

    iput-object v2, p0, Lcom/d/a/b/n;->q:Lcom/d/a/b/a/g;

    .line 228
    iget-object v2, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    .line 229
    iget-object v3, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 8154
    iget-boolean v3, v3, Lcom/d/a/b/d;->i:Z

    .line 229
    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/d/a/b/n;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    iget-object v3, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v3, v3, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v4, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 231
    if-eqz v3, :cond_1

    .line 232
    sget-object v2, Lcom/d/a/b/d/c;->c:Lcom/d/a/b/d/c;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/d/a/b/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 236
    :cond_1
    invoke-direct {p0}, Lcom/d/a/b/n;->f()V

    .line 237
    invoke-direct {p0, v2}, Lcom/d/a/b/n;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_3

    .line 240
    :cond_2
    sget v2, Lcom/d/a/b/a/c;->b:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/d/a/b/n;->a(ILjava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/d/a/b/o; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 257
    :cond_3
    :goto_1
    return-object v0

    .line 244
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    sget v2, Lcom/d/a/b/a/c;->c:I

    invoke-direct {p0, v2, v1}, Lcom/d/a/b/n;->a(ILjava/lang/Throwable;)V

    goto :goto_1

    .line 246
    :catch_1
    move-exception v0

    throw v0

    .line 247
    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 248
    :goto_3
    invoke-static {v1}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V

    .line 249
    sget v2, Lcom/d/a/b/a/c;->a:I

    invoke-direct {p0, v2, v1}, Lcom/d/a/b/n;->a(ILjava/lang/Throwable;)V

    goto :goto_1

    .line 250
    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 251
    :goto_4
    invoke-static {v1}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V

    .line 252
    sget v2, Lcom/d/a/b/a/c;->d:I

    invoke-direct {p0, v2, v1}, Lcom/d/a/b/n;->a(ILjava/lang/Throwable;)V

    goto :goto_1

    .line 253
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 254
    :goto_5
    invoke-static {v1}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V

    .line 255
    sget v2, Lcom/d/a/b/a/c;->e:I

    invoke-direct {p0, v2, v1}, Lcom/d/a/b/n;->a(ILjava/lang/Throwable;)V

    goto :goto_1

    .line 253
    :catch_5
    move-exception v1

    goto :goto_5

    .line 250
    :catch_6
    move-exception v1

    goto :goto_4

    .line 247
    :catch_7
    move-exception v1

    goto :goto_3

    .line 244
    :catch_8
    move-exception v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private d()Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, 0x0

    .line 269
    const-string v0, "Cache image on disk [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8290
    :try_start_0
    invoke-direct {p0}, Lcom/d/a/b/n;->e()Lcom/d/a/b/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 9174
    iget-object v2, v2, Lcom/d/a/b/d;->n:Ljava/lang/Object;

    .line 8290
    invoke-interface {v0, v1, v2}, Lcom/d/a/b/d/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    .line 8291
    iget-object v1, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v2, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;Ljava/io/InputStream;Lcom/d/a/c/c;)Z

    move-result v8

    .line 274
    if-eqz v8, :cond_2

    .line 275
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget v0, v0, Lcom/d/a/b/h;->d:I

    .line 276
    iget-object v1, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget v1, v1, Lcom/d/a/b/h;->e:I

    .line 277
    if-gtz v0, :cond_0

    if-lez v1, :cond_2

    .line 278
    :cond_0
    const-string v2, "Resize image in disk cache [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9298
    iget-object v2, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v2, v2, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v3, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 9299
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9300
    new-instance v4, Lcom/d/a/b/a/f;

    invoke-direct {v4, v0, v1}, Lcom/d/a/b/a/f;-><init>(II)V

    .line 9301
    new-instance v0, Lcom/d/a/b/e;

    invoke-direct {v0}, Lcom/d/a/b/e;-><init>()V

    iget-object v1, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    invoke-virtual {v0, v1}, Lcom/d/a/b/e;->a(Lcom/d/a/b/d;)Lcom/d/a/b/e;

    move-result-object v0

    sget v1, Lcom/d/a/b/a/e;->d:I

    .line 9376
    iput v1, v0, Lcom/d/a/b/e;->j:I

    .line 9301
    invoke-virtual {v0}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v7

    .line 9303
    new-instance v0, Lcom/d/a/b/b/e;

    iget-object v1, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    sget-object v3, Lcom/d/a/b/d/c;->c:Lcom/d/a/b/d/c;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/d/a/b/d/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    sget v5, Lcom/d/a/b/a/i;->a:I

    invoke-direct {p0}, Lcom/d/a/b/n;->e()Lcom/d/a/b/d/b;

    move-result-object v6

    invoke-direct/range {v0 .. v7}, Lcom/d/a/b/b/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/d/a/b/a/f;ILcom/d/a/b/d/b;Lcom/d/a/b/d;)V

    .line 9306
    iget-object v1, p0, Lcom/d/a/b/n;->m:Lcom/d/a/b/b/d;

    invoke-interface {v1, v0}, Lcom/d/a/b/b/d;->a(Lcom/d/a/b/b/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9307
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->f:Lcom/d/a/b/g/a;

    if-eqz v1, :cond_1

    .line 9308
    const-string v0, "Process image before cache on disk [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9309
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->f:Lcom/d/a/b/g/a;

    invoke-interface {v0}, Lcom/d/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9310
    if-nez v0, :cond_1

    .line 9311
    const-string v1, "Bitmap processor for disk cache returned null [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9314
    :cond_1
    if-eqz v0, :cond_2

    .line 9315
    iget-object v1, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->o:Lcom/d/a/a/a/b;

    iget-object v2, p0, Lcom/d/a/b/n;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/d/a/a/a/b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 9316
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v8

    .line 286
    :goto_0
    return v0

    .line 283
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/d/a/c/d;->a(Ljava/lang/Throwable;)V

    move v0, v9

    .line 284
    goto :goto_0
.end method

.method private e()Lcom/d/a/b/d/b;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    .line 11211
    iget-object v0, v0, Lcom/d/a/b/l;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 369
    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/d/a/b/n;->k:Lcom/d/a/b/d/b;

    .line 376
    :goto_0
    return-object v0

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    .line 11215
    iget-object v0, v0, Lcom/d/a/b/l;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 371
    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/d/a/b/n;->l:Lcom/d/a/b/d/b;

    goto :goto_0

    .line 374
    :cond_1
    iget-object v0, p0, Lcom/d/a/b/n;->j:Lcom/d/a/b/d/b;

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 385
    .line 11399
    invoke-direct {p0}, Lcom/d/a/b/n;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11400
    new-instance v0, Lcom/d/a/b/o;

    invoke-direct {v0, p0}, Lcom/d/a/b/o;-><init>(Lcom/d/a/b/n;)V

    throw v0

    .line 11415
    :cond_0
    invoke-direct {p0}, Lcom/d/a/b/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11416
    new-instance v0, Lcom/d/a/b/o;

    invoke-direct {v0, p0}, Lcom/d/a/b/o;-><init>(Lcom/d/a/b/n;)V

    throw v0

    .line 387
    :cond_1
    return-void
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 394
    invoke-direct {p0}, Lcom/d/a/b/n;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/d/a/b/n;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 406
    iget-object v2, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/e/a;

    invoke-interface {v2}, Lcom/d/a/b/e/a;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 407
    const-string v2, "ImageAware was collected by GC. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private i()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 422
    iget-object v2, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    iget-object v3, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/e/a;

    invoke-virtual {v2, v3}, Lcom/d/a/b/l;->a(Lcom/d/a/b/e/a;)Ljava/lang/String;

    move-result-object v2

    .line 425
    iget-object v3, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 426
    :goto_0
    if-eqz v2, :cond_1

    .line 427
    const-string v2, "ImageAware is reused for another image. Task is cancelled. [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 425
    goto :goto_0

    :cond_1
    move v0, v1

    .line 430
    goto :goto_1
.end method

.method private j()V
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0}, Lcom/d/a/b/n;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Lcom/d/a/b/o;

    invoke-direct {v0, p0}, Lcom/d/a/b/o;-><init>(Lcom/d/a/b/n;)V

    throw v0

    .line 438
    :cond_0
    return-void
.end method

.method private k()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 442
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const-string v2, "Task was interrupted [%s]"

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(II)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 324
    iget-boolean v2, p0, Lcom/d/a/b/n;->p:Z

    if-nez v2, :cond_1

    .line 10329
    invoke-direct {p0}, Lcom/d/a/b/n;->k()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/d/a/b/n;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    move v2, v0

    .line 324
    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 10330
    :cond_3
    iget-object v2, p0, Lcom/d/a/b/n;->f:Lcom/d/a/b/f/b;

    if-eqz v2, :cond_4

    .line 10331
    new-instance v2, Lcom/d/a/b/n$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/d/a/b/n$1;-><init>(Lcom/d/a/b/n;II)V

    .line 10337
    iget-object v3, p0, Lcom/d/a/b/n;->i:Landroid/os/Handler;

    iget-object v4, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    invoke-static {v2, v0, v3, v4}, Lcom/d/a/b/n;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/l;)V

    :cond_4
    move v2, v1

    .line 10339
    goto :goto_0
.end method

.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Lcom/d/a/b/n;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/d/a/b/n;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/d/a/b/n;->h:Lcom/d/a/b/m;

    iget-object v3, v0, Lcom/d/a/b/m;->h:Ljava/util/concurrent/locks/ReentrantLock;

    .line 123
    const-string v0, "Start display image task [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const-string v0, "Image already is loading. Waiting... [%s]"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 131
    :try_start_0
    invoke-direct {p0}, Lcom/d/a/b/n;->f()V

    .line 133
    iget-object v0, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v0, v0, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    invoke-interface {v0, v4}, Lcom/d/a/a/b/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 134
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 135
    :cond_3
    invoke-direct {p0}, Lcom/d/a/b/n;->c()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/d/a/b/o; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 136
    if-nez v0, :cond_4

    .line 171
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 138
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/d/a/b/n;->f()V

    .line 139
    invoke-direct {p0}, Lcom/d/a/b/n;->j()V

    .line 141
    iget-object v4, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 2122
    iget-object v4, v4, Lcom/d/a/b/d;->o:Lcom/d/a/b/g/a;

    if-eqz v4, :cond_8

    .line 141
    :goto_1
    if-eqz v1, :cond_5

    .line 142
    const-string v0, "PreProcess image before caching in memory [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 2178
    iget-object v0, v0, Lcom/d/a/b/d;->o:Lcom/d/a/b/g/a;

    .line 143
    invoke-interface {v0}, Lcom/d/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    if-nez v0, :cond_5

    .line 145
    const-string v1, "Pre-processor returned null [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 3150
    iget-boolean v1, v1, Lcom/d/a/b/d;->h:Z

    .line 149
    if-eqz v1, :cond_6

    .line 150
    const-string v1, "Cache image in memory [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v1, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/h;

    iget-object v1, v1, Lcom/d/a/b/h;->n:Lcom/d/a/a/b/c;

    iget-object v2, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/d/a/a/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    invoke-virtual {v1}, Lcom/d/a/b/d;->a()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 159
    const-string v0, "PostProcess image before displaying [%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/d/a/b/n;->d:Lcom/d/a/b/d;

    .line 3182
    iget-object v0, v0, Lcom/d/a/b/d;->p:Lcom/d/a/b/g/a;

    .line 160
    invoke-interface {v0}, Lcom/d/a/b/g/a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 161
    if-nez v0, :cond_7

    .line 162
    const-string v1, "Post-processor returned null [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/d/a/c/d;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_7
    invoke-direct {p0}, Lcom/d/a/b/n;->f()V

    .line 166
    invoke-direct {p0}, Lcom/d/a/b/n;->j()V
    :try_end_1
    .catch Lcom/d/a/b/o; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    new-instance v1, Lcom/d/a/b/c;

    iget-object v2, p0, Lcom/d/a/b/n;->h:Lcom/d/a/b/m;

    iget-object v3, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    iget-object v4, p0, Lcom/d/a/b/n;->q:Lcom/d/a/b/a/g;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/d/a/b/c;-><init>(Landroid/graphics/Bitmap;Lcom/d/a/b/m;Lcom/d/a/b/l;Lcom/d/a/b/a/g;)V

    .line 175
    iget-boolean v0, p0, Lcom/d/a/b/n;->p:Z

    iget-object v2, p0, Lcom/d/a/b/n;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    invoke-static {v1, v0, v2, v3}, Lcom/d/a/b/n;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/l;)V

    goto/16 :goto_0

    :cond_8
    move v1, v2

    .line 2122
    goto/16 :goto_1

    .line 154
    :cond_9
    :try_start_2
    sget-object v1, Lcom/d/a/b/a/g;->c:Lcom/d/a/b/a/g;

    iput-object v1, p0, Lcom/d/a/b/n;->q:Lcom/d/a/b/a/g;

    .line 155
    const-string v1, "...Get cached bitmap from memory after waiting. [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/d/a/b/n;->n:Ljava/lang/String;

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Lcom/d/a/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/d/a/b/o; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 168
    :catch_0
    move-exception v0

    .line 3357
    :try_start_3
    iget-boolean v0, p0, Lcom/d/a/b/n;->p:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/d/a/b/n;->k()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    :cond_a
    :goto_3
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 3358
    :cond_b
    :try_start_4
    new-instance v0, Lcom/d/a/b/n$3;

    invoke-direct {v0, p0}, Lcom/d/a/b/n$3;-><init>(Lcom/d/a/b/n;)V

    .line 3364
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/d/a/b/n;->i:Landroid/os/Handler;

    iget-object v4, p0, Lcom/d/a/b/n;->g:Lcom/d/a/b/l;

    invoke-static {v0, v1, v2, v4}, Lcom/d/a/b/n;->a(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/d/a/b/l;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 171
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
