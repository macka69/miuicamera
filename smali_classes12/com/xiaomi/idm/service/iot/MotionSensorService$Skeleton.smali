.class public abstract Lcom/xiaomi/idm/service/iot/MotionSensorService$Skeleton;
.super Lcom/xiaomi/idm/service/iot/MotionSensorService;
.source "MotionSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/MotionSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Skeleton"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "urn:aiot-spec-v3:service:motionsensor:00000001:1"

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/idm/service/iot/MotionSensorService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/idm/service/iot/MotionSensorService;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
