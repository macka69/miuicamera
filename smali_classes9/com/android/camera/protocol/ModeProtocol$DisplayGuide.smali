.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$DisplayGuide;
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
    name = "DisplayGuide"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x3b2


# virtual methods
.method public abstract dismissFrontFacingDisplayFoldTip()V
.end method

.method public abstract dismissUltraPixelSelfDisplayTip()V
.end method

.method public abstract isShowDisplayTip()Z
.end method

.method public abstract isSupportFrontFacingDisplayFoldTip(I)Z
.end method

.method public abstract isSupportUltraPixelSelf(I)Z
.end method

.method public abstract showFrontFacingDisplayFoldTip()V
.end method

.method public abstract showUltraPixelSelfDisplayFoldTip()V
.end method

.method public abstract showUltraPixelSelfDisplayUnfoldTip()V
.end method

.method public abstract ultraPixelSelf(I)Z
.end method
