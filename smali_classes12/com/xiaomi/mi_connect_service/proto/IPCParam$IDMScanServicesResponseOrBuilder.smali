.class public interface abstract Lcom/xiaomi/mi_connect_service/proto/IPCParam$IDMScanServicesResponseOrBuilder;
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
    name = "IDMScanServicesResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientId()Ljava/lang/String;
.end method

.method public abstract getClientIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getService(I)Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;
.end method

.method public abstract getServiceCount()I
.end method

.method public abstract getServiceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;",
            ">;"
        }
    .end annotation
.end method
