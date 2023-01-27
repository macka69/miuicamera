.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ModeListManager;
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
    name = "ModeListManager"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xa00


# virtual methods
.method public abstract hideMoreMode(Z)V
.end method

.method public abstract isMoreModeShowing(Z)Z
.end method

.method public abstract showMoreMode(Z)V
.end method
