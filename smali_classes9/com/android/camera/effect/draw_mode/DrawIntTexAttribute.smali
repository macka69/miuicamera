.class public Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawIntTexAttribute.java"


# instance fields
.field public mDrawRect:Landroid/graphics/Rect;

.field public mIsSnapshot:Z

.field public mTexId:I


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    const/4 p1, 0x6

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    iput-boolean p3, p0, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mIsSnapshot:Z

    return-void
.end method
