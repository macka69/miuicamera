.class public interface abstract Lcom/xiaomi/mi_connect_service/proto/IPCParam$StartDiscoveryOrBuilder;
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
    name = "StartDiscoveryOrBuilder"
.end annotation


# virtual methods
.method public abstract getDiscType()I
.end method

.method public abstract getServiceSecurityType()I
.end method

.method public abstract getServiceTypes(I)Ljava/lang/String;
.end method

.method public abstract getServiceTypesBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getServiceTypesCount()I
.end method

.method public abstract getServiceTypesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getServiceUuids(I)Ljava/lang/String;
.end method

.method public abstract getServiceUuidsBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getServiceUuidsCount()I
.end method

.method public abstract getServiceUuidsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
