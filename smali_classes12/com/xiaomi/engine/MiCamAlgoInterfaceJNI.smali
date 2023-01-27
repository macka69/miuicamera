.class Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;
.super Ljava/lang/Object;
.source "MiCamAlgoInterfaceJNI.java"


# static fields
.field private static final LIB_NAME:Ljava/lang/String; = "camera_algoup_jni.xiaomi"

.field private static final TAG:Ljava/lang/String; = "MiCamAlgoInterfaceJNI"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "start loading camera_algoup_jni.xiaomi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "camera_algoup_jni.xiaomi"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->TAG:Ljava/lang/String;

    const-string v1, "static initializer: loadLibrary camera_algoup_jni.xiaomi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/engine/MiCamAlgoInterfaceJNI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not load library:camera_algoup_jni.xiaomi : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native createSessionByOutputConfigurations(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J
    .param p2    # Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;
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
            ")J"
        }
    .end annotation
.end method

.method static native createSessionWithSurfaces(Lcom/xiaomi/engine/BufferFormat;Ljava/util/List;Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;)J
    .param p2    # Lcom/xiaomi/engine/TaskSession$SessionStatusCallback;
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
            ")J"
        }
    .end annotation
.end method

.method static native deInit()I
.end method

.method static native destroySession(J)I
.end method

.method static native flush(J)I
.end method

.method static native getVersionCode()I
.end method

.method static native init(Ljava/lang/String;)I
.end method

.method static native processFrame(JLcom/xiaomi/engine/FrameData;Lcom/xiaomi/engine/TaskSession$FrameCallback;)I
    .param p2    # Lcom/xiaomi/engine/FrameData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/engine/TaskSession$FrameCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method static native processFrameWithSync(JLjava/util/List;Landroid/media/Image;I)I
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/media/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/xiaomi/engine/FrameData;",
            ">;",
            "Landroid/media/Image;",
            "I)I"
        }
    .end annotation
.end method

.method static native setMiViInfo(Ljava/lang/String;)I
.end method
