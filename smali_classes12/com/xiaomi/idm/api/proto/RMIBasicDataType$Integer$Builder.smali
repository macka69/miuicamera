.class public final Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RMIBasicDataType.java"

# interfaces
.implements Lcom/xiaomi/idm/api/proto/RMIBasicDataType$IntegerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;",
        ">;",
        "Lcom/xiaomi/idm/api/proto/RMIBasicDataType$IntegerOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;->access$000()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearV()Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;

    invoke-static {v0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;->access$200(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;)V

    return-object p0
.end method

.method public getV()I
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;->getV()I

    move-result p0

    return p0
.end method

.method public setV(I)Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;

    invoke-static {v0, p1}, Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;->access$100(Lcom/xiaomi/idm/api/proto/RMIBasicDataType$Integer;I)V

    return-object p0
.end method
