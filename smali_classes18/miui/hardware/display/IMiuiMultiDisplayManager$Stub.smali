.class public abstract Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiMultiDisplayManager.java"

# interfaces
.implements Lmiui/hardware/display/IMiuiMultiDisplayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/hardware/display/IMiuiMultiDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IMiuiMultiDisplayManager"

.field static final TRANSACTION_enableSecondaryDisplayWhileUnfold:I = 0x6

.field static final TRANSACTION_getCurrentFoldState:I = 0x8

.field static final TRANSACTION_getDisplayStateOverride:I = 0x7

.field static final TRANSACTION_getScreenEffectAvailableDisplay:I = 0x1

.field static final TRANSACTION_reverseDisplayStateWhileUnfold:I = 0x5

.field static final TRANSACTION_setDisplayStateIgnoreFold:I = 0x2

.field static final TRANSACTION_setOverrideDisplayState:I = 0x3

.field static final TRANSACTION_setOverrideDisplayStateByFlag:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.hardware.display.IMiuiMultiDisplayManager"

    invoke-virtual {p0, p0, v0}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/hardware/display/IMiuiMultiDisplayManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "miui.hardware.display.IMiuiMultiDisplayManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/hardware/display/IMiuiMultiDisplayManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmiui/hardware/display/IMiuiMultiDisplayManager;

    return-object v1

    :cond_1
    new-instance v1, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lmiui/hardware/display/IMiuiMultiDisplayManager;
    .locals 1

    sget-object v0, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub$Proxy;->sDefaultImpl:Lmiui/hardware/display/IMiuiMultiDisplayManager;

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getCurrentFoldState"

    return-object v0

    :pswitch_1
    const-string v0, "getDisplayStateOverride"

    return-object v0

    :pswitch_2
    const-string v0, "enableSecondaryDisplayWhileUnfold"

    return-object v0

    :pswitch_3
    const-string v0, "reverseDisplayStateWhileUnfold"

    return-object v0

    :pswitch_4
    const-string v0, "setOverrideDisplayStateByFlag"

    return-object v0

    :pswitch_5
    const-string v0, "setOverrideDisplayState"

    return-object v0

    :pswitch_6
    const-string v0, "setDisplayStateIgnoreFold"

    return-object v0

    :pswitch_7
    const-string v0, "getScreenEffectAvailableDisplay"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setDefaultImpl(Lmiui/hardware/display/IMiuiMultiDisplayManager;)Z
    .locals 2

    sget-object v0, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub$Proxy;->sDefaultImpl:Lmiui/hardware/display/IMiuiMultiDisplayManager;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub$Proxy;->sDefaultImpl:Lmiui/hardware/display/IMiuiMultiDisplayManager;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "miui.hardware.display.IMiuiMultiDisplayManager"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->getCurrentFoldState()Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->getDisplayStateOverride(Z)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p0, v1}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->enableSecondaryDisplayWhileUnfold(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->reverseDisplayStateWhileUnfold(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->setOverrideDisplayStateByFlag(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->setOverrideDisplayState(ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {p0, v3, v1}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->setDisplayStateIgnoreFold(IZ)Z

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/hardware/display/IMiuiMultiDisplayManager$Stub;->getScreenEffectAvailableDisplay()[I

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v2

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
