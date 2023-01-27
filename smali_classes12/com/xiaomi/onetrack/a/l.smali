.class Lcom/xiaomi/onetrack/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/l;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaomi/onetrack/a/l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, "onetrack_pa"

    const-string v1, "OneTrackImp"

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v2

    if-nez v2, :cond_0

    const-string p0, "config.autoTrackActivityAction is false, ignore onetrack_pa resume event"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/l;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v6

    iget-boolean v8, p0, Lcom/xiaomi/onetrack/a/l;->b:Z

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v9

    invoke-static/range {v3 .. v9}, Lcom/xiaomi/onetrack/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;ZLcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/l;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object p0

    invoke-interface {p0, v0, v2}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "trackPageStartAuto"

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auto trackPageStartAuto error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
