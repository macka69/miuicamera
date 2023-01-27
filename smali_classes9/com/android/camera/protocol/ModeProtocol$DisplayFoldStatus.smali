.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$DisplayFoldStatus;
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
    name = "DisplayFoldStatus"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x3aa


# virtual methods
.method public abstract isDisplayFoldOrUnfold()Z
.end method

.method public abstract setDisplayFoldOrUnfold(Z)V
.end method
