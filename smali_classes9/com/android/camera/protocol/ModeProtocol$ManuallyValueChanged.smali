.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;
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
    name = "ManuallyValueChanged"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0xae


# virtual methods
.method public abstract getModuleIndex()I
.end method

.method public abstract onBokehFNumberValueChanged(Ljava/lang/String;)V
.end method

.method public abstract onDualLensSwitch(Lcom/android/camera/data/data/config/ComponentManuallyDualLens;I)V
.end method

.method public abstract onDualLensZooming(Z)V
.end method

.method public abstract onDualZoomHappened(Z)V
.end method

.method public abstract onDualZoomValueChanged(FI)V
.end method

.method public abstract onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V
.end method

.method public abstract onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPictureStyleChanged()V
.end method

.method public abstract onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V
.end method

.method public abstract resetManuallyParameters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSATIsZooming(Z)V
.end method
