.class Lcom/xiaomi/onetrack/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/r;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/xiaomi/onetrack/a/r;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->b:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/r;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v5

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v0}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/xiaomi/onetrack/a/c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/r;->d:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v1}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/r;->a:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track json error:"

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
