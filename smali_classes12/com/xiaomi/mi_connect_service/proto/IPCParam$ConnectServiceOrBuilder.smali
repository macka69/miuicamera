.class public interface abstract Lcom/xiaomi/mi_connect_service/proto/IPCParam$ConnectServiceOrBuilder;
.super Ljava/lang/Object;
.source "IPCParam.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConnectServiceOrBuilder"
.end annotation


# virtual methods
.method public abstract getCommDataType()I
.end method

.method public abstract getCommType()I
.end method

.method public abstract getConnLevel()I
.end method

.method public abstract getIdmService()Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
.end method

.method public abstract getPrivateData()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getVerifySameAccount()Z
.end method

.method public abstract hasIdmService()Z
.end method
