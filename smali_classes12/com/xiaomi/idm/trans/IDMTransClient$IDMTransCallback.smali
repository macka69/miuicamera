.class public interface abstract Lcom/xiaomi/idm/trans/IDMTransClient$IDMTransCallback;
.super Ljava/lang/Object;
.source "IDMTransClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/trans/IDMTransClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDMTransCallback"
.end annotation


# virtual methods
.method public abstract onReceiveData(Ljava/lang/String;II[B)V
.end method

.method public abstract onReceiveStatus(Ljava/lang/String;IILjava/lang/String;)V
.end method
