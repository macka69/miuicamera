.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;
.super Ljava/lang/Object;
.source "ModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;
.implements Lcom/android/camera/animation/AnimationDelegate$AnimationResource;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/protocol/ModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PresentationDisplay"
.end annotation


# static fields
.field public static final SHOW_TYPE_MODULE:I = 0x2

.field public static final SHOW_TYPE_SWITCH:I = 0x1

.field public static final TYPE_TAG:I = 0x3b1


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract hideDelayNumber()V
.end method

.method public abstract registerAnimationResource(Lcom/android/camera/animation/AnimationComposite;)V
.end method

.method public abstract show(I)V
.end method

.method public abstract showDelayNumber(I)V
.end method
