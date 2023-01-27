.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field public static final HIGH_ACCURACY_TOLERANCE:F

.field public static final LIMIT_HEIGHT_SIZE:I = 0x2

.field public static final LIMIT_PICTURE_SIZE:I = 0x0

.field public static final LIMIT_WIDTH_SIZE:I = 0x1

.field private static PICTURE_ASPECT_RATIOS:[F = null

.field public static final TAG:Ljava/lang/String; = "PictureSizeMg"

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/CameraSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/mi/config/DataItemFeature;->instance()Lcom/mi/config/DataItemFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/config/DataItemFeature;->getHighAccuracyTolerance()F

    move-result v0

    sput v0, Lcom/android/camera/PictureSizeManager;->HIGH_ACCURACY_TOLERANCE:F

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/PictureSizeManager;->PICTURE_ASPECT_RATIOS:[F

    invoke-static {v0}, Ljava/util/Arrays;->sort([F)V

    return-void

    :array_0
    .array-data 4
        0x3faaaaaa
        0x3fe38e38
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x400aaaab
        0x40071c72
        0x40055555
        0x400e38e4
        0x3fcccccd
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMaxSizeWithRatio(Ljava/util/List;F)Lcom/android/camera/CameraSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;F)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;FI)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method private static findMaxSizeWithRatio(Ljava/util/List;FI)Lcom/android/camera/CameraSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;FI)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;FII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static findMaxSizeWithRatio(Ljava/util/List;FII)Lcom/android/camera/CameraSize;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;FII)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/CameraSize;

    sget v5, Lcom/android/camera/PictureSizeManager;->HIGH_ACCURACY_TOLERANCE:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-lez v5, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getRatio()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v8, Lcom/android/camera/PictureSizeManager;->HIGH_ACCURACY_TOLERANCE:F

    cmpg-float v5, v5, v8

    if-gez v5, :cond_4

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->area()I

    move-result v5

    if-ne p3, v7, :cond_1

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    goto :goto_1

    :cond_1
    if-ne p3, v6, :cond_2

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    :cond_2
    :goto_1
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->area()I

    move-result v6

    mul-int v7, v0, v2

    if-le v6, v7, :cond_0

    if-lez p2, :cond_3

    if-gt v5, p2, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getRatio()F

    move-result v5

    sub-float/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    const-wide v10, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v5, v8, v10

    if-gez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->area()I

    move-result v5

    if-ne p3, v7, :cond_5

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v5

    goto :goto_2

    :cond_5
    if-ne p3, v6, :cond_6

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v5

    :cond_6
    :goto_2
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->area()I

    move-result v6

    mul-int v7, v1, v3

    if-le v6, v7, :cond_0

    if-lez p2, :cond_7

    if-gt v5, p2, :cond_0

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v3

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v1

    invoke-virtual {v4}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v3

    goto/16 :goto_0

    :cond_8
    const-string p0, "PictureSizeMg"

    if-eqz v0, :cond_9

    const-string p1, "find high accuracy size, use it"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0, v0, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object p0

    :cond_9
    if-eqz v1, :cond_a

    const-string p1, "find normal accuracy size"

    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object p0

    :cond_a
    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0}, Lcom/android/camera/CameraSize;-><init>()V

    return-object p0
.end method

.method public static getBestPanoPictureSize()Lcom/android/camera/CameraSize;
    .locals 4

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/Display;->getAppBoundHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v0

    const v1, 0x3fe38e38

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/android/camera/CameraSize;

    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSize;

    iget v1, v1, Lcom/android/camera/CameraSize;->width:I

    sget-object v3, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/CameraSize;

    iget v2, v2, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_2
    return-object v0
.end method

