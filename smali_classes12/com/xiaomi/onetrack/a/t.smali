.class Lcom/xiaomi/onetrack/a/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

.field final synthetic b:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Lcom/xiaomi/onetrack/ServiceQualityEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/t;->b:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/t;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/t;->a:Lcom/xiaomi/onetrack/ServiceQualityEvent;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/t;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/t;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/t;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/onetrack/a/c;->a(Lcom/xiaomi/onetrack/ServiceQualityEvent;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/t;->b:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object p0

    const-string v1, "ot_service_quality"

    invoke-interface {p0, v1, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackNetAvailableEvent error: "

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
