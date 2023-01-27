.class public interface abstract Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMConnectServiceRequestOrBuilder;
.super Ljava/lang/Object;
.source "IDMServiceProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/IDMServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDMConnectServiceRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getConnParam()Lcom/xiaomi/idm/api/proto/IDMServiceProto$ConnParam;
.end method

.method public abstract getEndpoint()Lcom/xiaomi/idm/api/proto/IDMServiceProto$Endpoint;
.end method

.method public abstract getServiceId()Ljava/lang/String;
.end method

.method public abstract getServiceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getStatus()I
.end method

.method public abstract hasConnParam()Z
.end method

.method public abstract hasEndpoint()Z
.end method
