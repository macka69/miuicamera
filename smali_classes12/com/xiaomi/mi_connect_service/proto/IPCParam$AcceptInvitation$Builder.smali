.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$16900()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearInviteStr()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$17400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;)V

    return-object p0
.end method

.method public clearServiceId()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$17100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;)V

    return-object p0
.end method

.method public getInviteStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->getInviteStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInviteStrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->getInviteStrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->getServiceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceIdBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->getServiceIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setInviteStr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$17300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setInviteStrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$17500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceId(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$17000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceIdBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;->access$17200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AcceptInvitation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
