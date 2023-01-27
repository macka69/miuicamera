.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/OffscreenSurface;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;
.source "OffscreenSurface.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->createOffscreenSurface(II)V

    return-void
.end method


# virtual methods
.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->releaseEglSurface()V

    return-void
.end method
