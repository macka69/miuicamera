.class public final Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCameraServiceProto.java"

# interfaces
.implements Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEventOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;",
        ">;",
        "Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEventOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;->access$2000()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBytes()Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;

    invoke-static {v0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;->access$2200(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;)V

    return-object p0
.end method

.method public getBytes()Lcom/google/protobuf/ByteString;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;->getBytes()Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public setBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;->access$2100(Lcom/xiaomi/idm/service/iot/proto/IPCameraServiceProto$SkeletonEvent;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
