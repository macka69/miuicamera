.class Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;
.super Lcom/xiaomi/camera/util/State;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdvertisingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v0, "entering advertising state"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x300

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x501

    if-eq v0, v1, :cond_1

    const/16 p1, 0x503

    if-eq v0, p1, :cond_0

    const/16 p1, 0x602

    if-eq v0, p1, :cond_2

    const p1, 0xbabe

    if-eq v0, p1, :cond_0

    const p1, 0xdead

    if-eq v0, p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return v2

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v2
.end method
