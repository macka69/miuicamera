.class public abstract Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiMultiDisplayManager.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IMiuiMultiDisplayManager"

.field public static final FLAG_REVERSE_DISPLAY_RESET_WHEN_FOLDED:I = 0x1

.field public static final TRANSACTION_getCurrentFoldState:I = 0x9

.field public static final TRANSACTION_reverseDisplayStateWhileUnfold:I = 0x4

.field public static final TRANSACTION_setDisplayStateIgnoreFold:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.hardware.display.IMiuiMultiDisplayManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub$Proxy;->sDefaultImpl:Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;)Z
    .locals 1

    sget-object v0, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub$Proxy;->sDefaultImpl:Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager$Stub$Proxy;->sDefaultImpl:Lcom/android/camera/module/impl/component/IMiuiMultiDisplayManager;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method
