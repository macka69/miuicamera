.class public interface abstract Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResultOrBuilder;
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
    name = "OnAccountChangeResultOrBuilder"
.end annotation


# virtual methods
.method public abstract getNewAccount()Ljava/lang/String;
.end method

.method public abstract getNewAccountBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getNewIdHash()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOldAccount()Ljava/lang/String;
.end method

.method public abstract getOldAccountBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubChangeType()Lcom/xiaomi/idm/api/proto/IDMServiceProto$OnAccountChangeResult$SubChangeType;
.end method

.method public abstract getSubChangeTypeValue()I
.end method
