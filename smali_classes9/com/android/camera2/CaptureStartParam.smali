.class public Lcom/android/camera2/CaptureStartParam;
.super Ljava/lang/Object;
.source "CaptureStartParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/CaptureStartParam$Builder;
    }
.end annotation


# instance fields
.field private mPictureSize:Lcom/android/camera/CameraSize;

.field private mQuickViewParam:Lcom/android/camera2/QuickViewParam;

.field private mSatCameraId:I


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraSize;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-direct {v0, p1}, Lcom/android/camera/CameraSize;-><init>(Lcom/android/camera/CameraSize;)V

    iput-object v0, p0, Lcom/android/camera2/CaptureStartParam;->mPictureSize:Lcom/android/camera/CameraSize;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/camera2/CaptureStartParam;->mSatCameraId:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraSize;Lcom/android/camera2/CaptureStartParam$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera2/CaptureStartParam;-><init>(Lcom/android/camera/CameraSize;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera2/CaptureStartParam;Lcom/android/camera/CameraSize;)Lcom/android/camera/CameraSize;
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CaptureStartParam;->mPictureSize:Lcom/android/camera/CameraSize;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/camera2/CaptureStartParam;Lcom/android/camera2/QuickViewParam;)Lcom/android/camera2/QuickViewParam;
    .locals 0

    iput-object p1, p0, Lcom/android/camera2/CaptureStartParam;->mQuickViewParam:Lcom/android/camera2/QuickViewParam;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/camera2/CaptureStartParam;I)I
    .locals 0

    iput p1, p0, Lcom/android/camera2/CaptureStartParam;->mSatCameraId:I

    return p1
.end method


# virtual methods
.method public getPictureSize()Lcom/android/camera/CameraSize;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CaptureStartParam;->mPictureSize:Lcom/android/camera/CameraSize;

    return-object p0
.end method

.method public getQuickViewParam()Lcom/android/camera2/QuickViewParam;
    .locals 0

    iget-object p0, p0, Lcom/android/camera2/CaptureStartParam;->mQuickViewParam:Lcom/android/camera2/QuickViewParam;

    return-object p0
.end method

.method public getSatCameraId()I
    .locals 0

    iget p0, p0, Lcom/android/camera2/CaptureStartParam;->mSatCameraId:I

    return p0
.end method
