.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;
.super Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.source "CameraFocusPaintOuterRect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Split"
.end annotation


# instance fields
.field private minorColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;->minorColor:I

    return-void
.end method


# virtual methods
.method public getMinorColor()I
    .locals 0

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;->minorColor:I

    return p0
.end method

.method protected getPaintColor(I)I
    .locals 1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget p0, p0, Lcom/android/camera/ui/drawable/CameraPaintBase;->mCurrentColor:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;->minorColor:I

    :goto_0
    return p0
.end method

.method public setMinorColor(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Split;->minorColor:I

    return-void
.end method
