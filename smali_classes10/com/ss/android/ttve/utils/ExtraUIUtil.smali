.class public Lcom/ss/android/ttve/utils/ExtraUIUtil;
.super Ljava/lang/Object;
.source "ExtraUIUtil.java"


# static fields
.field public static final DEFAULT_SURFACE_SCALE_HEIGHT:F = 16.0f

.field public static final DEFAULT_SURFACE_SCALE_WIDTH:F = 9.0f

.field public static final SURFACE_LOCATION_HEIGHT_INDEX:I = 0x3

.field public static final SURFACE_LOCATION_WIDTH_INDEX:I = 0x2

.field public static final SURFACE_LOCATION_X_INDEX:I = 0x0

.field public static final SURFACE_LOCATION_Y_INDEX:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ExtraUIUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calScreenSurfaceLocation(Landroid/content/Context;IIIII)[F
    .locals 17

    move/from16 v0, p1

    move/from16 v1, p5

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10e

    if-eq v1, v2, :cond_0

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_0

    :cond_0
    move/from16 v2, p3

    move/from16 v1, p4

    :goto_0
    const/4 v3, 0x4

    new-array v4, v3, [F

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v6, v4, v7

    int-to-float v8, v1

    const/4 v9, 0x2

    aput v8, v4, v9

    int-to-float v10, v2

    const/4 v11, 0x3

    aput v10, v4, v11

    const-string v12, "ExtraUIUtil"

    if-nez p0, :cond_1

    const-string v0, "Context is null while calculating surface location!"

    invoke-static {v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const/high16 v13, 0x41800000    # 16.0f

    mul-float v14, v8, v13

    const/high16 v15, 0x41100000    # 9.0f

    mul-float v16, v10, v15

    cmpl-float v14, v14, v16

    const/high16 v16, 0x3f800000    # 1.0f

    if-lez v14, :cond_2

    int-to-float v6, v0

    aput v6, v4, v9

    mul-float v10, v10, v16

    mul-float/2addr v10, v6

    div-float/2addr v10, v8

    aput v10, v4, v11

    move/from16 v14, p2

    goto :goto_1

    :cond_2
    move/from16 v14, p2

    int-to-float v3, v14

    aput v3, v4, v11

    mul-float/2addr v3, v15

    div-float/2addr v3, v13

    aput v3, v4, v9

    int-to-float v3, v0

    aget v13, v4, v9

    sub-float v13, v3, v13

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v13, v15

    aput v13, v4, v5

    aget v13, v4, v5

    cmpl-float v13, v13, v6

    if-lez v13, :cond_3

    aput v6, v4, v5

    aput v3, v4, v9

    mul-float v10, v10, v16

    mul-float/2addr v10, v3

    div-float/2addr v10, v8

    aput v10, v4, v11

    :cond_3
    :goto_1
    const/16 v3, 0xa

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v11

    invoke-static/range {p0 .. p0}, Lcom/ss/android/ttve/utils/UIUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const/4 v0, 0x5

    invoke-static/range {p0 .. p0}, Lcom/ss/android/ttve/utils/UIUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x6

    aget v1, v4, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x7

    aget v1, v4, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x8

    aget v1, v4, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aget v1, v4, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "video[%d, %d], max[%d, %d], screen[%d, %d], surface[%f, %f, %f, %f]"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_1
    return v0
.end method

.method public static getRealDisplayHeight(Landroid/content/Context;)I
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    :try_start_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {p0}, Lcom/ss/android/ttve/utils/UIUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method
