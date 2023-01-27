.class public Lcom/xiaomi/idm/service/iot/MotionSensorService$MotionSensorPropertyCommand;
.super Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;
.source "MotionSensorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/MotionSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionSensorPropertyCommand"
.end annotation


# static fields
.field public static final FAULT:Ljava/lang/String; = "fault"

.field public static final GETMOTIONSENSORPROPERTY:Ljava/lang/String; = "getmotionsensorproperty"

.field public static final ILLUMINATION:Ljava/lang/String; = "illumination"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final MOTIONSENSOR_SERVICE_DESC:Ljava/lang/String; = "motionsensor"

.field public static final MOTIONSTATE:Ljava/lang/String; = "motionstate"

.field public static final NOMOTIONDURATION:Ljava/lang/String; = "nomotionduration"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final STATUS:Ljava/lang/String; = "status"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;-><init>()V

    return-void
.end method
