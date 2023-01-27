.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$MultiFeatureManager;
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
    name = "MultiFeatureManager"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x3a1


# virtual methods
.method public abstract cancelInstallFeature(Ljava/lang/String;)V
.end method

.method public abstract checkAndShowDownloadConfirmDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getFeatureSize(Ljava/lang/String;)J
.end method

.method public abstract getInstalledFeatures()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasFeatureInstalled(Ljava/lang/String;)Z
.end method

.method public abstract init()V
.end method

.method public abstract loadLibrary(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showDownloadCancelDialog(Ljava/lang/String;Landroid/content/Context;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;
.end method

.method public abstract startInstallFeature(Ljava/lang/String;Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;)V
.end method
