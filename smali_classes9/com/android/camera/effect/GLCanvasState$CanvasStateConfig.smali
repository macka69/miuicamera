.class Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GLCanvasState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field mAlpha:F

.field mBlendAlpha:F

.field mModelMatrix:[F

.field mTexMatrix:[F


# direct methods
.method public constructor <init>([F[FFF)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    new-array v2, v0, [F

    iput-object v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    iput p4, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    return p0
.end method

.method public getBlendAlpha()F
    .locals 0

    iget p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return p0
.end method

.method public getModelMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    return-object p0
.end method

.method public getTexMatrix()[F
    .locals 0

    iget-object p0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    return-object p0
.end method
