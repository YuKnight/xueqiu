.class public final Lrx/b/f;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1

    .prologue
    .line 43
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 44
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 45
    :cond_0
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .line 46
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 107
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 109
    const/4 v0, 0x0

    .line 110
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 111
    add-int/lit8 v1, v0, 0x1

    const/16 v3, 0x19

    if-lt v0, v3, :cond_0

    .line 130
    :goto_1
    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v0, v1

    goto :goto_0

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 73
    instance-of v0, p0, Lrx/b/i;

    if-eqz v0, :cond_0

    .line 74
    check-cast p0, Lrx/b/i;

    throw p0

    .line 75
    :cond_0
    instance-of v0, p0, Lrx/b/h;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 76
    check-cast v0, Lrx/b/h;

    invoke-virtual {v0}, Lrx/b/h;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 77
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 78
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 80
    :cond_1
    check-cast p0, Lrx/b/h;

    throw p0

    .line 84
    :cond_2
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    if-eqz v0, :cond_3

    .line 85
    check-cast p0, Ljava/lang/StackOverflowError;

    throw p0

    .line 86
    :cond_3
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-eqz v0, :cond_4

    .line 87
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0

    .line 88
    :cond_4
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-eqz v0, :cond_5

    .line 89
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    .line 90
    :cond_5
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_6

    .line 91
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    .line 93
    :cond_6
    return-void
.end method
