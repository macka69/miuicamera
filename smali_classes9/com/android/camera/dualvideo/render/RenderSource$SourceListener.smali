.class public interface abstract Lcom/android/camera/dualvideo/render/RenderSource$SourceListener;
.super Ljava/lang/Object;
.source "RenderSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/render/RenderSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SourceListener"
.end annotation


# virtual methods
.method public abstract onImageUpdated(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
.end method

.method public abstract onNewStreamAvailable(Lcom/android/camera/dualvideo/util/RenderSourceType;)V
.end method
