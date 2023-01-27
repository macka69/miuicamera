.class Lcom/xiaomi/onetrack/c/l;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/c/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/c/l;->a:Lcom/xiaomi/onetrack/c/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/xiaomi/onetrack/g/c;->a()Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UploadTimer netReceiver, \u7f51\u7edc\u662f\u5426\u53ef\u7528="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UploadTimer"

    invoke-static {v0, p2}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    new-array p2, p1, [I

    fill-array-data p2, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p2, v0

    invoke-static {v1}, Lcom/xiaomi/onetrack/b/l;->a(I)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/c/l;->a:Lcom/xiaomi/onetrack/c/k;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/onetrack/c/l;->a:Lcom/xiaomi/onetrack/c/k;

    int-to-long v4, v2

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method
