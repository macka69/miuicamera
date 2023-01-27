.class public abstract Lcom/xiaomi/idm/api/IIDMService;
.super Ljava/lang/Object;
.source "IIDMService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract enableEvent(IZ)I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract getUUID()Ljava/lang/String;
.end method

.method protected abstract notifyEvent(I[B)V
.end method

.method public abstract onAdvertisingResult(I)V
.end method

.method public abstract onServiceChanged([B)V
.end method

.method public abstract onServiceConnectStatus([B)Z
.end method

.method public abstract request([B)[B
.end method
