.class public interface abstract Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$AllHandoffDataOrBuilder;
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
    name = "AllHandoffDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getHandoffDataList(I)Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;
.end method

.method public abstract getHandoffDataListCount()I
.end method

.method public abstract getHandoffDataListList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/idm/service/handoff/proto/HandoffServiceProto$HandoffData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdHash()Ljava/lang/String;
.end method

.method public abstract getIdHashBytes()Lcom/google/protobuf/ByteString;
.end method
