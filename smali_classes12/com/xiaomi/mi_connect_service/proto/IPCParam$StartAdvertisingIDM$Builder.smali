.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDMOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDMOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9300()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCommType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;)V

    return-object p0
.end method

.method public clearDiscType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;)V

    return-object p0
.end method

.method public clearIdmService()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9700(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;)V

    return-object p0
.end method

.method public clearIntentStr()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;)V

    return-object p0
.end method

.method public clearIntentType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;)V

    return-object p0
.end method

.method public clearServiceSecurityType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10900(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;)V

    return-object p0
.end method

.method public getCommType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getCommType()I

    move-result p0

    return p0
.end method

.method public getDiscType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getDiscType()I

    move-result p0

    return p0
.end method

.method public getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;

    move-result-object p0

    return-object p0
.end method

.method public getIntentStr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getIntentStr()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntentStrBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getIntentStrBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getIntentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getIntentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getIntentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getServiceSecurityType()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->getServiceSecurityType()I

    move-result p0

    return p0
.end method

.method public hasIdmService()Z
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->hasIdmService()Z

    move-result p0

    return p0
.end method

.method public mergeIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setCommType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10600(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;I)V

    return-object p0
.end method

.method public setDiscType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;I)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9500(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService$Builder;)V

    return-object p0
.end method

.method public setIdmService(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9400(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-object p0
.end method

.method public setIntentStr(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$9800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIntentStrBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10000(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setIntentType(Ljava/lang/String;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Ljava/lang/String;)V

    return-object p0
.end method

.method public setIntentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10300(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setServiceSecurityType(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;->access$10800(Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartAdvertisingIDM;I)V

    return-object p0
.end method
