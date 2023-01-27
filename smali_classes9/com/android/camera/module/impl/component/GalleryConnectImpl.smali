.class public Lcom/android/camera/module/impl/component/GalleryConnectImpl;
.super Landroid/content/BroadcastReceiver;
.source "GalleryConnectImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$GalleryConnect;


# static fields
.field private static final ACTION_CHANGE_PHOTO_PAGE_BACKGROUND_ALPHA:Ljava/lang/String; = "com.miui.gallery.ACTION_CHANGE_PHOTO_PAGE_BACKGROUND_ALPHA"

.field private static final CAMERA_PACKAGE:Ljava/lang/String; = "com.android.camera"

.field private static final KEY_IS_TRANSLUCENT:Ljava/lang/String; = "is_translucent"

.field private static final TAG:Ljava/lang/String; = "GalleryConnect"


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mJumpTime:J


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    check-cast p1, Lcom/android/camera/Camera;

    iput-object p1, p0, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/GalleryConnectImpl;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/GalleryConnectImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/GalleryConnectImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.miui.gallery.ACTION_CHANGE_PHOTO_PAGE_BACKGROUND_ALPHA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->mJumpTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x190

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.miui.gallery.ACTION_CHANGE_PHOTO_PAGE_BACKGROUND_ALPHA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const-string p1, "is_translucent"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "GalleryConnect"

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->resumeActivity(Z)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0, v0}, Lcom/android/camera/Camera;->pauseActivity(Z)V

    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->registerReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public setJumpTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->mJumpTime:J

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a9

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->unregisterReceiver(Landroid/content/Context;)V

    return-void
.end method
