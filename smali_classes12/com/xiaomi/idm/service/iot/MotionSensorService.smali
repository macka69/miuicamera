.class public abstract Lcom/xiaomi/idm/service/iot/MotionSensorService;
.super Lcom/xiaomi/idm/service/iot/PropertyService;
.source "MotionSensorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/MotionSensorService$MotionSensorPropertyCommand;,
        Lcom/xiaomi/idm/service/iot/MotionSensorService$Skeleton;,
        Lcom/xiaomi/idm/service/iot/MotionSensorService$Stub;
    }
.end annotation


# static fields
.field public static final SERVICE_TYPE:Ljava/lang/String; = "urn:aiot-spec-v3:service:motionsensor:00000001:1"

.field private static final TAG:Ljava/lang/String; = "MotionSensorService"


# direct methods
.method protected constructor <init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Lcom/xiaomi/idm/api/proto/IDMServiceProto$IDMService;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:aiot-spec-v3:service:motionsensor:00000001:1"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/PropertyService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
