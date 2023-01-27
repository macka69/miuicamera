.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$LongOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$LongOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->access$400()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearV()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->access$600(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;)V

    return-object p0
.end method

.method public getV()J
    .locals 2

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->getV()J

    move-result-wide v0

    return-wide v0
.end method

.method public setV(J)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;->access$500(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Long;J)V

    return-object p0
.end method
