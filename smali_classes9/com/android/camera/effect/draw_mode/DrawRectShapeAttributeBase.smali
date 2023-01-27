.class public abstract Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawRectShapeAttributeBase.java"


# instance fields
.field public mDrawRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/draw_mode/DrawRectShapeAttributeBase;->mDrawRect:Landroid/graphics/Rect;

    return-void
.end method
