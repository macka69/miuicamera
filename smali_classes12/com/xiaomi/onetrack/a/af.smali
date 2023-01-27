.class public Lcom/xiaomi/onetrack/a/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/onetrack/a/d;


# static fields
.field private static final a:Ljava/lang/String; = "OneTrackLocalImp"

.field private static final b:I = 0x19000

.field private static final c:I = 0x2


# instance fields
.field private d:Lcom/xiaomi/onetrack/Configuration;

.field private e:Lcom/xiaomi/onetrack/h/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/onetrack/Configuration;Lcom/xiaomi/onetrack/h/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/onetrack/f/f;->a(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/xiaomi/onetrack/a/af;->d:Lcom/xiaomi/onetrack/Configuration;

    iput-object p3, p0, Lcom/xiaomi/onetrack/a/af;->e:Lcom/xiaomi/onetrack/h/w;

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Lcom/xiaomi/onetrack/b/f;->a()Lcom/xiaomi/onetrack/b/f;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/onetrack/a/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/xiaomi/onetrack/b/f;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/onetrack/h/a/a;->a()Lcom/xiaomi/onetrack/h/a/a;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/xiaomi/onetrack/h/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    rem-int/lit8 p0, p0, 0x64

    int-to-long v2, p0

    cmp-long p0, v0, v2

    const/4 v4, 0x1

    if-lez p0, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldUploadBySampling "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  shouldUpload="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", sample="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", val="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneTrackLocalImp"

    invoke-static {v0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    xor-int/2addr p0, v4

    return p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/xiaomi/onetrack/a/ag;

    invoke-direct {p1, p0}, Lcom/xiaomi/onetrack/a/ag;-><init>(Lcom/xiaomi/onetrack/a/af;)V

    invoke-static {p1}, Lcom/xiaomi/onetrack/h/j;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/onetrack/a/af;->e:Lcom/xiaomi/onetrack/h/w;

    const-string v1, "OneTrackLocalImp"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/xiaomi/onetrack/h/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "The privacy policy is not permitted, and the event is not basic or recommend event or custom dau event, skip it."

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/onetrack/a/af;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/c/g;->b()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Lcom/xiaomi/onetrack/c/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {p0}, Lcom/xiaomi/onetrack/c/g;->a(Lcom/xiaomi/onetrack/a/d;)V

    sget-boolean v0, Lcom/xiaomi/onetrack/h/q;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "onetrack_bug_report"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "track data:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/onetrack/a/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/onetrack/b/a;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/onetrack/a/af;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    iget-object p0, p0, Lcom/xiaomi/onetrack/a/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {p0}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/xiaomi/onetrack/f/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/onetrack/f/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "disable_log"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/b/f;->a()Lcom/xiaomi/onetrack/b/f;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/onetrack/a/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v3}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/onetrack/b/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {}, Lcom/xiaomi/onetrack/b/f;->a()Lcom/xiaomi/onetrack/b/f;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/onetrack/a/af;->d:Lcom/xiaomi/onetrack/Configuration;

    invoke-virtual {v4}, Lcom/xiaomi/onetrack/Configuration;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1, v0, v1}, Lcom/xiaomi/onetrack/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/xiaomi/onetrack/a/af;->b(Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception p0

    move v0, v1

    move v2, v0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisableTrack: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneTrackLocalImp"

    invoke-static {p1, p0}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    :goto_1
    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isDisable()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/xiaomi/onetrack/OneTrack;->isUseSystemNetTrafficOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "onetrack_bug_report"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, p0

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    const p2, 0x19000

    if-le p1, p2, :cond_2

    const-string p0, "OneTrackLocalImp"

    const-string p1, "Event size exceed limitation!"

    invoke-static {p0, p1}, Lcom/xiaomi/onetrack/h/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    return p0

    :cond_3
    :goto_1
    return v0
.end method
