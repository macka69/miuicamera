.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$AmbilightSelector;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AmbilightSelector"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x1a5


# virtual methods
.method public abstract onRecordingPrepare()V
.end method

.method public abstract onRecordingStop()V
.end method

.method public abstract setSelectorLayoutVisible(Z)V
.end method

.method public abstract updateDebugInfo(Ljava/lang/String;)V
.end method

.method public abstract updateTips()V
.end method
