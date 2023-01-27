.class public final Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IPCParam.java"

# interfaces
.implements Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;",
        ">;",
        "Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;->access$4000()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/mi_connect_service/proto/IPCParam$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearSdkVersion()Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;

    invoke-static {v0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;->access$4200(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;)V

    return-object p0
.end method

.method public getSdkVersion()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;->getSdkVersion()I

    move-result p0

    return p0
.end method

.method public setSdkVersion(I)Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;

    invoke-static {v0, p1}, Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;->access$4100(Lcom/xiaomi/mi_connect_service/proto/IPCParam$RegisterIDMServer;I)V

    return-object p0
.end method
