.class public interface abstract Lcom/android/camera/protocol/ModeProtocol$BluetoothHeadset;
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
    name = "BluetoothHeadset"
.end annotation


# static fields
.field public static final TYPE_TAG:I = 0x3a5


# virtual methods
.method public abstract isBluetoothScoOn()Z
.end method

.method public abstract isSupportBluetoothSco(I)Z
.end method

.method public abstract startBluetoothSco(I)V
.end method

.method public abstract stopBluetoothSco(I)V
.end method
