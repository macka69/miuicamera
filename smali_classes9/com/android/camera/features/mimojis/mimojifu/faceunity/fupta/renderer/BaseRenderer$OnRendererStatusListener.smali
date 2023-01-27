.class public interface abstract Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer$OnRendererStatusListener;
.super Ljava/lang/Object;
.source "BaseRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/renderer/BaseRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRendererStatusListener"
.end annotation


# virtual methods
.method public abstract getFuIconTexId()I
.end method

.method public abstract onDrawFrame([BIIII)I
.end method

.method public abstract onSurfaceChange()V
.end method

.method public abstract onSurfaceCreated(Landroid/opengl/EGLConfig;)V
.end method

.method public abstract onSurfaceDestroy()V
.end method

.method public abstract queueIsEmpty()Z
.end method

.method public abstract takeBuffer()[B
.end method
