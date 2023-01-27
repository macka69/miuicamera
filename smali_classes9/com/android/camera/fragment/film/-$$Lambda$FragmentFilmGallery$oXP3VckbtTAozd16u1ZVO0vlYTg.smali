.class public final synthetic Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmGallery$oXP3VckbtTAozd16u1ZVO0vlYTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmGallery;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmGallery$oXP3VckbtTAozd16u1ZVO0vlYTg;->f$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/film/-$$Lambda$FragmentFilmGallery$oXP3VckbtTAozd16u1ZVO0vlYTg;->f$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    check-cast p1, Lcom/android/camera/fragment/film/FilmList;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->lambda$loadItemList$0$FragmentFilmGallery(Lcom/android/camera/fragment/film/FilmList;)V

    return-void
.end method
