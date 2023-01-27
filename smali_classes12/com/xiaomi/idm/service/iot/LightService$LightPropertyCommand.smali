.class public Lcom/xiaomi/idm/service/iot/LightService$LightPropertyCommand;
.super Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;
.source "LightService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/LightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightPropertyCommand"
.end annotation


# static fields
.field public static final BRIGHTNESS:Ljava/lang/String; = "brightness"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLORTEMPERATURE:Ljava/lang/String; = "colortemperature"

.field public static final FLEXSWITCH:Ljava/lang/String; = "flexswitch"

.field public static final FLOW:Ljava/lang/String; = "flow"

.field public static final GETLIGHTPROPERTY:Ljava/lang/String; = "getlightproperty"

.field public static final LIGHTCONTROLS:Ljava/lang/String; = "lightcontrols"

.field public static final LIGHT_SERVICE_DESC:Ljava/lang/String; = "light"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final ON:Ljava/lang/String; = "on"

.field public static final SATURABILITY:Ljava/lang/String; = "saturability"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;-><init>()V

    return-void
.end method
