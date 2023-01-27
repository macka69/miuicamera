.class public Lcom/xiaomi/idm/service/iot/TestService$Actions;
.super Ljava/lang/Object;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/TestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Actions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/TestService$Actions$TriggerClick;,
        Lcom/xiaomi/idm/service/iot/TestService$Actions$GetTimestamp;,
        Lcom/xiaomi/idm/service/iot/TestService$Actions$GetAPlusB;,
        Lcom/xiaomi/idm/service/iot/TestService$Actions$GetSomeString;
    }
.end annotation


# static fields
.field public static final AID_GETAPLUSB:I = 0x2

.field public static final AID_GETSOMESTRING:I = 0x1

.field public static final AID_GETTIMESTAMP:I = 0x3

.field public static final AID_TRIGGERCLICK:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
