.class Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;
.super Ljava/util/TimerTask;
.source "FragmentLiveMusicPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$600(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/LiveMusicInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->startPlayOrStopMusicByTime(Lcom/android/camera/fragment/music/LiveMusicInfo;I)V

    iget-object p0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$700(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)Lcom/android/camera/fragment/music/MusicOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/music/MusicOperation;->resetTimer()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$FragmentLiveMusicPager$5()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->lambda$run$0()V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    iget-object v0, v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$5$E1b_Jhx6gRbR5apCgl0QsZXLyk8;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$5$E1b_Jhx6gRbR5apCgl0QsZXLyk8;-><init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
