.class Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/BluetoothListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/BluetoothListener;


# direct methods
.method private constructor <init>(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;->this$0:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/camera/rcs/network/BluetoothListener;Lcom/xiaomi/camera/rcs/network/BluetoothListener$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;-><init>(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;->this$0:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->access$100(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;->onBluetoothTurningOff()V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;->this$0:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->access$100(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;->onBluetoothOn()V

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;->this$0:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->access$100(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;->onBluetoothTurningOn()V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/BluetoothListener$BluetoothReceiver;->this$0:Lcom/xiaomi/camera/rcs/network/BluetoothListener;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener;->access$100(Lcom/xiaomi/camera/rcs/network/BluetoothListener;)Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/camera/rcs/network/BluetoothListener$Callback;->onBluetoothOff()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
