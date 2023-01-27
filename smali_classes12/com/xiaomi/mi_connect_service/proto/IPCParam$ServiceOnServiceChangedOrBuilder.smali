.class public interface abstract Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChangedOrBuilder;
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
    name = "ServiceOnServiceChangedOrBuilder"
.end annotation


# virtual methods
.method public abstract getNewServiceId()Ljava/lang/String;
.end method

.method public abstract getNewServiceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOldServiceId()Ljava/lang/String;
.end method

.method public abstract getOldServiceIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubChangeType()Lcom/xiaomi/mi_connect_service/proto/IPCParam$ServiceOnServiceChanged$SubChangeType;
.end method

.method public abstract getSubChangeTypeValue()I
.end method
