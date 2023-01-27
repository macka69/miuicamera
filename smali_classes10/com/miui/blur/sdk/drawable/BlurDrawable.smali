.class public Lcom/miui/blur/sdk/drawable/BlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BlurDrawable.java"


# static fields
.field public static final MIUI_BLUR_DEFAULT_DARK:I = 0x6

.field public static final MIUI_BLUR_DEFAULT_LIGHT:I = 0x2

.field public static final MIUI_BLUR_EXTRA_THIN_DARK:I = 0x4

.field public static final MIUI_BLUR_EXTRA_THIN_LIGHT:I = 0x0

.field public static final MIUI_BLUR_HEAVY_DARK:I = 0x7

.field public static final MIUI_BLUR_HEAVY_LIGHT:I = 0x3

.field public static final MIUI_BLUR_THIN_DARK:I = 0x5

.field public static final MIUI_BLUR_THIN_LIGHT:I = 0x1

.field public static final MIUI_FULL_SCREEN_BLUR_DEFAULT_DARK:I = 0xb

.field public static final MIUI_FULL_SCREEN_BLUR_DEFAULT_LIGHT:I = 0x9

.field public static final MIUI_FULL_SCREEN_BLUR_THIN_DARK:I = 0xa

.field public static final MIUI_FULL_SCREEN_BLUR_THIN_LIGHT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BlurDrawable"

.field private static final mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mAlpha:I

.field private mBlurEnabled:Z

.field private mBlurHeight:I

.field private mBlurWidth:I

.field private mFunctor:J

.field private mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    :try_start_0
    invoke-static {}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlurStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miuiblursdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "BlurDrawable"

    const-string v2, "Failed to load miuiblursdk library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    const-string v0, "miuiblur"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    const-string v2, "Failed to load miuiblur library"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurEnabled:Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurWidth:I

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurWidth:I

    iget v1, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurHeight:I

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nCreateNativeFunctor(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->initMethod()V

    :cond_0
    return-void
.end method

.method private drawBlurBack(Landroid/graphics/Canvas;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "BlurDrawable"

    const-string v0, "canvas function [callDrawGLFunction()] error"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initMethod()V
    .locals 9

    const-class v0, Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const-string v3, "callDrawGLFunction2"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v2, :cond_0

    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v2, "getDeclaredMethod"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    aput-object v0, v7, v5

    const-class v8, [Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    const-string v7, "forName"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v0, v8, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v7, v4, [Ljava/lang/Object;

    const-string v8, "android.graphics.RecordingCanvas"

    aput-object v8, v7, v5

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x16

    if-le v1, v0, :cond_1

    const-string v0, "android.view.DisplayListCanvas"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    const/16 v2, 0x15

    const-string v6, "callDrawGLFunction"

    const-string v7, "android.view.HardwareCanvas"

    if-ne v1, v2, :cond_2

    :try_start_1
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_2
    if-ne v1, v0, :cond_3

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_3
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    const-string v0, "BlurDrawable"

    const-string v1, "canvas function [callDrawGLFunction()] error"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private invalidateOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/blur/sdk/drawable/BlurDrawable$1;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable$1;-><init>(Lcom/miui/blur/sdk/drawable/BlurDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public static isSupportBlurStatic()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static native nAddMixColor(JII)V
.end method

.method public static native nClearMixColor(J)V
.end method

.method public static native nCreateNativeFunctor(II)J
.end method

.method public static native nDeleteNativeFunctor(J)J
.end method

.method public static native nEnableBlur(JZ)V
.end method

.method public static native nNeedUpdateBounds(JZ)V
.end method

.method public static native nSetAlpha(JF)V
.end method

.method public static native nSetBlurCornerRadii(J[F)V
.end method

.method public static native nSetBlurMode(JI)V
.end method

.method public static native nSetBlurRatio(JF)V
.end method

.method public static native nSetMixColor(JII)V
.end method


# virtual methods
.method public addMixColor(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nAddMixColor(JII)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public addMixColor(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nAddMixColor(JII)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public clearMixColor()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nClearMixColor(J)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "BlurDrawable"

    const-string v1, "draw"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->drawBlurBack(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public enableBlur(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurEnabled:Z

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nEnableBlur(JZ)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nDeleteNativeFunctor(J)J

    :cond_0
    const-string v0, "BlurDrawable"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBlur()Z
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needUpdateBounds(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nNeedUpdateBounds(JZ)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    iput p1, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mAlpha:I

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    int-to-float p0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    invoke-static {v0, v1, p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetAlpha(JF)V

    return-void
.end method

.method public setBlurCornerRadii([F)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetBlurCornerRadii(J[F)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public setBlurMode(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetBlurMode(JI)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public setBlurRatio(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetBlurRatio(JF)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "BlurDrawable"

    const-string p1, "nothing in setColorFilter"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMiuiBlurType(I)V
    .locals 7

    const v0, 0x3f666666

    const v1, 0x3f333333

    const v2, 0x3ecccccd

    const/16 v3, 0x13

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    const/16 v6, 0x1d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#80a3a3a3"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#66000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#52b4b4b4"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#26000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#85666666"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#66ffffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#61424242"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#1effffff"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#7f5c5c5c"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#bf1f1f1f"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#75737373"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#8a262626"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#618a8a8a"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#4d424242"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#4dadadad"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#33616161"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v2}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#a66b6b6b"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#ccf5f5f5"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#8f606060"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#a3f2f2f2"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#84585858"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#40e3e3e3"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#7f4d4d4d"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#26d9d9d9"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    invoke-virtual {p0, v2}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMixColor(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetMixColor(JII)V

    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method
