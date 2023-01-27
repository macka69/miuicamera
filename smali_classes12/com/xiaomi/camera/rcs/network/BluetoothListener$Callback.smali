.class public interface abstract Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;
.super Ljava/lang/Object;
.source "BluetoothListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/BluetoothListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBluetoothOff()V
.end method

.method public abstract onBluetoothOn()V
.end method

.method public abstract onBluetoothTurningOff()V
.end method

.method public abstract onBluetoothTurningOn()V
.end method
