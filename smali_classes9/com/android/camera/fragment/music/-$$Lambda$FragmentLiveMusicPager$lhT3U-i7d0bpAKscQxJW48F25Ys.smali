.class public final synthetic Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$lhT3U-i7d0bpAKscQxJW48F25Ys;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$lhT3U-i7d0bpAKscQxJW48F25Ys;->f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$lhT3U-i7d0bpAKscQxJW48F25Ys;->f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->lambda$onMusicSelectedToPlay$9$FragmentLiveMusicPager(Landroid/media/MediaPlayer;)V

    return-void
.end method
