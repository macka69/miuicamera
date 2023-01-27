.class public abstract Lcom/xiaomi/idm/service/iot/PropertyService$Skeleton;
.super Lcom/xiaomi/idm/service/iot/PropertyService;
.source "PropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Skeleton"
.end annotation


# instance fields
.field private mPropertyEventEnabled:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public enableEvent(IZ)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Skeleton;->mPropertyEventEnabled:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iput-boolean p2, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Skeleton;->mPropertyEventEnabled:Z

    iget-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/xiaomi/idm/api/IDMService;->mEventEnable:Z

    :goto_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public notifyPropertyEvent(ILjava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/idm/service/iot/PropertyService$Skeleton;->mPropertyEventEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->newBuilder()Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->setParam(I)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->setParamStr(Ljava/lang/String;)Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;

    const/4 p2, 0x1

    invoke-virtual {p1}, Lcom/xiaomi/idm/service/iot/proto/PropertyServiceProto$PropertyEvent;->toByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/xiaomi/idm/api/IDMService;->notifyEvent(I[B)V

    :cond_0
    return-void
.end method
