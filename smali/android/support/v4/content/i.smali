.class public final Landroid/support/v4/content/i;
.super Ljava/lang/Object;
.source "IntentCompat.java"


# static fields
.field private static final a:Landroid/support/v4/content/j;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/content/m;

    invoke-direct {v0}, Landroid/support/v4/content/m;-><init>()V

    sput-object v0, Landroid/support/v4/content/i;->a:Landroid/support/v4/content/j;

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/content/l;

    invoke-direct {v0}, Landroid/support/v4/content/l;-><init>()V

    sput-object v0, Landroid/support/v4/content/i;->a:Landroid/support/v4/content/j;

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Landroid/support/v4/content/k;

    invoke-direct {v0}, Landroid/support/v4/content/k;-><init>()V

    sput-object v0, Landroid/support/v4/content/i;->a:Landroid/support/v4/content/j;

    goto :goto_0
.end method

.method public static a(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 221
    sget-object v0, Landroid/support/v4/content/i;->a:Landroid/support/v4/content/j;

    invoke-interface {v0, p0}, Landroid/support/v4/content/j;->a(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
