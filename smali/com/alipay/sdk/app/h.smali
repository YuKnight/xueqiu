.class final Lcom/alipay/sdk/app/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/webkit/JsResult;

.field final synthetic b:Lcom/alipay/sdk/app/a;


# direct methods
.method constructor <init>(Lcom/alipay/sdk/app/a;Landroid/webkit/JsResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sdk/app/h;->b:Lcom/alipay/sdk/app/a;

    iput-object p2, p0, Lcom/alipay/sdk/app/h;->a:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/sdk/app/h;->a:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->cancel()V

    return-void
.end method
