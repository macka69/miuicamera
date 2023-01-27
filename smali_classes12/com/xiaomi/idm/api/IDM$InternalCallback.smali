.class Lcom/xiaomi/idm/api/IDM$InternalCallback;
.super Lcom/xiaomi/mi_connect_service/IConnectionCallback$Stub;
.source "IDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field private mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;

.field final synthetic this$0:Lcom/xiaomi/idm/api/IDM;


# direct methods
.method private constructor <init>(Lcom/xiaomi/idm/api/IDM;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/api/IDM$InternalCallback;->this$0:Lcom/xiaomi/idm/api/IDM;

    invoke-direct {p0}, Lcom/xiaomi/mi_connect_service/IConnectionCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/idm/api/IDM$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/idm/api/IDM;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;Lcom/xiaomi/idm/api/IDM$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/idm/api/IDM$InternalCallback;-><init>(Lcom/xiaomi/idm/api/IDM;Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public onDisconnected()V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDM$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;

    invoke-interface {p0}, Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;->onDisconnected()V

    return-void
.end method

.method public onFailure([B)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->getErrCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDM$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;

    invoke-interface {p0, p1, v0, v1}, Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;->onFailure(Lcom/xiaomi/idm/api/conn/ConnParam;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess([B)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->buildFromProto([B)Lcom/xiaomi/idm/api/conn/ConnParam;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/idm/api/conn/ConnParam;->getConfig()Lcom/xiaomi/idm/api/conn/ConnConfig;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/xiaomi/idm/api/IDM$InternalCallback;->mIDMConnectionCallback:Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;

    invoke-interface {p0, p1, v0}, Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;->onSuccess(Lcom/xiaomi/idm/api/conn/ConnParam;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
