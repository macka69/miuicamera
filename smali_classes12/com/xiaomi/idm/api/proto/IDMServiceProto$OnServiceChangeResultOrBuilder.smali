.class public interface abstract Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResultOrBuilder;
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
    name = "OnServiceChangeResultOrBuilder"
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

.method public abstract getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnServiceChangeResult$SubChangeType;
.end method

.method public abstract getSubChangeTypeValue()I
.end method
