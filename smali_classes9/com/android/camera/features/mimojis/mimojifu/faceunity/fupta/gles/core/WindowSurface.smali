.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;
.source "WindowSurface.java"


# instance fields
.field private mReleaseSurface:Z

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;Landroid/view/Surface;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;)V

    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    iput-boolean p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;->mReleaseSurface:Z

    return-void
.end method


# virtual methods
.method public recreate(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->mEglCore:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglCore;

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->createWindowSurface(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not yet implemented for SurfaceTexture"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/EglSurfaceBase;->releaseEglSurface()V

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;->mReleaseSurface:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/WindowSurface;->mSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method
