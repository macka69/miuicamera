.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->access$16400()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearServiceType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->access$16600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;)V

    return-object p0
.end method

.method public getServiceType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->getServiceType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getServiceTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->getServiceTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setServiceType(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->access$16500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;Ljava/lang/String;)V

    return-object p0
.end method

.method public setServiceTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;->access$16700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$AbortInvitation;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
