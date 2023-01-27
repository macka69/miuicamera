.class public Lcom/android/camera/trackfocus/TrackResult;
.super Ljava/lang/Object;
.source "TrackResult.java"


# static fields
.field public static final EMPTY:Lcom/android/camera/trackfocus/TrackResult;

.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "TrackResult"

.field public static final TRACK_MODE_AUTO:I = 0x0

.field public static final TRACK_MODE_MANUAL:I = 0x1

.field public static final TRACK_ZOOM_RATIO_INVALID:I = 0x0

.field public static final TYPE_BODY:I = 0x1

.field public static final TYPE_CAT:I = 0x2

.field public static final TYPE_DOG:I = 0x3

.field public static final TYPE_FACE:I = 0x4

.field public static final TYPE_NONE:I = -0x1


# instance fields
.field private mRects:[Landroid/graphics/Rect;

.field private mResultROI:Landroid/graphics/Rect;

.field private mResultType:I

.field private mTrackMode:I

.field private mZoomRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v1, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v1, Lcom/android/camera/trackfocus/TrackResult;->EMPTY_RECT:Landroid/graphics/Rect;

    new-instance v6, Lcom/android/camera/trackfocus/TrackResult;

    new-array v2, v0, [Landroid/graphics/Rect;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/trackfocus/TrackResult;-><init>(Landroid/graphics/Rect;[Landroid/graphics/Rect;IIF)V

    sput-object v6, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;[Landroid/graphics/Rect;IIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/camera/trackfocus/TrackResult;->EMPTY_RECT:Landroid/graphics/Rect;

    :cond_0
    iput-object p1, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/android/camera/trackfocus/TrackResult;->mRects:[Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    iput p4, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    iput p5, p0, Lcom/android/camera/trackfocus/TrackResult;->mZoomRatio:F

    return-void
.end method

.method public static parseTrackResult(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;
    .locals 7

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/Rect;

    sget-object v0, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_TYPE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v0}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/camera/trackfocus/TrackFocusResultTag;->TRACK_MODE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v3, Lcom/android/camera/trackfocus/TrackFocusResultTag;->RESULT_MULTIPLE_ROI:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p1, v3}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera2/CameraCapabilities;->getActiveArraySize()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/camera/lib/compatibility/util/CompatibilityUtils;->getZoomRatio(Landroid/graphics/Rect;Landroid/hardware/camera2/CaptureResult;)F

    move-result v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parseTrackResult rect "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TrackResult"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/trackfocus/TrackResult;-><init>(Landroid/graphics/Rect;[Landroid/graphics/Rect;IIF)V

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0

    :cond_3
    :goto_1
    sget-object p0, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p0
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getRects()[Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mRects:[Landroid/graphics/Rect;

    return-object p0
.end method

.method public getResultType()I
    .locals 0

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    return p0
.end method

.method public getTrackMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    return p0
.end method

.method public getZoomRatio()F
    .locals 0

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mZoomRatio:F

    return p0
.end method

.method public isFace()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isManualTrackMode()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowMultiGrid()Z
    .locals 2

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrackResult{mResultROI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultROI:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mResultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTrackMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mTrackMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/trackfocus/TrackResult;->mZoomRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRects="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/trackfocus/TrackResult;->mRects:[Landroid/graphics/Rect;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
