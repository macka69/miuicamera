.class public interface abstract Lcom/ss/android/vesdk/TERecorder$IRenderCallback;
.super Ljava/lang/Object;
.source "TERecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/TERecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IRenderCallback"
.end annotation


# virtual methods
.method public abstract onCreateTexture()Lcom/ss/android/vesdk/TERecorder$Texture;
.end method

.method public abstract onDestroy()Z
.end method

.method public abstract onTextureCreated(Lcom/ss/android/vesdk/TERecorder$Texture;)V
.end method
