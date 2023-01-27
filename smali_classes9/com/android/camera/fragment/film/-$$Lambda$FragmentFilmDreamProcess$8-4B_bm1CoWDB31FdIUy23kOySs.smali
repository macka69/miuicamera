.class public final synthetic Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmDreamProcess$8-4B_bm1CoWDB31FdIUy23kOySs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmDreamProcess$8-4B_bm1CoWDB31FdIUy23kOySs;->f$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmDreamProcess$8-4B_bm1CoWDB31FdIUy23kOySs;->f$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->lambda$updateThumbnail$1$FragmentFilmDreamProcess(Ljava/lang/String;)Lcom/android/camera/module/loader/NullHolder;

    move-result-object p0

    return-object p0
.end method
