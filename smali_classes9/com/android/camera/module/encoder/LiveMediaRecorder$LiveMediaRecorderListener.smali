.class public interface abstract Lcom/android/camera/module/encoder/LiveMediaRecorder$LiveMediaRecorderListener;
.super Ljava/lang/Object;
.source "LiveMediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/encoder/LiveMediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LiveMediaRecorderListener"
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onStop()V
.end method

.method public abstract save(Ljava/lang/String;Landroid/content/ContentValues;)V
.end method
