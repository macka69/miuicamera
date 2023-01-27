.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/Drawable2dLandmarks;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;
.source "Drawable2dLandmarks.java"


# instance fields
.field private pointsCoords:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;-><init>()V

    const/16 v0, 0x96

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/Drawable2dLandmarks;->pointsCoords:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/Drawable2d;->updateVertexArray([F)V

    return-void
.end method
