.class public abstract Lcom/android/camera/network/net/base/VolleyRequest;
.super Lcom/android/camera/network/net/base/BaseRequest;
.source "VolleyRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/network/net/base/BaseRequest<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/base/BaseRequest;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private releaseSyncExecuteLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/network/net/base/VolleyRequest;->mSyncExecuteLock:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/network/net/base/VolleyRequest;->releaseSyncExecuteLock()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/network/net/base/BaseRequest;->setOnResponseListener(Lcom/android/camera/network/net/base/ResponseListener;)Lcom/android/camera/network/net/base/BaseRequest;

    return-void
.end method

.method public execute()V
    .locals 0

    return-void
.end method

.method protected final handleError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/network/net/base/BaseRequest;->onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract handleResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
