.class public Lcom/xiaomi/idm/service/iot/InputMethodService$Events;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/service/iot/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Events"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/service/iot/InputMethodService$Events$InputCompleteEvent;,
        Lcom/xiaomi/idm/service/iot/InputMethodService$Events$TextEvent;
    }
.end annotation


# static fields
.field public static final EID_INPUTCOMPLETEEVENT:I = 0x2

.field public static final EID_TEXTEVENT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
