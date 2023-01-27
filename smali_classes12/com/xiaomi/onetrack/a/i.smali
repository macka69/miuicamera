.class Lcom/xiaomi/onetrack/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/xiaomi/onetrack/a/f;


# direct methods
.method constructor <init>(Lcom/xiaomi/onetrack/a/f;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/onetrack/a/i;->c:Lcom/xiaomi/onetrack/a/f;

    iput-boolean p2, p0, Lcom/xiaomi/onetrack/a/i;->a:Z

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/i;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ot_logout"

    :try_start_0
    iget-boolean v1, p0, Lcom/xiaomi/onetrack/a/i;->a:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/onetrack/a/i;->b:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/onetrack/h/s;->a(Ljava/util/Map;Z)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/onetrack/h/ab;->u()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/onetrack/h/ab;->w()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uid"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid_type"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaomi/onetrack/a/i;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/a/f;->b(Lcom/xiaomi/onetrack/a/f;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/i;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v3}, Lcom/xiaomi/onetrack/a/f;->a(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/Configuration;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/a/i;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v4}, Lcom/xiaomi/onetrack/a/f;->c(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/OneTrack$IEventHook;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/onetrack/a/i;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {v5}, Lcom/xiaomi/onetrack/a/f;->d(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/h/w;

    move-result-object v5

    invoke-static {v1, v3, v4, v2, v5}, Lcom/xiaomi/onetrack/a/c;->d(Lorg/json/JSONObject;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/OneTrack$IEventHook;Lorg/json/JSONObject;Lcom/xiaomi/onetrack/h/w;)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/i;->c:Lcom/xiaomi/onetrack/a/f;

    invoke-static {p0}, Lcom/xiaomi/onetrack/a/f;->e(Lcom/xiaomi/onetrack/a/f;)Lcom/xiaomi/onetrack/a/d;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/onetrack/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/h/ab;->v()V

    invoke-static {}, Lcom/xiaomi/onetrack/h/ab;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logout error:"

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
