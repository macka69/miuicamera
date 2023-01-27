.class public final Lcom/android/camera2/CaptureStartParam$Builder;
.super Ljava/lang/Object;
.source "CaptureStartParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/CaptureStartParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mParameter:Lcom/android/camera2/CaptureStartParam;


# direct methods
.method public constructor <init>(Lcom/android/camera/CameraSize;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera2/CaptureStartParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/camera2/CaptureStartParam;-><init>(Lcom/android/camera/CameraSize;Lcom/android/camera2/CaptureStartParam$1;)V

    iput-object v0, p0, Lcom/android/camera2/CaptureStartParam$Builder;->mParameter:Lcom/android/camera2/CaptureStartParam;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera2/CaptureStartParam;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera2/CaptureStartParam$Builder;->mParameter:Lcom/android/camera2/CaptureStartParam;

    return-object p0
.end method

.method public setPictureSize(Lcom/android/camera/CameraSize;)Lcom/android/camera2/CaptureStartParam$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/camera2/CaptureStartParam$Builder;->mParameter:Lcom/android/camera2/CaptureStartParam;

    new-instance v1, Lcom/android/camera/CameraSize;

    invoke-direct {v1, p1}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    invoke-static {v0, v1}, Lcom/android/camera2/CaptureStartParam;->access$102(Lcom/android/camera2/CaptureStartParam;Lcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public setQuickViewParam(Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/CaptureStartParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CaptureStartParam$Builder;->mParameter:Lcom/android/camera2/CaptureStartParam;

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureStartParam;->access$202(Lcom/android/camera2/CaptureStartParam;Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/QuickViewParam;

    return-object p0
.end method

.method public setSatCameraId(I)Lcom/android/camera2/CaptureStartParam$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/camera2/CaptureStartParam$Builder;->mParameter:Lcom/android/camera2/CaptureStartParam;

    invoke-static {v0, p1}, Lcom/android/camera2/CaptureStartParam;->access$302(Lcom/android/camera2/CaptureStartParam;I)I

    return-object p0
.end method
