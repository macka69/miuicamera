.class public final synthetic Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$XZqy26Gfz2c2GehLgDn_V3MvZbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$XZqy26Gfz2c2GehLgDn_V3MvZbM;->f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$XZqy26Gfz2c2GehLgDn_V3MvZbM;->f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    check-cast p1, Lcom/android/camera/fragment/music/LiveMusicInfo;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->lambda$startDownloadRequest$6$FragmentLiveMusicPager(Lcom/android/camera/fragment/music/LiveMusicInfo;)V

    return-void
.end method
