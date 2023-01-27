.class Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;
.super Lcom/xiaomi/camera/util/State;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionCompletedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v0, "entering connecting complete state"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3500(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x103

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x104

    if-eq v0, v1, :cond_6

    const/16 p1, 0x400

    if-eq v0, p1, :cond_5

    const/16 p1, 0x503

    if-eq v0, p1, :cond_3

    const/16 p1, 0x602

    if-eq v0, p1, :cond_1

    const p1, 0xbabe

    if-eq v0, p1, :cond_0

    const p1, 0xdead

    if-eq v0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    return v2

    :cond_1
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    :goto_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :cond_5
    :goto_1
    return v2

    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I[B)V

    return v2

    :cond_7
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    return v2
.end method
