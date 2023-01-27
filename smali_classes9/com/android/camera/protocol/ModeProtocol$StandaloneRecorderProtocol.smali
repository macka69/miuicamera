.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$StandaloneRecorderProtocol;
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
    name = "StandaloneRecorderProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x1ad


# virtual methods
.method public abstract getRecorderManager(Lcom/android/camera/storage/ImageSaver;)Lcom/android/camera/dualvideo/recorder/MultiRecorderManager;
.end method
