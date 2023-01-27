.class public Lcom/xiaomi/idm/api/RequestException;
.super Lcom/xiaomi/idm/api/RmiException;
.source "RequestException.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getResponseMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/idm/api/RequestException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/RmiException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/idm/api/ResponseCode$RequestCode;)V
    .locals 0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/ResponseCode$RequestCode;->getCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaomi/idm/api/RequestException;-><init>(I)V

    return-void
.end method
