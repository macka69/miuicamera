.class Lcom/xiaomi/onetrack/a/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/u;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/u;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/u;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/u;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/onetrack/a/c;->a(Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/u;->a:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object p0

    const-string v1, "onetrack_cta_status"

    invoke-interface {p0, v1, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cta event error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneTrackImp"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
