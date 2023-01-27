.class public Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.source "DrawFillRectAttribute.java"


# instance fields
.field public mColor:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    add-int/2addr p3, p1

    add-int/2addr p4, p2

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;->mColor:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;-><init>()V

    iget-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawFillRectAttribute;->mColor:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    return-void
.end method
