.class public Lcom/xiaomi/idm/service/iot/InputMethodService$InputPropertyCommand;
.super Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputPropertyCommand"
.end annotation


# static fields
.field public static final CLIENTSTATUS:Ljava/lang/String; = "clientstatus"

.field public static final FOCUSSTATUS:Ljava/lang/String; = "focusstatus"

.field public static final INPUT_SERVICE_DESC:Ljava/lang/String; = "input"

.field public static final TEXT:Ljava/lang/String; = "text"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/idm/service/iot/PropertyService$PropertyCommand;-><init>()V

    return-void
.end method
