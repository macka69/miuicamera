.class final Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;
.super Ljava/lang/Object;
.source "FlowableDelaySubscriptionOther.java"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelaySubscription"
.end annotation


# instance fields
.field private final s:Lorg/reactivestreams/Subscription;

.field final synthetic this$1:Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;Lorg/reactivestreams/Subscription;)V
    .locals 0

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;->this$1:Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;->s:Lorg/reactivestreams/Subscription;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/internal/operators/flowable/FlowableDelaySubscriptionOther$DelaySubscriber$DelaySubscription;->s:Lorg/reactivestreams/Subscription;

    invoke-interface {p0}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
