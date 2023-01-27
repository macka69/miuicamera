.class public Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions;
.super Ljava/lang/Object;
.source "IotLocalControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/IotLocalControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$InvokeAction;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetSceneAlias;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$Stop;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$SetToken;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$ExeScenes;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$SetDeviceProperties;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDeviceProperties;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetHomeFastCommands;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDeviceInformations;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetScenes;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetHomes;,
        Lcom/xiaomi/idm/service/iot/IotLocalControlService$Actions$GetDevices;
    }
.end annotation


# static fields
.field public static final AID_EXESCENES:I = 0x8

.field public static final AID_GETDEVICEINFORMATIONS:I = 0x4

.field public static final AID_GETDEVICEPROPERTIES:I = 0x6

.field public static final AID_GETDEVICES:I = 0x1

.field public static final AID_GETHOMEFASTCOMMANDS:I = 0x5

.field public static final AID_GETHOMES:I = 0x2

.field public static final AID_GETSCENEALIAS:I = 0xb

.field public static final AID_GETSCENES:I = 0x3

.field public static final AID_INVOKEACTION:I = 0xc

.field public static final AID_SETDEVICEPROPERTIES:I = 0x7

.field public static final AID_SETTOKEN:I = 0x9

.field public static final AID_STOP:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
