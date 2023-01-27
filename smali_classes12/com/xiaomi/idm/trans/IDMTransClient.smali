.class public Lcom/xiaomi/idm/trans/IDMTransClient;
.super Ljava/lang/Object;
.source "IDMTransClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;
    }
.end annotation


# instance fields
.field private mCb:Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;

.field private mCreateRet:I

.field private mHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "idmtrans"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaomi/idm/trans/IDMTransClient;->IDMTransCreate(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaomi/idm/trans/IDMTransClient;->mCreateRet:I

    return-void
.end method


# virtual methods
.method public native IDMTransCreate(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public native IDMTransDisconnect()I
.end method

.method public native IDMTransRelease()I
.end method

.method public native IDMTransSend([BJ)I
.end method

.method public native IDMTransStart()I
.end method

.method public native IDMTransStop()I
.end method

.method public getCreateRet()I
    .locals 0

    iget p0, p0, Lcom/xiaomi/idm/trans/IDMTransClient;->mCreateRet:I

    return p0
.end method

.method onReceiveData(Ljava/lang/String;II[B)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/trans/IDMTransClient;->mCb:Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;->onReceiveData(Ljava/lang/String;II[B)V

    :cond_0
    return-void
.end method

.method onReceiveStatus(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/idm/trans/IDMTransClient;->mCb:Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;->onReceiveStatus(Ljava/lang/String;IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/trans/IDMTransClient;->mCb:Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;

    return-void
.end method
