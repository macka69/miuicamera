.class public Lcom/android/camera/lib/compatibility/related/v26/V26Utils;
.super Ljava/lang/Object;
.source "V26Utils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final MEDIA_RECORDER_INFO_MAX_FILESIZE_APPROACHING:I = 0x322

.field public static final MEDIA_RECORDER_INFO_NEXT_OUTPUT_FILE_STARTED:I = 0x323

.field private static final TAG:Ljava/lang/String; = "V26Utils"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannelForNotificationBuilder(Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/app/Notification$Builder;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 p2, -0x1

    invoke-virtual {v0, p2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method

.method public static allocGraphicBuffers()V
    .locals 4

    const/16 v0, 0x3200

    const/16 v1, 0xa00

    const/4 v2, 0x1

    const/16 v3, 0x33

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/GraphicBuffer;->create(IIII)Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/GraphicBuffer;->destroy()V

    return-void
.end method

.method public static setNextOutputFile(Landroid/media/MediaRecorder;Ljava/io/FileDescriptor;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V26Utils"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setNextOutputFile(Landroid/media/MediaRecorder;Ljava/lang/String;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "V26Utils"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setZsl(Landroid/hardware/camera2/CaptureRequest$Builder;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
