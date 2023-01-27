.class public interface abstract Lcom/xiaomi/idm/api/ResponseCode;
.super Ljava/lang/Object;
.source "ResponseCode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/api/ResponseCode$ServiceChangedCode;,
        Lcom/xiaomi/idm/api/ResponseCode$VerifyStatus;,
        Lcom/xiaomi/idm/api/ResponseCode$AdvertisingCode;,
        Lcom/xiaomi/idm/api/ResponseCode$DiscoveryCode;,
        Lcom/xiaomi/idm/api/ResponseCode$InvitationCode;,
        Lcom/xiaomi/idm/api/ResponseCode$SetEventCode;,
        Lcom/xiaomi/idm/api/ResponseCode$RequestCode;,
        Lcom/xiaomi/idm/api/ResponseCode$ConnectCode;
    }
.end annotation


# static fields
.field public static final ERR_RMI_UNKNOWN:I = -0x270f

.field public static final ERR_RMI_UNKNOWN_MSG:Ljava/lang/String; = "Unknown response code"

.field public static final TAG:Ljava/lang/String; = "ResponseCode"


# virtual methods
.method public abstract getCode()I
.end method

.method public abstract getMsg()Ljava/lang/String;
.end method
