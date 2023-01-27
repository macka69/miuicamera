.class public Lcom/android/camera/network/net/BaseGalleryRequest;
.super Lcom/android/camera/network/net/json/BaseJsonRequest;
.source "BaseGalleryRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/network/net/json/BaseJsonRequest<",
        "Lcom/android/camera/network/net/GalleryResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESPONSE_CODE_TAG:Ljava/lang/String; = "code"

.field private static final RESPONSE_DATA_TAG:Ljava/lang/String; = "data"

.field private static final RESPONSE_DESCRIPTION_TAG:Ljava/lang/String; = "description"

.field private static final RESPONSE_LAST_PAGE_TAG:Ljava/lang/String; = "lastPage"

.field private static final RESPONSE_SYNC_TAG:Ljava/lang/String; = "syncTag"

.field private static final RESPONSE_SYNC_TOKEN_TAG:Ljava/lang/String; = "syncToken"

.field private static final TAG:Ljava/lang/String; = "BaseGalleryRequest"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/network/net/BaseGalleryRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/network/net/json/BaseJsonRequest;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method private checkExecuteCondition()Z
    .locals 4

    invoke-static {}, Lcom/android/camera/fragment/CtaNoticeFragment$CTA;->canConnectNetwork()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/android/camera/network/net/base/ErrorCode;

    const-string v3, "CTA not confirmed."

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->isUseCache()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    return v3

    :cond_1
    invoke-static {}, Lcom/android/camera/network/util/NetworkUtils;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->NETWORK_NOT_CONNECTED:Lcom/android/camera/network/net/base/ErrorCode;

    const-string v3, "Network not connected."

    invoke-virtual {p0, v0, v3, v2}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_2
    return v3
.end method


# virtual methods
.method public final execute()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/BaseGalleryRequest;->checkExecuteCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->execute()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic handleResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/BaseGalleryRequest;->handleResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected final handleResponse(Lorg/json/JSONObject;)V
    .locals 4

    const-string v0, "data"

    const-string v1, "code"

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    sget-object v3, Lcom/android/camera/network/net/base/ErrorCode;->SUCCESS:Lcom/android/camera/network/net/base/ErrorCode;

    iget v3, v3, Lcom/android/camera/network/net/base/ErrorCode;->CODE:I

    if-ne v1, v3, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->BODY_EMPTY:Lcom/android/camera/network/net/base/ErrorCode;

    const-string v1, "response empty data"

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/camera/network/net/GalleryResponse;

    invoke-direct {v1}, Lcom/android/camera/network/net/GalleryResponse;-><init>()V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/network/net/GalleryResponse;->data:Lorg/json/JSONObject;

    const-string/jumbo v0, "syncTag"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/network/net/GalleryResponse;->syncTag:Ljava/lang/String;

    const-string/jumbo v0, "syncToken"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/network/net/GalleryResponse;->syncToken:Ljava/lang/String;

    const-string v0, "lastPage"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v1, Lcom/android/camera/network/net/GalleryResponse;->isLastPage:Z

    invoke-virtual {p0, v1}, Lcom/android/camera/network/net/BaseGalleryRequest;->onRequestSuccess(Lcom/android/camera/network/net/GalleryResponse;)V

    goto :goto_0

    :cond_1
    const-string v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/camera/network/net/base/ErrorCode;->SERVER_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/camera/network/net/base/ErrorCode;->PARSE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    const-string v0, "response has no code"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/android/camera/network/net/base/ErrorCode;->HANDLE_ERROR:Lcom/android/camera/network/net/base/ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/camera/network/net/base/VolleyRequest;->handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/base/BaseRequest;->deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "%s onRequestError:%s | %s "

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseGalleryRequest"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of p0, p3, Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    check-cast p3, Ljava/lang/Throwable;

    invoke-static {p1, p3}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onRequestSuccess(Lcom/android/camera/network/net/GalleryResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p1, Lcom/android/camera/network/net/GalleryResponse;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/BaseGalleryRequest;->onRequestSuccess(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected bridge synthetic onRequestSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/android/camera/network/net/GalleryResponse;

    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/BaseGalleryRequest;->onRequestSuccess(Lcom/android/camera/network/net/GalleryResponse;)V

    return-void
.end method

.method protected onRequestSuccess(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/camera/network/net/base/BaseRequest;->deliverResponse([Ljava/lang/Object;)V

    return-void
.end method
