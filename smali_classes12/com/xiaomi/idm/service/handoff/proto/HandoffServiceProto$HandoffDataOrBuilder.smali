.class public interface abstract Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffDataOrBuilder;
.super Ljava/lang/Object;
.source "HandoffServiceProto.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandoffDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAppKey()Ljava/lang/String;
.end method

.method public abstract getAppKeyBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;
.end method

.method public abstract getDataListCount()I
.end method

.method public abstract getDataListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$Data;",
            ">;"
        }
    .end annotation
.end method
