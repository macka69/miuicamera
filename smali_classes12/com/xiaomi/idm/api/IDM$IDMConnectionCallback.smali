.class public interface abstract Lcom/xiaomi/idm/api/IDM$IDMConnectionCallback;
.super Ljava/lang/Object;
.source "IDM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/api/IDM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDMConnectionCallback"
.end annotation


# virtual methods
.method public abstract onDisconnected()V
.end method

.method public abstract onFailure(Lcom/xiaomi/idm/api/conn/ConnParam;ILjava/lang/String;)V
.end method

.method public abstract onSuccess(Lcom/xiaomi/idm/api/conn/ConnParam;Ljava/lang/Object;)V
.end method
