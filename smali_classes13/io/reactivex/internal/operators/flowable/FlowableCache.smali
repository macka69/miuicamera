.class public final Lio/reactivex/internal/operators/flowable/FlowableCache;
.super Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;
.source "FlowableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;,
        Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/Flowable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/AbstractFlowableWithUpstream;-><init>(Lio/reactivex/Flowable;)V

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-direct {v0, p1, p2}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;-><init>(Lio/reactivex/Flowable;I)V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method cachedEventCount()I
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {p0}, Lio/reactivex/internal/util/LinkedArrayList;->size()I

    move-result p0

    return p0
.end method

.method hasSubscribers()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->subscribers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    array-length p0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isConnected()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    iget-boolean p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->isConnected:Z

    return p0
.end method

.method protected subscribeActual(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;-><init>(Lorg/reactivestreams/Subscriber;Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;)V

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {v1, v0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->addChild(Lio/reactivex/internal/operators/flowable/FlowableCache$ReplaySubscription;)V

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableCache;->state:Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;

    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableCache$CacheState;->connect()V

    :cond_0
    return-void
.end method
