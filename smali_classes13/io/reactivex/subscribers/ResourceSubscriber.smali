.class public abstract Lio/reactivex/subscribers/ResourceSubscriber;
.super Ljava/lang/Object;
.source "ResourceSubscriber.java"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/FlowableSubscriber<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field private final missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

.field private final resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

.field private final s:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/reactivestreams/Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;-><init>()V

    iput-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final add(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "resource is null"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->cancel(Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->resources:Lio/reactivex/internal/disposables/ListCompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/internal/disposables/ListCompositeDisposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/reactivestreams/Subscription;

    invoke-static {p0}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->isCancelled(Lorg/reactivestreams/Subscription;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lio/reactivex/subscribers/ResourceSubscriber;->request(J)V

    return-void
.end method

.method public final onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 5

    iget-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    const-class v1, Lio/reactivex/subscribers/ResourceSubscriber;

    invoke-static {v0, p1, v1}, Lio/reactivex/internal/util/EndConsumerHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lorg/reactivestreams/Subscription;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    invoke-interface {p1, v3, v4}, Lorg/reactivestreams/Subscription;->request(J)V

    :cond_0
    invoke-virtual {p0}, Lio/reactivex/subscribers/ResourceSubscriber;->onStart()V

    :cond_1
    return-void
.end method

.method protected final request(J)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->s:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p0, p0, Lio/reactivex/subscribers/ResourceSubscriber;->missedRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p0, p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->deferredRequest(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicLong;J)V

    return-void
.end method
