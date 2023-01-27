.class Lcom/xiaomi/onetrack/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/m;->c:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/m;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/xiaomi/onetrack/a/m;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "OneTrackImp"

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/m;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/onetrack/Configuration;->isAutoTrackActivityAction()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "config.autoTrackActivityAction is false, ignore onetrack_pa pause event"

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/onetrack/a/m;->c:Lcom/xiaomi/onetrack/a/f;

    const-string v2, "onetrack_pa"

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/m;->a:Ljava/lang/String;

    const-string v4, "onetrack_pa"

    iget-wide v5, p0, Lcom/xiaomi/onetrack/a/m;->b:J

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/m;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v7

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/m;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v8

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/m;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/onetrack/a/c;->a(Ljava/lang/String;Ljava/lang/String;JLcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/xiaomi/onetrack/h/ab;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePageEndData error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/h/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
