.class public interface abstract Lcom/android/camera2/Camera2Proxy$SuperNightCallback;
.super Ljava/lang/Object;
.source "Camera2Proxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera2/Camera2Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SuperNightCallback"
.end annotation


# virtual methods
.method public abstract isMiviSatSuperNightSupported()Z
.end method

.method public abstract isSupportSuperNight()Z
.end method

.method public abstract onSuperNightChanged(Z)V
.end method

.method public abstract onSuperNightExif(Lcom/android/camera2/vendortag/struct/MarshalQueryableSuperNightExif$SuperNightExif;)V
.end method

.method public abstract updateSuperNightTip(ZI)V
.end method
