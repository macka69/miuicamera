.class public final Lio/reactivex/internal/operators/completable/CompletableDetach;
.super Lio/reactivex/Completable;
.source "CompletableDetach.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;
    }
.end annotation

.annotation build Lio/reactivex/annotations/Experimental;
.end annotation


# instance fields
.field final source:Lio/reactivex/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/CompletableSource;)V
    .locals 0

    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableDetach;->source:Lio/reactivex/CompletableSource;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/completable/CompletableDetach;->source:Lio/reactivex/CompletableSource;

    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/completable/CompletableDetach$DetachCompletableObserver;-><init>(Lio/reactivex/CompletableObserver;)V

    invoke-interface {p0, v0}, Lio/reactivex/CompletableSource;->subscribe(Lio/reactivex/CompletableObserver;)V

    return-void
.end method
