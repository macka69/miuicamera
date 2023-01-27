.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MakeupProtocol;
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
    name = "MakeupProtocol"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xb4


# virtual methods
.method public abstract isSeekBarVisible()Z
.end method

.method public abstract onMakeupItemSelected(Ljava/lang/String;IZ)V
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
.end method
