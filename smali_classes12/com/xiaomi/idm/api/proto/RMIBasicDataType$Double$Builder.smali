.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$DoubleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$DoubleOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->access$1200()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearV()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->access$1400(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;)V

    return-object p0
.end method

.method public getV()D
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->getV()D

    move-result-wide v0

    return-wide v0
.end method

.method public setV(D)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;->access$1300(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Double;D)V

    return-object p0
.end method
