.class public final synthetic Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$7n8feJomYckZY8SYJMnOUnQprpI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$7n8feJomYckZY8SYJMnOUnQprpI;->f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/music/-$$Lambda$FragmentLiveMusicPager$7n8feJomYckZY8SYJMnOUnQprpI;->f$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->lambda$onMusicSelectedToPlay$10$FragmentLiveMusicPager(Landroid/media/MediaPlayer;)V

    return-void
.end method
