.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$FloatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$FloatOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;->access$800()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearV()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;->access$1000(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;)V

    return-object p0
.end method

.method public getV()F
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;->getV()F

    move-result p0

    return p0
.end method

.method public setV(F)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;->access$900(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Float;F)V

    return-object p0
.end method
