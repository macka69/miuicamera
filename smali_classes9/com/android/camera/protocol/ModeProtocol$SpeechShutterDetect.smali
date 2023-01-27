.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$SpeechShutterDetect;
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
    name = "SpeechShutterDetect"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xff


# virtual methods
.method public abstract onDestroy()V
.end method

.method public abstract processingSpeechShutter(Z)V
.end method
