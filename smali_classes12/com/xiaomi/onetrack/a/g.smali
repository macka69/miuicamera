.class Lcom/xiaomi/onetrack/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/onetrack/h/ab;->B()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/ab;->n(J)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/onetrack/h/p;->a()Lcom/xiaomi/onetrack/h/p;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/onetrack/h/p;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;)V

    invoke-static {}, Lcom/xiaomi/onetrack/h/d;->a()Lcom/xiaomi/onetrack/h/d;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/onetrack/c/g;->c(Z)V

    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrackDebugger;->getInstance()Lcom/xiaomi/onetrack/OneTrackDebugger;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/g;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaomi/onetrack/OneTrackDebugger;->setSdkConfig(Lcom/xiaomi/onetrack/Configuration;)V

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrackDebugger;->getInstance()Lcom/xiaomi/onetrack/OneTrackDebugger;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/OneTrackDebugger;->startDebugger()V

    :cond_2
    return-void
.end method
