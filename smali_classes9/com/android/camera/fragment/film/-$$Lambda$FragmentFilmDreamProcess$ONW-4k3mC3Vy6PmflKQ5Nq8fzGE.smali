.class public final synthetic Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmDreamProcess$ONW-4k3mC3Vy6PmflKQ5Nq8fzGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmDreamProcess$ONW-4k3mC3Vy6PmflKQ5Nq8fzGE;->f$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmDreamProcess$ONW-4k3mC3Vy6PmflKQ5Nq8fzGE;->f$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    check-cast p1, Lcom/android/camera/data/observeable/RxData$DataWrap;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->lambda$initView$0$FragmentFilmDreamProcess(Lcom/android/camera/data/observeable/RxData$DataWrap;)V

    return-void
.end method
