.class public final Lcom/xiaomi/engine/MiCameraAlgo;
.super Ljava/lang/Object;
.source "MiCameraAlgo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiCameraAlgo"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;
    .locals 2
    .param p0    # Lcom/xiaomi/engine/BufferFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;",
            ")",
            "Lcom/xiaomi/engine/TaskSession;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "createSessionByOutputConfigurations: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_0

    sget-object p0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string p1, "createSessionByOutputConfigurations: failed. Session handle is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p2, Lcom/xiaomi/engine/TaskSession;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/engine/TaskSession;-><init>(J)V

    sget-object p0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createSessionByOutputConfigurations: succeed. session = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method public static createSessionWithSurfaces(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)Lcom/xiaomi/engine/TaskSession;
    .locals 2
    .param p0    # Lcom/xiaomi/engine/BufferFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/engine/BufferFormat;",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;",
            "Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;",
            ")",
            "Lcom/xiaomi/engine/TaskSession;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "createSessionWithSurfaces: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->createSessionWithSurfaces(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/xiaomi/engine/TaskSession;

    invoke-direct {p2, p0, p1}, Lcom/xiaomi/engine/TaskSession;-><init>(J)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Create session failed: Session handle is null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static deInit()V
    .locals 3

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "deInit: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->deInit()I

    move-result v0

    sget-object v1, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v2, "deInit"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "deInit: X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getVersionCode()I
    .locals 1

    invoke-static {}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "init: E"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: application file path to algorithm lib: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->init(Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/engine/Util;->assertOrNot(ILjava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v0, "init: X"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "context is null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMiViInfo(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/xiaomi/engine/MiCameraAlgo;->TAG:Ljava/lang/String;

    const-string v1, "setMiViInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->setMiViInfo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