.method public static getBestPictureSize(F)Lcom/android/camera/CameraSize;
    .locals 1

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getBestPictureSize(I)Lcom/android/camera/CameraSize;
    .locals 1

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v0, p0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getBestPictureSize(Ljava/util/List;F)Lcom/android/camera/CameraSize;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;F)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0}, Lcom/android/camera/CameraSize;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/camera/PictureSizeManager;->PICTURE_ASPECT_RATIOS:[F

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    sub-float v6, p1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    invoke-static {p0, v5}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    new-instance v0, Lcom/android/camera/CameraSize;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraSize;

    iget p1, p1, Lcom/android/camera/CameraSize;->width:I

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/CameraSize;

    iget p0, p0, Lcom/android/camera/CameraSize;->height:I

    invoke-direct {v0, p1, p0}, Lcom/android/camera/CameraSize;-><init>(II)V

    :cond_4
    return-object v0
.end method

.method public static getBestPictureSize(Ljava/util/List;FI)Lcom/android/camera/CameraSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;FI)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;FII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getBestPictureSize(Ljava/util/List;FII)Lcom/android/camera/CameraSize;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;FII)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0}, Lcom/android/camera/CameraSize;-><init>()V

    return-object p0

    :cond_0
    sget-object v0, Lcom/android/camera/PictureSizeManager;->PICTURE_ASPECT_RATIOS:[F

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/high16 v3, -0x40800000    # -1.0f

    if-ge v2, v1, :cond_2

    aget v4, v0, v2

    sub-float v5, p1, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v5, v5

    const-wide v7, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    cmpl-float v0, v4, v3

    if-nez v0, :cond_3

    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0}, Lcom/android/camera/CameraSize;-><init>()V

    return-object p0

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;FII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getBestPictureSize(Ljava/util/List;I)Lcom/android/camera/CameraSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;I)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->getPictureSizeRatioString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->getRatio(Ljava/lang/String;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0}, Lcom/android/camera/CameraSize;-><init>()V

    return-object p0
.end method

.method public static getBestPictureSizeLimitWidth(Ljava/util/List;FI)Lcom/android/camera/CameraSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;FI)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/camera/PictureSizeManager;->getBestPictureSize(Ljava/util/List;FII)Lcom/android/camera/CameraSize;

    move-result-object p0

    return-object p0
.end method

.method public static getBestSquareSize(Ljava/util/List;IZ)Lcom/android/camera/CameraSize;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;IZ)",
            "Lcom/android/camera/CameraSize;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/CameraSize;

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    if-ge p1, v2, :cond_3

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/CameraSize;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_4
    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0, v0, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object p0

    :cond_5
    :goto_1
    new-instance p0, Lcom/android/camera/CameraSize;

    invoke-direct {p0, v0, v0}, Lcom/android/camera/CameraSize;-><init>(II)V

    return-object p0
.end method

.method public static initialize(Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;III)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/camera/PictureSizeManager;->initializeBase(Ljava/util/List;IIII)V

    return-void
.end method

.method static initializeBase(Ljava/util/List;IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;IIII)V"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraSize;

    iget v1, p1, Lcom/android/camera/CameraSize;->height:I

    if-gt v1, p2, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraSize;

    iget v1, p1, Lcom/android/camera/CameraSize;->width:I

    if-gt v1, p2, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/CameraSize;

    invoke-virtual {p1}, Lcom/android/camera/CameraSize;->area()I

    move-result v1

    if-gt v1, p2, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    :goto_3
    move-object p0, v0

    :cond_7
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object p2, Lcom/android/camera/PictureSizeManager;->PICTURE_ASPECT_RATIOS:[F

    array-length v0, p2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_9

    aget v2, p2, v1

    invoke-static {p0, v2}, Lcom/android/camera/PictureSizeManager;->findMaxSizeWithRatio(Ljava/util/List;F)Lcom/android/camera/CameraSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraSize;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    sget-object p0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->initSensorRatio(Ljava/util/Map;II)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not find the desire picture sizes!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The supported picture size list return from hal is null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static initializeLimitWidth(Ljava/util/List;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/CameraSize;",
            ">;III)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/camera/PictureSizeManager;->initializeBase(Ljava/util/List;IIII)V

    return-void
.end method
