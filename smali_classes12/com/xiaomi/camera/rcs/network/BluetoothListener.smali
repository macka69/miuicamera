.class public Lcom/xiaomi/camera/rcs/network/BluetoothListener;
.super Ljava/lang/Object;
.source "BluetoothListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;,
        Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mCallback:Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mCallback:Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    return-object p0
.end method


# virtual methods
.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;-><init>(Lcom/xiaomi/camera/rcs/network/BluetoothListener;Lcom/xiaomi/camera/rcs/network/BluetoothListener$1;)V

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->mReceiver:Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;

    :cond_0
    return-void
.end method
