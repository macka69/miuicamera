.class public Lcom/xiaomi/idm/task/CallFuture;
.super Ljava8/util/concurrent/CompletableFuture;
.source "CallFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/idm/task/CallFuture$ExeException;,
        Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/concurrent/CompletableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallFuture"


# instance fields
.field mCallBck:Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava8/util/concurrent/CompletableFuture;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mCallBck:Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;

    return-void
.end method


# virtual methods
.method public createException(ILjava/lang/String;)Lcom/xiaomi/idm/task/CallFuture$ExeException;
    .locals 1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "code"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "msg"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CallFuture"

    invoke-static {v0, p2, p1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p1, Lcom/xiaomi/idm/task/CallFuture$ExeException;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaomi/idm/task/CallFuture$ExeException;-><init>(Ljava/lang/String;Lcom/xiaomi/idm/task/CallFuture$1;)V

    return-object p1
.end method

.method public setCallResultCallBack(Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/idm/task/CallFuture;->mCallBck:Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;

    return-void
.end method

.method public setDone(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "future task result done"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallFuture"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mCallBck:Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;->onResponse(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->obtrudeValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setFailed(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "future task failed, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "CallFuture"

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mi_connect_sdk/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/idm/task/CallFuture;->mCallBck:Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/idm/task/CallFuture$CallResultCallBack;->onFailed(ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/idm/task/CallFuture;->createException(ILjava/lang/String;)Lcom/xiaomi/idm/task/CallFuture$ExeException;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava8/util/concurrent/CompletableFuture;->obtrudeException(Ljava/lang/Throwable;)V

    return-void
.end method
