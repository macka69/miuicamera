.class public Lcom/xiaomi/idm/service/iot/PropertyService$Actions;
.super Ljava/lang/Object;
.source "PropertyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/PropertyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/PropertyService$Actions$GetPropertyCommands;,
        Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetPropertyCommands;,
        Lcom/xiaomi/idm/service/iot/PropertyService$Actions$GetProperty;,
        Lcom/xiaomi/idm/service/iot/PropertyService$Actions$SetProperty;
    }
.end annotation


# static fields
.field public static final AID_GETPROPERTY:I = 0x2

.field public static final AID_GETPROPERTYCOMMANDS:I = 0x4

.field public static final AID_SETPROPERTY:I = 0x1

.field public static final AID_SETPROPERTYCOMMANDS:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
