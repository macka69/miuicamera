.class public interface abstract Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiBottomList;
.super Ljava/lang/Object;
.source "MimojiModeProtocol.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MimojiBottomList"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xf8


# virtual methods
.method public abstract firstProgressShow(Z)V
.end method

.method public abstract hideTimbreProgress()I
.end method

.method public abstract isCloudListLoadSuccess()Z
.end method

.method public abstract refreshMimojiList()I
.end method

.method public abstract setDataResetCompleted()V
.end method

.method public abstract switchMimojiList()I
.end method
