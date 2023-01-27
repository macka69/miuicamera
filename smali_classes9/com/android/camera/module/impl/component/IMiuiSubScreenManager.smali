.class public interface abstract Lcom/android/camera/module/impl/component/IMiuiSubScreenManager;
.super Ljava/lang/Object;
.source "IMiuiSubScreenManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/IMiuiSubScreenManager$Stub;
    }
.end annotation


# static fields
.field public static final CODE_CLEAR_FLAG:I = 0xfffff8

.field public static final CODE_TURN_OFF_SUB_DISPLAY:I = 0xfffffb

.field public static final CODE_TURN_ON_SUB_DISPLAY:I = 0xfffffa


# virtual methods
.method public abstract turnOnOrOFFSubDisplay(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
