.class interface abstract Lcom/android/camera/dualvideo/render/RenderSource;
.super Ljava/lang/Object;
.source "RenderSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;
    }
.end annotation


# virtual methods
.method public abstract attachToGL(Lcom/android/gallery3d/ui/GLCanvas;)V
.end method

.method public abstract canDraw()Z
.end method

.method public abstract getSourceType()Lcom/android/camera/dualvideo/util/RenderSourceType;
.end method

.method public abstract getSurface()Landroid/view/Surface;
.end method

.method public abstract getTexture()Lcom/android/gallery3d/ui/ExtTexture;
.end method

.method public abstract ismFrameReady()Z
.end method

.method public abstract makeDrawable()V
.end method

.method public abstract prepare(Landroid/util/Size;)V
.end method

.method public abstract release()V
.end method

.method public abstract updateTexImage()V
.end method
