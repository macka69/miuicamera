.class public interface abstract Lcom/xiaomi/camera/core/ParallelDataZipper$DataListener;
.super Ljava/lang/Object;
.source "ParallelDataZipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/core/ParallelDataZipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataListener"
.end annotation


# virtual methods
.method public abstract onParallelDataAbandoned(Lcom/xiaomi/camera/core/CaptureData;)V
.end method

.method public abstract onParallelDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
.end method

.method public abstract onPartialDataAvailable(Lcom/xiaomi/camera/core/CaptureData;)V
.end method
