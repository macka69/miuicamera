.class Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;
.super Lcom/xiaomi/camera/util/State;
.source "NetworkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionInitiatedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;


# direct methods
.method constructor <init>(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-direct {p0}, Lcom/xiaomi/camera/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    const-string v0, "entering connecting initiate state"

    invoke-static {p0, v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x102

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x103

    if-eq v0, v1, :cond_b

    const/16 v1, 0x105

    if-eq v0, v1, :cond_9

    const/16 v1, 0x106

    if-eq v0, v1, :cond_7

    const/16 v1, 0x400

    if-eq v0, v1, :cond_6

    const/16 v1, 0x602

    if-eq v0, v1, :cond_4

    const v1, 0xbabe

    if-eq v0, v1, :cond_3

    const v1, 0xdead

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :goto_0
    return v3

    :pswitch_1
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3400(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionCompletedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v3

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    :cond_1
    return v3

    :pswitch_3
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$1600(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$AdvertisingState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :cond_3
    :goto_1
    return v3

    :cond_4
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result p1

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->stopAdvertising()V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    :goto_2
    iget-object p1, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$800(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$StandbyState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    :cond_6
    return v3

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    :cond_8
    return v3

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v0

    if-ne v0, v3, :cond_a

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3200(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    :cond_a
    return v3

    :cond_b
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2900(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-static {p0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$2300(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;)Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$EndpointFoundState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/camera/util/StateMachine;->transitionTo(Lcom/xiaomi/camera/util/IState;)V

    return v3

    :cond_c
    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    invoke-virtual {v0}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->getRoleType()I

    move-result v0

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartConnecting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3000(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine$ConnectionInitiatedState;->this$0:Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;->access$3100(Lcom/xiaomi/camera/rcs/network/NetworkStateMachine;I)V

    :cond_d
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x500
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
