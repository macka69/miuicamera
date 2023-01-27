.class public Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;
.super Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
.source "StickerBeautyProcessor.java"


# static fields
.field private static final ST_BEAUTIFY_CONTRAST_STRENGTH:I = 0x1

.field private static final ST_BEAUTIFY_ENLARGE_EYE_RATIO:I = 0x5

.field private static final ST_BEAUTIFY_ILLEGAL_PARAMETER:I = -0x1

.field private static final ST_BEAUTIFY_SHRINK_FACE_RATIO:I = 0x6

.field private static final ST_BEAUTIFY_SHRINK_JAW_RATIO:I = 0x7

.field private static final ST_BEAUTIFY_SMOOTH_STRENGTH:I = 0x3

.field private static final ST_BEAUTIFY_WHITEN_STRENGTH:I = 0x4


# instance fields
.field private mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;


# direct methods
.method public constructor <init>(Lcom/sensetime/stmobile/STBeautifyNative;)V
    .locals 3

    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;-><init>()V

    iput-object p1, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    const/4 p1, 0x6

    new-array v0, p1, [[F

    new-array v1, p1, [F

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-array v1, p1, [F

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-array v1, p1, [F

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-array v1, p1, [F

    fill-array-data v1, :array_3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-array v1, p1, [F

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array p1, p1, [F

    fill-array-data p1, :array_5

    const/4 v1, 0x5

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->mLevelParameters:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3dcccccd
        0x3dcccccd
        0x3dcccccd
        0x3dcccccd
        0x3dcccccd
        0x3dcccccd
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd
        0x3e4ccccd
        0x3e4ccccd
        0x3e4ccccd
        0x3e4ccccd
        0x3e4ccccd
    .end array-data

    :array_3
    .array-data 4
        0x3e99999a
        0x3e99999a
        0x3e99999a
        0x3e99999a
        0x3e99999a
        0x3e99999a
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x3f19999a
        0x3f19999a
        0x3f19999a
        0x3f19999a
        0x3f19999a
        0x3f19999a
    .end array-data
.end method


# virtual methods
.method public beautify([BII)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public beautify(IIII)V
    .locals 7

    iget-object v0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/stmobile/STBeautifyNative;->processTexture(III[Lcom/sensetime/stmobile/model/STMobile106;I[Lcom/sensetime/stmobile/model/STMobile106;)I

    return-void
.end method

.method public beautify(Landroid/graphics/Bitmap;II)V
    .locals 0

    return-void
.end method

.method public beautify([BIII[BI)V
    .locals 9

    iget-object v0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/sensetime/stmobile/STBeautifyNative;->processBufferNotInGLContext([BIII[Lcom/sensetime/stmobile/model/STMobile106;[BI[Lcom/sensetime/stmobile/model/STMobile106;)I

    return-void
.end method

.method public clearBeautyParameters()V
    .locals 0

    return-void
.end method

.method public getSupportedBeautyParamTypes()[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    .locals 2

    const/4 p0, 0x6

    new-array p0, p0, [Lcom/miui/filtersdk/beauty/BeautyParameterType;

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->CONTRAST_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ENLARGE_EYE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_FACE_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SHRINK_JAW_RATIO:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x3

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->WHITEN_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x4

    aput-object v0, p0, v1

    sget-object v0, Lcom/miui/filtersdk/beauty/BeautyParameterType;->SMOOTH_STRENGTH:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0
.end method

.method public getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F
    .locals 0

    sget-object p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    new-array p0, p0, [F

    return-object p0

    :pswitch_0
    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public init(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    invoke-virtual {p0, p1, p2}, Lcom/sensetime/stmobile/STBeautifyNative;->createInstance(II)I

    return-void
.end method

.method public onDisplaySizeChanged(II)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    invoke-virtual {p0}, Lcom/sensetime/stmobile/STBeautifyNative;->destroyBeautify()V

    return-void
.end method

.method public setBeautyParamDegree(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V
    .locals 1

    sget-object v0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x4

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x7

    goto :goto_0

    :pswitch_3
    const/4 p1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 p1, 0x5

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x1

    :goto_0
    if-eq v0, p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->mStBeautifyNative:Lcom/sensetime/stmobile/STBeautifyNative;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sensetime/stmobile/STBeautifyNative;->setParam(IF)I

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBeautyParamsDegree(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/sticker/beautyprocessor/StickerBeautyProcessor;->setBeautyParamDegree(Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;)V

    goto :goto_0

    :cond_0
    return-void
.end method
